--------------- CREACIÓN DE LA BASE DE DATOS PARA ANÁLISIS DE LA INFORMACIÓN DE DATOS ABIERTOS DE EGRESOS -------------------------

USE [master]
GO

/****** Object:  Database [Datos_Abiertos]    Script Date: 19/02/2024 09:53:29 p. m. ******/
CREATE DATABASE [Datos_Abiertos]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Datos_Abiertos', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Datos_Abiertos.mdf' , SIZE = 3431424KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Datos_Abiertos_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Datos_Abiertos_log.ldf' , SIZE = 8207104KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO

ALTER DATABASE [Datos_Abiertos] SET COMPATIBILITY_LEVEL = 120
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Datos_Abiertos].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [Datos_Abiertos] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [Datos_Abiertos] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [Datos_Abiertos] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [Datos_Abiertos] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [Datos_Abiertos] SET ARITHABORT OFF 
GO

ALTER DATABASE [Datos_Abiertos] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [Datos_Abiertos] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [Datos_Abiertos] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [Datos_Abiertos] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [Datos_Abiertos] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [Datos_Abiertos] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [Datos_Abiertos] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [Datos_Abiertos] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [Datos_Abiertos] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [Datos_Abiertos] SET  DISABLE_BROKER 
GO

ALTER DATABASE [Datos_Abiertos] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [Datos_Abiertos] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [Datos_Abiertos] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [Datos_Abiertos] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [Datos_Abiertos] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [Datos_Abiertos] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [Datos_Abiertos] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [Datos_Abiertos] SET RECOVERY FULL 
GO

ALTER DATABASE [Datos_Abiertos] SET  MULTI_USER 
GO

ALTER DATABASE [Datos_Abiertos] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [Datos_Abiertos] SET DB_CHAINING OFF 
GO

ALTER DATABASE [Datos_Abiertos] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [Datos_Abiertos] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO

ALTER DATABASE [Datos_Abiertos] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [Datos_Abiertos] SET  READ_WRITE 
GO

-------------- Creación de Tablas de base de datos ---------------------

USE [Datos Abiertos]

----------------------- Crea Tabla de Codigos CIE10---------------------

CREATE TABLE [dbo].[CAT_CIE10_2021](
	[CONSECUTIVO] [varchar](50) NULL,
	[LETRA] [varchar](50) NULL,
	[CLAVE] [nvarchar](6)  primary key,
	[NOMBRE] [varchar](500) NULL,
	[CODIGOX] [varchar](50) NULL,
	[LSEX] [varchar](50) NULL,
	[LINF] [varchar](50) NULL,
	[LSUP] [varchar](50) NULL,
	[TRIVIAL] [varchar](50) NULL,
	[ERRADICADO] [varchar](50) NULL,
	[N_INTER] [varchar](50) NULL,
	[NIN] [varchar](50) NULL,
	[NINMTOBS] [varchar](50) NULL,
	[COD_SIT_LESION] [varchar](50) NULL,
	[NO_CBD] [varchar](50) NULL,
	[CBD] [varchar](50) NULL,
	[NO_APH] [varchar](50) NULL,
	[AF_PRIN] [varchar](50) NULL,
	[DIA_SIS] [varchar](50) NULL,
	[CLAVE_PROGRAMA_SIS] [varchar](50) NULL,
	[COD_COMPLEMEN_MORBI] [varchar](50) NULL,
	[DIA_FETAL] [varchar](50) NULL,
	[DEF_FETAL_CM] [varchar](50) NULL,
	[DEF_FETAL_CBD] [varchar](50) NULL,
	[CLAVE_CAPITULO] [varchar](50) NULL,
	[CAPITULO] [varchar](500) NULL,
	[LISTA1] [varchar](50) NULL,
	[GRUPO1] [varchar](50) NULL,
	[LISTA5] [varchar](50) NULL,
	[RUBRICA_TYPE] [varchar](50) NULL,
	[YEAR_MODIFI] [varchar](500) NULL,
	[YEAR_APLICACION] [varchar](50) NULL,
	[VALID] [varchar](50) NULL,
	[PRINMORTA] [varchar](50) NULL,
	[PRINMORBI] [varchar](50) NULL,
	[LM_MORBI] [varchar](50) NULL,
	[LM_MORTA] [varchar](50) NULL,
	[LGBD165] [varchar](50) NULL,
	[LOMSBECK] [varchar](50) NULL,
	[LGBD190] [float] NULL,
	[NOTDIARIA] [varchar](50) NULL,
	[NOTSEMANAL] [varchar](50) NULL,
	[SISTEMA_ESPECIAL] [varchar](50) NULL,
	[BIRMM] [varchar](50) NULL,
	[CVE_CAUSA_TYPE] [varchar](50) NULL,
	[CAUSA_TYPE] [varchar](50) NULL,
	[EPI_MORTA] [varchar](50) NULL,
	[EDAS_E_IRAS_EN_M5] [varchar](50) NULL,
	[CVE_MATERNAS-SEED-EPID] [varchar](50) NULL,
	[EPI_MORTA_M5] [varchar](50) NULL,
	[EPI_MORBI] [varchar](50) NULL,
	[DEF_MATERNAS] [varchar](50) NULL,
	[ES_CAUSES] [varchar](50) NULL,
	[NUM_CAUSES] [varchar](50) NULL,
	[ES_SUIVE_MORTA] [varchar](50) NULL,
	[ES_SUIVE_MORB] [varchar](50) NULL,
	[EPI_CLAVE] [varchar](50) NULL,
	[EPI_CLAVE_DESC] [varchar](500) NULL,
	[ES_SUIVE_NOTIN] [varchar](50) NULL,
	[ES_SUIVE_EST_EPI] [varchar](50) NULL,
	[ES_SUIVE_EST_BROTE] [varchar](50) NULL,
	[SINAC] [varchar](50) NULL,
	[PRIN_SINAC] [varchar](50) NULL,
	[PRIN_SINAC_GRUPO] [varchar](50) NULL,
	[DESCRIPCION_SINAC_GRUPO] [varchar](500) NULL,
	[PRIN_SINAC_SUBGRUPO] [varchar](50) NULL,
	[DESCRIPCION_SINAC_SUBGRUPO] [varchar](500) NULL,
	[DAGA] [varchar](50) NULL,
	[ASTERISCO] [varchar](50) NULL,
	[PRIN_MM] [varchar](50) NULL,
	[PRIN_MM_GRUPO] [varchar](50) NULL,
	[DESCRIPCION_MM_GRUPO] [varchar](500) NULL,
	[PRIN_MM_SUBGRUPO] [varchar](50) NULL,
	[DESCRIPCION_MM_SUBGRUPO] [varchar](500) NULL,
	[HOSP_PREV_GRUPO] [int] NULL
) ON [PRIMARY];

