######################################################################
# Automatically generated by qmake (2.01a) ? 10 24 00:36:17 2014
######################################################################

TARGET = iricGuicore
TEMPLATE = lib


DEFINES += GUICORE_LIBRARY
DEFINES += ANSI_DECLARATORS

include( ../../paths.pri )

QT += network widgets xml

######################
# Internal libraries #
######################

# iricMisc

CONFIG(debug, debug|release) {
	LIBS += -L"../misc/debug"
} else {
	LIBS += -L"../misc/release"
}
LIBS += -liricMisc

# iricTriangle

CONFIG(debug, debug|release) {
	LIBS += -L"../triangle/debug"
} else {
	LIBS += -L"../triangle/release"
}
LIBS += -liricTriangle

# iricGuibase

CONFIG(debug, debug|release) {
	LIBS += -L"../guibase/debug"
} else {
	LIBS += -L"../guibase/release"
}
LIBS += -liricGuibase

######################
# External libraries #
######################

# Qwt

CONFIG(debug, debug|release) {
	LIBS += -lqwtd
}
else {
	LIBS += -lqwt
	DEFINES += QT_NO_DEBUG_OUTPUT
	DEFINES += QT_NO_WARNING_OUTPUT
}

# VTK

LIBS += \
	-lvtkCommonCore-6.1 \
	-lvtkCommonDataModel-6.1 \
	-lvtkCommonExecutionModel-6.1 \
	-lvtkCommonMisc-6.1 \
	-lvtkFiltersCore-6.1 \
	-lvtkFiltersGeometry-6.1 \
	-lvtkFiltersGeneral-6.1 \
	-lvtkFiltersExtraction-6.1 \
	-lvtkFiltersSources-6.1 \
	-lvtkFiltersTexture-6.1 \
	-lvtkGUISupportQt-6.1 \
	-lvtkInteractionWidgets-6.1 \
	-lvtkIoImage-6.1 \
	-lvtkIoCore-6.1 \
	-lvtkIoLegacy-6.1 \
	-lvtkRenderingAnnotation-6.1 \
	-lvtkRenderingCore-6.1 \
	-lvtkRenderingFreeType-6.1 \
	-lvtkRenderingLabel-6.1 \
	-lvtkRenderingLOD-6.1 \
	-lvtkRenderingQt-6.1

# cgnslib
LIBS += -lcgnsdll

# iriclib

LIBS += -liriclib

