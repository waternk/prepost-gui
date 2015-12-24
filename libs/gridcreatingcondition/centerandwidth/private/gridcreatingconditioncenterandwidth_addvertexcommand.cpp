#include "gridcreatingconditioncenterandwidth_addvertexcommand.h"

#include <guicore/misc/qundocommandhelper.h>
#include <guicore/pre/base/preprocessorgraphicsviewinterface.h>

GridCreatingConditionCenterAndWidth::AddVertexCommand::AddVertexCommand(bool keyDown, vtkIdType edgeId, QPoint point, GridCreatingConditionCenterAndWidth* cond) :
	QUndoCommand {GridCreatingConditionCenterAndWidth::tr("Insert Center Line Vertex")},
	m_keyDown {keyDown},
	m_vertexId {(edgeId + 1) % cond->m_vtkPolyLine->GetNumberOfPoints()},
	m_condition {cond}
{
	double dx = point.x();
	double dy = point.y();
	cond->graphicsView()->viewportToWorld(dx, dy);
	m_vertexPosition = QVector2D(dx, dy);
}

void GridCreatingConditionCenterAndWidth::AddVertexCommand::redo()
{
	if (m_keyDown) {
		// add vertex.
		vtkPoints* points = m_condition->m_vtkPolyLine->GetPoints();
		QVector<QVector2D> positions;
		positions.reserve(points->GetNumberOfPoints());
		double p[3];
		for (vtkIdType i = 0; i < m_vertexId; ++i) {
			points->GetPoint(i, p);
			positions.append(QVector2D(p[0], p[1]));
		}
		positions.append(m_vertexPosition);
		for (vtkIdType i = m_vertexId; i < points->GetNumberOfPoints(); ++i) {
			points->GetPoint(i, p);
			positions.append(QVector2D(p[0], p[1]));
		}
		points->SetNumberOfPoints(positions.count());
		for (vtkIdType i = 0; i < positions.count(); ++i) {
			QVector2D v = positions.at(i);
			points->SetPoint(i, v.x(), v.y(), 0);
		}
		points->Modified();
	} else {
		// just modify the vertex position
		vtkPoints* points = m_condition->m_vtkPolyLine->GetPoints();
		points->SetPoint(m_vertexId, m_vertexPosition.x(), m_vertexPosition.y(), 0);
		points->Modified();
	}
	m_condition->m_vtkPolyLine->Modified();
	m_condition->updateShapeData();
	if (m_condition->m_isGridCreated) {
		m_condition->createSpline(m_condition->m_vtkPolyLine->GetPoints(), m_condition->m_iMax - 1);
		emit m_condition->tmpGridCreated(m_condition->createGrid());
	}
}

void GridCreatingConditionCenterAndWidth::AddVertexCommand::undo()
{
	if (m_keyDown) {
		// remove vertex.
		vtkPoints* points = m_condition->m_vtkPolyLine->GetPoints();
		QVector<QVector2D> positions;
		positions.reserve(points->GetNumberOfPoints());
		double p[3];
		for (vtkIdType i = 0; i < m_vertexId; ++i) {
			points->GetPoint(i, p);
			positions.append(QVector2D(p[0], p[1]));
		}
		// skip vertex in m_vertexId[
		for (vtkIdType i = m_vertexId + 1; i < points->GetNumberOfPoints(); ++i) {
			points->GetPoint(i, p);
			positions.append(QVector2D(p[0], p[1]));
		}
		points->SetNumberOfPoints(positions.count());
		for (vtkIdType i = 0; i < positions.count(); ++i) {
			QVector2D v = positions.at(i);
			points->SetPoint(i, v.x(), v.y(), 0);
		}
		points->Modified();
		m_condition->m_vtkPolyLine->Modified();
		m_condition->updateShapeData();
		if (m_condition->m_isGridCreated) {
			m_condition->createSpline(m_condition->m_vtkPolyLine->GetPoints(), m_condition->m_iMax - 1);
			emit m_condition->tmpGridCreated(m_condition->createGrid());
		}
	} else {
		// this never happens.
	}
}

int GridCreatingConditionCenterAndWidth::AddVertexCommand::id() const
{
	return iRIC::generateCommandId("GridCreatingConditionCenterAndWidthAddVertex");
}

bool GridCreatingConditionCenterAndWidth::AddVertexCommand::mergeWith(const QUndoCommand* other)
{
	const AddVertexCommand* comm = dynamic_cast<const AddVertexCommand*>(other);
	if (comm == nullptr) {return false;}
	if (comm->m_keyDown) {return false;}
	if (m_condition != comm->m_condition) {return false;}
	if (m_vertexId != comm->m_vertexId) {return false;}

	m_vertexPosition = comm->m_vertexPosition;
	return true;
}