GO

----------------------- Crea Tabla de Egresos 2018 ---------------------

CREATE TABLE [dbo].[Egresos_2018](
	[id] [int] NULL,
	[clues] [nvarchar](11) NULL,
	[fecha_egreso] [date] NULL,
	[fecha_ingreso] [date] NULL,
	[dias_estancia] [int] NULL,
	[tuhpsiq] [nvarchar](4) NULL,
	[servhc] [smallint] NULL,
	[servhp] [smallint] NULL,
	[cveedad] [smallint] NULL,
	[edad] [smallint] NULL,
	[nacioen] [smallint] NULL,
	[sexo] [smallint] NULL,
	[peso] [numeric](18, 0) NULL,
	[talla] [smallint] NULL,
	[derhab] [nvarchar](4) NULL,
	[entidad] [nvarchar](2) NULL,
	[munic] [nvarchar](3) NULL,
	[loc] [nvarchar](4) NULL,
	[indigena] [smallint] NULL,
	[habla_lindigena] [smallint] NULL,
	[lengua_indigena] [nvarchar](4) NULL,
	[habla_esp] [nvarchar](4) NULL,
	[tipserv] [smallint] NULL,
	[servicioingre] [nvarchar](6) NULL,
	[servicio02] [nvarchar](6) NULL,
	[servicio03] [nvarchar](6) NULL,
	[servicioegre] [nvarchar](6) NULL,
	[proced] [smallint] NULL,
	[cluesproced] [nvarchar](11) NULL,
	[motegre] [smallint] NULL,
	[cluesreferido] [nvarchar](11) NULL,
	[diag_ini] [nvarchar](6) NULL,
	[afecprin] [nvarchar](6) primary key,
	[vez] [smallint] NULL,
	[infeccion] [smallint] NULL,
	[causaext] [nvarchar](6) NULL,
	[mes] [smallint] NULL,
	[estado_conyugal_key] [smallint] NULL,
	[mp] [smallint] NULL
) ON [PRIMARY]

GO

----------------------- Crea Tabla de Egresos 2019 --------------------- 


