using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Entidades_Compartidas;
using Persistencia__de_Datos;
using Reserva_De_Hoteles_Maximiliano;

namespace Logica_De_Negocios
{
   public  class LogicaHabitacion
    {
        //buscar
        public static Habitacion Buscar(String Nombre, int numero)
        {
            //Control por las dudas
            Habitacion miHabi;
           miHabi = PersistenciaHabitaciones.Buscar(Nombre, numero);
            if (miHabi != null)
            {
                return miHabi;
            }
            else
            {
                return null;
            }          
        }
        //Alta
        public static void Alta(Habitacion unaHabi)
        {
            PersistenciaHabitaciones.AltaHabit(unaHabi);
        }
        //Modificar
        public static void Modificar(Habitacion unaHabi)
        {
            PersistenciaHabitaciones.ModiHabit(unaHabi);
        }
        //baja
        public static void Baja(Habitacion unaHabi)
        {
            PersistenciaHabitaciones.bajaHabit(unaHabi);
        }
        //listar 
        public static List<Habitacion> listaHabit(Hotel unHotel)
        {
            return PersistenciaHabitaciones._listarHabitaciones(unHotel);
        }
    }
}
