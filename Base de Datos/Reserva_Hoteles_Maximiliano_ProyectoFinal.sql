
/*
drop database Reserva_De_Hoteles_Maximiliano
go
use master
go
*/
create database Reserva_De_Hoteles_Maximiliano
go

Use Reserva_De_Hoteles_Maximiliano
go

 set language spanish
-- Ok lets go to create the Tables

create table Usuarios
(
	Usuario varchar (25) Primary Key,
	pass varchar (25),
	Nombre varchar (30),
	Apellido varchar(30) 
)

create table Clientes
(
	Usuario varchar (25) foreign key  References Usuarios(Usuario),
	Pass varchar (25) not null,
	--FotoUsu varbinary(max),
	FotoUsu varchar(max),

	NumTarj int not null,
	Nombre varchar (30) not null,
	Apellido varchar (30) not null,
	Calle varchar (30)not null,
	NumPuer int not null,
	Ciudad varchar (20) not null
)

create table TelefonosClien
(
	CliUsuario varchar (25) foreign key (CliUsuario) references Usuarios(Usuario),
	NumeroTel int not null,
)

create table SysAdmin
(	
	UsuAdmin varchar (25) not null,
	Pass varchar (25) not null,
	Fotoadmin varchar(max) not null,
	--FotoAdmin varbinary(max),
	CargoEmpre varchar (20) not null,
	foreign key (UsuAdmin) References Usuarios(Usuario), 
)


create table Hotel
(
	Nombre Varchar (30) Primary key ,
	Tel int not null,
	Fax int not null,

	Calle varchar(50) not null,
	NumPuerta varchar (8),
	Ciudad varchar (50) not null,
	CateEstrellas nvarchar not null,
	Picina bit  not null,
	AccesoPlaya bit  not null,
	
	FotoHotel varchar(max)not null,
	--FotoHotel varbinary (max) not null,
)

create table Habitacion
(
	IdHotel varchar (30),
	NumHabi smallint ,
	primary key (IdHotel, NumHabi),
	foreign key (IdHotel) References Hotel (Nombre),
	Piso smallint,
	Descripcion varchar (150),
	Costo int,
	foto varchar(max)
)

create table Reservas 
--drop table Reservas
(
	IdReserva int Primary key identity(1,1),
	IdHotel varchar (30), /*not null foreign key references Hotel(Nombre),*/
	IdHabitacion smallint not null,
	IdCliente varchar (25) foreign key references Usuarios(Usuario),
	foreign key (IdHotel,IdHabitacion) references Habitacion(IdHotel,NumHabi),

	Estado bit,
	FechaIni date,                                                                                                                                                   
	FechaFin date,	
)


--Inserciones
--iserciones de Usuarios Clientes y Administradores
--Usuarios clientes y admins
Insert Usuarios (Usuario,pass, Nombre, Apellido) values('adminZero0'	,'admin',  	'ByOne','Zero')
Insert Usuarios (Usuario,pass, Nombre, Apellido) values('AdminRobert'	,'admin',  	'El Robert','Einstein')
Insert Usuarios (Usuario,pass, Nombre, Apellido) values('adminCarlos'	,'admin',  	'Carlos Margaret','DiMaria')
Insert Usuarios (Usuario,pass, Nombre,Apellido) values('Migue'		,'User1',   'Miguel Otreo','LuisMagile')
Insert Usuarios (Usuario,pass, Nombre, Apellido) values('Pepe'		,'User2', 	'Los Cuervos','Queen')
Insert Usuarios (Usuario,pass, Nombre,Apellido) values('Frost'		,'User3',  	'SanRamon','Harly')
Insert Usuarios (Usuario,pass, Nombre,Apellido) values('Zeta'		,'User4',  	'JuanCarlos','Don Osvaldo')

