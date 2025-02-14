QT += widgets gui network

TEMPLATE = lib
DEFINES += INTERFACE_LIBRARY
TARGET = rainfallradar

CONFIG += c++11

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    src/achieve.cpp

HEADERS += \
    src/pluginprecipitationradar_global.h \
    src/interface.h \
    src/achieve.h

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

RESOURCES += \
    pluginprecipitationradar.qrc
