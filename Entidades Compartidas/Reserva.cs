using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;


namespace Reserva_De_Hoteles_Maximiliano
{
    public class Reserva
    {
        //atributos 
        private int _NumRes;

        //private String _NombreCliente;
        //private int _numHabitacion;
        //private String _NombrHotel;
        private DateTime _FechaIni;
        private DateTime _FechaFin;
        private bool _Estado;

        //objetos de clases
        private Hotel unHotel;
        private Habitacion unaHabitacion;
        private Cliente unCliente;

        //Propiedades
        public Cliente NombreCliente
        {
            get { return unCliente; }
            set
            {
                if (value == null)
                    throw new Exception("Se necesita un Cliente para La reserva.");
                else
                    unCliente = value;
            }
        }
        public Habitacion unaHabi
        {
            get { return unaHabitacion; }
            set
            {
                if (value == null)
                    throw new Exception("Se necesita conocer la habitacion a reservar");
                else
                    unaHabitacion = value;
            }
        }
        public Hotel nomHotel
        {
            get { return unHotel; }
            set
            {
                if (value == null)
                    throw new Exception("Se necesita publicacion para prestar");
                else
                    unHotel = value;
            }
        }

        public DateTime FechaIni
        {
            get { return _FechaIni; }
            set
            {
                if (value.Date >= DateTime.Now.Date)
                {
                    _FechaIni = value;
                }
                else
                {
                    throw new Exception("Error en la fecha de inicio");
                }
            }
        }
        public DateTime FechaFin
        {
            get { return _FechaFin; }
            set
            {
                TimeSpan dif = value.Subtract(_FechaFin);

                if (dif.TotalDays > 0)
                {
                    _FechaFin = value;
                }
                else
                {
                    throw new Exception("Error: Debe haber diferencia de 1 dia minimo...");
                }
            }
        }
        public int Costo
        {
            get
            {
                int cantDias = (_FechaFin.Subtract(_FechaIni)).Days;
                return (this.unaHabitacion.Costo * cantDias);
            }
        }
        public int NumReserva
        {
            get { return _NumRes; }
            set
            {
                if (value >= 0)
                    _NumRes = value;
                else
                    throw new Exception("Error: Numero de Reserva debe ser Mayor/Igual 1");
            }
        }
        public bool Estado
        {
            get { return _Estado; }
            set { _Estado = value; }
        }

        //Constructor
        public Reserva(Hotel pHotel, Habitacion pHabit, Cliente pCliente, int pNumRes, DateTime pFechaIni, DateTime pFechaFin, bool pEstado, int pCosto)
        {
            unHotel = pHotel;
            unaHabi = pHabit;
            NombreCliente = pCliente;
            FechaIni = pFechaIni;
            pFechaFin = FechaFin;
            pCosto = Costo;
            Estado = pEstado;
        }

        //operacion
        public override string ToString()
        {
            return (base.ToString() + "Hotel :" + unHotel + "Habitacion" + unaHabi+  "Cliente: " + unCliente + "Estado reserva: " + Estado+ " Fecha Inicio: "+ FechaIni + " Fecha Fin: " + FechaFin + " Costo: " + Costo  );
        }
    }
}