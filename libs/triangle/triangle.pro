######################################################################
# Automatically generated by qmake (2.01a) ? 10 24 09:50:18 2014
######################################################################

TARGET = iricTriangle
TEMPLATE = lib

DEFINES += TRIANGLE_LIBRARY
DEFINES += TRILIBRARY
DEFINES += ANSI_DECLARATORS

win32 {
	DEFINES += CPU86
	DEFINES += NO_TIMER
}

include( ../../paths.pri )

# Input
HEADERS += triangle.h \
           triangle_global.h \
           triangleexecutethread.h
SOURCES += triangle.cpp \
           triangleexecutethread.cpp
