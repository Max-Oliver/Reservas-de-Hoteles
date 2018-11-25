using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Reserva_De_Hoteles_Maximiliano
{
    public class Hotel
    {
        //Atributos
        private String _Nombre;
        private int _Tel;
        private int _Fax;
        private String _Estrellas;
        private bool _Picina;
        private bool _AccesoPlaya;
        private String _Calle;
        private string _NumPuerta;
        private String _Ciudad;
        private String _Foto;
        /*private Byte _Foto;
        private Byte _RutaFoto;
        */

        //objeto arreglo
        private Habitacion _UnaHabita;

        // propiedades
        public string Nombre
        {
            get { return _Nombre; }
            set
            {
                if (value.Length > 0 && value.Length < 30 )
                {
                    _Nombre = value;

                }
                else
                {
                    throw new Exception("Error - Largo incorrecto");
                }
            }
        }

        public int Tel
        {
            get { return _Tel; }
            set
            {
                if ( value.ToString().Length <= 9 && value.ToString().Length > 5)
                {
                    _Tel = value;
                }
                else
                {
                    throw new Exception("Error - El Telefono debe ser de 8 digitos");
                }
            }
        }

        public int Fax
        {
            get { return _Fax; }
            set
            {
                if (value.ToString().Length <= 10 && value.ToString().Length > 5)
                {
                    _Fax = value;
                }
                else
                {
                    throw new Exception("Error - Deben ser 10 Digitos");
                }
            }
        }

        public String Estrellas
        {
            get { return _Estrellas; }
            set
            {
               
                switch (value)
                {
                    case "1":
                        if (value.Length <= 5)
                        {
                            _Estrellas = value;
                        }
                        else
                        {
                            throw new Exception("Error - Las categorian van desde [1] hasta [5] Estrellas ");
                        }
                        break;
                    case "2":
                        if (value.Length <= 5)
                        {
                            _Estrellas = value;
                        }
                        else
                        {
                            throw new Exception("Error - Las categorian van desde [1] hasta [5] Estrellas ");
                        }
                        break;
                    case "3":
                        if (value.Length <= 5)
                        {
                            _Estrellas = value;
                        }
                        else
                        {
                            throw new Exception("Error - Las categorian van desde [1] hasta [5] Estrellas ");
                        }
                        break;
                    case "4":
                        if (value.Length <= 5)
                        {
                            _Estrellas = value;
                        }
                        else
                        {
                            throw new Exception("Error - Las categorian van desde [1] hasta [5] Estrellas ");
                        }
                        break;
                    case "5":
                        if (value.Length <= 5)
                        {
                            _Estrellas = value;
                        }
                        else
                        {
                            throw new Exception("Error - Las categorian van desde [1] hasta [5] Estrellas ");
                        }
                        break;
                    default:

                        while (value != "1,2,3,4,5" )
                        {
                            throw new Exception("Error al ingresar valor ");
                        }
                        break;
                }

            }
        }

        public bool Picina
        {
            get { return _Picina; }
            set { _Picina = value; }
        }

        public bool AccesoPlaya
        {
            get { return _AccesoPlaya; }
            set{ _AccesoPlaya = value; }
        }
         
        public string Calle
        {
            get { return _Calle; }
            set
            {
                if (value.Length != 0 && value.Length <=  30)
                {
                    _Calle = value;
                }
                else
                {
                    throw new Exception("Error: Falta nombre Calle");
                }
            }
        }

        public string NumPuerta
        {
            get { return _NumPuerta; }
            set
            {
                if ( value.Length <= 7 && value.Length != 0 )
                {
                    _NumPuerta = value;
                }
                else
                {
                    throw new Exception("Error: Falta Numero de Puerta");
                }
            }
        }

        public string Ciudad
        {
            get { return _Ciudad; }
            set
            {
                if (value.Length <= 50)
                {
                    _Ciudad = value;
                }
                else
                {
                    throw new Exception("Error: Falta Ciudad del Hotel");
                }
            }
        }

        public String Foto
        {
            get { return _Foto; }
            set { _Foto = value; }
        }

        /*
        public Byte Foto
        {
            get { return _Foto; }
            set { _Foto = value; }
        }
        public Byte RutaFoto
        {
            get { return _RutaFoto; }
            set { _RutaFoto = value; }
        }
        */

        //Habitacion
    /*   public Habitacion UnHabit
        {
            set
            {
                if (value == null)
                    throw new Exception("Debe saberse la habitacion");
                else
                    _UnaHabita = value;
            }
            get { return _UnaHabita; }
        }
        */
        //Contructores
        public Hotel(String pNombre, int pTel, int pFax ,String pEstrellas, bool pPicina, bool pAccesPlaya , String pCalle,String pNumPuerta, String pCiudad, String pFoto /*byte pFoto,,Byte pRutaFoto, Habitacion pHabit*/)
        {
            Nombre = pNombre;
            Tel = pTel;
            Fax = pFax;
            Estrellas = pEstrellas;
            Picina = pPicina;
            AccesoPlaya = pAccesPlaya;
            Calle = pCalle;
            NumPuerta = pNumPuerta;
            Ciudad = pCiudad;
            Foto = pFoto;
           // UnHabit = pHabit;
            //RutaFoto = pRutaFoto;
        }

        public override string ToString()
        {
            return (base.ToString() + " | Nombre: " + Nombre + " | Telefono: " + Tel+ 
                      " | Fax: "+ Fax + " | Estrellas: " + Estrellas + " | Picina: " 
                      + Picina + " | Accesos a Playa: " + AccesoPlaya + " | Calle: " + Calle  + " | Numero de puerta: " + NumPuerta+ " | Ciudad: " + Ciudad  + "| Foto: " + Foto /*+ " | RutaFoto: "+ RutaFoto +" | Numero Habitacion: "+ UnHabit.NumHabit */);
        }

    }
}
