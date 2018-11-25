using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Reserva_De_Hoteles_Maximiliano
{
    public class Admin : Usuario
    {
        //Atributos
        private String _Cargo;

        //propiedades
        public String Cargo
        {
            get { return _Cargo; }
            set
            {
                if (value.ToLower() == "supervisor" || value.ToLower() == "administrativo" || value.ToLower() == "gerente")
                {
                    _Cargo = value;
                }
                else
                {
                    throw new Exception("Error: Seleccion de Cargo");
                }
            }
        }

        //Constructor
        public Admin(string pCargo, String pUsuario, String pPassword, String pNombre, String pApellido )
            :base (pUsuario,pPassword,pNombre,pApellido)
        {
            Cargo = pCargo;
        }

        public override string ToString()
        {
            return (base.ToString() + " Cargo: " + Cargo );
        }
    }
}