--Clientes
Insert Clientes(  Usuario, Pass , NumTarj , Nombre, Apellido, NumPuer, Ciudad, Calle) 
			values ('Migue','User1',11122233, 'Miguel ','Angel',1265 , 'Montevideo','Los Teros'),
					('Pepe','User2',22334455 ,'Marcel',' Astori',1355 , 'Montevideo','Av. Italia'),
					('Frost','User3',33222554 ,'Federico',' Figueroa',1789 , 'Canelones','L.A.Herrera'),
					('Zeta','User4', 55669988,'Susana ','Pintos',3589 , 'Canelones','8 Octubre')

Insert into TelefonosClien( CliUsuario, NumeroTel ) 
					Values( 'Migue'   , 22153366  ),
						  ( 'Pepe'    , 24486213  ),
						  ( 'Frost'   , 12253366  ),
						  ( 'Zeta'    , 25178965  )

--Administradores
insert into SysAdmin( UsuAdmin    , Pass  ,FotoAdmin , CargoEmpre) 
			  Values('adminZero0' ,'admin','1' ,'Supervisor'),
					('AdminRobert','admin','2' ,'Gerente'),
					('adminCarlos','admin','3' ,'Encargado')




--Hotel
insert into Hotel (	Nombre  , Tel     , Fax     , Calle					,	NumPuerta,	  Ciudad	, CateEstrellas	, Picina, AccesoPlaya , FotoHotel) 
			values( 'Hotel6', 11223366, 12345678, '8 de Octubre 2035'	,	1241	 ,	'Montevideo',		5		,	1	,		1	  , 'foto1'	 ),
				  ( 'Hotel9', 22335544, 52345678, 'Emanuel Santos 2122' ,	1235	 ,	'Montevideo',		3		,	0	,		0	  ,	'foto2'	 ),
				  ( 'Hotel8', 27415503, 96325874, 'Manul Garcia 2568'	,	3556	 ,	'Canelones'	,		4		,	1	,		1	  ,	'foto3'	 ),
				  ( 'Hotel4', 11112336, 77758589, '18 Julio'			,	4458	 ,	'Maldonado'	,		3		,	0	,		1	  ,	'foto4'	 )

--Habitaciones
insert into Habitacion(IdHotel,NumHabi,Piso,Descripcion,Costo, foto) 
Values ('Hotel8', 401 , 41,'SuitHome - Descansar o Divertirse con una sola Reserva!', 21000,'Foto Habitacion 1' ),
	(	'Hotel9', 7 , 1,'Suit FiveStars - Descansar o Divertirse con una sola Reserva!' , 24000,'Foto Habitacion 2' ),
	(	'Hotel8', 1 , 8,'HomeExpress - Descansar o Divertirse con una sola Reserva!'	, 32000 ,'Foto Habitacion 3')

--Reservas
insert into Reservas(IdHotel ,IdHabitacion    ,IdCliente  ,  Estado , FechaIni	 ,		FechaFin ) 
			  Values(	'Hotel9',   7		  ,	'Migue'	,	1	  , '20/07/2018' ,   '22/07/2018'),
					(  	'Hotel8',	 1		  ,'Pepe ' ,	1	  , '1/11/2018'  ,   '10/11/2018')

--Verificaciones
--select * from Habitacion
--select * from hotel
--select * from Reservas
--Select * from Usuarios
--select * from Habitacion

