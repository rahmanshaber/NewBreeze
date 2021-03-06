# NewBreeze

## A fast and light-weight file manager based on Qt

### Qt5 builds are now supported

### Note: NewBreeze 3.0 is in the oven. Expect several changes..!!

Built on top of the Powerful Qt GUI Toolkit, this file manager is sleek, stylish and fast.
Some of its features are

* Fast startup and browsing
* Folder, text, html, image, odt, and pdf quick preview
* File Association support
* Provides Categorized List, Icon and Details View
* Sleek side panel showing drives and boomarks
* Full drag and drop support
* Applications and Catalog View
* Auto update devices list
* Custom Folder Icons and Thumbnail Preview
* Complete mime-icon support
* BreadCrumbs Navigation Bar
* Custom Actions
* Inline terminal
* SingleApplication Mode for resource sharing
* Plugin System Support

## Linux Source Available
### Windows source is no longer being maintained

### Please READ the ReleaseNotes for information on the new features

### Notes for compiling - linux:

* Download the sources
   - Git: `git clone https://github.com/marcusbritanicus/NewBreeze NewBreeze-master`
   - Tar: `wget https://github.com/marcusbritanicus/NewBreeze/archive/master.tar.gz && tar -xf master.tar.gz`
* Enter `NewBreeze-master`
* Open the terminal and type: `qmake && make`
* To install, as root type: `make install`

### Dependencies:
* Qt4/Qt5
* zlib
* liblzma
* libbzip2
* libarchive
* xdg-utls
* libpoppler-qt4/qt5
* libsource-highlight-dev (optional)
* libpoppler-qt4-dev/libpoppler-qt5-dev (optional)
* libdjvulibre-dev (optional)

### Known Bugs
* Extended copy/move causes crashes. Disabled by default.

### Upcoming
* Application Editor (Desktop file editor)
* Any other feature you request for... :)
