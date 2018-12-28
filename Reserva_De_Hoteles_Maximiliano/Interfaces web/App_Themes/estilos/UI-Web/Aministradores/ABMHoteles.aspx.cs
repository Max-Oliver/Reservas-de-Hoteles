using Logica_De_Negocios;
using Reserva_De_Hoteles_Maximiliano;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Interfaces_web.UI_Web.Aministradores
{
    public partial class ABMHoteles : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.LimpioFormulario();
                this.btnSoloBuscar();
            }
        }

        //Limpio formulario
        public void LimpioFormulario()
        {
            txtCalle.Text = "";
            txtCategoria.Text = "";
            txtCiudad.Text = "";
            txtNomH.Text = "";
            txtNumPuerta.Text = "";
            txtBuscar.Text = "";
            txtTel.Text = "";
            txtFax.Text = "";

            lblError.Text = "";
            lblEstadoHotel.Text = "";
            chkSiPicina.Checked = false;
            chkAPSi.Checked = false;

            this.btnSoloBuscar();

            // chkAPNo.Checked = false;            
            // chkNoPicina.Checked = false;
            imgbox.ImageUrl = "~/App_Themes/estilos/img/react.png";

        }

        //habilito hotel buscar solo ese boton
        public void btnSoloBuscar()
        {
            btnAltaHotel.Enabled = false;
            btnBaja.Enabled = false;
            btnModificar.Enabled = false;
            BtnBuscarH.Enabled = true;
            btnLimpiar.Enabled = true;
            btnSubir.Enabled = false;
            FileUploadIMG.Enabled = false;

            txtBuscar.Enabled = true;
            txtNomH.Enabled = false;
            txtCalle.Enabled = false;
            txtCategoria.Enabled = false;
            txtCiudad.Enabled = false;
            txtFax.Enabled = false;
            txtTel.Enabled = false;
            txtNumPuerta.Enabled = false;
            chkSiPicina.Enabled = false;
            chkAPSi.Enabled = false;

        }
        public void HabilAlta()
        {
            btnAltaHotel.Enabled = true;
            btnBaja.Enabled = false;
            btnModificar.Enabled = false;
            BtnBuscarH.Enabled = false;
            btnLimpiar.Enabled = true;
            btnSubir.Enabled = true;
            FileUploadIMG.Enabled = true;

            txtBuscar.Enabled = false;
            txtNomH.Enabled = true;
            txtCalle.Enabled = true;
            txtCategoria.Enabled = true;
            txtCiudad.Enabled = true;
            txtFax.Enabled = true;
            txtTel.Enabled = true;
            txtNumPuerta.Enabled = true;
            chkAPSi.Enabled = true;
            chkSiPicina.Enabled = true;

        }
        public void habilModBaja()
        {
            btnAltaHotel.Enabled = false;
            btnBaja.Enabled = true;
            btnModificar.Enabled = true;
            BtnBuscarH.Enabled = false;
            btnLimpiar.Enabled = true;
            btnSubir.Enabled = true;
            FileUploadIMG.Enabled = true;

            txtBuscar.Enabled = false;
            txtNomH.Enabled = true;
            txtCalle.Enabled = true;
            txtCategoria.Enabled = true;
            txtCiudad.Enabled = true;
            txtFax.Enabled = true;
            txtTel.Enabled = true;
            txtNumPuerta.Enabled = true;
            chkAPSi.Enabled = true;
            chkSiPicina.Enabled = true;
            txtBuscar.Enabled = false;
            txtNomH.Enabled = false;
        }

        //Subo imgen
        protected void btnSubir_Click(object sender, EventArgs e)
        {
            Boolean Correcto = false;
            if (FileUploadIMG.HasFile)
            {
                String ExtArchivo = System.IO.Path.GetExtension(FileUploadIMG.FileName).ToLower();
                String[] ExtCorrectos = { ".png", ".jpg", ".jpeg" };

                for (int i = 0; i < ExtCorrectos.Length; i++)
                {
                    if (ExtCorrectos[i] == ExtArchivo)
                    {
                        Correcto = true;
                    }

                }

            }
            if (Correcto == true)
            {
                Session["UnHotel"] = System.IO.Path.GetFileName(FileUploadIMG.FileName);
                FileUploadIMG.SaveAs(Server.MapPath("~/Hoteles/") + Session["UnHotel"]);

                imgbox.ImageUrl = "~/Hoteles/" + Session["UnHotel"];
                imgbox.DataBind();
            }
            //Response.Write("<script>window.alert('" + imgbox.ImageUrl + "');</script>");  

        }
        //btnlimpuiar
        protected void btnLimpiar_Click(object sender, EventArgs e)
        {
            this.LimpioFormulario();
        }

        //  Buscar
        protected void BtnBuscarH_Click(object sender, EventArgs e)
        {
            String _Nombre = "";

            try
            {
                _Nombre = Convert.ToString(txtBuscar.Text);
            }
            catch
            {
                lblError.Text = "El Nombre Debe no puede ser numerico";
                return;
            }
            try
            {
                Hotel unHote = LogicaHotel.Buscar(_Nombre);

                if (unHote != null)
                {
                    imgbox.ImageUrl = unHote.Foto;
                    Convert.ToString(txtNomH.Text = unHote.Nombre);
                    Convert.ToString(txtCategoria.Text = unHote.Estrellas);
                    Convert.ToInt32(txtTel.Text = unHote.Tel.ToString());
                    Convert.ToInt32(txtFax.Text = unHote.Fax.ToString());
                    Convert.ToString(txtCalle.Text = unHote.Calle);
                    Convert.ToString(txtNumPuerta.Text = unHote.NumPuerta);
                    Convert.ToString(txtCiudad.Text = unHote.Ciudad);

                    //Si tiene picina
                    if (unHote.Picina == true)
                    {
                        Convert.ToBoolean(chkSiPicina.Checked = unHote.Picina);
                    }
                    else
                    {
                        Convert.ToBoolean(chkNoPicina.Checked = unHote.Picina);
                    }

                    //Acceso a playa
                    if (unHote.AccesoPlaya == true)
                    {
                        Convert.ToBoolean(chkAPSi.Checked = unHote.AccesoPlaya);
                    }
                    else
                    {
                        Convert.ToBoolean(chkAPNo.Checked = unHote.AccesoPlaya);
                    }

                    Session["UnHotel"] = unHote;

                    this.habilModBaja();
                    lblEstadoHotel.Text = " Se Encontro El hotel";
                }
                else
                {   //si el objeto traidso es nullo
                    this.HabilAlta();
                    lblEstadoHotel.Text = "El Hotel no existe - Si desea puede Agregarlo";
                    Session["UnHotel"] = null;
                }
            }
            catch (Exception ex)
            {
                lblEstadoHotel.Text = ex.Message;
            }
        }

        //  Alta
        protected void btnAltaHotel_Click(object sender, EventArgs e)
        {
            string nombre = "";

            Hotel Mihotel = null;
            try
            {
                nombre = Convert.ToString(txtNomH.Text);
            }
            catch (Exception)
            {
                lblError.Text = "El Nombre no puede ser numerico";
                return;
            }

            try
            {
                //Construyo objeto Hotel
                String Nombre = Convert.ToString(txtNomH.Text);
                String Foto = Convert.ToString(imgbox.ImageUrl);
                String NumPuerta = Convert.ToString(txtNumPuerta.Text);
                int Fax = Convert.ToInt32(txtFax.Text);
                bool Picina = Convert.ToBoolean(chkSiPicina.Checked);
                int Tel = Convert.ToInt32(txtTel.Text);
                String Estrellas = Convert.ToString(txtCategoria.Text);
                String Ciudad = Convert.ToString(txtCiudad.Text);
                String Calle = Convert.ToString(txtCalle.Text);
                bool AccesoPlaya = Convert.ToBoolean(chkAPSi.Checked);

                Mihotel = new Hotel(Nombre, Tel, Fax, Estrellas, Picina, AccesoPlaya, Calle, NumPuerta, Ciudad, Foto);

                LogicaHotel.AltaHotel(Mihotel);
                lblEstadoHotel.Text = "Alta realizada con Exito!";
                this.LimpioFormulario();

            }
            catch (Exception ex)
            {

                lblEstadoHotel.Text = ex.Message;
            }
        }

        //  Baja
        protected void btnBaja_Click(object sender, EventArgs e)
        {
            try
            {
                Hotel Hot = (Hotel)Session["UnHotel"];
                LogicaHotel.EliminarHot(Hot);
                this.LimpioFormulario();
                lblError.Text = "Eliminacion Exitosa";

            }
            catch (Exception ex)
            {
                lblError.Text = ex.Message;
            }
        }

        //Modi Hotel
        protected void btnModificar_Click(object sender, EventArgs e)
        {

            String Nombre;
            try
            {
                Nombre = Convert.ToString(txtNomH.Text);
            }
            catch
            {
                lblError.Text = "El nombre tiene un limite de 50 caracteres";
                return;
            }


            Hotel H = (Hotel)Session["UnHotel"];
            try
            {

                H.Nombre = Nombre;
                H.Fax = Convert.ToInt32(txtFax.Text);
                H.Tel = Convert.ToInt32(txtTel.Text);
                H.NumPuerta = Convert.ToString(txtNumPuerta.Text);
                H.Foto = Convert.ToString(imgbox.ImageUrl);
                H.Estrellas = Convert.ToString(txtCategoria.Text);
                H.Calle = Convert.ToString(txtCalle.Text);
                H.Ciudad = Convert.ToString(txtCiudad.Text);
                H.AccesoPlaya = Convert.ToBoolean(chkAPSi.Checked);
                H.Picina = Convert.ToBoolean(chkSiPicina.Checked);

                LogicaHotel.ModiHotel(H);
                this.LimpioFormulario();
                lblError.Text = "Modificacion Exitosa";

            }
            catch (Exception ex)
            {
                lblError.Text = ex.Message;
            }
        }


    }


}
