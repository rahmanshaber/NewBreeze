/*
    *
    * * NBTerminalWidget.cpp - QNBTerminalWidget reimplementation for NBTerminalWidget
    *
*/

#include "NBTerminal.hpp"
#include "NBGuiWidgets.hpp"

NBTerminal::NBTerminal( QString wDir, QWidget *parent ) : QWidget( parent ) {

	if ( wDir.isEmpty() )
		currentPath = QDir::homePath();

	else
		currentPath = QString( wDir );

	QVBoxLayout *lyt = new QVBoxLayout();
	lyt->setContentsMargins( QMargins( 2, 0, 2, 0 ) );
	lyt->setSpacing( 0 );
	Terminal = new NBTerminalWidget( currentPath, this );

	lyt->addWidget( Terminal );
	setLayout( lyt );

	setFocusPolicy( Qt::NoFocus );
	setAttribute( Qt::WA_TranslucentBackground );
	Terminal->setTerminalOpacity( 0.9 );

	connect( Terminal, SIGNAL( finished() ), this, SLOT( openNewTerminal() ) );
};

void NBTerminal::changeDir( QString dir ) {

	currentPath = QString( dir );
	Terminal->changeDir( dir );
	Terminal->clear();
};

void NBTerminal::show() {

	QWidget::show();
	Terminal->setFocus();

	emit shown( true );
};

void NBTerminal::hide() {

	QWidget::hide();
	emit shown( false );
};

void NBTerminal::openNewTerminal() {

	layout()->removeWidget( Terminal );
	delete Terminal;

	Terminal = new NBTerminalWidget( currentPath, this );
	connect( Terminal, SIGNAL( finished() ), this, SLOT( openNewTerminal() ) );

	qobject_cast<QVBoxLayout *>( layout() )->insertWidget( 1, Terminal );

	hide();
};

NBTerminalWidget::NBTerminalWidget( QString wDir, QWidget *parent ) : QTermWidget( 0, parent ) {

	setColorScheme( "WhiteOnBlack" );

	QAction *clearAct = new QAction( "Clear Terminal", this );
	clearAct->setShortcut( tr( "Ctrl+Shift+X" ) );
	connect( clearAct, SIGNAL( triggered() ), this, SLOT( clear() ) );

	setEnvironment( QProcess::systemEnvironment() << "HISTFILE=/dev/null" );
	setWorkingDirectory( wDir );
	setShellProgram( "/bin/bash" );
	setArgs( QStringList() << "-il" );

	setMotionAfterPasting( 2 );
	setFlowControlEnabled( true );
	setFlowControlWarningEnabled( true );

	startShellProgram();

	setFocus();
};

QString NBTerminalWidget::currentWorkingDirectory() {

	QString cwd = QString( "/proc/%1/cwd" ).arg( getShellPID() );
	return QFileInfo( cwd ).symLinkTarget();
};
