using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Reserva_De_Hoteles_Maximiliano
{
    public class Cliente : Usuario
    {
        //Atributos
        private int _NumTarjeta ;
        private String _Direccion;
        private int _Telefono;
        private int _Celular;     

        //propiedades
        public int NumeroTarjeta
        {
            get { return _NumTarjeta; }
            set
            {
                if (value > 0 && value >= 5)
                {
                    _NumTarjeta = value;
                }
                else
                {
                    throw new Exception("Error: El numero de tarjeta");
                }
            }
        }
        public String Direccion
        {
            get { return _Direccion; }
            set
            {

                if (value.Length < 50 && value.Length > 0)
                {
                    _Direccion = value ;

                }
                else
                {
                    throw new Exception("Error - Direccion Erronea");
                }
            }
        }
        public int Telefono
        {
            get { return _Telefono; }
            set
            {
                if (value <= 8)
                {
                    _Telefono = value;

                }
                else
                {
                    throw new Exception("Error en el rango de telefono es de 8 digitos.");
                }
            }
        }
        public int Celular
        {
            get { return _Celular; }
            set
            {
                if (value <= 8)
                {
                    _Celular = value;

                }
                else
                {
                    throw new Exception("Error - Numero de cel debe ser de 8 digitos.");
                }
            }
        }

        //Constructor
        public Cliente(int pNumTarjeta, String pDireccion, int pTelefono, int pCelular, String pUsuario, String pPassword, String pNombre, String pApellido)
            : base(pUsuario, pPassword, pNombre, pApellido)
        {
            pCelular = Celular;
            pDireccion = Direccion;
            pTelefono = Telefono;
            pNumTarjeta = NumeroTarjeta;
        }

        public override string ToString()
        {
            return (base.ToString() + " | Celular" + Celular + " | Direccion: " + Direccion + " | Telefono: " + Telefono + " | Numero de tarjeta:  " + NumeroTarjeta );
        }
    }
}