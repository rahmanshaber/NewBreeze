TEMPLATE = app
TARGET = newbreeze2

QT += webkit xml network
LIBS += -lmagic -lzip -ltar -lbz2 -llzma -lz

INCLUDEPATH += . Core Core/AppFile Core/Archive Core/ConfigParser Core/CoreTools Core/DeleteManager Core/DeviceInfo Core/FileIO
INCLUDEPATH += Core/FSWatcher Core/IconProvider Core/MimeHandler Core/Server Core/StandardPaths Core/SystemInfo Core/XDG
INCLUDEPATH += Gui Gui/Dialogs Gui/Dialogs/FileDialog Gui/Dialogs/PropertiesDialog Gui/Dialogs/SettingsManager Gui/ModelViews
INCLUDEPATH += Gui/ModelViews/Models Gui/ModelViews/Models/ApplicationsModel Gui/ModelViews/Models/CatalogModel
INCLUDEPATH += Gui/ModelViews/Models/FileSystemModel Gui/ModelViews/Models/SidePanelModel
INCLUDEPATH += Gui/ModelViews/Views Gui/ModelViews/Views/AppsView Gui/ModelViews/Views/CatalogView Gui/ModelViews/Views/IconView
INCLUDEPATH += Gui/ModelViews/Views/OpenWithView Gui/ModelViews/Views/SidePanelView Gui/ModelViews/Views/TreeView Gui/Others
INCLUDEPATH += Gui/Others/Settings Gui/Plugins Gui/Plugins/CustomPeek Gui/Plugins/FolderFlash Gui/Plugins/ImagePeek Gui/Plugins/WebWatch
INCLUDEPATH += Gui/Plugins/WordView Gui/Widgets Gui/Widgets/AddressBar Gui/Widgets/BreadCrumbsBar Gui/Widgets/ContextMenu
INCLUDEPATH += Gui/Widgets/CustomActions Gui/Widgets/FolderView Gui/Widgets/GuiWidgets Gui/Widgets/InfoBar Gui/Widgets/IOManager
INCLUDEPATH += Gui/Widgets/QuickMenuBar Gui/Widgets/ShowHideWidget Gui/Widgets/SidePanel Gui/Widgets/Terminal Gui/Widgets/Terminal/lib
INCLUDEPATH += Gui/Widgets/TitleBar StyleSheets

DEPENDPATH += . Core Core/AppFile Core/Archive Core/ConfigParser Core/CoreTools Core/DeleteManager Core/DeviceInfo Core/FileIO
DEPENDPATH += Core/FSWatcher Core/IconProvider Core/MimeHandler Core/Server Core/StandardPaths Core/SystemInfo Core/XDG
DEPENDPATH += Gui Gui/Dialogs Gui/Dialogs/FileDialog Gui/Dialogs/PropertiesDialog Gui/Dialogs/SettingsManager Gui/ModelViews
DEPENDPATH += Gui/ModelViews/Models Gui/ModelViews/Models/ApplicationsModel Gui/ModelViews/Models/CatalogModel
DEPENDPATH += Gui/ModelViews/Models/FileSystemModel Gui/ModelViews/Models/SidePanelModel
DEPENDPATH += Gui/ModelViews/Views Gui/ModelViews/Views/AppsView Gui/ModelViews/Views/CatalogView Gui/ModelViews/Views/IconView
DEPENDPATH += Gui/ModelViews/Views/OpenWithView Gui/ModelViews/Views/SidePanelView Gui/ModelViews/Views/TreeView Gui/Others
DEPENDPATH += Gui/Others/Settings Gui/Plugins Gui/Plugins/CustomPeek Gui/Plugins/FolderFlash Gui/Plugins/ImagePeek Gui/Plugins/WebWatch
DEPENDPATH += Gui/Plugins/WordView Gui/Widgets Gui/Widgets/AddressBar Gui/Widgets/BreadCrumbsBar Gui/Widgets/ContextMenu
DEPENDPATH += Gui/Widgets/CustomActions Gui/Widgets/FolderView Gui/Widgets/GuiWidgets Gui/Widgets/InfoBar Gui/Widgets/IOManager
DEPENDPATH += Gui/Widgets/QuickMenuBar Gui/Widgets/ShowHideWidget Gui/Widgets/SidePanel Gui/Widgets/Terminal Gui/Widgets/Terminal/lib
DEPENDPATH += Gui/Widgets/TitleBar StyleSheets

