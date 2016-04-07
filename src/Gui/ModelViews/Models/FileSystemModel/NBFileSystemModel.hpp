/*
	*
	* NBNBFileSystemModel.hpp - NewBreeze NBFileSystemModel Class Header
	*
*/

#pragma once

#include <Global.hpp>
#include <NBTools.hpp>
#include <NBIconProvider.hpp>
#include <NBFileSystemNode.hpp>
#include <NBFileInfoGatherer.hpp>
#include <NBFileSystemWatcher.hpp>

class NBIconUpdater : public QThread {
	Q_OBJECT

		public:
		NBIconUpdater( QString, QStringList, bool *term );
		~NBIconUpdater();

	private:
		void run();

		QStringList entryList;
		QString rootPath;

		bool *__terminate;

	signals:
		void updated( QString, QString, QStringList );
};

class NBFileSystemModel : public QAbstractItemModel {
    Q_OBJECT

	public:
		enum Sections {
			NAME = 3,
			SIZE = 4,
			TYPE = 5,
			MIME = 6,
			TIME = 7,
			PERM = 8,
			OWNR = 9
		};

		enum Filters {
			Dirs,
			Files,
			NoSymLinks,
			AllEntries,
			Readable,
			Writable,
			Executable,
			Modified,
			Hidden,
			System,
		};

		NBFileSystemModel();
		~NBFileSystemModel();

		// Categorization Info
		bool isCategorizationEnabled();
		void setCategorizationEnabled( bool );

		// Children Info
		int rowCount( const QModelIndex &parent = QModelIndex() ) const;
		int rowCount( const QString category ) const;
		int categoryCount() const;

		int columnCount( const QModelIndex &parent = QModelIndex() ) const;

		Qt::ItemFlags flags( const QModelIndex &) const;

		// Display Info
		QVariant data( const QModelIndex &index, int role = Qt::DisplayRole ) const;
		QVariant headerData( int section, Qt::Orientation orientation, int role = Qt::DisplayRole ) const;
		bool setData( const QModelIndex &index, QVariant value, int role );

		// Data editing
		bool insertNode( QString name );
		bool removeNode( QString name );
		void updateNode( QString name );

		// Node Info
		QModelIndex index( int row = 0, int column = 0, const QModelIndex &parent = QModelIndex() ) const;
		QModelIndex index( QString, const QModelIndex &parent = QModelIndex() ) const;
		QModelIndex parent( const QModelIndex &index = QModelIndex() ) const;

		QString category( const QModelIndex &index = QModelIndex() ) const;
		int categoryIndex( const QModelIndex &index = QModelIndex() ) const;
		QStringList categories() const;
		QPixmap pixmapForCategory( QString ) const;

		int indexListCountForCategory( QString ) const;
		QModelIndexList indexListForCategory( QString ) const;
		QModelIndexList categorySiblings( QModelIndex ) const;

		bool showHidden() const;
		void setShowHidden( bool );

		// Drag and Drop
		Qt::DropActions supportedDropActions() const;
		Qt::DropActions supportedDragActions() const;
		Qt::ItemFlags flags( const QModelIndex index ) const;
		QStringList mimeTypes() const;

		// Filters
		bool filter( Filters filter );
		void setFilter( Filters filter, bool );
		QStringList nameFilters();
		void setNameFilters( QStringList );
		void clearNameFilters();

		bool filterFolders() const;
		void setFilterFolders( bool );

		void sort( int column, bool cs, bool categorized );
		void reload();

		// FS Modification
		bool rename( QString, QString );

		// FS Navigation
		QString nodeName( const QModelIndex ) const;
		QString nodePath( const QModelIndex ) const;
		QString nodePath( QString ) const;
		QFileInfo nodeInfo( const QModelIndex ) const;

		QString rootPath() const;
		void setRootPath( QString );

		// Load CombiView
		void loadCombiView();

		void goUp();
		void goBack();
		void goForward();
		void goHome();

		bool canGoUp() const;
		bool canGoBack() const;
		bool canGoForward() const;

		QString currentDir() const;
		QString previousDir() const;
		QString nextDir() const;
		QString parentDir() const;

		// To halt the Info Gathering
		void terminateInfoGathering();

	private:
		// CombiData
		QVariant combiData( const QModelIndex &index, int role = Qt::DisplayRole ) const;

		// Model Data for normal filesystem
		void setupModelData();

		// Model Data for combi view
		void setupCombiViewData();

		/* New watch */
		void newWatch( QString );

		QString getCategory( QVariantList );
		void recategorize();

		NBFileSystemNode *rootNode;

		QString __rootPath;
		QStringList __childNames;

		QHash<QString, QList<int> > categoryRowMap;
		QHash<QString, bool> categoryVisibilityMap;

		bool mCategorizationEnabled;

		struct __prevSort {
			int column;
			bool cs;
			bool categorized;
		} prevSort;

		struct loadStatus {
			bool loading;
			bool stopLoading;
		} currentLoadStatus;

		bool __showHidden;

		QStringList __nameFilters;
		bool __filterFolders;

		// CombiView
		bool __mCombiShown;

		// History
		QStringList oldRoots;
		long curIndex;

		/* To manage the rapidly changing nodes */
		mutable QStringList lastUpdatedNodes;
		mutable QList<QTime> lastUpdatedTimes;
		mutable QStringList delayedUpdateList;
		QBasicTimer updateTimer;

		// Info Gatherer kill switch
		bool __terminate;

		NBQuickFileInfoGatherer *quickDataGatherer;
		NBFileSystemWatcher *watcher;

	private slots:
		void updateAllNodes( QString root = QString() );
		void saveInfo( QString, QString, QStringList );

		void handleNodeCreated( QString );
		void handleNodeChanged( QString );
		void handleNodeDeleted( QString );
		void handleNodeRenamed( QString, QString );
		void loadHome();

		void updateDelayedNodes();

	protected:
		void timerEvent( QTimerEvent* );

	Q_SIGNALS:
		// Update Node
		void nodeUpdated( QString );

		void loadFileInfo();
		void dirLoading( QString );
		void directoryLoaded( QString );
		void runningHome( QString );

		// Experimental
		void loadApplications();
		void loadCatalogs();
		void loadFolders();
};
