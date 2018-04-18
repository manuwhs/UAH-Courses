#include "CContrato.h"
#include "MemoryManager.h"
using namespace std;

CContrato::CContrato(int NumSerie, const string& Desc, const string& FF, long Poliza, long ValorCompra)
  : m_NumSerie(NumSerie), m_Descripcion(Desc),
  m_FechaFin(FF), m_Poliza(Poliza), m_ValorCompra(ValorCompra)
{
}

// PREGUNTA 3: constructor copia de la clase CContrato

CContrato::CContrato(const CContrato& c)
{
	int k=0;
	CSiniestro *sin;
	m_NumSerie = c.m_NumSerie;							
	m_Poliza = c.m_Poliza;
	m_ValorCompra = c.m_ValorCompra;
	m_Descripcion=c.m_Descripcion;
	m_FechaFin = c.m_FechaFin;
	try
	{
		while(1)
		{
			sin = c.m_Siniestros[k]->GetDato();
			m_Siniestros.AgregarObjeto(sin->Clonar());
			k++;
		}
	}
	catch(CIndiceIncorrecto& i)
	{
	}
}


// CContrato& CContrato::operator =(const CContrato &c)

CContrato& CContrato::operator=(const CContrato &c)
{
	if(!m_Siniestros.EstaVacia())
		BorrarSiniestros();
	if(!c.m_Siniestros.EstaVacia())
	{
		AgregarSiniestro(*c.m_Siniestros.GetPrimero());
		while(c.m_Siniestros.TieneMas())
		{
			AgregarSiniestro(*c.m_Siniestros.GetActual());
		}
	}
	m_NumSerie=c.m_NumSerie;							
	m_Descripcion=c.m_Descripcion;
    m_FechaFin=c.m_FechaFin;
    m_Poliza=c.m_Poliza;
	return *this;
}



// PREGUNTA 4: AgregarSiniestro de la clase CContrato

void CContrato::AgregarSiniestro(const CSiniestro & s)
{
	CSiniestro * sin = s.Clonar();
	m_Siniestros.AgregarObjeto(sin);
		
}



CContrato::~CContrato()
{
  BorrarSiniestros();
}

// void CContrato::BorrarSiniestros()

void CContrato::BorrarSiniestros()
{
}


// void CContrato::MostrarSiniestros(ostream& os)

void CContrato::MostrarSiniestros(ostream& os)
{
	if(m_Siniestros.EstaVacia())
		return;
	cout << endl
		<< "Siniestro:"
		<< endl;
	m_Siniestros.GetPrimero()->Mostrar();
	while(m_Siniestros.TieneMas())
	{
		cout << endl
			<< "Siniestro:" 
			<< endl;
		m_Siniestros.GetActual()->Mostrar();
	}
}




// Necesaria para PREGUNTA 5
ostream& operator<<(ostream& os,  CContrato& c)
{
	cout << "Numero de serie: " << c.GetNumSerie() << endl
		<< "Descripcion: "<< c.GetDescripcion() << endl
		<< "Fecha Fin: " << c.GetFechaFin() << endl
		<< "Poliza: " << c.GetPoliza() << endl
		<< "Valor de compra: " << c.GetValorCom() << endl;
	c.MostrarSiniestros(cout);
	cout << endl;
  return os;
}
