/*
	*
	* NBSideBar.hpp - SideBar class Header
	*
*/

#pragma once

#include "Global.hpp"
#include "NBSideBarGroup.hpp"
#include "NBSideBarItem.hpp"

#include "NBBookmarkInfo.hpp"
#include "NBIconManager.hpp"

#include "NBTrashModel.hpp"

class NBSideBar : public QWidget {
	Q_OBJECT

	public:
		NBSideBar( QWidget *parent );

	private:
		void populateSideBar();

		NBSideBarItem *dirs;
		NBSideBarItem *apps;
		NBSideBarItem *ctlg;

		NBSideBarGroup *drives;
		NBSideBarGroup *vfs;
		NBSideBarGroup *bookmarks;
		NBSideBarGroup *quickFiles;

		NBSideBarItem *trash;

	public Q_SLOTS:
		void reloadDevices();
		void reloadBookmarks();
		void reloadQuickFiles();
		void highlight( QString );

	protected:
		void paintEvent( QPaintEvent* );

	Q_SIGNALS:
		void showFolders();
		void showTrash();

		void driveClicked( QString );
};
