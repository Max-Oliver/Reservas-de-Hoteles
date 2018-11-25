using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Entidades_Compartidas
{
    public class Conexion
    {
        private static string _cmd = "Data Source = DESKTOP-FINVIE9\\ZOROISMYMAIN; initial Catalog = Reserva_De_Hoteles_Maximiliano ; integrated Security = true";

        public static string CMD
        {
            get { return _cmd; }
        }

    }
}