CREATE TABLE [dbo].[Egresos_2019](
	[id] [int] NULL,
	[clues] [nvarchar](11) NULL,
	[fecha_egreso] [date] NULL,
	[fecha_ingreso] [date] NULL,
	[dias_estancia] [int] NULL,
	[tuhpsiq] [nvarchar](4) NULL,
	[servhc] [smallint] NULL,
	[servhp] [smallint] NULL,
	[cveedad] [smallint] NULL,
	[edad] [smallint] NULL,
	[nacioen] [smallint] NULL,
	[sexo] [smallint] NULL,
	[peso] [numeric](18, 0) NULL,
	[talla] [smallint] NULL,
	[derhab] [nvarchar](4) NULL,
	[entidad] [nvarchar](2) NULL,
	[munic] [nvarchar](3) NULL,
	[loc] [nvarchar](4) NULL,
	[indigena] [smallint] NULL,
	[habla_lindigena] [smallint] NULL,
	[lengua_indigena] [nvarchar](4) NULL,
	[habla_esp] [nvarchar](4) NULL,
	[tipserv] [smallint] NULL,
	[servicioingre] [nvarchar](6) NULL,
	[servicio02] [nvarchar](6) NULL,
	[servicio03] [nvarchar](6) NULL,
	[servicioegre] [nvarchar](6) NULL,
	[proced] [smallint] NULL,
	[cluesproced] [nvarchar](11) NULL,
	[motegre] [smallint] NULL,
	[cluesreferido] [nvarchar](11) NULL,
	[diag_ini] [nvarchar](6) NULL,
	[afecprin] [nvarchar](6) primary key,
	[vez] [smallint] NULL,
	[infeccion] [smallint] NULL,
	[causaext] [nvarchar](6) NULL,
	[mes] [smallint] NULL,
	[estado_conyugal_key] [smallint] NULL,
	[mp] [smallint] NULL,
	[gestas] [smallint] NULL,
	[partos] [smallint] NULL,
	[abortos] [smallint] NULL,
	[hayprod] [smallint] NULL,
	[tipo_atencion] [smallint] NULL,
	[gestacion] [smallint] NULL,
	[producto] [smallint] NULL,
	[tipo_nacimiento] [smallint] NULL,
	[metodo_pf] [smallint] NULL,
	[cesareas] [smallint] NULL,
	[total_productos] [smallint] NULL
) ON [PRIMARY]

GO


----------------------- Crea Tabla de Egresos 2020 ---------------------


CREATE TABLE [dbo].[Egresos_2020](
	[id] [int] NULL,
	[clues] [nvarchar](11) NULL,
	[fecha_egreso] [date] NULL,
	[fecha_ingreso] [date] NULL,
	[dias_estancia] [int] NULL,
	[tuhpsiq] [nvarchar](4) NULL,
	[servhc] [smallint] NULL,
	[servhp] [smallint] NULL,
	[cveedad] [smallint] NULL,
	[edad] [smallint] NULL,
	[nacioen] [smallint] NULL,
	[sexo] [smallint] NULL,
	[peso] [numeric](18, 0) NULL,
	[talla] [smallint] NULL,
	[derhab] [nvarchar](4) NULL,
	[entidad] [nvarchar](2) NULL,
	[munic] [nvarchar](3) NULL,
	[loc] [nvarchar](4) NULL,
	[indigena] [smallint] NULL,
	[habla_lindigena] [smallint] NULL,
	[lengua_indigena] [nvarchar](4) NULL,
	[tipserv] [smallint] NULL,
	[servicioingre] [nvarchar](3) NULL,
	[servicio02] [nvarchar](3) NULL,
	[servicio03] [nvarchar](3) NULL,
	[servicioegre] [nvarchar](3) NULL,
	[proced] [smallint] NULL,
	[cluesproced] [nvarchar](11) NULL,
	[motegre] [smallint] NULL,
	[cluesreferido] [nvarchar](11) NULL,
	[diag_ini] [nvarchar](6) NULL,
	[afecprin] [nvarchar](6) primary key,
	[vez] [smallint] NULL,
	[infeccion] [smallint] NULL,
	[causaext] [nvarchar](6) NULL,
	[mes] [smallint] NULL,
	[estado_conyugal_key] [smallint] NULL,
	[mp] [smallint] NULL,
	[gestas] [smallint] NULL,
	[partos] [smallint] NULL,
	[abortos] [smallint] NULL,
	[hayprod] [smallint] NULL,
	[tipo_atencion] [smallint] NULL,
	[gestacion] [smallint] NULL,
	[producto] [smallint] NULL,
	[tipo_nacimiento] [smallint] NULL,
	[metodo_pf] [smallint] NULL,
	[cesareas] [smallint] NULL,
	[total_productos] [smallint] NULL
) ON [PRIMARY]

