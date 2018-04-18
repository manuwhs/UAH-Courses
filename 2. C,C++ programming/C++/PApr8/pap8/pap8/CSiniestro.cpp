#include "CSiniestro.h"
#include "CUtils.h"
using namespace std;
using namespace utils;
// PREGUNTA 6: iniciar m_SigCodigo
int CSiniestro::m_SigCodigo = 1;

CSiniestro::CSiniestro(const std::string& Desc)
{
	cout<<"Introduzca el codigo: ";
	utils::CUtils::leerInt(m_Codigo);
	cout<<"Introduzca el numero de horas de mano de obra: ";
	utils::CUtils::leerFloat(m_HorasMO);
	cout<<"Introduzca el coste de las piezas: ";
	utils::CUtils::leerFloat(m_CostePiezas);
	cout<<"Introduzca el numero de piezas: ";
	utils::CUtils::leerFloat(m_Coste);
	m_Descripcion = Desc;
}



// PREGUNTA 10: CSiniestroNormal s("Rotura de tambor");





// PREGUNTA 12: GetCoste
void CSiniestro::Mostrar(ostream &os) const
{
  os << " Codigo del siniestro: " << m_Codigo << endl
    << " Descripcion de la averia: " << m_Descripcion << endl
    << " Horas de mano de obra: " << m_HorasMO << endl
    << " Coste de las piezas: " << m_CostePiezas << endl
    << " Coste total de reparacion: " << m_Coste << endl
	<< endl;
 }
