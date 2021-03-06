#include "gridcreatingconditiontrianglegridregionpolygon.h"

#include <vtkProperty.h>

GridCreatingConditionTriangleGridRegionPolygon::GridCreatingConditionTriangleGridRegionPolygon(GridCreatingConditionTriangle* parent)
	: GridCreatingConditionTriangleAbstractPolygon(parent)
{
	m_paintActor->GetProperty()->SetColor(0, 0, 0);
	m_paintActor->GetProperty()->SetOpacity(0.1);
	m_edgeActor->GetProperty()->SetColor(0, 0, 0);
	m_vertexActor->GetProperty()->SetColor(0, 0, 0);
}
