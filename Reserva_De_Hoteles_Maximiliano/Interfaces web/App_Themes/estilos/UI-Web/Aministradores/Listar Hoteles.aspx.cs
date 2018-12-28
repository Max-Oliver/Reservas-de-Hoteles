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
    public partial class Listar_Hoteles : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                dgvHoteles.Enabled = true;
                List<Hotel> Listar = LogicaHotel.ListarHoteles();
                dgvHoteles.DataSource = Listar;
                dgvHoteles.DataBind();


            }
            catch (Exception ex)
            {

                lblError.Text = ex.Message;
            }
            try
            {

                Hotel Hot = (Hotel)LogicaHotel.Buscar(Convert.ToString(dgvHoteles.SelectedRow.Cells[1].Text));

                List<Habitacion> Listarhabis = LogicaHabitacion.listaHabit(Hot);
                dgvhabis.DataSource = Listarhabis;
                dgvhabis.DataBind();
                dgvhabis.Enabled = true;

            }
            catch (Exception ex)
            {

                lblError.Text = ex.Message;
            }
        }

        protected void dgv_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                Hotel Hot = (Hotel)LogicaHotel.Buscar(Convert.ToString(dgvHoteles.SelectedRow.Cells[1].Text));
                List<Habitacion> Listarhabis = LogicaHabitacion.listaHabit(Hot);
                dgvhabis.DataSource = Listarhabis;
                dgvhabis.DataBind();
                dgvhabis.Enabled = true;

            }
            catch (Exception ex)
            {

                lblError.Text = ex.Message;
            }
        }

        protected void dgvhabis_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }

        protected void dgvhabis_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}