# Input
HEADERS += guicore_global.h \
           axis2d/axis2ddataitem.h \
           axis3d/axis3ddataitem.h \
           base/additionalmenuwindow.h \
           base/animationcontrollerinterface.h \
           base/clipboardoperatablewindow.h \
           base/iricmainwindowinterface.h \
           base/particleexportwindow.h \
           base/propertybrowser.h \
           base/snapshotenabledwindow.h \
           base/svgsnapshotenabledwindow.h \
           base/windowwithobjectbrowser.h \
           base/windowwithpropertybrowser.h \
           base/windowwithzindex.h \
           datamodel/attributebrowsertargetdataitem.h \
           datamodel/graphics2dwindowdatamodel.h \
           datamodel/graphics3dwindowdatamodel.h \
           datamodel/graphicswindowdataitem.h \
           datamodel/graphicswindowdatamodel.h \
           datamodel/graphicswindowdrawcommands.h \
           datamodel/graphicswindowrootdataitem.h \
           datamodel/graphicswindowsimpledatamodel.h \
           datamodel/propertybrowserattribute.h \
           datamodel/propertybrowserview.h \
           datamodel/rawdataproxydataitem.h \
           datamodel/vtk2dgraphicsview.h \
           datamodel/vtk3dgraphicsview.h \
           datamodel/vtkgraphicsview.h \
           distancemeasure/distancemeasurecopypropertydialog.h \
           distancemeasure/distancemeasuredataitem.h \
           distancemeasure/distancemeasuregroupdataitem.h \
           measureddata/measureddatafiledataitem.h \
           measureddata/measureddatapointdataitem.h \
           measureddata/measureddatapointgroupdataitem.h \
           measureddata/measureddatapointsettingdialog.h \
           measureddata/measureddatavectordataitem.h \
           measureddata/measureddatavectorgroupdataitem.h \
           measureddata/measureddatavectorsettingdialog.h \
           misc/mouseboundingbox.h \
           misc/mousepositionwidget.h \
           misc/qundocommandhelper.h \
           post/postprocessorwindow.h \
           post/postprocessorwindowfactoryinterface.h \
           post/postprocessorwindowprojectdataitem.h \
           post/postzoneselectingdialog.h \
           postcontainer/postabstractsteps.h \
           postcontainer/postbaseiterativeseriesdatacontainer.h \
           postcontainer/postbaseselectingdialog.h \
           postcontainer/postdatacontainer.h \
           postcontainer/postdataexportdialog.h \
           postcontainer/postdummy3dzonedatacontainer.h \
           postcontainer/postiterationsteps.h \
           postcontainer/postseriesdatacontainer.h \
           postcontainer/postsolutioninfo.h \
           postcontainer/posttimesteps.h \
           postcontainer/postzonedatacontainer.h \
           postcontainer/postzonepointseriesdatacontainer.h \
           project/backgroundimageinfo.h \
           project/backgroundimageinfodialog.h \
           project/cgnsfilelist.h \
           project/colorsource.h \
           project/measureddata.h \
           project/offsetsettingdialog.h \
           project/projectcgnsfile.h \
           project/projectdata.h \
           project/projectdataitem.h \
           project/projectmainfile.h \
           project/projectpostprocessors.h \
           project/projectworkspace.h \
           project/workfolderinfo.h \
           scalarstocolors/colortransferfunctioncontainer.h \
           scalarstocolors/colortransferfunctioneditdialog.h \
           scalarstocolors/colortransferfunctioneditwidget.h \
           scalarstocolors/lookuptablecontainer.h \
           scalarstocolors/lookuptableeditwidget.h \
           scalarstocolors/scalarstocolorscontainer.h \
           scalarstocolors/scalarstocolorseditdialog.h \
           scalarstocolors/scalarstocolorseditwidget.h \
           scalarstocolors/scalarstocolorseditwidgetcontainer.h \
           solverdef/enumloader.h \
           solverdef/solverdefinition.h \
           solverdef/solverdefinitionabstract.h \
           solverdef/solverdefinitionboundarycondition.h \
           solverdef/solverdefinitiongridrelatedcomplexcondition.h \
           solverdef/solverdefinitiongridrelatedcondition.h \
           solverdef/solverdefinitiongridrelatedconditiondimension.h \
           solverdef/solverdefinitiongridrelatedconditiondimensioncreator.h \
           solverdef/solverdefinitiongridrelatedconditiondimensiont.h \
           solverdef/solverdefinitiongridrelatedconditiont.h \
           solverdef/solverdefinitiongridtype.h \
           solverdef/solverdefinitionintegercellgridrelatedcondition.h \
           solverdef/solverdefinitionintegernodegridrelatedcondition.h \
           solverdef/solverdefinitionintegeroptioncellgridrelatedcondition.h \
           solverdef/solverdefinitionintegeroptionnodegridrelatedcondition.h \
           solverdef/solverdefinitionnode.h \
           solverdef/solverdefinitionrealcellgridrelatedcondition.h \
           solverdef/solverdefinitionrealnodegridrelatedcondition.h \
           solverdef/solverdefinitionrealoptioncellgridrelatedcondition.h \
           solverdef/solverdefinitionrealoptionnodegridrelatedcondition.h \
           solverdef/solverdefinitiontranslator.h \
           pre/base/preprocessordataitem.h \
           pre/base/preprocessordatamodelinterface.h \
           pre/base/preprocessorgraphicsviewinterface.h \
           pre/base/preprocessorgridandgridcreatingconditiondataiteminterface.h \
           pre/base/preprocessorgridcreatingconditiondataiteminterface.h \
           pre/base/preprocessorgriddataiteminterface.h \
           pre/base/preprocessorgridtypedataiteminterface.h \
           pre/base/preprocessorrawdatacomplexgroupdataiteminterface.h \
           pre/base/preprocessorrawdatadataiteminterface.h \
           pre/base/preprocessorrawdatagroupdataiteminterface.h \
           pre/base/preprocessorrawdatatopdataiteminterface.h \
           pre/base/preprocessorwindowinterface.h \
           pre/complex/gridcomplexconditiondialog.h \
           pre/complex/gridcomplexconditionwidget.h \
           pre/complex/gridcomplexconditionwidgetcontainer.h \
           pre/grid/grid.h \
           pre/grid/grid2d.h \
           pre/grid/grid3d.h \
           pre/grid/gridexporterinterface.h \
           pre/grid/gridimporterinterface.h \
           pre/grid/gridinternalexporter.h \
           pre/grid/gridinternalimporter.h \
           pre/grid/structured15dgridwithcrosssection.h \
           pre/grid/structured2dgrid.h \
           pre/grid/unstructured2dgrid.h \
           pre/gridcond/gridrelatedcellconditionpropertydialog.h \
           pre/gridcond/gridrelatednodeconditionpropertydialog.h \
           pre/gridcreatingcondition/gridcreatingcondition.h \
           pre/gridcreatingcondition/gridcreatingconditioncreator.h \
           pre/hydraulicdata/hydraulicdataimporter.h \
           pre/rawdata/rawdata.h \
           pre/rawdata/rawdatacellmapper.h \
           pre/rawdata/rawdatacellmappert.h \
           pre/rawdata/rawdatacreator.h \
           pre/rawdata/rawdataexporter.h \
           pre/rawdata/rawdataimporter.h \
           pre/rawdata/rawdatamapper.h \
           pre/rawdata/rawdatamappert.h \
           pre/rawdata/rawdatanodemapper.h \
           pre/rawdata/rawdatanodemappert.h \
           pre/rawdata/rawdataproxy.h \
           pre/rawdatabackground/rawdatabackground.h \
           pre/rawdatabackground/rawdatabackgroundcellmappert.h \
           pre/rawdatabackground/rawdatabackgroundcomplex.h \
           pre/rawdatabackground/rawdatabackgroundcomplexcreator.h \
           pre/rawdatabackground/rawdatabackgroundcreatort.h \
           pre/rawdatabackground/rawdatabackgroundeditdialog.h \
           pre/rawdatabackground/rawdatabackgroundintegercreator.h \
           pre/rawdatabackground/rawdatabackgroundnodemappert.h \
           pre/rawdatabackground/rawdatabackgroundrealcreator.h \
           project/inputcond/cgnsfileinputconditioncontainer.h \
           project/inputcond/cgnsfileinputconditioncontainerfunctional.h \
           project/inputcond/cgnsfileinputconditioncontainerinteger.h \
           project/inputcond/cgnsfileinputconditioncontainerreal.h \
           project/inputcond/cgnsfileinputconditioncontainerset.h \
           project/inputcond/cgnsfileinputconditioncontainerstring.h \
           project/inputcond/cgnsfileinputconditiondependency.h \
           project/inputcond/cgnsfileinputconditiondialog.h \
           project/inputcond/cgnsfileinputconditionpage.h \
           project/inputcond/cgnsfileinputconditionpagecontainer.h \
           project/inputcond/cgnsfileinputconditionpagelist.h \
           project/inputcond/cgnsfileinputconditionwidget.h \
           project/inputcond/cgnsfileinputconditionwidgetfilename.h \
           project/inputcond/cgnsfileinputconditionwidgetfoldername.h \
           project/inputcond/cgnsfileinputconditionwidgetfunctional.h \
           project/inputcond/cgnsfileinputconditionwidgetinteger.h \
           project/inputcond/cgnsfileinputconditionwidgetintegeroption.h \
           project/inputcond/cgnsfileinputconditionwidgetreal.h \
           project/inputcond/cgnsfileinputconditionwidgetrealoption.h \
           project/inputcond/cgnsfileinputconditionwidgetset.h \
           project/inputcond/cgnsfileinputconditionwidgetstring.h \
           pre/grid/structured15dgrid/structured15dgridwithcrosssectioncrosssection.h \
           pre/gridcond/base/gridrelatedconditionbaseobject.h \
           pre/gridcond/base/gridrelatedconditioncellcontainert.h \
           pre/gridcond/base/gridrelatedconditioncontainer.h \
           pre/gridcond/base/gridrelatedconditioncontainert.h \
           pre/gridcond/base/gridrelatedconditiondimensioncontainer.h \
           pre/gridcond/base/gridrelatedconditiondimensioncontainert.h \
           pre/gridcond/base/gridrelatedconditiondimensionselectwidget.h \
           pre/gridcond/base/gridrelatedconditioneditdialog.h \
           pre/gridcond/base/gridrelatedconditioneditdialogt.h \
           pre/gridcond/base/gridrelatedconditioneditwidget.h \
           pre/gridcond/base/gridrelatedconditioneditwidgetcontainer.h \
           pre/gridcond/base/gridrelatedconditioneditwidgett.h \
           pre/gridcond/base/gridrelatedconditionnodecontainert.h \
           pre/gridcond/base/gridrelatedconditionvariationeditdialog.h \
           pre/gridcond/base/gridrelatedconditionvariationeditwidget.h \
           pre/gridcond/base/gridrelatedconditionvariationeditwidgetcontainer.h \
           pre/gridcond/base/gridrelatedconditionvariationeditwidgett.h \
           pre/gridcond/complex/gridrelatedcomplexconditioncontainer.h \
           pre/gridcond/complex/gridrelatedcomplexconditioneditwidget.h \
           pre/gridcond/container/gridrelatedconditionintegercellcontainer.h \
           pre/gridcond/container/gridrelatedconditionintegernodecontainer.h \
           pre/gridcond/container/gridrelatedconditionrealcellcontainer.h \
           pre/gridcond/container/gridrelatedconditionrealnodecontainer.h \
           pre/gridcond/dimensionselectwidget/gridrelatedconditiondimensioncomboboxselectwidget.h \
           pre/gridcond/dimensionselectwidget/gridrelatedconditiondimensiontimesliderselectwidget.h \
           pre/gridcond/editwidget/gridrelatedconditionintegereditwidget.h \
           pre/gridcond/editwidget/gridrelatedconditionintegeroptioneditwidget.h \
           pre/gridcond/editwidget/gridrelatedconditionintegervariationeditwidget.h \
           pre/gridcond/editwidget/gridrelatedconditionrealeditwidget.h \
           pre/gridcond/editwidget/gridrelatedconditionrealoptioneditwidget.h \
           pre/gridcond/editwidget/gridrelatedconditionrealvariationeditwidget.h \
           project/inputcond/functional/cgnsfileinputconditionwidgetfunctionaldelegate.h \
           project/inputcond/functional/cgnsfileinputconditionwidgetfunctionaldialog.h \
           project/inputcond/functional/cgnsfileinputconditionwidgetfunctionalgraphview.h \
    pre/gridcond/base/gridrelatedconditiondimensionscontainer.h \
    base/svkmlexportwindow.h
