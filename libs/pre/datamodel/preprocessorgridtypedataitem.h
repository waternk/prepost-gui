#ifndef PREPROCESSORGRIDTYPEDATAITEM_H
#define PREPROCESSORGRIDTYPEDATAITEM_H

#include "../pre_global.h"
#include <guicore/pre/base/preprocessorgridtypedataiteminterface.h>

#include <QList>
#include <QMap>

class QAction;
class SolverDefinitionGridType;
class PreProcessorGeoDataTopDataItemInterface;
class PreProcessorGridAndGridCreatingConditionDataItemInterface;
class ScalarsToColorsContainer;

class PREDLL_EXPORT PreProcessorGridTypeDataItem : public PreProcessorGridTypeDataItemInterface
{
	Q_OBJECT

public:
	PreProcessorGridTypeDataItem(SolverDefinitionGridType* type, GraphicsWindowDataItem* parent);
	~PreProcessorGridTypeDataItem();
	const QList<PreProcessorGridAndGridCreatingConditionDataItemInterface*>& conditions() const override {return m_conditions;}
	const std::string& name() const;
	PreProcessorGeoDataTopDataItemInterface* geoDataTop() const override {return m_geoDataTop;}
	PreProcessorGridAndGridCreatingConditionDataItemInterface* condition(const std::string& name) const;
	SolverDefinitionGridType* gridType() const override {return m_gridType;}
	bool isChildDeletable(const PreProcessorGridAndGridCreatingConditionDataItemInterface* child) const;
	void addCustomMenuItems(QMenu* menu) override;
	bool isChildCaptionAvailable(const QString& caption);
	ScalarsToColorsContainer* scalarsToColors(const std::string& attName) const override {return m_scalarsToColors.value(attName, 0);}
	QAction* addNewGridAction() {return m_addNewGridAction;}
	bool isGridEdited() const;
	void setGridEdited();

public slots:
	void addNewCondition();
	void changeValueRange(const std::string& name);

protected:
	void unregisterChild(GraphicsWindowDataItem* child) override;
	void doLoadFromProjectMainFile(const QDomNode& node) override;
	void doSaveToProjectMainFile(QXmlStreamWriter& writer) override;
	void assignActorZValues(const ZDepthRange& range) override;

private:
	void updateNewGridActionStatus();
	void setupScalarsToColors(SolverDefinitionGridType* type);
	QString nextChildCaption();
	std::string nextChildZonename();
	SolverDefinitionGridType* m_gridType;
	PreProcessorGeoDataTopDataItemInterface* m_geoDataTop;
	QMap<std::string, ScalarsToColorsContainer*> m_scalarsToColors;
	QList<PreProcessorGridAndGridCreatingConditionDataItemInterface*> m_conditions;
	/// Action to add new condition.
	QAction* m_addNewGridAction;
};

#endif // PREPROCESSORGRIDTYPEDATAITEM_H
