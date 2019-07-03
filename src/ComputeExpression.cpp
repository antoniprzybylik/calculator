#include <ComputeExpression.h>
#include <bits/stdc++.h>

using namespace std;

vector< vector<char> > operators={ { '*', '/' },
                                   { '+', '-' } };
QString ex;

bool ComputeSegment(int, int);
bool apply(int, int, int);
long double Wrnum(int, int);
long double Wlnum(int, int);
template <typename type> bool con(vector<type>, type);

int ll, lr;

template <typename type> bool con(vector<type> v, type t)
{

  for(type bt:v)
    if( bt == t )
      return true;

  return false;

}

bool ComputeSegment(int l, int r)
{

  for(int i=l;i<=r;i++)
  {

    if( ex[i].toLatin1() == '(' )
    {

      int ln=0;
      int rn=0;
      int p=-1;

      for(int j=i;j<=r;j++)
      {

        if( ex[j].toLatin1() == '(' )
          ln++;

        if( ex[j].toLatin1() == ')' )
          rn++;

        if( ln==rn )
        {

          p=j;
          break;

        }

      }

      if( p != -1 )
      {

        int ps=ex.size();

        ComputeSegment(i+1, p-1);

        i+=ex.size()-ps;
        r+=ex.size()-ps;

      }
      else
      {

        return false;

      }

    }

  }

  for(auto op:operators)
  {

    for(int i=l;i<=r;i++)
    {

      if( con( op, ex[i].toLatin1() ) )
      {

        int ps=ex.size();

        if( !apply(i, l, r) )
          return false;

        i+=ex.size()-ps;
        r+=ex.size()-ps;

      }

    }

  }

  ex.remove(l-1, 1);
  ex.remove(r+1, 1);

  return true;

}

bool apply(int i, int l, int r)
{

  long double result;

  switch( ex[i].toLatin1() )
  {

    case '*':
      result=Wlnum(i-1, l)*Wrnum(i+1, r);
    break;

    case '/':
      result=Wlnum(i-1, l)/Wrnum(i+1, r);
    break;

    case '+':
      result=Wlnum(i-1, l)+Wrnum(i+1, r);
    break;

    case '-':
      result=Wlnum(i-1, l)-Wrnum(i+1, r);
    break;

  }

  string preval = to_string (result);
  preval.erase ( preval.find_last_not_of('0') + 1, string::npos );

  if( preval.back() == '.' )
    preval.erase( preval.end()-1 );

  QString retval=preval.c_str();
  ex.replace( ll, lr-ll, retval );

  return true;

}

long double Wlnum(int i, int l)
{

  int r=i;

  while( ( ex[i].toLatin1() >= '0' ) && ( ex[i].toLatin1() <= '9' ) && ( i >= l ) )
  {

    i--;

  }

  int m=1;

  if( ( ex[i].toLatin1() == '-' ) && ( ( ex[i-1].toLatin1() < '0' ) || ( ex[i-1].toLatin1() > '9' ) ) )
  {

    m=-1;
    ll=i;

  }
  else
  {

    ll=i+1;

  }

  i++;

  long double li=0;

  while( ( ex[i].toLatin1() >= '0' ) && ( ex[i].toLatin1() <= '9' ) && ( i <= r ) )
  {

    li*=10;
    li+=ex[i].toLatin1()-'0';

    i++;

  }

  return li*m;

}

long double Wrnum(int i, int r)
{

  long double l=0;
  int m=1;

  if( ex[i].toLatin1() == '-' )
  {

    m=-1;
    i++;

  }

  while( ( ex[i].toLatin1() >= '0' ) && ( ex[i].toLatin1() <= '9' ) && ( i <= r ) )
  {

    l*=10;
    l+=ex[i].toLatin1()-'0';

    i++;

  }

  lr=i;

  return l*m;

}

QString ComputeExpression::compute(QString e)
{

  ex=e;

  ex.prepend("(");
  ex.append(")");

  if( !ComputeSegment(0, ex.size()-1) )
    return "Syntax Error!";

  return ex;

}

ComputeExpression::ComputeExpression()
{

}
ComputeExpression::~ComputeExpression()
{

}

QString ComputeExpression::GetResult()
{

  m_result=compute(m_expression);
  return m_result;

}
QString ComputeExpression::GetExpression()
{

  return m_expression;

}

void ComputeExpression::WriteExpression(QString ex)
{

  m_expression=ex;

}