FORMS += datamodel/propertybrowserview.ui \
         distancemeasure/distancemeasurecopypropertydialog.ui \
         measureddata/measureddatapointsettingdialog.ui \
         measureddata/measureddatavectorsettingdialog.ui \
         misc/mousepositionwidget.ui \
         post/postzoneselectingdialog.ui \
         postcontainer/postbaseselectingdialog.ui \
         postcontainer/postdataexportdialog.ui \
         project/backgroundimageinfodialog.ui \
         project/offsetsettingdialog.ui \
         scalarstocolors/colortransferfunctioneditwidget.ui \
         scalarstocolors/lookuptableeditwidget.ui \
         scalarstocolors/scalarstocolorseditdialog.ui \
         pre/complex/gridcomplexconditiondialog.ui \
         pre/complex/gridcomplexconditionwidget.ui \
         pre/gridcond/gridrelatedcellconditionpropertydialog.ui \
         pre/gridcond/gridrelatednodeconditionpropertydialog.ui \
         pre/rawdatabackground/rawdatabackgroundeditdialog.ui \
         project/inputcond/cgnsfileinputconditiondialog.ui \
         pre/gridcond/base/gridrelatedconditioneditdialog.ui \
         pre/gridcond/base/gridrelatedconditionvariationeditdialog.ui \
         pre/gridcond/dimensionselectwidget/gridrelatedconditiondimensioncomboboxselectwidget.ui \
         project/inputcond/functional/cgnsfileinputconditionwidgetfunctionaldialog.ui