-- `Procedimientos Almacenados --

--Intrucciones

--------------------------
--Buscar Hotel - existente
create proc sp_BuscarHotel
@Nombre varchar(30)
as 
 begin
		if not Exists(select * from Hotel H where H.Nombre = @Nombre)
		begin 
			print 'El hotel no existe - Asegurese de haberlo ingresado correctamente' 
			return -1
		end
		else
		begin
			select * from Hotel H where h.Nombre = @Nombre  
		end
 end
 go


 exec sp_BuscarHotel 'Hotel6'
 ---------------------------------
 --Listar Hoteles
 create proc sp_ListarHoteles
 as
 begin
	select * from Hotel
 end
 go

 Exec sp_ListarHoteles

 --------------------------------
 --Alta Hotel

create proc sp_AltaHotel
@Nombre varchar (30),
@Tel int,
@Fax int,
@Calle varchar(50),
@NumPuerta varchar(7),
@Ciudad varchar (50),
@CateEstrellas nvarchar,
@Picina bit,
@AccesoPlaya bit,
@Foto varchar(max)
as
begin
		if Exists(Select * from Hotel H where H.Nombre = @Nombre)
			begin 
				print 'Ya existe un hotel con ese Nombre..'
				return (-1); 
			end
		else
			begin			
			--Insert de hotel
			insert into Hotel(Nombre,Tel,Fax,Calle,NumPuerta,Ciudad,CateEstrellas,Picina,AccesoPlaya,FotoHotel)
					   values(@Nombre,@Tel,@Fax,@Calle,@NumPuerta,@Ciudad,@CateEstrellas,@Picina,@AccesoPlaya,@Foto)								
			if @@Error <> 0
				begin
					print 'Error - En la Insercion'
					return (-2)				
				end
			else
				begin
					return (1)
					print 'Alta Exitosa'					 
				end
			end
end

declare @resultado int
Exec @resultado = sp_AltaHotel 'Lessystem', 24826826, 09366578, 'Juan miguel',	3245	 ,	'Montevideo',		5		,	1	,		1	  , 'BestSellers'	
print @resultado

------------------------------
--Modificar Hotel
create proc sp_ModiHotel
@Nombre varchar (30),
@Tel int,
@Fax int,
@Calle varchar(50),
@NumPuerta varchar(8),
@Ciudad varchar (50),
@CateEstrellas nvarchar,
@Picina bit,
@AccesoPlaya bit,
@Foto varchar(max)
as
begin
		if not Exists(Select * from Hotel H where H.Nombre = @Nombre)
			begin
				return -1;
				print 'No existe el hotel indicado con ese nombre...' 
			end
		else
			begin 
				--Update Hotel
				update  Hotel
				set Fax = @Fax ,Tel = @Tel, Calle = @Calle, CateEstrellas = @CateEstrellas, NumPuerta= @NumPuerta, Ciudad = @Ciudad, AccesoPlaya = @AccesoPlaya, Picina = @Picina, FotoHotel = @Foto
				where Nombre = @Nombre
				 if @@Error <> 0
				    begin
				   		return (-2)
						print 'Error en la actualizacion'
					end
				else
					begin
						print 'Modificaciòn con Exito..'
						return (1)
											 
					end
			end
end


declare @resultado int
Exec @resultado = sp_ModiHotel 'Hotel1', 12445588, 22558899, 'PiedrasVkabcas'	,	asqwe12	 ,	'Montevideo',		2		,	0	,		0	  , 'JosePedroMandela'	
print @resultado



------------------------------
--Eliminar Hotel
Create proc sp_EliminarHotel
@Nombre varchar (30) 
as
begin
		if not Exists (select * from Hotel where Nombre = @Nombre)
			begin
				return (-1)
				print 'El hotel no existe'
			end
		else
		--if	 not Exists (Select * from Habitacion Ha, Hotel Ho, Reservas where Ho.Nombre = IdHotel and Ho.Nombre = @Nombre And Ha.IdHotel = Ho.Nombre )
		--	begin
		--		return (-2)
		--		print 'el hotel no tiene reservas '
		--	end
		--else
		begin
			begin tran
				Delete Reservas where IdHotel = @Nombre
				if @@ERROR <> 0
					begin
						RollBack tran
						Return (-2)
					End
				Delete Habitacion where IdHotel = @Nombre
				if @@ERROR <> 0
					begin 
						Rollback tran
						return (-3)
					end

				Delete Hotel where Nombre = @Nombre
				if @@ERROR <> 0
					begin
						Rollback tran
						Return (-4)
					End
				if @@ERROR = 0
					begin
						Commit tran
						return (1)
					end
		End
				
END
go

declare @retorno int
Exec @retorno = sp_EliminarHotel 'Hotel1'
if @retorno = -1
	print '-1 - Error - El hotel No existe'
if @retorno = -4
	print '-4 - Error - Al Eliminar El Hotel'
else if @retorno = -2
	print '-2 - Error - Al eliminar la reserva'
else if @Retorno = -3
    print '-3 - Error - Al eliminar Habitacion'
else if @retorno = 1
	print '1 - Eliminacion con exito!'	
go


--select * from Habitacion


------------------------------------------
--Habitacion ABM

create proc sp_AltaHabit
@IdHotel varchar(50),
@NumHabi int ,
@Piso varchar(25),
@Descripcion varchar(500),
@Costo int,
@foto varchar (max)
as		
begin 
	if not Exists(Select * from Hotel H where H.Nombre = @IdHotel)
	begin 
		print 'El Hotel No existe'
		return -1
	end
	else
		begin 				
		--Alta habitacion
			insert Habitacion( NumHabi,IdHotel,Piso,Descripcion,Costo,foto) 
				values(@NumHabi,@IdHotel,@Piso,@Descripcion,@Costo,@foto)
				if @@ERROR <> 0
					begin 
						return -1
					end
				IF @@ERROR = 0 
					begin 
						print 'El alta se realizo correctamente'
						return 1;
					end
			end
end


declare @return int
Execute @return = sp_AltaHabit 'hotel4', 1 ,2 , 'Hotel Lindo y acojedor Espectacular para Turismo.' , 40000, 'mi foto va aca'
print @return

select * from hotel

--MODIFICAR Habitacion
create proc sp_ModiHabitacion
@idHotel varchar (30),
@NumHabi int,
@Piso int,
@Descripcion varchar(500),
@Costo int,
@foto varchar(max)
as
	begin
		If not exists(Select * from Hotel G where G.Nombre = @idHotel)
			begin 
				print 'No existe el hotel'
				return -1;
			end
		else
		if exists (Select * from Habitacion H where H.NumHabi = @NumHabi)
			begin 		
				--Update de HABITACION
				update Habitacion
				set  Piso = @Piso, Descripcion = @Descripcion, Costo = @Costo , foto = @foto
				where IdHotel = @idHotel and NumHabi = @NumHabi
				if @@ERROR <> 0
					begin
						Print 'Error en la actualizacion'
						return -2
					end
					
				if @@ERROR = 0
					begin
						print 'Modificacion Exitosa'	
						return 1
					end
			end
		else
			begin
				print 'No existe habitacion'
				return -3
			end
	end
go

declare @Return int
Exec @Return = sp_ModiHabitacion 'Hotel8', 401 ,2 ,'Antel  -Avanzamos Juntos Hotell' , 50000 , 'Dostrescuatrofotos'
print @return

select * from hotel
select * from Habitacion
--Baja Habitacion (= Recordar que si tiene reservas Se deben Borrar Con reserva y todo )
-----------------------------------
--Baja Habitacion

create proc sp_BajaHabit
@IdHotel varchar(30),
@NumHabi int
as
--@Piso int,
--@Descripcion varchar (500),
--@Costo int

	Begin
		if Not Exists (Select * from Hotel H Where H.Nombre = @IdHotel)
			begin
				print 'Error no existe hotel'
				return -1
			end	
		else
			begin 
				
				--Elliminar si tiene reservas primero
				delete Reservas where  IdHabitacion = @NumHabi
				if @@Error <> 0 
					begin
						print 'Error al eliminar Resarva de la Habitacion'
						return -2
					end
				

				--Habitacion
				Delete Habitacion where NumHabi = @NumHabi
				if @@Error <> 0 
					begin
						print 'Error al eliminar Resarva de la Habitacion'
						return -2
					end
--Despues agregar UN atributo habitacion en la tabal de hotel para poder contar cuantas habis tiene un hotel y mejor manejo de cada habitacion 
				
			end
	end
go

Select * from Habitacion

declare @return int
exec @return = sp_BajaHabit 'Hotel8', 401
print @Return

--List Habitaciones
create proc sp_listHabis
@idhotel varchar (30)
as
begin
	if Not exists (Select * fROM Habitacion H where H.IdHotel = @idhotel)
		begin
			print 'Hotel no existe'
			return -1 
		end
	else 
		begin
			Select * from Habitacion where IdHotel = @Idhotel 
		end

end
go		

declare @ret int
Execute @ret = sp_listHabis 'Hotel8'
print @ret

-------------------------------------
--Buscar Habit
create proc sp_BuscarHabit
@idHotel varchar(30),
@NumHabi int
as 
begin
if not exists (Select * from Hotel H where H.Nombre = @idHotel)
	begin
		print 'No - existe Hotel.'
		return -1
	end
else
	begin
		if Exists (Select * from Habitacion H inner join Hotel Hot on (Hot.Nombre = H.IdHotel) where H.NumHabi = @NumHabi)
			begin
				Select H.IdHotel as Hotel , H.NumHabi as NºHabitacion , H.Piso , H.Descripcion as Descripcion_Habitacion, H.Costo , H.foto as Foto
				from  Habitacion H 
				where H.IdHotel = @idHotel and H.NumHabi = @NumHAbi 
			end
		else
			begin
				print 'Habitaciion no existe'
				return -2	
			end
	end
end
go

declare @ret int
Execute @ret = sp_BuscarHabit 'Hotel8' , 401
print @ret

--sp_buscarhabi 
-----------------------------------------------

--alter proc sp_BuscarHabitacion
--@Hotel varchar (30),  
--@Numhabi int
--as
--begin
--	if Not Exists (Select * from Hotel where Hotel.Nombre = @Hotel)
--		begin
--			print 'No existe hotel . verifique de nuevo'
--			return -1;
--		end
--	else
--		if	Exists (Select * from Habitacion H where H.NumHabi = @Numhabi)
--			begin 
				
--				Select * from Habitacion H left join Hotel Hot  on (Hot.Nombre = H.IdHotel) where H.NumHabi = @Numhabi  
--			end
--		else
--			begin
--				return -2
--			end
--end
--go

--declare @ret int
--Exec @ret = sp_BuscarHabitacion 'Hotel8' , 401
--print @ret

/*
	UsuAdmin varchar (25) not null,
	Pass varchar (25) not null,
	Fotoadmin varchar(max) not null,
	--FotoAdmin varbinary(max),
	CargoEmpre varchar (20) not null,
	foreign key (UsuAdmin) References Usuarios(Usuario), 
*/

----------------------------------------------------------------------------------------
--Alta de Administradores
Alter proc Sp_AltaAdmin
@UsuAdmin varchar(25),
@pass varchar (25),
@FotoAdmin varchar(Max) ,
@CargoEmpre varchar(20) ,
@NombreCompleto varchar (50)
as
begin
	if Exists (Select * from SysAdmin S where S.UsuAdmin = @UsuAdmin and S.Pass = @pass)
		begin 
				print 'El usuario ya existe'
				return -1 
		end
	else
		begin
			if Exists (Select * from Clientes C where C.Usuario = @UsuAdmin and C.Pass = @pass)
				begin
					print 'El usuario ingresado Es un Cliente, No se admiten clientes como Administradores. Lo lamentamos Mucho :c';
					return (-2);
				end
			Else
			begin
				begin tran
				
				--Alta Usuario
				insert into Usuarios(Usuario,pass,NombreCompleto) Values (@UsuAdmin,@pass,@NombreCompleto)
					if @@Error <> 0
						begin
							rollback tran
							print 'Ups Error en la Inseción de Usuario :c'
							return (-4);
						end
				
				--Alta Administrador
				Insert into SysAdmin (UsuAdmin,Pass,Fotoadmin,CargoEmpre) VALUES(@UsuAdmin,@pass,@FotoAdmin,@CargoEmpre)
					if @@Error <> 0
						begin
							rollback tran
							print 'Ups Error en la Inseción de Admin :c'
							return (-3);
						end
				
						if  @@ERROR = 0
							begin
								print 'Alta Con Exito!'
								commit tran
								return (1);
							end
			end
		end
		
end
go

declare @ret int 
exec @ret = Sp_AltaAdmin 'Frost','User3','mi foto Perfil','Administrativo',' Lucas Garcias'
print @ret

--select * from SysAdmin 
--Select * from Usuarios

---------------------------------------------------------------------------------------
--Modificacion de Administradores

create proc Sp_ModiAdmin
@UsuAdmin varchar(25),
@Pass varchar(25),
@FotoAdmin varchar(max),
@CaegoEmpre varchar(20),
@NombreCompleto varchar
as
begin
	if Not Exists (Select * from SysAdmin S where S.UsuAdmin = @UsuAdmin and s.Pass = @Pass)
		begin
				print 'El usuario no existe'
				return (-1);
		end
	Else 
		begin
			BEGIN TRAN
			--Actualizacion del Admin
			update SysAdmin
			set Fotoadmin = @FotoAdmin, CargoEmpre = @CaegoEmpre
			where UsuAdmin = @UsuAdmin and Pass = @Pass
				if @@Error <> 0 
					begin
						print 'Error en el update de admin'
						return (-2);
					end
			update Usuarios
			set NombreCompleto = @NombreCompleto
			where Usuario = @UsuAdmin and pass = @Pass
			if @@Error <> 0 
					begin
						print 'Error en el update de User'
						return (-3);
					end
	
			if @@Error = 0 
				begin
					Commit tran
					return (1);
				end
		end
end
go

declare @ret int
Exec @ret = Sp_ModiAdmin 'Zero125','Lastoskas2233','DenuevomiFotodePerfilRelargo','Supervisor','Juan Perez Garcia'
print @ret

--------------------------------------------------------------------------------------------7
--Baja Administradores
create proc sp_BajaAdmin
@UsuAdmin varchar (25),
@Pass varchar (25)
as
begin
	if not Exists (Select * from SysAdmin where UsuAdmin = @UsuAdmin and Pass = @Pass)
		begin
			print 'No existe este usuario'
			return (-1);
		end
	else
		begin
			begin tran
				
				--Elimino Admin segundo
				Delete SysAdmin where SysAdmin.UsuAdmin = @UsuAdmin 
				if @@Error <> 0 
					begin
						rollback tran
						print 'Error al Eliminar Admin'
						print (-3);
					end

				--Elimino Usuario primero
				Delete Usuarios where Usuarios.Usuario = @UsuAdmin
				if @@ERROR <> 0 
					begin
						rollback tran
						print 'Error al Eliminar Usuario'
						return (-2);
					end

				--Cierro el tran
				if (@@Error = 0)
					begin 			
						Commit tran			
						print 'Eliminacion Exitosa'
						return (1);
					end
		end
end

declare @ret int
Exec @ret = sp_BajaAdmin 'adminCarlos','admin'
print @ret

select * from SysAdmin

--Buscar Aministrador
create proc sp_BuscarAdmin
@UsuAdmin varchar(25),
@Pass varchar(25)
as
begin
	if Exists (Select * from SysAdmin where UsuAdmin = @UsuAdmin and Pass = @Pass)
		begin
			Select distinct S.UsuAdmin as Nombre_usuario , S.Pass as Pass_word , S.CargoEmpre as Cargo, S.Fotoadmin as Foto , U.Nombre AS Nombre, U.Apellido as Apellido
			from SysAdmin S , Usuarios U
			where S.UsuAdmin = @UsuAdmin and S.Pass = @Pass and U.Usuario = s.UsuAdmin
		end
	else
	begin
			print 'No se encontro ningun Usuario registrado con estos Atributos'
			return (-1);
	end
end
go

declare @ret int
exec @ret = sp_BuscarAdmin 'adminZero0','admin'
print @ret