HEADERS += Global.hpp
HEADERS += Core/AppFile/NBAppEngine.hpp
HEADERS += Core/AppFile/NBAppFile.hpp
HEADERS += Core/Archive/NBArchive.hpp
HEADERS += Core/Archive/NBLibBZip2.hpp
HEADERS += Core/Archive/NBLibGZip.hpp
HEADERS += Core/Archive/NBLibLzma.hpp
HEADERS += Core/Archive/NBLibTar.hpp
HEADERS += Core/Archive/NBLibZip.hpp
HEADERS += Core/CoreTools/NBTools.hpp
HEADERS += Core/DeleteManager/NBDeleteManager.hpp
HEADERS += Core/DeviceInfo/NBDeviceInfo.hpp
HEADERS += Core/FileIO/NBFileIO.hpp
HEADERS += Core/FSWatcher/NBFileSystemWatcher.hpp
HEADERS += Core/IconProvider/NBIconProvider.hpp
HEADERS += Core/MimeHandler/NBMimeDatabase.hpp
HEADERS += Core/MimeHandler/NBMimeDatabase_p.hpp
HEADERS += Core/MimeHandler/NBMimeGlobPattern_p.hpp
HEADERS += Core/MimeHandler/NBMimeMagicRuleMatcher_p.hpp
HEADERS += Core/MimeHandler/NBMimeMagicRule_p.hpp
HEADERS += Core/MimeHandler/NBMimeProvider_p.hpp
HEADERS += Core/MimeHandler/NBMimeType.hpp
HEADERS += Core/MimeHandler/NBMimeTypeParser_p.hpp
HEADERS += Core/MimeHandler/NBMimeType_p.hpp
HEADERS += Core/Server/NBServer.hpp
HEADERS += Core/StandardPaths/NBStandardPaths.hpp
HEADERS += Core/SystemInfo/NBSystemInfo.hpp
HEADERS += Core/XDG/NBXdg.hpp
HEADERS += Gui/Dialogs/FileDialog/NBFDFolderView.hpp
HEADERS += Gui/Dialogs/FileDialog/NBFDItemDelegate.hpp
HEADERS += Gui/Dialogs/FileDialog/NBFileDialog.hpp
HEADERS += Gui/Dialogs/NBConfirmDeleteDialog.hpp
HEADERS += Gui/Dialogs/NBDeleteDialog.hpp
HEADERS += Gui/Dialogs/NBDialog.hpp
HEADERS += Gui/Dialogs/NBFVDialogs.hpp
HEADERS += Gui/Dialogs/NBMessageDialog.hpp
HEADERS += Gui/Dialogs/NBPasteDialog.hpp
HEADERS += Gui/Dialogs/PropertiesDialog/NBPropertiesDialog.hpp
HEADERS += Gui/Dialogs/SettingsManager/NBKeyBinder.hpp
HEADERS += Gui/Dialogs/SettingsManager/NBSettingsManager.hpp
HEADERS += Gui/Dialogs/SettingsManager/NBSettingsWidgets.hpp
HEADERS += Gui/ModelViews/Models/ApplicationsModel/NBApplicationItem.hpp
HEADERS += Gui/ModelViews/Models/ApplicationsModel/NBApplicationsModel.hpp
HEADERS += Gui/ModelViews/Models/CatalogModel/NBCatalogItem.hpp
HEADERS += Gui/ModelViews/Models/CatalogModel/NBCatalogModel.hpp
HEADERS += Gui/ModelViews/Models/FileSystemModel/NBFileInfoGatherer.hpp
HEADERS += Gui/ModelViews/Models/FileSystemModel/NBFileSystemModel.hpp
HEADERS += Gui/ModelViews/Models/FileSystemModel/NBFileSystemNode.hpp
HEADERS += Gui/ModelViews/Models/SidePanelModel/NBSidePanelItem.hpp
HEADERS += Gui/ModelViews/Models/SidePanelModel/NBSidePanelModel.hpp
HEADERS += Gui/ModelViews/Views/AppsView/NBAppsDelegate.hpp
HEADERS += Gui/ModelViews/Views/AppsView/NBAppsView.hpp
HEADERS += Gui/ModelViews/Views/CatalogView/NBCatalogDelegate.hpp
HEADERS += Gui/ModelViews/Views/CatalogView/NBCatalogView.hpp
HEADERS += Gui/ModelViews/Views/IconView/NBIconDelegate.hpp
HEADERS += Gui/ModelViews/Views/IconView/NBIconView.hpp
# HEADERS += Gui/ModelViews/Views/IconView/NBIconView2.hpp
HEADERS += Gui/ModelViews/Views/OpenWithView/NBOpenWithDelegate.hpp
HEADERS += Gui/ModelViews/Views/OpenWithView/NBOpenWithView.hpp
HEADERS += Gui/ModelViews/Views/SidePanelView/NBSidePanelDelegate.hpp
HEADERS += Gui/ModelViews/Views/SidePanelView/NBSidePanelView.hpp
HEADERS += Gui/ModelViews/Views/TreeView/NBTreeDelegate.hpp
HEADERS += Gui/ModelViews/Views/TreeView/NBTreeView.hpp
HEADERS += Gui/NewBreeze.hpp
HEADERS += Gui/Others/Settings/NBSettings.hpp
HEADERS += Gui/Plugins/CustomPeek/NBCustomPeek.hpp
HEADERS += Gui/Plugins/FolderFlash/NBFolderFlash.hpp
HEADERS += Gui/Plugins/ImagePeek/NBImagePeek.hpp
HEADERS += Gui/Plugins/WebWatch/NBWebWatch.hpp
HEADERS += Gui/Plugins/WordView/NBWordView.hpp
HEADERS += Gui/Widgets/AddressBar/NBAddressBar.hpp
HEADERS += Gui/Widgets/BreadCrumbsBar/NBBreadCrumbsBar.hpp
HEADERS += Gui/Widgets/ContextMenu/NBContextMenu.hpp
HEADERS += Gui/Widgets/CustomActions/NBCustomActions.hpp
HEADERS += Gui/Widgets/FolderView/NBFolderView.hpp
HEADERS += Gui/Widgets/FolderView/NBFolderViewRestricted.hpp
HEADERS += Gui/Widgets/GuiWidgets/NBActionButtons.hpp
HEADERS += Gui/Widgets/GuiWidgets/NBGuiWidgets.hpp
HEADERS += Gui/Widgets/GuiWidgets/NBProgressBar.hpp
HEADERS += Gui/Widgets/InfoBar/NBInfoBar.hpp
HEADERS += Gui/Widgets/IOManager/NBIOManager.hpp
HEADERS += Gui/Widgets/QuickMenuBar/NBQuickMenuBar.hpp
HEADERS += Gui/Widgets/ShowHideWidget/NBShowHideWidget.hpp
HEADERS += Gui/Widgets/Terminal/lib/BlockArray.h
HEADERS += Gui/Widgets/Terminal/lib/CharacterColor.h
HEADERS += Gui/Widgets/Terminal/lib/Character.h
HEADERS += Gui/Widgets/Terminal/lib/ColorScheme.h
HEADERS += Gui/Widgets/Terminal/lib/ColorTables.h
HEADERS += Gui/Widgets/Terminal/lib/DefaultTranslatorText.h
HEADERS += Gui/Widgets/Terminal/lib/Emulation.h
HEADERS += Gui/Widgets/Terminal/lib/ExtendedDefaultTranslator.h
HEADERS += Gui/Widgets/Terminal/lib/Filter.h
HEADERS += Gui/Widgets/Terminal/lib/History.h
HEADERS += Gui/Widgets/Terminal/lib/HistorySearch.h
HEADERS += Gui/Widgets/Terminal/lib/KeyboardTranslator.h
HEADERS += Gui/Widgets/Terminal/lib/konsole_wcwidth.h
HEADERS += Gui/Widgets/Terminal/lib/kprocess.h
HEADERS += Gui/Widgets/Terminal/lib/kptydevice.h
HEADERS += Gui/Widgets/Terminal/lib/kpty.h
HEADERS += Gui/Widgets/Terminal/lib/kpty_p.h
HEADERS += Gui/Widgets/Terminal/lib/kptyprocess.h
HEADERS += Gui/Widgets/Terminal/lib/LineFont.h
HEADERS += Gui/Widgets/Terminal/lib/Pty.h
HEADERS += Gui/Widgets/Terminal/lib/qtermwidget.h
HEADERS += Gui/Widgets/Terminal/lib/Screen.h
HEADERS += Gui/Widgets/Terminal/lib/ScreenWindow.h
HEADERS += Gui/Widgets/Terminal/lib/SearchBar.h
HEADERS += Gui/Widgets/Terminal/lib/Session.h
HEADERS += Gui/Widgets/Terminal/lib/ShellCommand.h
HEADERS += Gui/Widgets/Terminal/lib/TerminalCharacterDecoder.h
HEADERS += Gui/Widgets/Terminal/lib/TerminalDisplay.h
HEADERS += Gui/Widgets/Terminal/lib/tools.h
HEADERS += Gui/Widgets/Terminal/lib/Vt102Emulation.h
HEADERS += Gui/Widgets/Terminal/NBTerminal.hpp
HEADERS += Gui/Widgets/TitleBar/NBTitleBar.hpp
HEADERS += StyleSheets/NBStyleManager.hpp

