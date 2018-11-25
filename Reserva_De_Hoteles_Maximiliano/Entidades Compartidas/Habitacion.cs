using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;


namespace Reserva_De_Hoteles_Maximiliano
{
    public class Habitacion 
    {
        //Atributos
        //private String _Nombre;
        private int _NumHabit;
        private int _Piso;
        private String _Descripcion;
        private int _Costo;
        private string _Foto;
        
        //objeto clase
        Hotel _Hotel;

        
        //propiedades
        public Hotel unHotel
        {
            get { return _Hotel; }
            set
            {
                if (value.Nombre != null)
                {
                    _Hotel = value;
                }
                else
                {
                    throw new Exception("Error en el Hotel Seleccionado");
                }
            }
        }
        public int NumHabit
        {
            get { return _NumHabit; }
            set
            {
                if (value != 0 && value < 40)
                {
                    _NumHabit = value;

                }
                else
                {
                    throw new Exception("Error - Numero de habitacion incorrecto");
                }
            }
        }
        public int Piso
        {
            get { return _Piso; }
            set
            {
                if (value != 0 && value < 20)
                {
                    _Piso = value;
                }
                else
                {
                    throw new Exception("Error - Piso incorrecto");
                }
            }
        }
        public String Descripcion
        {
            get { return _Descripcion; }
            set
            {
                if (value.Length != 0 && value.Length < 501)
                {
                    _Descripcion = value;
                }
                else
                {
                    throw new Exception("Error: Falta Descripcion");
                }

            }
        }
        public int Costo
        {
            get { return _Costo; }
            set
            {
                if (value != 0 )
                {
                    _Costo = value;
                }
                else
                {
                    throw new Exception("Error - Costo no ingresado");
                }
               
            }
        }
        public String Foto
        {
            get { return _Foto; }
            set { _Foto = value; }
        }

        public Habitacion(Hotel pHotel ,int pNumHabitacion , int pPiso , String pDireccion, int pCosto, String pFoto)                         
        {   
            _Hotel = pHotel;
            NumHabit = pNumHabitacion;
            Piso = pPiso;
            Descripcion = pDireccion;
            Costo = pCosto;
            _Foto = pFoto;
            
        }

        public override string ToString()
        {
            return (base.ToString() + " Nombre Hortel: " + _Hotel.Nombre + " Numero de Habitacion: " + NumHabit + " Piso: " + Piso + " Direccion: " + Descripcion + " Costo Diario: " + Costo + " | Foto Habitacion: " + _Foto);
        }

    }

}