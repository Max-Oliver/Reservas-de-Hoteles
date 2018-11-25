using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Interfaces_web
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            String user = txtUsuario.Text;
            string password = txtPassword.Text;
            string userName = "jorge";
            string passName = "admin";
            if (user.Equals(userName) && password.Equals(passName))
            {
                Response.Write("<script>alert('Usuario Correcto!')</script>");
            }
            else
            {
                Response.Write("<script>alert('Usuario o contraseña Incorrectos')</script>");
            }
        }
    }
}