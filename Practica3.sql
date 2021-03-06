USE [master]
GO
/****** Object:  Database [ConsultorioMedico]    Script Date: 07/10/2017 02:26:31 p.m. ******/
CREATE DATABASE [ConsultorioMedico]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ConsultorioMedico', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\ConsultorioMedico.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ConsultorioMedico_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\ConsultorioMedico_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ConsultorioMedico] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ConsultorioMedico].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ConsultorioMedico] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ConsultorioMedico] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ConsultorioMedico] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ConsultorioMedico] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ConsultorioMedico] SET ARITHABORT OFF 
GO
ALTER DATABASE [ConsultorioMedico] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ConsultorioMedico] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [ConsultorioMedico] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ConsultorioMedico] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ConsultorioMedico] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ConsultorioMedico] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ConsultorioMedico] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ConsultorioMedico] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ConsultorioMedico] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ConsultorioMedico] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ConsultorioMedico] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ConsultorioMedico] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ConsultorioMedico] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ConsultorioMedico] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ConsultorioMedico] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ConsultorioMedico] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ConsultorioMedico] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ConsultorioMedico] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ConsultorioMedico] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ConsultorioMedico] SET  MULTI_USER 
GO
ALTER DATABASE [ConsultorioMedico] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ConsultorioMedico] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ConsultorioMedico] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ConsultorioMedico] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [ConsultorioMedico]
GO
/****** Object:  Table [dbo].[Consultorio]    Script Date: 07/10/2017 02:26:31 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Consultorio](
	[idConsultorio] [int] NOT NULL,
	[idSucursal] [int] NOT NULL,
 CONSTRAINT [PK_Consultorio] PRIMARY KEY CLUSTERED 
(
	[idConsultorio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Direccion]    Script Date: 07/10/2017 02:26:31 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Direccion](
	[idDireccion] [int] NOT NULL,
	[Calle] [nchar](50) NOT NULL,
	[Numero interior] [int] NULL,
	[Numero exterior] [int] NULL,
	[Colonia] [nchar](100) NOT NULL,
	[Municipio] [nchar](100) NOT NULL,
	[Estado] [nchar](100) NOT NULL,
	[Codigo Postal] [int] NULL,
 CONSTRAINT [PK_Direccion] PRIMARY KEY CLUSTERED 
(
	[idDireccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Historial Medico]    Script Date: 07/10/2017 02:26:31 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Historial Medico](
	[IdHistorial] [int] NOT NULL,
	[idPaciente] [int] NOT NULL,
	[Fecha Diagnostico] [date] NOT NULL,
 CONSTRAINT [PK_Historial Medico] PRIMARY KEY CLUSTERED 
(
	[IdHistorial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Medico]    Script Date: 07/10/2017 02:26:31 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Medico](
	[IdSucursal] [int] NOT NULL,
	[IdMedico] [int] NOT NULL,
	[Nombre Completo] [varchar](150) NOT NULL,
	[Cedula] [int] NOT NULL,
	[Especialidad] [nchar](100) NOT NULL,
	[idDireccion] [int] NOT NULL,
 CONSTRAINT [PK_Medico] PRIMARY KEY CLUSTERED 
(
	[IdMedico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Paciente]    Script Date: 07/10/2017 02:26:31 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Paciente](
	[idPaciente] [int] NOT NULL,
	[idMedico] [int] NOT NULL,
	[Nombre] [nchar](100) NOT NULL,
	[Fecha Nacimiento] [date] NOT NULL,
	[correo] [varchar](200) NULL,
	[idDireccion] [int] NOT NULL,
 CONSTRAINT [PK_Paciente] PRIMARY KEY CLUSTERED 
(
	[idPaciente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sucursal]    Script Date: 07/10/2017 02:26:31 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sucursal](
	[idSucursal] [int] NOT NULL,
	[Nombre] [varchar](150) NOT NULL,
	[Direccion] [varchar](200) NOT NULL,
	[idConsultorio] [int] NOT NULL,
 CONSTRAINT [PK_Sucursal] PRIMARY KEY CLUSTERED 
(
	[idSucursal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Historial Medico]  WITH CHECK ADD  CONSTRAINT [FK_Historial Medico_Paciente] FOREIGN KEY([idPaciente])
REFERENCES [dbo].[Paciente] ([idPaciente])
GO
ALTER TABLE [dbo].[Historial Medico] CHECK CONSTRAINT [FK_Historial Medico_Paciente]
GO
ALTER TABLE [dbo].[Medico]  WITH CHECK ADD  CONSTRAINT [FK_Medico_Direccion] FOREIGN KEY([idDireccion])
REFERENCES [dbo].[Direccion] ([idDireccion])
GO
ALTER TABLE [dbo].[Medico] CHECK CONSTRAINT [FK_Medico_Direccion]
GO
ALTER TABLE [dbo].[Medico]  WITH CHECK ADD  CONSTRAINT [FK_Medico_Sucursal] FOREIGN KEY([IdSucursal])
REFERENCES [dbo].[Sucursal] ([idSucursal])
GO
ALTER TABLE [dbo].[Medico] CHECK CONSTRAINT [FK_Medico_Sucursal]
GO
ALTER TABLE [dbo].[Paciente]  WITH CHECK ADD  CONSTRAINT [FK_Paciente_Direccion] FOREIGN KEY([idDireccion])
REFERENCES [dbo].[Direccion] ([idDireccion])
GO
ALTER TABLE [dbo].[Paciente] CHECK CONSTRAINT [FK_Paciente_Direccion]
GO
ALTER TABLE [dbo].[Paciente]  WITH CHECK ADD  CONSTRAINT [FK_Paciente_Medico] FOREIGN KEY([idMedico])
REFERENCES [dbo].[Medico] ([IdMedico])
GO
ALTER TABLE [dbo].[Paciente] CHECK CONSTRAINT [FK_Paciente_Medico]
GO
ALTER TABLE [dbo].[Sucursal]  WITH CHECK ADD  CONSTRAINT [FK_Sucursal_Consultorio] FOREIGN KEY([idConsultorio])
REFERENCES [dbo].[Consultorio] ([idConsultorio])
GO
ALTER TABLE [dbo].[Sucursal] CHECK CONSTRAINT [FK_Sucursal_Consultorio]
GO
USE [master]
GO
ALTER DATABASE [ConsultorioMedico] SET  READ_WRITE 
GO