SOURCES += Core/AppFile/NBAppEngine.cpp
SOURCES += Core/AppFile/NBAppFile.cpp
SOURCES += Core/Archive/NBArchive.cpp
SOURCES += Core/Archive/NBLibBZip2.cpp
SOURCES += Core/Archive/NBLibGZip.cpp
SOURCES += Core/Archive/NBLibLzma.cpp
SOURCES += Core/Archive/NBLibTar.cpp
SOURCES += Core/Archive/NBLibZip.cpp
SOURCES += Core/CoreTools/NBTools.cpp
SOURCES += Core/DeleteManager/NBDeleteManager.cpp
SOURCES += Core/DeviceInfo/NBDeviceInfo.cpp
SOURCES += Core/FileIO/NBFileIO.cpp
SOURCES += Core/FSWatcher/NBFileSystemWatcher.cpp
SOURCES += Core/IconProvider/NBIconProvider.cpp
SOURCES += Core/MimeHandler/NBMimeDatabase.cpp
SOURCES += Core/MimeHandler/NBMimeGlobPattern.cpp
SOURCES += Core/MimeHandler/NBMimeMagicRule.cpp
SOURCES += Core/MimeHandler/NBMimeMagicRuleMatcher.cpp
SOURCES += Core/MimeHandler/NBMimeProvider.cpp
SOURCES += Core/MimeHandler/NBMimeType.cpp
SOURCES += Core/MimeHandler/NBMimeTypeParser.cpp
SOURCES += Core/Server/NBServer.cpp
SOURCES += Core/StandardPaths/NBStandardPaths.cpp
SOURCES += Core/StandardPaths/NBStandardPaths_unix.cpp
SOURCES += Core/SystemInfo/NBSystemInfo.cpp
SOURCES += Core/XDG/NBXdg.cpp
SOURCES += Gui/Dialogs/FileDialog/NBFDFolderView.cpp
SOURCES += Gui/Dialogs/FileDialog/NBFDItemDelegate.cpp
SOURCES += Gui/Dialogs/FileDialog/NBFileDialog.cpp
SOURCES += Gui/Dialogs/NBConfirmDeleteDialog.cpp
SOURCES += Gui/Dialogs/NBDeleteDialog.cpp
SOURCES += Gui/Dialogs/NBDialog.cpp
SOURCES += Gui/Dialogs/NBMessageDialog.cpp
SOURCES += Gui/Dialogs/NBNewFileFolderDialog.cpp
SOURCES += Gui/Dialogs/NBPasteDialog.cpp
SOURCES += Gui/Dialogs/NBRenameDialog.cpp
SOURCES += Gui/Dialogs/NBRunCmdDialog.cpp
SOURCES += Gui/Dialogs/PropertiesDialog/NBPropertiesDialog.cpp
SOURCES += Gui/Dialogs/SettingsManager/NBKeyBinder.cpp
SOURCES += Gui/Dialogs/SettingsManager/NBSettingsManager.cpp
SOURCES += Gui/Dialogs/SettingsManager/NBSettingsWidgets.cpp
SOURCES += Gui/ModelViews/Models/ApplicationsModel/NBApplicationItem.cpp
SOURCES += Gui/ModelViews/Models/ApplicationsModel/NBApplicationsModel.cpp
SOURCES += Gui/ModelViews/Models/CatalogModel/NBCatalogItem.cpp
SOURCES += Gui/ModelViews/Models/CatalogModel/NBCatalogModel.cpp
SOURCES += Gui/ModelViews/Models/FileSystemModel/NBFileInfoGatherer.cpp
SOURCES += Gui/ModelViews/Models/FileSystemModel/NBFileSystemModel.cpp
SOURCES += Gui/ModelViews/Models/FileSystemModel/NBFileSystemNode.cpp
SOURCES += Gui/ModelViews/Models/SidePanelModel/NBSidePanelItem.cpp
SOURCES += Gui/ModelViews/Models/SidePanelModel/NBSidePanelModel.cpp
SOURCES += Gui/ModelViews/Views/AppsView/NBAppsDelegate.cpp
SOURCES += Gui/ModelViews/Views/AppsView/NBAppsView.cpp
SOURCES += Gui/ModelViews/Views/CatalogView/NBCatalogDelegate.cpp
SOURCES += Gui/ModelViews/Views/CatalogView/NBCatalogView.cpp
SOURCES += Gui/ModelViews/Views/IconView/NBIconDelegate.cpp
SOURCES += Gui/ModelViews/Views/IconView/NBIconView.cpp
# SOURCES += Gui/ModelViews/Views/IconView/NBIconView2.cpp
SOURCES += Gui/ModelViews/Views/OpenWithView/NBOpenWithDelegate.cpp
SOURCES += Gui/ModelViews/Views/OpenWithView/NBOpenWithView.cpp
SOURCES += Gui/ModelViews/Views/SidePanelView/NBSidePanelDelegate.cpp
SOURCES += Gui/ModelViews/Views/SidePanelView/NBSidePanelView.cpp
SOURCES += Gui/ModelViews/Views/TreeView/NBTreeDelegate.cpp
SOURCES += Gui/ModelViews/Views/TreeView/NBTreeView.cpp
SOURCES += Gui/NewBreeze.cpp
SOURCES += Gui/Others/NBStartup.cpp
SOURCES += Gui/Others/NBUpdater.cpp
SOURCES += Gui/Others/Settings/NBSettings.cpp
SOURCES += Gui/Plugins/CustomPeek/NBCustomPeek.cpp
SOURCES += Gui/Plugins/FolderFlash/NBFolderFlash.cpp
SOURCES += Gui/Plugins/ImagePeek/NBImagePeek.cpp
SOURCES += Gui/Plugins/WebWatch/NBWebWatch.cpp
SOURCES += Gui/Plugins/WordView/NBWordView.cpp
SOURCES += Gui/Widgets/AddressBar/NBAddressBar.cpp
SOURCES += Gui/Widgets/BreadCrumbsBar/NBBreadCrumbsBar.cpp
SOURCES += Gui/Widgets/ContextMenu/NBContextMenu.cpp
SOURCES += Gui/Widgets/CustomActions/NBCustomActions.cpp
SOURCES += Gui/Widgets/FolderView/NBFolderView.cpp
SOURCES += Gui/Widgets/FolderView/NBFolderViewRestricted.cpp
SOURCES += Gui/Widgets/GuiWidgets/NBActionButtons.cpp
SOURCES += Gui/Widgets/GuiWidgets/NBGuiWidgets.cpp
SOURCES += Gui/Widgets/GuiWidgets/NBProgressBar.cpp
SOURCES += Gui/Widgets/InfoBar/NBInfoBar.cpp
SOURCES += Gui/Widgets/IOManager/NBIOManager.cpp
SOURCES += Gui/Widgets/QuickMenuBar/NBQuickMenuBar.cpp
SOURCES += Gui/Widgets/ShowHideWidget/NBShowHideWidget.cpp
SOURCES += Gui/Widgets/Terminal/lib/BlockArray.cpp
SOURCES += Gui/Widgets/Terminal/lib/ColorScheme.cpp
SOURCES += Gui/Widgets/Terminal/lib/Emulation.cpp
SOURCES += Gui/Widgets/Terminal/lib/Filter.cpp
SOURCES += Gui/Widgets/Terminal/lib/History.cpp
SOURCES += Gui/Widgets/Terminal/lib/HistorySearch.cpp
SOURCES += Gui/Widgets/Terminal/lib/KeyboardTranslator.cpp
SOURCES += Gui/Widgets/Terminal/lib/konsole_wcwidth.cpp
SOURCES += Gui/Widgets/Terminal/lib/kprocess.cpp
SOURCES += Gui/Widgets/Terminal/lib/kpty.cpp
SOURCES += Gui/Widgets/Terminal/lib/kptydevice.cpp
SOURCES += Gui/Widgets/Terminal/lib/kptyprocess.cpp
SOURCES += Gui/Widgets/Terminal/lib/Pty.cpp
SOURCES += Gui/Widgets/Terminal/lib/qtermwidget.cpp
SOURCES += Gui/Widgets/Terminal/lib/Screen.cpp
SOURCES += Gui/Widgets/Terminal/lib/ScreenWindow.cpp
SOURCES += Gui/Widgets/Terminal/lib/SearchBar.cpp
SOURCES += Gui/Widgets/Terminal/lib/Session.cpp
SOURCES += Gui/Widgets/Terminal/lib/ShellCommand.cpp
SOURCES += Gui/Widgets/Terminal/lib/TerminalCharacterDecoder.cpp
SOURCES += Gui/Widgets/Terminal/lib/TerminalDisplay.cpp
SOURCES += Gui/Widgets/Terminal/lib/tools.cpp
SOURCES += Gui/Widgets/Terminal/lib/Vt102Emulation.cpp
SOURCES += Gui/Widgets/Terminal/NBTerminal.cpp
SOURCES += Gui/Widgets/TitleBar/NBTitleBar.cpp
SOURCES += StyleSheets/NBStyleManager.cpp
SOURCES += Main.cpp

