/*
	*
	* NBMarkDownPreview.cpp - NewBreeze MarkDownPreviewWidget Class
	*
*/

#include <NBMarkDownPreviewWidget.hpp>

extern "C" {
	#include "array.h"
	#include "buffer.h"
	#include "markdown.h"
	#include "renderers.h"
}

NBWebWatch::NBWebWatch( QString pth ) : QDialog() {

	path = QString( pth );

	createGUI();
	setWindowProperties();

	QTimer::singleShot( 0, this, SLOT( loadDocument() ) );

	peekWidgetBase->setFocus();
};

void NBWebWatch::createGUI() {

	QHBoxLayout *lblBtnLyt = new QHBoxLayout();
	QVBoxLayout *widgetLyt = new QVBoxLayout();
	QVBoxLayout *baseLyt = new QVBoxLayout();

	QLabel *lbl = new QLabel( "<tt><b>" + path + "</b></tt>" );

	QToolButton *openBtn = new QToolButton();
	openBtn->setIcon( QIcon( ":/icons/maximize.png" ) );
	openBtn->setAutoRaise( true );
	openBtn->setFocusPolicy( Qt::NoFocus );

	QWidget *baseWidget = new QWidget();
	baseWidget->setObjectName( tr( "guiBase" ) );

	connect( openBtn, SIGNAL( clicked() ), this, SLOT( openInExternal() ) );

	peekWidgetBase = new QWebView();
	peekWidgetBase->setRenderHints( QPainter::TextAntialiasing | QPainter::SmoothPixmapTransform | QPainter::HighQualityAntialiasing );

	lblBtnLyt->addWidget( lbl );
	lblBtnLyt->addStretch( 0 );
	lblBtnLyt->addWidget( openBtn );

	widgetLyt->addLayout( lblBtnLyt );
	widgetLyt->addWidget( peekWidgetBase );

	baseWidget->setLayout( widgetLyt );
	baseLyt->addWidget( baseWidget );
	baseLyt->setContentsMargins( 0, 0, 0, 0 );

	setLayout( baseLyt );
	peekWidgetBase->setFocus();
};

void NBWebWatch::setWindowProperties() {

	setFixedSize( 1024, 640 );

	QDesktopWidget dw;
	int hpos = (int)( ( dw.width() - 1024 ) / 2 );
	int vpos = (int)( ( dw.height() - 640 ) / 2 );

	setGeometry( hpos, vpos, 1024, 640 );
};

void NBWebWatch::keyPressEvent( QKeyEvent *keyEvent ) {

	if ( keyEvent->key() == Qt::Key_Escape )
		close();

	else
		QWidget::keyPressEvent( keyEvent );
};

void NBWebWatch::changeEvent( QEvent *event ) {

	if ( ( event->type() == QEvent::ActivationChange ) and ( !isActiveWindow() ) ) {
		hide();
		event->accept();
	}

	else {
		QWidget::changeEvent( event );
		event->accept();
	}
};

void NBWebWatch::paintEvent( QPaintEvent *pEvent ) {

	QWidget::paintEvent( pEvent );
	QPainter *painter = new QPainter( this );

	painter->setPen( QPen( palette().color( QPalette::Window ).darker(), 2.0 ) );
	painter->drawRect( rect().adjusted( +1, +1, -1, -1 ) );

	painter->end();
	pEvent->accept();
};

void NBWebWatch::loadDocument() {

	struct buf *ib, *ob;
	size_t ret;

	FILE *in = fopen( path.toLocal8Bit().data(), "r" );

	const struct mkd_renderer *hrndr, **prndr;

	hrndr = &mkd_html;
	prndr = &hrndr;

	/* reading everything */
	ib = bufnew( BUFSIZ );
	bufgrow( ib, BUFSIZ );
	while ( ( ret = fread( ib->data + ib->size, 1, ib->asize - ib->size, in ) ) > 0 ) {
		ib->size += ret;
		bufgrow( ib, ib->size + BUFSIZ );
	}

	fclose( in );

	/* performing markdown parsing */
	ob = bufnew( BUFSIZ );
	markdown( ob, ib, *prndr );

	/* Load the document */
	peekWidgetBase->setHtml( QString::fromLocal8Bit( ob->data, ob->size ), QUrl::fromLocalFile( path ) );

	/* cleanup */
	bufrelease( ib );
	bufrelease( ob );
};

void NBWebWatch::openInExternal() {

	QProcess::startDetached( "xdg-open " + path );
	close();
};

QStringList NBMarkDownPreview::mimeTypesHandled() const {

	return QStringList() << "text/x-markdown" << "text/markdown";
};

QDialog* NBMarkDownPreview::getPreviewWidget( const QString &path ) {

	return new NBWebWatch( path );
};

#if QT_VERSION < 0x050000
	Q_EXPORT_PLUGIN2( MarkDownPreview, NBMarkDownPreview );
#endif
