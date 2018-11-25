    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Text;

using System.Data.SqlClient;
using System.Data;

using Entidades_Compartidas;
using Reserva_De_Hoteles_Maximiliano;

public class PersistenciaHoteles
{
    //Buscar Hotel
    public static Hotel Buscar(String Nombre)
    {
        Hotel unHotel = null;
        //Habitacion unHabit = null;
        SqlDataReader _lect;
        

        //Conexcion
        SqlConnection cmd = new SqlConnection(Conexion.CMD);
        SqlCommand _comando = new SqlCommand("sp_BuscarHotel", cmd);
        _comando.CommandType = CommandType.StoredProcedure;
        _comando.Parameters.AddWithValue("@Nombre", Nombre);

        SqlParameter _Retor = new SqlParameter("@Retorno", SqlDbType.Int);
        _Retor.Direction = ParameterDirection.ReturnValue;
        _comando.Parameters.Add(_Retor);

        try
        {
            cmd.Open();
            _lect = _comando.ExecuteReader();
            if (_lect.Read())
            {
               Nombre                = (String)_lect["Nombre"];
                int Tel              = (int)_lect["Tel"];
                int Fax              = (int)_lect["Fax"];
                String Calle         = (String)_lect["Calle"];
                String NumPuerta     = (String)_lect["NumPuerta"];
                String Ciudad        = (String)_lect["Ciudad"];
                String CatEstrellas  = (String)_lect["CateEstrellas"];
                bool Picina          = (bool)_lect["Picina"];
                bool AccesPlay       = (bool)_lect["AccesoPlaya"];
                String Foto          = (String)_lect["FotoHotel"];
     
                unHotel              = new Hotel(Nombre,Tel,Fax,CatEstrellas,Picina,AccesPlay,Calle,NumPuerta,Ciudad,Foto /*,unHabit*/ );
            }
            else
            {
                //Retornos de errores
                if ((int)_Retor.Value == -1)
                {
                    return null;   
                }
            }
            _lect.Close();
        }
        catch (Exception ex)
        {

            throw new Exception(ex.Message);
        }
        finally
        {
            cmd.Close();
        }
        return unHotel;
    }
    // Alta Hotel
    public static void Alta(Hotel MiHot)
    {
        //Coneccion
        SqlConnection cmd = new SqlConnection(Conexion.CMD);
        SqlCommand Comand = new SqlCommand("sp_AltaHotel",cmd);
        Comand.CommandType = CommandType.StoredProcedure;

        //params
        Comand.Parameters.AddWithValue("@Nombre",MiHot.Nombre);
        Comand.Parameters.AddWithValue("@Tel",MiHot.Tel);
        Comand.Parameters.AddWithValue("@Fax", MiHot.Fax);
        Comand.Parameters.AddWithValue("@Calle", MiHot.Calle);
        Comand.Parameters.AddWithValue("@NumPuerta", MiHot.NumPuerta);
        Comand.Parameters.AddWithValue("@Ciudad" , MiHot.Ciudad);
        Comand.Parameters.AddWithValue("@CateEstrellas", MiHot.Estrellas);
        Comand.Parameters.AddWithValue("@Picina", MiHot.Picina);
        Comand.Parameters.AddWithValue("@AccesoPlaya", MiHot.AccesoPlaya);
        Comand.Parameters.AddWithValue("@Foto", MiHot.Foto);

        //retorno
        SqlParameter _retor = new SqlParameter("@retorno", SqlDbType.Int);
        _retor.Direction = ParameterDirection.ReturnValue;
        Comand.Parameters.Add(_retor);

        //control
        try
        {
            cmd.Open();
            Comand.ExecuteNonQuery();

            #region objeto hotel no se usa
            //if (_lect.Read())
            //{
            //    String Nombre        = (String)_lect["Nombre"];
            //    int Tel              = (int)_lect["Tel"];
            //    int Fax              = (int)_lect["Fax"];
            //    String Calle         = (String)_lect["Calle"];
            //    String NumPuerta     = (String)_lect["NumPuerta"];
            //    String Ciudad        = (String)_lect["Ciudad"];
            //    String CatEstrellas  = (String)_lect["CateEstrellas"];
            //    bool Picina          = (bool)_lect["Picina"];
            //    bool AccesPlay       = (bool)_lect["AccesoPlaya"];
            //    String Foto          = (String)_lect["FotoHotel"];

            //    MiHot = new Hotel(Nombre, Tel, Fax, CatEstrellas, Picina, AccesPlay, Calle, NumPuerta, Ciudad, Foto /*,unHabit*/ );
            //}
            //else
            //{
            #endregion
            
            //Retornos de errores
            if ((int)_retor.Value == -1)
            {
              throw new Exception("Ya existe un Hotel registrado con ese Nombre.");

            }
            if ((int)_retor.Value == -2)
            {
              throw new Exception("Error - En la Inserción");

            }
       
        }
        catch (Exception ex)
        {

            throw ex;
        }
        finally
        {
            cmd.Close();
        }
        
    }
    //Modificaciones Hotel
    public static void Modificar(Hotel MiHot)
    {
        //Hotel NueHotel = null;
        //SqlDataReader _lect = null;

        SqlConnection cmd = new SqlConnection(Conexion.CMD);
        SqlCommand Comand = new SqlCommand("sp_ModiHotel", cmd);
        Comand.CommandType = CommandType.StoredProcedure;

        Comand.Parameters.AddWithValue("@Nombre", MiHot.Nombre);
        Comand.Parameters.AddWithValue("@Tel", MiHot.Tel);
        Comand.Parameters.AddWithValue("@Fax", MiHot.Fax);
        Comand.Parameters.AddWithValue("@Calle", MiHot.Calle);
        Comand.Parameters.AddWithValue("@NumPuerta", MiHot.NumPuerta);
        Comand.Parameters.AddWithValue("@Ciudad", MiHot.Ciudad);
        Comand.Parameters.AddWithValue("@CateEstrellas", MiHot.Estrellas);
        Comand.Parameters.AddWithValue("@Picina", MiHot.Picina);
        Comand.Parameters.AddWithValue("@AccesoPlaya", MiHot.AccesoPlaya);
        Comand.Parameters.AddWithValue("@Foto", MiHot.Foto);

        SqlParameter _retor = new SqlParameter("@retorno", SqlDbType.Int);
        _retor.Direction = ParameterDirection.ReturnValue;
        Comand.Parameters.Add(_retor);

        try
        {
            cmd.Open();
            Comand.ExecuteNonQuery();

            #region codigo al pedo
            //if (_lect.Read())
            //{
            //    String Nombre       = (String)_lect["Nombre"];
            //    int Tel             = (int)_lect["Tel"];
            //    int Fax             = (int)_lect["Fax"];
            //    String Calle        = (String)_lect["Calle"];
            //    String NumPuerta    = (String)_lect["NumPuerta"];
            //    String Ciudad       = (String)_lect["Ciudad"];
            //    String CatEstrellas = (String)_lect["CateEstrellas"];
            //    bool Picina         = (bool)_lect["Picina"];
            //    bool AccesPlay      = (bool)_lect["AccesoPlaya"];
            //    String Foto         = (String)_lect["FotoHotel"];

            //    NueHotel = new Hotel(Nombre, Tel, Fax, CatEstrellas, Picina, AccesPlay, Calle, NumPuerta, Ciudad, Foto /*,unHabit*/ );
            //}
            //else
            //{
            #endregion
            //Retornos de errores
            if ((int)_retor.Value == -1)
            {
                throw new Exception("no existe hotel en la bd");
            }
            if ((int)_retor.Value == -2)
                {
                    throw new Exception("Error - en la actualizacion");
                }
            #region errores al pedo
                //if ((int)_retor.Value == -4)
                //{
                //    throw new Exception("Error - Al Eliminar El Hotel");

                //}
                //if ((int)_retor.Value == -2)
                //{
                //    throw new Exception("Error - Al eliminar la reserva");

                //}
                //if ((int)_retor.Value == -3)
                //{
                //    throw new Exception("Error - Al eliminar Habitacion");

                //}

                //if ((int)_retor.Value == 1)
                //{
                //    throw new Exception("Alta exitosa!");

                //}
                #endregion            
            //_lect.Close();

        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
        finally
        {
            cmd.Close();
        }
    }

    //Baja Hoteles
    public static void BajaHoteles(Hotel UnHotel)
    {

    SqlConnection cmd = new SqlConnection(Conexion.CMD);
    SqlCommand Comand = new SqlCommand("sp_EliminarHotel", cmd);
    Comand.CommandType = CommandType.StoredProcedure;

    Comand.Parameters.AddWithValue("@Nombre", UnHotel.Nombre);

    SqlParameter _retor = new SqlParameter("@Retorno", SqlDbType.Int);
    _retor.Direction = ParameterDirection.ReturnValue;
    Comand.Parameters.Add(_retor);

    try
    {
        cmd.Open();
        Comand.ExecuteNonQuery();

        if ((int)_retor.Value == -1)
        {
            throw new Exception("El Hotel no existe en la bd");
        }
        if ((int)_retor.Value == -2)
        {
            throw new Exception("Al Eliminar la Reserva");
        }
        if ((int)_retor.Value == -3)
        {
            throw new Exception("Error al eliminar habitacion");
        }
        //if ((int)_retor.Value == 1)
        //{
        //    throw new Exception("Eliminacion Exitosa!");
        //}
    }
    catch (Exception ex)
    {

        throw new Exception(ex.Message);
    }
    finally
    {
        cmd.Close();
    }
}
    //Lista Hoteles
    public static List<Hotel> ListarHoteles()
    {
        Hotel H;
        List<Hotel> ListaHot = new List<Hotel>();
        SqlDataReader dr;

        SqlConnection cmd = new SqlConnection(Conexion.CMD);
        SqlCommand comand = new SqlCommand("sp_ListarHoteles", cmd);
        comand.CommandType = CommandType.StoredProcedure;

        try
        {
            cmd.Open();
            dr = comand.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    string HotelNom = (string)dr["Nombre"];
                    
                    int tel = (int)dr["Tel"];
                    int Fax = (int)dr["Fax"];
                    string Calle = (string)dr["Calle"];
                    string NumPuert = (string)dr["NumPuerta"];
                    string Ciud = (string)dr["Ciudad"];
                    string CatEstr = (string)dr["CateEstrellas"];
                    bool Picina = (bool)dr["Picina"];
                    bool AccesoPlaya = (bool)dr["AccesoPlaya"];
                    string Foto = (string)dr["FotoHotel"];

                    H = new Hotel(HotelNom,tel,Fax,CatEstr,Picina,AccesoPlaya,Calle,NumPuert,Ciud,Foto);
                    ListaHot.Add(H);
                }
                dr.Close();
            }
        }
        catch (Exception ex)
        {

            throw ex;
        }
        finally
        {
            cmd.Close();
        }
        
        return ListaHot;
    }

 }//fin class
