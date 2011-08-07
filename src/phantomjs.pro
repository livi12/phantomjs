TEMPLATE = app
TARGET = phantomjs
QT += network webkit
CONFIG += console

# Comment to enable Debug Messages
DEFINES += QT_NO_DEBUG_OUTPUT

DESTDIR = ../bin

RESOURCES = phantomjs.qrc

HEADERS += csconverter.h \
    phantom.h \
    webpage.h \
    consts.h \
    utils.h \
    networkaccessmanager.h \
    cookiejar.h \
    filesystem.h
SOURCES += phantom.cpp \
    webpage.cpp \
    main.cpp \
    csconverter.cpp \
    utils.cpp \
    networkaccessmanager.cpp \
    cookiejar.cpp \
    filesystem.cpp

OTHER_FILES = bootstrap.js

include(gif/gif.pri)

win32: RC_FILE = phantomjs_win.rc
os2:   RC_FILE = phantomjs_os2.rc

mac {
    CONFIG -= app_bundle
# Uncomment to build a Mac OS X Universal Binary (i.e. x86 + ppc)
#    CONFIG += x86 ppc
}
