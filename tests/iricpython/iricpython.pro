######################################################################
# Automatically generated by qmake (2.01a) ? 10 23 12:19:59 2014
######################################################################

TEMPLATE = app
TARGET = iricPythonTest
CONFIG   += console
CONFIG   += c++11

CONFIG(debug, debug|release) {
	QT += gui widgets network
} else {
	QT += gui widgets
}

include( ../../paths.pri )

######################
# Internal libraries #
######################

#iricGui library

win32 {
	CONFIG(debug, debug|release) {
		LIBS += -L"../../libs/gui/debug"
	} else {
		LIBS += -L"../../libs/gui/release"
	}
}
unix {
	LIBS += -L"../../libs/gui"
}
LIBS += -liricGui

#iricPython library

win32 {
	CONFIG(debug, debug|release) {
		LIBS += -L"../../libs/iricpython/debug"
	} else {
		LIBS += -L"../../libs/iricpython/release"
	}
}
unix {
	LIBS += -L"../../libs/iricpython"
}
LIBS += -liricPython

SOURCES += iricpython.cpp
