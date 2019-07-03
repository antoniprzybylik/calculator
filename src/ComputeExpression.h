#pragma once

#include <QObject>
#include <QString>

class ComputeExpression : public QObject
{

    Q_OBJECT
    Q_PROPERTY(QString result READ GetResult)
    Q_PROPERTY(QString expression READ GetExpression WRITE WriteExpression)

  public:

    ComputeExpression();
    ~ComputeExpression();

  private:

    QString m_expression;
    QString m_result;
    QString compute(QString);

  public slots:

    QString GetResult();
    QString GetExpression();
    void WriteExpression(QString);

};