FORMS = Gui/Widgets/Terminal/lib/SearchBar.ui
RESOURCES += NewBreeze.qrc #Gui/Widgets/Terminal/data/color-schemes/color-schemes.qrc Gui/Widgets/Terminal/data/kb-layouts/kb-layouts.qrc

# C++11 Support
QMAKE_CXXFLAGS += -std=c++0x

CONFIG += warn_all thread

MOC_DIR 	= build/moc
OBJECTS_DIR = build/objs
RCC_DIR		= build/qrc
UI_DIR      = build/uic

unix {
	isEmpty(PREFIX) {
		PREFIX = /usr
	}
	BINDIR = $$PREFIX/bin

	INSTALLS += target desktop icons data
	target.path = $$BINDIR

	desktop.path = $$PREFIX/share/applications/
	desktop.files = newbreeze.desktop

	icons.path = $$PREFIX/share/icons/hicolor/256x256/apps/
	icons.files = icons/newbreeze.png

	data.path = $$PREFIX/share/newbreeze/
	data.files = Gui/Widgets/Terminal/data/color-schemes Gui/Widgets/Terminal/data/kb-layouts README.md freedesktop.org.xml README Changelog
}

DEFINES += "HAVE_POSIX_OPENPT"
DEFINES += "HAVE_SYS_TIME_H"
DEFINES += "KB_LAYOUT_DIR=\\\""$$PREFIX/share/newbreeze/kb-layouts"\\\""
DEFINES += "COLORSCHEMES_DIR=\\\""$$PREFIX/share/newbreeze/color-schemes"\\\""
DEFINES += "DATA_DIR=\\\""$$PREFIX/share/newbreeze/"\\\""
