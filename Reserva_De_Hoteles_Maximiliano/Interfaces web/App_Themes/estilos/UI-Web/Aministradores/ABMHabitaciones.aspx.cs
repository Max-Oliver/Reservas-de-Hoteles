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
    public partial class ABMHabitaciones : System.Web.UI.Page
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
            txtBuscar.Text = "";
            txtCosto.Text = "";
            txtNumHabitacion.Text = "";
            txtDesc.Text = "";
            txtHoteles.Text = "";
            txtNumHabi.Text = "";
            txtBuscar.Text = "";
            txtPiso.Text = "";

            lblError.Text = "";
            lblEstadohabit.Text = "";

            this.btnSoloBuscar();

            imgbox.ImageUrl = "~/UI-Web/MastersPages/Estilos/imgs/react.png";
        }

        //habilito hotel buscar solo ese boton
        public void btnSoloBuscar()
        {
            btnAlta.Enabled = false;
            btnBaja.Enabled = false;
            btnModificar.Enabled = false;
            BtnBuscarHabi.Enabled = true;
            btnLimpiar.Enabled = true;
            btnSubir.Enabled = false;
            FileUploadIMG.Enabled = false;

            txtBuscar.Enabled = true;
            txtNumHabi.Enabled = true;
            txtHoteles.Enabled = false;
            txtNumHabitacion.Enabled = false;
            txtPiso.Enabled = false;
            txtDesc.Enabled = false;
            txtCosto.Enabled = false;


        }

        public void HabilAlta()
        {
            btnAlta.Enabled = true;
            btnBaja.Enabled = false;
            btnModificar.Enabled = false;
            BtnBuscarHabi.Enabled = false;
            btnLimpiar.Enabled = true;
            btnSubir.Enabled = true;
            FileUploadIMG.Enabled = true;

            txtBuscar.Enabled = false;

            txtNumHabitacion.Enabled = true;
            txtHoteles.Enabled = true;
            txtCosto.Enabled = true;
            txtDesc.Enabled = true;
            txtPiso.Enabled = true;
        }

        public void habilModiBaja()
        {
            btnAlta.Enabled = false;
            btnBaja.Enabled = true;
            btnModificar.Enabled = true;
            BtnBuscarHabi.Enabled = false;
            btnLimpiar.Enabled = true;
            btnSubir.Enabled = true;


            txtNumHabi.Enabled = false;
            txtBuscar.Enabled = false;

            txtHoteles.Enabled = false;
            txtNumHabitacion.Enabled = false;
            txtPiso.Enabled = true;
            txtDesc.Enabled = true;
            txtCosto.Enabled = true;
            FileUploadIMG.Enabled = true;
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
                Session["UnaHabi"] = System.IO.Path.GetFileName(FileUploadIMG.FileName);
                FileUploadIMG.SaveAs(Server.MapPath("~/Habitaciones/") + Session["UnaHabi"]);

                imgbox.ImageUrl = "~/Habitaciones/" + Session["UnaHabi"];
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
        protected void BtnBuscarHabi_Click(object sender, EventArgs e)
        {
            String _Nombre = "";
            int _NumHabi = 0;
            Habitacion unaHabi = null;
            try
            {
                _Nombre = Convert.ToString(txtBuscar.Text);
                _NumHabi = Convert.ToInt32(txtNumHabi.Text);

            }
            catch
            {
                lblError.Text = "El hotel no existe por favor ingrese los datos correctos.";
                return;
            }
            try
            {
                //Hotel miHotel = null;
                //Busco Habitaciones
                unaHabi = LogicaHabitacion.Buscar(_Nombre, _NumHabi);

                if (unaHabi != null)
                {
                    imgbox.ImageUrl = unaHabi.Foto;
                    Convert.ToString(txtHoteles.Text = unaHabi.unHotel.Nombre);
                    Convert.ToInt32(txtNumHabitacion.Text = unaHabi.NumHabit.ToString());
                    Convert.ToInt32(txtPiso.Text = unaHabi.Piso.ToString());
                    Convert.ToString(txtDesc.Text = unaHabi.Descripcion);
                    Convert.ToInt32(txtCosto.Text = unaHabi.Costo.ToString());

                    Session["UnaHabi"] = unaHabi;

                    this.habilModiBaja();
                    lblEstadohabit.Text = " Se Encontro El hotel - Con la habitacion";
                }
                else
                {   //si el objeto traidso es nullo
                    this.HabilAlta();
                    lblEstadohabit.Text = "La Habitacion no existe - Si desea puede Agregarlo";
                    Session["UnaHabi"] = null;
                }
            }
            catch (Exception ex)
            {
                lblEstadohabit.Text = ex.Message;
            }
        }

        //  Alta
        protected void btnAlta_Click(object sender, EventArgs e)
        {
            String _HotNombr = null;
            int _NumHabi = 0;
            Habitacion unaHabi = null;
            try
            {
                _HotNombr = Convert.ToString(txtBuscar.Text);
                _NumHabi = Convert.ToInt32(txtNumHabi.Text);
            }
            catch
            {
                lblError.Text = "El hotel o la Habitacion no existe por favor ingrese los datos correctos.";
                return;
            }
            try
            {
                //busco hotel
                Hotel mihote = null;
                mihote = LogicaHotel.Buscar(_HotNombr);
                Session["UnaHabi"] = unaHabi;
                Session["miHote"] = mihote;
                if (mihote != null)
                {
                    if (String.Equals(mihote.Nombre, _HotNombr))
                    {
                        String _Foto = Convert.ToString(imgbox.ImageUrl);
                        int numHabi = Convert.ToInt32(txtNumHabitacion.Text);
                        int Piso = Convert.ToInt32(txtPiso.Text);
                        String Descrip = Convert.ToString(txtDesc.Text);
                        int Costo = Convert.ToInt32(txtCosto.Text);

                        unaHabi = new Habitacion(mihote, numHabi, Piso, Descrip, Costo, _Foto);
                    }

                }


                LogicaHabitacion.Alta(unaHabi);
                this.LimpioFormulario();
                lblError.Text = "Alta realizada con Exito!";


            }
            catch (Exception ex)
            {
                lblError.Text = ex.Message;
                Session["UnaHabi"] = null;
                Session["mihote"] = null;
            }
        }

        //  Baja
        protected void btnBaja_Click(object sender, EventArgs e)
        {
            try
            {
                Habitacion Habit = (Habitacion)Session["UnaHabi"];
                LogicaHabitacion.Baja(Habit);
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
            String _Nombre = "";
            int _NumHabi = 0;
            Habitacion H = null;
            try
            {
                _Nombre = Convert.ToString(txtBuscar.Text);
                //if (_Nombre == "" || _Nombre.Length > 30)
                //{
                //    throw new Exception("Error en el ingreso del nombre - no puede estar vacia \n- ni mayor a 30 caracteres");
                //}
                _NumHabi = Convert.ToInt32(txtNumHabi.Text);
                //if (_NumHabi == 0 || _NumHabi > 10000)
                //{
                //    throw new Exception("El numero no puede ser nulo o 0 y debe ser menor de 10 k");
                //}
            }
            catch
            {
                lblError.Text = "El hotel o la Habitacion no existe por favor ingrese los datos correctos.";
                return;
            }
            //busco hotel
            H = (Habitacion)Session["UnaHabi"];
            try
            {

                H.unHotel.Nombre = _Nombre;
                H.NumHabit = Convert.ToInt32(txtNumHabitacion.Text);
                H.Piso = Convert.ToInt32(txtPiso.Text);
                H.Descripcion = Convert.ToString(txtDesc.Text);
                H.Costo = Convert.ToInt32(txtCosto.Text);
                H.Foto = Convert.ToString(imgbox.ImageUrl);

                LogicaHabitacion.Modificar(H);
                this.LimpioFormulario();
                lblError.Text = "Modificacion Exitosa!";

            }
            catch (Exception ex)
            {
                lblEstadohabit.Text = ex.Message;
            }

        }

    }
}