GO

----------------------- Crea Tabla de Egresos 2021 ---------------------

CREATE TABLE [dbo].[Egresos_2021](
	[id] [int] NULL,
	[clues] [nvarchar](11) NULL,
	[fecha_egreso] [date] NULL,
	[fecha_ingreso] [date] NULL,
	[dias_estancia] [int] NULL,
	[tuhpsiq] [nvarchar](4) NULL,
	[servhc] [smallint] NULL,
	[servhp] [smallint] NULL,
	[cveedad] [smallint] NULL,
	[edad] [smallint] NULL,
	[nacioen] [smallint] NULL,
	[sexo] [smallint] NULL,
	[peso] [numeric](18, 0) NULL,
	[talla] [smallint] NULL,
	[derhab] [nvarchar](4) NULL,
	[entidad] [nvarchar](2) NULL,
	[munic] [nvarchar](3) NULL,
	[loc] [nvarchar](4) NULL,
	[indigena] [smallint] NULL,
	[habla_lindigena] [smallint] NULL,
	[lengua_indigena] [nvarchar](4) NULL,
	[tipserv] [smallint] NULL,
	[servicioingre] [nvarchar](3) NULL,
	[servicio02] [nvarchar](3) NULL,
	[servicio03] [nvarchar](3) NULL,
	[servicioegre] [nvarchar](3) NULL,
	[proced] [smallint] NULL,
	[cluesproced] [nvarchar](11) NULL,
	[motegre] [smallint] NULL,
	[cluesreferido] [nvarchar](11) NULL,
	[diag_ini] [nvarchar](6) NULL,
	[afecprin] [nvarchar](6) primary key,
	[vez] [smallint] NULL,
	[infeccion] [smallint] NULL,
	[causaext] [nvarchar](6) NULL,
	[mes] [smallint] NULL,
	[estado_conyugal_key] [smallint] NULL,
	[mp] [smallint] NULL,
	[gestas] [smallint] NULL,
	[partos] [smallint] NULL,
	[abortos] [smallint] NULL,
	[hayprod] [smallint] NULL,
	[tipo_atencion] [smallint] NULL,
	[gestacion] [smallint] NULL,
	[producto] [smallint] NULL,
	[tipo_nacimiento] [smallint] NULL,
	[metodo_pf] [smallint] NULL,
	[cesareas] [smallint] NULL,
	[total_productos] [smallint] NULL
) ON [PRIMARY]

GO

----------------------- Crea Tabla de Egresos 2022 ---------------------


CREATE TABLE [dbo].[Egresos_2022](
	[id] [int] NULL,
	[clues] [nvarchar](11) NULL,
	[fecha_egreso] [date] NULL,
	[fecha_ingreso] [date] NULL,
	[dias_estancia] [int] NULL,
	[tuhpsiq] [nvarchar](4) NULL,
	[servhc] [smallint] NULL,
	[servhp] [smallint] NULL,
	[cveedad] [smallint] NULL,
	[edad] [smallint] NULL,
	[nacioen] [smallint] NULL,
	[sexo] [smallint] NULL,
	[peso] [numeric](18, 0) NULL,
	[talla] [smallint] NULL,
	[derhab] [nvarchar](4) NULL,
	[entidad] [nvarchar](2) NULL,
	[munic] [nvarchar](3) NULL,
	[loc] [nvarchar](4) NULL,
	[indigena] [smallint] NULL,
	[habla_lindigena] [smallint] NULL,
	[lengua_indigena] [nvarchar](4) NULL,
	[tipserv] [smallint] NULL,
	[servicioingre] [nvarchar](3) NULL,
	[servicio02] [nvarchar](3) NULL,
	[servicio03] [nvarchar](3) NULL,
	[servicioegre] [nvarchar](3) NULL,
	[proced] [smallint] NULL,
	[cluesproced] [nvarchar](11) NULL,
	[motegre] [smallint] NULL,
	[cluesreferido] [nvarchar](11) NULL,
	[diag_ini] [nvarchar](6) NULL,
	[afecprin] [nvarchar](6) primary key,
	[vez] [smallint] NULL,
	[infeccion] [smallint] NULL,
	[causaext] [nvarchar](6) NULL,
	[mes] [smallint] NULL,
	[estado_conyugal_key] [smallint] NULL,
	[mp] [smallint] NULL,
	[gestas] [smallint] NULL,
	[partos] [smallint] NULL,
	[abortos] [smallint] NULL,
	[hayprod] [smallint] NULL,
	[tipo_atencion] [smallint] NULL,
	[gestacion] [smallint] NULL,
	[producto] [smallint] NULL,
	[tipo_nacimiento] [smallint] NULL,
	[metodo_pf] [smallint] NULL,
	[cesareas] [smallint] NULL,
	[total_productos] [smallint] NULL
) ON [PRIMARY]

