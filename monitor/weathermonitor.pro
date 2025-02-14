QT       += core gui network

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets webchannel

CONFIG += c++11

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    src/about/aboutdialog.cpp \
    src/common/comdefine.cpp \
    src/dialplate/dialplate.cpp \
    src/feedback/feedbackdialog.cpp \
    src/iteminfobase/iteminfobase.cpp \
    src/main.cpp \
    src/monitormenu/monitormenu.cpp \
    src/pluginmanage/plugininfo.cpp \
    src/pluginmanage/pluginmanage.cpp \
    src/precipitationforecast/precipitationforecast.cpp \
    src/weekendforecast/weekendforecast.cpp \
    src/topinfo/topinfo.cpp \
    src/simpleinfo/simpleweatherinfo.cpp \
    src/weatherinfotoday/weatherinfotoday.cpp \
    src/dialimage/dialimage.cpp \
    src/weathermonitor.cpp \
    src/uimanage.cpp

HEADERS += \
    ../pluginprecipitationradar/src/interface.h\
    \
    src/about/aboutdialog.h \
    src/common/comdefine.h \
    src/dialplate/dialplate.h \
    src/feedback/feedbackdialog.h \
    src/iteminfobase/iteminfobase.h \
    src/monitormenu/monitormenu.h \
    src/pluginmanage/plugininfo.h \
    src/pluginmanage/pluginmanage.h \
    src/precipitationforecast/precipitationforecast.h \
    src/weekendforecast/weekendforecast.h \
    src/topinfo/topinfo.h \
    src/simpleinfo/simpleweatherinfo.h \
    src/weatherinfotoday/weatherinfotoday.h \
    src/dialimage/dialimage.h \
    src/weathermonitor.h \
    src/uimanage.h

RESOURCES += \
    src/roomenvironmentmonitor.qrc

TARGET = weathermonitor

VERSION = 0.0.1

INCLUDEPATH += ../platform/include
CONFIG(Debug)
{
    LIBS += -L../build/debug -lplatform
}
CONFIG(Release)
{
    LIBS = -L../build/release -lplatform
}

CONFIG(Debug){
MOC_DIR = temp/debug/moc
OBJECTS_DIR = temp/debug/obj
RCC_DIR = temp/debug/rc
UI_DIR = temp/debug/qui
DESTDIR = ../build/debug
}

CONFIG(Release){
MOC_DIR = temp/release/moc
OBJECTS_DIR = temp/release/obj
RCC_DIR = temp/release/
UI_DIR = temp/release/qui
DESTDIR = ../build/release
}
