#ifndef IRICUNDOSTACK_H
#define IRICUNDOSTACK_H

#include "misc_global.h"

#include <QUndoStack>

/// QUndoStack instance to be used in iRIC GUI. It implements singleton design pattern.
class MISCDLL_EXPORT iRICUndoStack : public QUndoStack
{
private:
	iRICUndoStack(QObject* parent = 0);
	static const int UNDOLIMIT;

public:
	static void initialize(QObject* w);
	static iRICUndoStack& instance() {
		return *m_instance;
	}
	static iRICUndoStack* m_instance;
};

#endif // IRICUNDOSTACK_H
