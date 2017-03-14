TEMPLATE = app
TARGET = Rivmaker
CONFIG += qt
CONFIG += debug_and_release

include( ../../paths.pri )

QT += widgets network
RC_FILE = rivmaker.rc

######################
# External libraries #
######################

# VTK

LIBS += \
	-lvtkCommonCore-6.1 \
	-lvtkCommonDataModel-6.1 \
	-lvtkInteractionStyle-6.1 \
	-lvtkIOExport-6.1 \
	-lvtkRenderingFreeType-6.1 \
	-lvtkRenderingFreeTypeOpenGL-6.1 \
	-lvtkRenderingOpenGL-6.1

# Input
HEADERS += dialogs/mousehelpdialog.h \
           main/rivmakermainwindow.h \
           window/viewwindowi.h \
           data/base/dataitem.h \
           data/base/dataitemcontroller.h \
           data/base/dataitemview.h \
           data/base/dataitemviewhelperi.h \
           data/base/model.h \
           data/base/model_detail.h \
           data/base/rootdataitem.h \
           data/base/topview.h \
           data/base/view.h \
           data/baseline/baseline.h \
           data/baseline/baselinepreprocessorview.h \
           data/baseline/baselinepreprocessorviewhelper.h \
           data/crosssection/crosssection.h \
           data/crosssections/crosssections.h \
           data/elevationpoints/elevationpoints.h \
           data/elevationpoints/elevationpointspreprocessorview.h \
           data/elevationpoints/elevationpointspreprocessorviewhelper.h \
           data/project/project.h \
           data/project/riversurveydatacreator.h \
           data/riversurveydata/riversurveydata.h \
           data/riversurveydatacrosssection/riversurveydatacrosssection.h \
           data/riversurveydatadummy/riversurveydatadummy.h \
           data/watersurfaceelevationpoints/watersurfaceelevationpoints.h \
           io/points/pointscsvimporter.h \
           io/points/pointsimporter.h \
           io/points/pointsimporteri.h \
           main/private/rivmakermainwindow_impl.h \
           window/crosssection/crosssectionwindow.h \
           window/preprocessor/preprocessordataitemi.h \
           window/preprocessor/preprocessormodel.h \
           window/preprocessor/preprocessorview.h \
           window/preprocessor/preprocessorwindow.h \
           window/verticalcrosssection/verticalcrosssectionwindow.h \
           data/base/private/dataitemcontroller_impl.h \
           data/base/private/dataitemview_impl.h \
           data/base/private/model_impl.h \
           data/baseline/private/baseline_impl.h \
           data/project/private/project_impl.h \
           window/preprocessor/objectbrowser/objectbrowser.h \
           window/preprocessor/objectbrowser/objectbrowserview.h \
           window/preprocessor/private/preprocessormodel_impl.h \
           window/preprocessor/private/preprocessorwindow_impl.h
FORMS += dialogs/mousehelpdialog.ui \
         main/rivmakermainwindow.ui \
         window/verticalcrosssection/verticalcrosssectionwindow.ui
SOURCES += dialogs/mousehelpdialog.cpp \
           main/main.cpp \
           main/rivmakermainwindow.cpp \
           main/rivmakermainwindow_setupconnections.cpp \
           data/base/dataitem.cpp \
           data/base/dataitemcontroller.cpp \
           data/base/dataitemview.cpp \
           data/base/dataitemviewhelperi.cpp \
           data/base/model.cpp \
           data/base/rootdataitem.cpp \
           data/base/topview.cpp \
           data/base/view.cpp \
           data/baseline/baseline.cpp \
           data/baseline/baselinepreprocessorview.cpp \
           data/baseline/baselinepreprocessorviewhelper.cpp \
           data/crosssection/crosssection.cpp \
           data/crosssections/crosssections.cpp \
           data/elevationpoints/elevationpoints.cpp \
           data/elevationpoints/elevationpointspreprocessorview.cpp \
           data/elevationpoints/elevationpointspreprocessorviewhelper.cpp \
           data/project/project.cpp \
           data/project/riversurveydatacreator.cpp \
           data/riversurveydata/riversurveydata.cpp \
           data/riversurveydatacrosssection/riversurveydatacrosssection.cpp \
           data/riversurveydatadummy/riversurveydatadummy.cpp \
           data/watersurfaceelevationpoints/watersurfaceelevationpoints.cpp \
           io/points/pointscsvimporter.cpp \
           io/points/pointsimporter.cpp \
           window/crosssection/crosssectionwindow.cpp \
           window/preprocessor/preprocessormodel.cpp \
           window/preprocessor/preprocessorview.cpp \
           window/preprocessor/preprocessorwindow.cpp \
           window/verticalcrosssection/verticalcrosssectionwindow.cpp \
           window/preprocessor/objectbrowser/objectbrowser.cpp \
           window/preprocessor/objectbrowser/objectbrowserview.cpp
RESOURCES += rivmaker.qrc