SOURCES += axis2d/axis2ddataitem.cpp \
           axis3d/axis3ddataitem.cpp \
           base/iricmainwindowinterface.cpp \
           base/propertybrowser.cpp \
           base/snapshotenabledwindow.cpp \
           base/windowwithzindex.cpp \
           datamodel/attributebrowsertargetdataitem.cpp \
           datamodel/graphics2dwindowdatamodel.cpp \
           datamodel/graphics3dwindowdatamodel.cpp \
           datamodel/graphicswindowdataitem.cpp \
           datamodel/graphicswindowdatamodel.cpp \
           datamodel/graphicswindowdrawcommands.cpp \
           datamodel/graphicswindowrootdataitem.cpp \
           datamodel/graphicswindowsimpledatamodel.cpp \
           datamodel/propertybrowserattribute.cpp \
           datamodel/propertybrowserview.cpp \
           datamodel/rawdataproxydataitem.cpp \
           datamodel/vtk2dgraphicsview.cpp \
           datamodel/vtk3dgraphicsview.cpp \
           datamodel/vtkgraphicsview.cpp \
           distancemeasure/distancemeasurecopypropertydialog.cpp \
           distancemeasure/distancemeasuredataitem.cpp \
           distancemeasure/distancemeasuregroupdataitem.cpp \
           measureddata/measureddatafiledataitem.cpp \
           measureddata/measureddatapointdataitem.cpp \
           measureddata/measureddatapointgroupdataitem.cpp \
           measureddata/measureddatapointsettingdialog.cpp \
           measureddata/measureddatavectordataitem.cpp \
           measureddata/measureddatavectorgroupdataitem.cpp \
           measureddata/measureddatavectorsettingdialog.cpp \
           misc/mouseboundingbox.cpp \
           misc/mousepositionwidget.cpp \
           misc/qundocommandhelper.cpp \
           post/postprocessorwindow.cpp \
           post/postprocessorwindowfactoryinterface.cpp \
           post/postprocessorwindowprojectdataitem.cpp \
           post/postzoneselectingdialog.cpp \
           postcontainer/postabstractsteps.cpp \
           postcontainer/postbaseiterativeseriesdatacontainer.cpp \
           postcontainer/postbaseselectingdialog.cpp \
           postcontainer/postdatacontainer.cpp \
           postcontainer/postdataexportdialog.cpp \
           postcontainer/postdummy3dzonedatacontainer.cpp \
           postcontainer/postiterationsteps.cpp \
           postcontainer/postseriesdatacontainer.cpp \
           postcontainer/postsolutioninfo.cpp \
           postcontainer/posttimesteps.cpp \
           postcontainer/postzonedatacontainer.cpp \
           postcontainer/postzonepointseriesdatacontainer.cpp \
           project/backgroundimageinfo.cpp \
           project/backgroundimageinfodialog.cpp \
           project/cgnsfilelist.cpp \
           project/colorsource.cpp \
           project/measureddata.cpp \
           project/offsetsettingdialog.cpp \
           project/projectcgnsfile.cpp \
           project/projectdata.cpp \
           project/projectdataitem.cpp \
           project/projectmainfile.cpp \
           project/projectpostprocessors.cpp \
           project/projectworkspace.cpp \
           project/workfolderinfo.cpp \
           scalarstocolors/colortransferfunctioncontainer.cpp \
           scalarstocolors/colortransferfunctioneditdialog.cpp \
           scalarstocolors/colortransferfunctioneditwidget.cpp \
           scalarstocolors/lookuptablecontainer.cpp \
           scalarstocolors/lookuptableeditwidget.cpp \
           scalarstocolors/scalarstocolorscontainer.cpp \
           scalarstocolors/scalarstocolorseditdialog.cpp \
           scalarstocolors/scalarstocolorseditwidget.cpp \
           scalarstocolors/scalarstocolorseditwidgetcontainer.cpp \
           solverdef/solverdefinition.cpp \
           solverdef/solverdefinitionabstract.cpp \
           solverdef/solverdefinitionboundarycondition.cpp \
           solverdef/solverdefinitiongridrelatedcomplexcondition.cpp \
           solverdef/solverdefinitiongridrelatedcondition.cpp \
           solverdef/solverdefinitiongridrelatedconditiondimension.cpp \
           solverdef/solverdefinitiongridrelatedconditiondimensioncreator.cpp \
           solverdef/solverdefinitiongridrelatedconditiont.cpp \
           solverdef/solverdefinitiongridtype.cpp \
           solverdef/solverdefinitionintegercellgridrelatedcondition.cpp \
           solverdef/solverdefinitionintegernodegridrelatedcondition.cpp \
           solverdef/solverdefinitionintegeroptioncellgridrelatedcondition.cpp \
           solverdef/solverdefinitionintegeroptionnodegridrelatedcondition.cpp \
           solverdef/solverdefinitionrealcellgridrelatedcondition.cpp \
           solverdef/solverdefinitionrealnodegridrelatedcondition.cpp \
           solverdef/solverdefinitionrealoptioncellgridrelatedcondition.cpp \
           solverdef/solverdefinitionrealoptionnodegridrelatedcondition.cpp \
           solverdef/solverdefinitiontranslator.cpp \
           pre/base/preprocessordataitem.cpp \
           pre/base/preprocessordatamodelinterface.cpp \
           pre/base/preprocessorgraphicsviewinterface.cpp \
           pre/base/preprocessorgridandgridcreatingconditiondataiteminterface.cpp \
           pre/base/preprocessorgridcreatingconditiondataiteminterface.cpp \
           pre/base/preprocessorrawdatatopdataiteminterface.cpp \
           pre/base/preprocessorwindowinterface.cpp \
           pre/complex/gridcomplexconditiondialog.cpp \
           pre/complex/gridcomplexconditionwidget.cpp \
           pre/complex/gridcomplexconditionwidgetcontainer.cpp \
           pre/grid/grid.cpp \
           pre/grid/grid2d.cpp \
           pre/grid/grid3d.cpp \
           pre/grid/gridinternalexporter.cpp \
           pre/grid/gridinternalimporter.cpp \
           pre/grid/structured15dgridwithcrosssection.cpp \
           pre/grid/structured2dgrid.cpp \
           pre/grid/unstructured2dgrid.cpp \
           pre/gridcond/gridrelatedcellconditionpropertydialog.cpp \
           pre/gridcond/gridrelatednodeconditionpropertydialog.cpp \
           pre/gridcreatingcondition/gridcreatingcondition.cpp \
           pre/gridcreatingcondition/gridcreatingconditioncreator.cpp \
           pre/rawdata/rawdata.cpp \
           pre/rawdata/rawdatacreator.cpp \
           pre/rawdata/rawdataexporter.cpp \
           pre/rawdata/rawdataimporter.cpp \
           pre/rawdata/rawdataproxy.cpp \
           pre/rawdatabackground/rawdatabackground.cpp \
           pre/rawdatabackground/rawdatabackgroundcomplex.cpp \
           pre/rawdatabackground/rawdatabackgroundcomplexcreator.cpp \
           pre/rawdatabackground/rawdatabackgroundeditdialog.cpp \
           pre/rawdatabackground/rawdatabackgroundintegercreator.cpp \
           pre/rawdatabackground/rawdatabackgroundrealcreator.cpp \
           project/inputcond/cgnsfileinputconditioncontainerfunctional.cpp \
           project/inputcond/cgnsfileinputconditioncontainerinteger.cpp \
           project/inputcond/cgnsfileinputconditioncontainerreal.cpp \
           project/inputcond/cgnsfileinputconditioncontainerset.cpp \
           project/inputcond/cgnsfileinputconditioncontainerstring.cpp \
           project/inputcond/cgnsfileinputconditiondependency.cpp \
           project/inputcond/cgnsfileinputconditiondialog.cpp \
           project/inputcond/cgnsfileinputconditionpage.cpp \
           project/inputcond/cgnsfileinputconditionpagecontainer.cpp \
           project/inputcond/cgnsfileinputconditionpagelist.cpp \
           project/inputcond/cgnsfileinputconditionwidget.cpp \
           project/inputcond/cgnsfileinputconditionwidgetfilename.cpp \
           project/inputcond/cgnsfileinputconditionwidgetfoldername.cpp \
           project/inputcond/cgnsfileinputconditionwidgetfunctional.cpp \
           project/inputcond/cgnsfileinputconditionwidgetinteger.cpp \
           project/inputcond/cgnsfileinputconditionwidgetintegeroption.cpp \
           project/inputcond/cgnsfileinputconditionwidgetreal.cpp \
           project/inputcond/cgnsfileinputconditionwidgetrealoption.cpp \
           project/inputcond/cgnsfileinputconditionwidgetset.cpp \
           project/inputcond/cgnsfileinputconditionwidgetstring.cpp \
           pre/grid/structured15dgrid/structured15dgridwithcrosssectioncrosssection.cpp \
           pre/gridcond/base/gridrelatedconditioncontainer.cpp \
           pre/gridcond/base/gridrelatedconditiondimensioncontainer.cpp \
           pre/gridcond/base/gridrelatedconditiondimensionselectwidget.cpp \
           pre/gridcond/base/gridrelatedconditioneditdialog.cpp \
           pre/gridcond/base/gridrelatedconditionvariationeditdialog.cpp \
           pre/gridcond/complex/gridrelatedcomplexconditioneditwidget.cpp \
           pre/gridcond/dimensionselectwidget/gridrelatedconditiondimensioncomboboxselectwidget.cpp \
           pre/gridcond/dimensionselectwidget/gridrelatedconditiondimensiontimesliderselectwidget.cpp \
           pre/gridcond/editwidget/gridrelatedconditionintegereditwidget.cpp \
           pre/gridcond/editwidget/gridrelatedconditionintegeroptioneditwidget.cpp \
           pre/gridcond/editwidget/gridrelatedconditionintegervariationeditwidget.cpp \
           pre/gridcond/editwidget/gridrelatedconditionrealeditwidget.cpp \
           pre/gridcond/editwidget/gridrelatedconditionrealoptioneditwidget.cpp \
           pre/gridcond/editwidget/gridrelatedconditionrealvariationeditwidget.cpp \
           project/inputcond/functional/cgnsfileinputconditionwidgetfunctionaldelegate.cpp \
           project/inputcond/functional/cgnsfileinputconditionwidgetfunctionaldialog.cpp \
           project/inputcond/functional/cgnsfileinputconditionwidgetfunctionalgraphview.cpp \
    pre/gridcond/base/gridrelatedconditiondimensionscontainer.cpp
RESOURCES += guicore.qrc
TRANSLATIONS += languages/iricGuicore_es_ES.ts \
                languages/iricGuicore_fr_FR.ts \
                languages/iricGuicore_id_ID.ts \
                languages/iricGuicore_ja_JP.ts \
                languages/iricGuicore_ko_KR.ts \
                languages/iricGuicore_ru_RU.ts \
                languages/iricGuicore_th_TH.ts \
                languages/iricGuicore_vi_VN.ts \
                languages/iricGuicore_zh_CN.ts
