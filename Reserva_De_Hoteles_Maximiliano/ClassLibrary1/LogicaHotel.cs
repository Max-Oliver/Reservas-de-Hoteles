using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Reserva_De_Hoteles_Maximiliano;
using Persistencia__de_Datos;
using Entidades_Compartidas;

namespace Logica_De_Negocios
{
    public class LogicaHotel
    {

        //Busscar Hotel
        public static Hotel Buscar(String Nombre)
        {
            return PersistenciaHoteles.Buscar(Nombre);
        }

        // Alta Hotel
        public static void AltaHotel(Hotel miHotl)
        {
            PersistenciaHoteles.Alta(miHotl);
        }
        // Modi hotel
        public static void ModiHotel(Hotel miHotl)
        {
           PersistenciaHoteles.Modificar(miHotl);
        }
        //  BajA Hotel
        public static void EliminarHot(Hotel unHotel)
        {
            PersistenciaHoteles.BajaHoteles(unHotel);
        }

        public static List<Hotel> ListarHoteles()
        {
            return PersistenciaHoteles.ListarHoteles();
        }

    }
}
