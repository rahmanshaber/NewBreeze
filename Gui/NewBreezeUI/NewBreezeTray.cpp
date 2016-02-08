/*
	*
	* NewBreezeTray.cpp - NewBreeze Tray Icon Class
	*
*/

#include <NewBreezeTray.hpp>

NBTrayIcon::NBTrayIcon() : QSystemTrayIcon() {

	setIcon( QIcon( ":/icons/newbreeze.png" ) );
	connect( this, SIGNAL( activated( QSystemTrayIcon::ActivationReason ) ), this, SLOT( handleActivation( QSystemTrayIcon::ActivationReason ) ) );

	QMenu *menu = new QMenu( "TrayMenu" );
	menu->addAction( "&Toggle Visible Windows", this, SLOT( toggleVisible() ) );
	menu->addAction( QIcon::fromTheme( "application-exit", QIcon( ":/icons/delete.png" ) ), "&Quit NewBreeze", this, SLOT( quit() ) );
	setContextMenu( menu );
};

void NBTrayIcon::handleActivation( QSystemTrayIcon::ActivationReason reason ) {

	qDebug() << reason;

	switch( reason ) {
		case NBTrayIcon::Context: {
			break;
		};

		case NBTrayIcon::MiddleClick: {
			qApp->quit();
			break;
		};

		case NBTrayIcon::Trigger: {
			toggleVisible();
			break;
		}

		case NBTrayIcon::DoubleClick: {
			emit newWindow();
			break;
		};

		default:{
			break;
		};
	};
};

void NBTrayIcon::toggleVisible() {

	bool visible = true;
	Q_FOREACH( QWidget *nb, qApp->topLevelWidgets() ) {
		if ( qobject_cast<NewBreeze*>( nb ) ) {
			if ( not nb->isVisible() ) {
				visible = false;
				break;
			}
		}
	}

	/* All NewBreeze instances are visible; hide them */
	if ( visible ) {
		Q_FOREACH( QWidget *nb, qApp->topLevelWidgets() )
			if ( qobject_cast<NewBreeze*>( nb ) )
				nb->hide();
	}

	/* Some are hidden, show them all */
	else {
		Q_FOREACH( QWidget *nb, qApp->topLevelWidgets() )
			if ( qobject_cast<NewBreeze*>( nb ) )
				nb->show();
	}
};

void NBTrayIcon::showInfo() {

	showMessage(
		"TrayIcon initialized",
		"NewBreeze is now open in SystemTray. Double click to open a new window, right click to quit.",
		QSystemTrayIcon::Information,
		2500
	);
};

void NBTrayIcon::quit() {

	/* Close all top level widgets */
	Q_FOREACH( QWidget *w, qApp->topLevelWidgets() )
		w->close();

	qApp->quit();
};
