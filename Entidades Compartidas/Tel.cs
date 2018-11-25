using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Reserva_De_Hoteles_Maximiliano
{
    public class Tel : Cliente
    {
        //atributos
        private string _CliUsuario;
        private int _NumTel;
        private int _Celular;

        //propiedades
        public string CliUsuario
        {
            get{ return _CliUsuario;}
            set
            {
                if (value.Length > 20)
                {
                    _CliUsuario = value;
                }
                else
                {
                    throw new Exception("Error en el Telefono");
                }
            }
        }
        public int numeroTel
        {
            get { return _NumTel; }
            set
            {
                if (value < 9)
                {
                    _NumTel = value;
                }
            }
        }
        public int Celular
        {
            get { return _Celular; }
            set
            {
                if (value < 9)
                {
                    _Celular = value;
                }
            }
        }

        //constructores
        public Tel(String pCliUsuario, int pNumeroTel , String pDireccion,int pTelefono, int pCelular,String pUsuario,String  pPassword, String pNombre,String  pApellido )
            :base ( pNumeroTel,pDireccion,pTelefono,pCelular,pUsuario,pPassword,pNombre,pApellido )
        {
            CliUsuario = pCliUsuario;
            numeroTel = pNumeroTel;
            Celular = pCelular;
        }

        //override
        public override string ToString()
        {
            return (base.ToString() + " | Usuario: " + CliUsuario + " | Telefono: "  + numeroTel + " | Celular: " + Celular); 
        }


    }
}