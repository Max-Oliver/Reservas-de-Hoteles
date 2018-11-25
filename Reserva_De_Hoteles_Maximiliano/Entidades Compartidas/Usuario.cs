using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Reserva_De_Hoteles_Maximiliano
{
    public abstract class Usuario
    {
        //Atributos
        private String _NombreUsuario;
        private String _Password;
        private String _Nombres;
        private String _Apellidos;

        //propiedades 
        public string NombreUsuario
        {
            get { return _NombreUsuario; }
            set
            {
                if (value.Length == 0)
                {
                    throw new Exception("Error El valor debe ser Entre 1 - 25");
                }
                else
                {
                    _NombreUsuario = value;
                }
            }
        }


        public string Password
        {
            get { return _Password; }
            set
            {
                if (value.Length == 0)
                {
                    throw new Exception("Error El valor debe ser Entre 1 - 25");
                }
                else
                {
                    _Password = value;
                }
            }
        }

        public string Nombres
        {
            get { return _Nombres; }
            set
            {
                if(value.Length == 0)
                {
                    throw new Exception("Error Los nombres deben ser de 1-25");
                }
                else
                {
                    _Nombres = value;
                }
            }
        }

        public string Apellidos
        {
            get{ return _Apellidos;}
            set
            {
                if (value.Length == 0)
                {
                    throw new Exception("Error el apellido  debe ser entre 1 -  ");
                }
                else
                {
                    _Apellidos = value;
                }
            }
        }


        //Constructor
        public Usuario(String pNombreUsuario, String pPassword, String pNombre, String pApellido)
        {
            NombreUsuario = pNombreUsuario;
            Password = pPassword;
            Nombres = pNombre;
            Apellidos = pApellido;
        }

        public override string ToString()
        {
            return ("Usuario: "+ NombreUsuario.ToUpper() + "\nPassword: " + Password + "\nNombres: " + Nombres + "\nApelidos: " + Apellidos);
        }

    }
}
