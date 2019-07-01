#include <ComputeExpression.h>

ComputeExpression::ComputeExpression()
{

}
ComputeExpression::~ComputeExpression()
{

}

QString ComputeExpression::GetResult()
{

  return "result"+m_expression;

}
QString ComputeExpression::GetExpression()
{

  return m_expression;

}

void ComputeExpression::WriteExpression(QString ex)
{

  m_expression=ex;

}