GO

----------------------- Crea Tabla de Egresos 2023 ---------------------

CREATE TABLE [dbo].[Egresos_2023](
	[id] [int] NULL,
	[clues] [nvarchar](11) NULL,
	[fecha_egreso] [date] NULL,
	[fecha_ingreso] [date] NULL,
	[dias_estancia] [int] NULL,
	[tuhpsiq] [nvarchar](4) NULL,
	[servhc] [smallint] NULL,
	[servhp] [smallint] NULL,
	[cveedad] [smallint] NULL,
	[edad] [smallint] NULL,
	[nacioen] [smallint] NULL,
	[sexo] [smallint] NULL,
	[peso] [numeric](18, 0) NULL,
	[talla] [smallint] NULL,
	[derhab] [nvarchar](4) NULL,
	[entidad] [nvarchar](2) NULL,
	[munic] [nvarchar](3) NULL,
	[loc] [nvarchar](4) NULL,
	[indigena] [smallint] NULL,
	[habla_lindigena] [smallint] NULL,
	[lengua_indigena] [nvarchar](4) NULL,
	[tipserv] [smallint] NULL,
	[servicioingre] [nvarchar](3) NULL,
	[servicio02] [nvarchar](3) NULL,
	[servicio03] [nvarchar](3) NULL,
	[servicioegre] [nvarchar](3) NULL,
	[proced] [smallint] NULL,
	[cluesproced] [nvarchar](11) NULL,
	[motegre] [smallint] NULL,
	[cluesreferido] [nvarchar](11) NULL,
	[diag_ini] [nvarchar](6) NULL,
	[afecprin] [nvarchar](6) primary Key,
	[vez] [smallint] NULL,
	[infeccion] [smallint] NULL,
	[causaext] [nvarchar](6) NULL,
	[mes] [smallint] NULL,
	[estado_conyugal_key] [smallint] NULL,
	[mp] [smallint] NULL,
	[gestas] [smallint] NULL,
	[partos] [smallint] NULL,
	[abortos] [smallint] NULL,
	[hayprod] [smallint] NULL,
	[tipo_atencion] [smallint] NULL,
	[gestacion] [smallint] NULL,
	[producto] [smallint] NULL,
	[tipo_nacimiento] [smallint] NULL,
	[metodo_pf] [smallint] NULL,
	[cesareas] [smallint] NULL,
	[total_productos] [smallint] NULL,
	[fecha_corte] [date] NULL
) ON [PRIMARY]

GO

------------------------- Crea Tabla de Egresos Consolidada ------------------------------
CREATE TABLE [dbo].[Egresos_consolidado](
	[clues] [nvarchar](11) NULL,
	[fecha_egreso] [date] NULL,
	[fecha_ingreso] [date] NULL,
	[dias_estancia] [int] NULL,
	[tuhpsiq] [nvarchar](4) NULL,
	[edad] [smallint] NULL,
	[nacioen] [smallint] NULL,
	[sexo] [smallint] NULL,
	[peso] [numeric](18, 0) NULL,
	[talla] [smallint] NULL,
	[derhab] [nvarchar](4) NULL,
	[entidad] [nvarchar](2) NULL,
	[munic] [nvarchar](3) NULL,
	[loc] [nvarchar](4) NULL,
	[indigena] [smallint] NULL,
	[tipserv] [smallint] NULL,
	[servicioingre] [nvarchar](6) NULL,
	[servicio02] [nvarchar](3) NULL,
	[servicio03] [nvarchar](3) NULL,
	[servicioegre] [nvarchar](6) NULL,
	[motegre] [smallint] NULL,
	[diag_ini] [nvarchar](6) NULL,
	[cie_nombre] [nvarchar](250) NULL,
	[afecprin] [nvarchar](6) primary key,
	[vez] [smallint] NULL,
	[causaext] [nvarchar](6) NULL,
	[mes] [smallint] NULL,
	[estado_conyugal_key] [smallint] NULL
) ON [PRIMARY]

GO



