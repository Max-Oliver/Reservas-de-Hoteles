
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using System.Data.SqlClient;
using System.Data;

using Entidades_Compartidas;
using Reserva_De_Hoteles_Maximiliano;

public class PersistenciaHabitaciones
{
    //Buscar Habitacion
    public static Habitacion Buscar(String Nombre, int Numero )
    {
        Habitacion unhabit = null;
        SqlDataReader _Lect;

        SqlConnection cmd = new SqlConnection(Conexion.CMD);
        SqlCommand _Comand = new SqlCommand("sp_BuscarHabit", cmd);
        _Comand.CommandType = CommandType.StoredProcedure;

        _Comand.Parameters.AddWithValue("@idHotel" , Nombre.ToString() );
        _Comand.Parameters.AddWithValue("@NumHabi", Numero);

        SqlParameter _ret = new SqlParameter("#Retorno", SqlDbType.Int);
        _ret.Direction = ParameterDirection.ReturnValue;
        _Comand.Parameters.Add(_ret);

        try
        {
            cmd.Open();
            _Lect = _Comand.ExecuteReader();
            if (_Lect.Read())
            {
                 Hotel mihote  = PersistenciaHoteles.Buscar(Nombre);
                mihote.Nombre   = Nombre;
               // Numero          = Convert.ToInt32(_Lect["NumHabi"]);
                int Piso        = (Int16)_Lect["Piso"];
                String Desc     = (String)_Lect["Descripcion_Habitacion"];
                int Costo       = (int)_Lect["Costo"];
                String _foto    = (String)_Lect["Foto"];

                unhabit = new Habitacion(mihote, Numero, Piso, Desc, Costo, _foto);
            }
            else
            {
                //No existe hotel
                if ((int)_ret.Value == -1)
                {
                    return null;
                }
                if ((int)_ret.Value == -2)
                {
                    return null;
                }
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
        return unhabit;


    } 

    //Agregar Habitacion
    public static void AltaHabit(Habitacion miHabit)
    {
        //conexion
        SqlConnection cmd = new SqlConnection(Conexion.CMD);
        SqlCommand _Comand = new SqlCommand("sp_AltaHabit", cmd);
        _Comand.CommandType = CommandType.StoredProcedure;

    //parametros
        _Comand.Parameters.AddWithValue("@idHotel", miHabit.unHotel.Nombre);
        _Comand.Parameters.AddWithValue("@NumHabi", miHabit.NumHabit);
        _Comand.Parameters.AddWithValue("@Piso", miHabit.Piso);
        _Comand.Parameters.AddWithValue("@Descripcion", miHabit.Descripcion);
        _Comand.Parameters.AddWithValue("@Costo", miHabit.Costo);
        _Comand.Parameters.AddWithValue("@foto", miHabit.Foto);

        //retorno
        SqlParameter _ret = new SqlParameter("@Retorno", SqlDbType.Int );
        _ret.Direction = ParameterDirection.ReturnValue;
        _Comand.Parameters.Add(_ret);

        //control de errores
        try
        {
            cmd.Open();
            _Comand.ExecuteNonQuery();

            if ((int)_ret.Value == -1)
            {
                throw new Exception("Error Hotel no existe.");
            }
            if ((int)_ret.Value == -2)
            {
                throw new Exception("Error - Habitacion ya existe.");
            }
            if ((int)_ret.Value == -3)
            {
                throw new Exception("Error Al insertar Habitacion");
            }
          
        }
        catch (Exception ex)
        {

            throw ex ;
        }
        finally
        {
            //fin proceso
            cmd.Close();
        }
    }

    //Modificar Habitacion
    public static void ModiHabit (Habitacion miHabit)
    {
        //conexion
            SqlConnection cmd = new SqlConnection(Conexion.CMD);
            SqlCommand _Comand = new SqlCommand("sp_ModiHabitacion", cmd);
            _Comand.CommandType = CommandType.StoredProcedure;

            //parametros
            _Comand.Parameters.AddWithValue("@idHotel", miHabit.unHotel.Nombre);
            _Comand.Parameters.AddWithValue("@NumHabi", miHabit.NumHabit);
            _Comand.Parameters.AddWithValue("@Piso", miHabit.Piso);
            _Comand.Parameters.AddWithValue("@Descripcion", miHabit.Descripcion);
            _Comand.Parameters.AddWithValue("@Costo", miHabit.Costo);
            _Comand.Parameters.AddWithValue("@foto", miHabit.Foto);

            //retorno
            SqlParameter _ret = new SqlParameter("@Retorno", SqlDbType.Int);
            _ret.Direction = ParameterDirection.ReturnValue;
            _Comand.Parameters.Add(_ret);

            //control de errores
            try
            {
                cmd.Open();
                _Comand.ExecuteNonQuery();

                if ((int)_ret.Value == -1)
                {
                    throw new Exception("Error Hotel no existe.");
                }
                if ((int)_ret.Value == -2)
                {
                    throw new Exception("Error Al Actualizar Habitacion");
                }
            if ((int)_ret.Value == -3)
            {
                throw new Exception("Error - Habitacion no existe.");
            }

            }
            catch (Exception ex)
            {

                throw ex;
            }
            finally
            {
                //fin proceso
                cmd.Close();
            }
        

    }

    //Baja Habitacion
    public static void bajaHabit(Habitacion miHabit)
    {
           //conexion
            SqlConnection cmd = new SqlConnection(Conexion.CMD);
            SqlCommand _Comand = new SqlCommand("sp_BajaHabit", cmd);
            _Comand.CommandType = CommandType.StoredProcedure;

           //parametros
            _Comand.Parameters.AddWithValue("@idHotel", miHabit.unHotel.Nombre);
            _Comand.Parameters.AddWithValue("@NumHabi", miHabit.NumHabit);
            
           //retorno
            SqlParameter _ret = new SqlParameter("@Retorno", SqlDbType.Int);
            _ret.Direction = ParameterDirection.ReturnValue;
            _Comand.Parameters.Add(_ret);

           //control de errores
            try
            {
                cmd.Open();
                _Comand.ExecuteNonQuery();

                if ((int)_ret.Value == -1)
                {
                    throw new Exception("Error Hotel no existe.");
                }
                if ((int)_ret.Value == -2)
                {
                    throw new Exception("Error - Al intentar eliminar reservas.");
                }
                if ((int)_ret.Value == -3)
                {
                    throw new Exception("Error - Al intentar eliminar Habitacion");
                }
            }
            catch (Exception ex)
            {

                throw ex;
            }
            finally
            {
             //fin proceso
                cmd.Close();
            }
    }

    //Lista habitaciones
    public static List<Habitacion> _listarHabitaciones(Hotel unHotel)
    {
        List<Habitacion> _lista = new List<Habitacion>();
        SqlDataReader _lect;

        SqlConnection cmd = new SqlConnection(Conexion.CMD);
        SqlCommand Comand = new SqlCommand("sp_listHabis", cmd);
        Comand.CommandType = CommandType.StoredProcedure;

        Comand.Parameters.AddWithValue("@idhotel", unHotel.Nombre);

        SqlParameter _ret = new SqlParameter("@ret", SqlDbType.Int);
        _ret.Direction = ParameterDirection.ReturnValue;
        Comand.Parameters.Add(_ret);

        try
        {
            cmd.Open();
            _lect = Comand.ExecuteReader();

            if (_lect.HasRows)
            {
                while (_lect.Read())
                {
                    String Nombre   = unHotel.Nombre;
                    Int16 NumHabit    = (Int16)_lect["NumHabi"];
                    Int16 Piso        = (Int16)_lect["Piso"];
                    String Desc     = (String)_lect["Descripcion"];
                    int Costo       = (int)_lect["Costo"];
                    String Foto     = (String)_lect["foto"];

                    Habitacion Habit = new Habitacion(unHotel, NumHabit, Piso, Desc, Costo, Foto);
                    _lista.Add(Habit);
               }

                _lect.Close();
            }
            else
            {
                if ((int)_ret.Value == -1)
                {
                    return null;
                }
            }
        }
        catch (Exception ex)
        {
            throw new Exception( ex.Message);
        }
        finally
        {
            cmd.Close();
        }
        return _lista;
    }
}
