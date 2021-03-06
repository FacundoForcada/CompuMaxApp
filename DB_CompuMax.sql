USE [DB_CompuMax]
GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 11/07/2017 20:08:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categoria](
	[cat_codigo] [int] IDENTITY(0,1) NOT NULL,
	[cat_denom] [nchar](20) NOT NULL,
	[est_codigo] [int] NOT NULL,
 CONSTRAINT [PK_Categoria] PRIMARY KEY CLUSTERED 
(
	[cat_codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categoria] ON
INSERT [dbo].[Categoria] ([cat_codigo], [cat_denom], [est_codigo]) VALUES (0, N'Sin Categoria       ', 1)
INSERT [dbo].[Categoria] ([cat_codigo], [cat_denom], [est_codigo]) VALUES (1, N'Gamer               ', 1)
INSERT [dbo].[Categoria] ([cat_codigo], [cat_denom], [est_codigo]) VALUES (2, N'Oficina             ', 1)
INSERT [dbo].[Categoria] ([cat_codigo], [cat_denom], [est_codigo]) VALUES (3, N'Hogar               ', 1)
INSERT [dbo].[Categoria] ([cat_codigo], [cat_denom], [est_codigo]) VALUES (4, N'Diseño              ', 1)
INSERT [dbo].[Categoria] ([cat_codigo], [cat_denom], [est_codigo]) VALUES (5, N'Profesional         ', 1)
INSERT [dbo].[Categoria] ([cat_codigo], [cat_denom], [est_codigo]) VALUES (6, N'Potato              ', 1)
SET IDENTITY_INSERT [dbo].[Categoria] OFF
/****** Object:  Table [dbo].[Promocion]    Script Date: 11/07/2017 20:08:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Promocion](
	[prom_codigo] [int] IDENTITY(0,1) NOT NULL,
	[prom_denom] [varchar](20) NOT NULL,
	[prom_desc] [float] NOT NULL,
	[est_codigo] [int] NOT NULL,
 CONSTRAINT [PK_prom_codigo] PRIMARY KEY CLUSTERED 
(
	[prom_codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Promocion] ON
INSERT [dbo].[Promocion] ([prom_codigo], [prom_denom], [prom_desc], [est_codigo]) VALUES (0, N'Sin Descuento', 0, 1)
SET IDENTITY_INSERT [dbo].[Promocion] OFF
/****** Object:  Table [dbo].[Estado]    Script Date: 11/07/2017 20:08:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Estado](
	[est_codigo] [int] NOT NULL,
	[est_denom] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[est_codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Estado] ([est_codigo], [est_denom]) VALUES (1, N'Activo')
INSERT [dbo].[Estado] ([est_codigo], [est_denom]) VALUES (2, N'No Activo')
/****** Object:  Table [dbo].[ComboProducto]    Script Date: 11/07/2017 20:08:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ComboProducto](
	[com_codigo] [int] NOT NULL,
	[prod_codigo] [int] NOT NULL,
	[cmp_cantprod] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[com_codigo] ASC,
	[prod_codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ComboProducto] ([com_codigo], [prod_codigo], [cmp_cantprod]) VALUES (0, 1, 1)
INSERT [dbo].[ComboProducto] ([com_codigo], [prod_codigo], [cmp_cantprod]) VALUES (0, 2, 1)
INSERT [dbo].[ComboProducto] ([com_codigo], [prod_codigo], [cmp_cantprod]) VALUES (0, 3, 2)
INSERT [dbo].[ComboProducto] ([com_codigo], [prod_codigo], [cmp_cantprod]) VALUES (0, 4, 1)
INSERT [dbo].[ComboProducto] ([com_codigo], [prod_codigo], [cmp_cantprod]) VALUES (0, 5, 1)
INSERT [dbo].[ComboProducto] ([com_codigo], [prod_codigo], [cmp_cantprod]) VALUES (0, 7, 1)
INSERT [dbo].[ComboProducto] ([com_codigo], [prod_codigo], [cmp_cantprod]) VALUES (0, 8, 1)
INSERT [dbo].[ComboProducto] ([com_codigo], [prod_codigo], [cmp_cantprod]) VALUES (1, 0, 1)
INSERT [dbo].[ComboProducto] ([com_codigo], [prod_codigo], [cmp_cantprod]) VALUES (1, 9, 1)
INSERT [dbo].[ComboProducto] ([com_codigo], [prod_codigo], [cmp_cantprod]) VALUES (1, 10, 1)
/****** Object:  Table [dbo].[TipoProducto]    Script Date: 11/07/2017 20:08:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TipoProducto](
	[tpr_codigo] [int] IDENTITY(0,1) NOT NULL,
	[tpr_denom] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[tpr_codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[TipoProducto] ON
INSERT [dbo].[TipoProducto] ([tpr_codigo], [tpr_denom]) VALUES (0, N'Sin Denominacion')
INSERT [dbo].[TipoProducto] ([tpr_codigo], [tpr_denom]) VALUES (1, N'Placa Madre')
INSERT [dbo].[TipoProducto] ([tpr_codigo], [tpr_denom]) VALUES (2, N'Microprocesador')
INSERT [dbo].[TipoProducto] ([tpr_codigo], [tpr_denom]) VALUES (3, N'Memoria Ram')
INSERT [dbo].[TipoProducto] ([tpr_codigo], [tpr_denom]) VALUES (4, N'Disco Duro')
INSERT [dbo].[TipoProducto] ([tpr_codigo], [tpr_denom]) VALUES (5, N'Gabinete')
INSERT [dbo].[TipoProducto] ([tpr_codigo], [tpr_denom]) VALUES (6, N'Placa de Video')
INSERT [dbo].[TipoProducto] ([tpr_codigo], [tpr_denom]) VALUES (7, N'Fuente')
INSERT [dbo].[TipoProducto] ([tpr_codigo], [tpr_denom]) VALUES (8, N'SSD')
INSERT [dbo].[TipoProducto] ([tpr_codigo], [tpr_denom]) VALUES (9, N'Lectora DVD')
INSERT [dbo].[TipoProducto] ([tpr_codigo], [tpr_denom]) VALUES (10, N'Auriculares')
INSERT [dbo].[TipoProducto] ([tpr_codigo], [tpr_denom]) VALUES (11, N'Teclado')
INSERT [dbo].[TipoProducto] ([tpr_codigo], [tpr_denom]) VALUES (12, N'Mouse')
INSERT [dbo].[TipoProducto] ([tpr_codigo], [tpr_denom]) VALUES (13, N'Equipo de Audio')
INSERT [dbo].[TipoProducto] ([tpr_codigo], [tpr_denom]) VALUES (14, N'Disco Externo')
INSERT [dbo].[TipoProducto] ([tpr_codigo], [tpr_denom]) VALUES (15, N'Refrigeracion')
INSERT [dbo].[TipoProducto] ([tpr_codigo], [tpr_denom]) VALUES (16, N'Camara Digital')
SET IDENTITY_INSERT [dbo].[TipoProducto] OFF
/****** Object:  Table [dbo].[TipoDocumento]    Script Date: 11/07/2017 20:08:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TipoDocumento](
	[tdc_codigo] [int] NOT NULL,
	[tdc_denom] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[tdc_codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[TipoDocumento] ([tdc_codigo], [tdc_denom]) VALUES (1, N'DNI')
INSERT [dbo].[TipoDocumento] ([tdc_codigo], [tdc_denom]) VALUES (2, N'L.C.')
INSERT [dbo].[TipoDocumento] ([tdc_codigo], [tdc_denom]) VALUES (3, N'Pasaporte')
INSERT [dbo].[TipoDocumento] ([tdc_codigo], [tdc_denom]) VALUES (4, N'L.E.')
/****** Object:  Table [dbo].[Venta]    Script Date: 11/07/2017 20:08:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Venta](
	[ven_codigo] [int] IDENTITY(0,1) NOT NULL,
	[ven_fecha] [date] NULL,
	[cli_codigo] [int] NOT NULL,
	[ven_factor] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ven_codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Venta] ON
INSERT [dbo].[Venta] ([ven_codigo], [ven_fecha], [cli_codigo], [ven_factor]) VALUES (20, CAST(0x523C0B00 AS Date), 4, 1)
INSERT [dbo].[Venta] ([ven_codigo], [ven_fecha], [cli_codigo], [ven_factor]) VALUES (22, CAST(0x713C0B00 AS Date), 4, 1)
INSERT [dbo].[Venta] ([ven_codigo], [ven_fecha], [cli_codigo], [ven_factor]) VALUES (23, CAST(0x8D3C0B00 AS Date), 8, 1)
INSERT [dbo].[Venta] ([ven_codigo], [ven_fecha], [cli_codigo], [ven_factor]) VALUES (24, CAST(0xAC3C0B00 AS Date), 10, 1)
INSERT [dbo].[Venta] ([ven_codigo], [ven_fecha], [cli_codigo], [ven_factor]) VALUES (25, CAST(0xCA3C0B00 AS Date), 4, 1)
INSERT [dbo].[Venta] ([ven_codigo], [ven_fecha], [cli_codigo], [ven_factor]) VALUES (26, CAST(0xE93C0B00 AS Date), 4, 1)
INSERT [dbo].[Venta] ([ven_codigo], [ven_fecha], [cli_codigo], [ven_factor]) VALUES (27, CAST(0x073D0B00 AS Date), 10, 1)
INSERT [dbo].[Venta] ([ven_codigo], [ven_fecha], [cli_codigo], [ven_factor]) VALUES (28, CAST(0x263D0B00 AS Date), 10, 1)
INSERT [dbo].[Venta] ([ven_codigo], [ven_fecha], [cli_codigo], [ven_factor]) VALUES (29, CAST(0x453D0B00 AS Date), 11, 1)
INSERT [dbo].[Venta] ([ven_codigo], [ven_fecha], [cli_codigo], [ven_factor]) VALUES (30, CAST(0x633D0B00 AS Date), 10, 1)
INSERT [dbo].[Venta] ([ven_codigo], [ven_fecha], [cli_codigo], [ven_factor]) VALUES (34, CAST(0x8E3D0B00 AS Date), 10, 1)
INSERT [dbo].[Venta] ([ven_codigo], [ven_fecha], [cli_codigo], [ven_factor]) VALUES (35, CAST(0x323D0B00 AS Date), 11, 1)
INSERT [dbo].[Venta] ([ven_codigo], [ven_fecha], [cli_codigo], [ven_factor]) VALUES (36, CAST(0x713D0B00 AS Date), 4, 1)
INSERT [dbo].[Venta] ([ven_codigo], [ven_fecha], [cli_codigo], [ven_factor]) VALUES (37, CAST(0xEC3C0B00 AS Date), 8, 1)
INSERT [dbo].[Venta] ([ven_codigo], [ven_fecha], [cli_codigo], [ven_factor]) VALUES (38, CAST(0x293D0B00 AS Date), 10, 1)
INSERT [dbo].[Venta] ([ven_codigo], [ven_fecha], [cli_codigo], [ven_factor]) VALUES (39, CAST(0x483D0B00 AS Date), 10, 1)
INSERT [dbo].[Venta] ([ven_codigo], [ven_fecha], [cli_codigo], [ven_factor]) VALUES (40, CAST(0x0A3D0B00 AS Date), 8, 1)
INSERT [dbo].[Venta] ([ven_codigo], [ven_fecha], [cli_codigo], [ven_factor]) VALUES (41, CAST(0x7E3D0B00 AS Date), 4, 1)
INSERT [dbo].[Venta] ([ven_codigo], [ven_fecha], [cli_codigo], [ven_factor]) VALUES (42, CAST(0xCE3C0B00 AS Date), 8, 1)
INSERT [dbo].[Venta] ([ven_codigo], [ven_fecha], [cli_codigo], [ven_factor]) VALUES (43, CAST(0xB03C0B00 AS Date), 8, 1)
INSERT [dbo].[Venta] ([ven_codigo], [ven_fecha], [cli_codigo], [ven_factor]) VALUES (44, CAST(0x7F3D0B00 AS Date), 11, 1)
SET IDENTITY_INSERT [dbo].[Venta] OFF
/****** Object:  Table [dbo].[Usuario]    Script Date: 11/07/2017 20:08:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usuario](
	[usu_codigo] [int] IDENTITY(0,1) NOT NULL,
	[usu_usuario] [varchar](20) NOT NULL,
	[usu_clave] [varchar](20) NOT NULL,
	[usu_nmbcompleto] [varchar](40) NULL,
	[usu_mail] [varchar](40) NULL,
	[est_codigo] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[usu_codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Usuario] ON
INSERT [dbo].[Usuario] ([usu_codigo], [usu_usuario], [usu_clave], [usu_nmbcompleto], [usu_mail], [est_codigo]) VALUES (0, N'admincompumax', N'admin1234', N'Administradores', N'admin@compumax.com', 1)
INSERT [dbo].[Usuario] ([usu_codigo], [usu_usuario], [usu_clave], [usu_nmbcompleto], [usu_mail], [est_codigo]) VALUES (1, N'facundoforcada', N'Facu2943', N'Facundo Forcada', N'fforcada@compumax.com', 1)
INSERT [dbo].[Usuario] ([usu_codigo], [usu_usuario], [usu_clave], [usu_nmbcompleto], [usu_mail], [est_codigo]) VALUES (2, N'maxigarcia', N'mg1234', N'Maxi Garcia', N'mgarcia@compumax.com', 1)
INSERT [dbo].[Usuario] ([usu_codigo], [usu_usuario], [usu_clave], [usu_nmbcompleto], [usu_mail], [est_codigo]) VALUES (3, N'maxipomar', N'mp1234', N'Maxi Pomar', N'mpomar@compumax.com', 1)
INSERT [dbo].[Usuario] ([usu_codigo], [usu_usuario], [usu_clave], [usu_nmbcompleto], [usu_mail], [est_codigo]) VALUES (4, N'stock1', N'stock1234', N'Stockista 1', N'stock1@compumax.com', 1)
INSERT [dbo].[Usuario] ([usu_codigo], [usu_usuario], [usu_clave], [usu_nmbcompleto], [usu_mail], [est_codigo]) VALUES (5, N'stock2', N'stock1234', N'Stockista 2', N'stock2@compumax.com', 2)
INSERT [dbo].[Usuario] ([usu_codigo], [usu_usuario], [usu_clave], [usu_nmbcompleto], [usu_mail], [est_codigo]) VALUES (6, N'ventas1', N'ventas1234', N'Vendedor 1', N'ventas1@compumax.com', 1)
INSERT [dbo].[Usuario] ([usu_codigo], [usu_usuario], [usu_clave], [usu_nmbcompleto], [usu_mail], [est_codigo]) VALUES (7, N'ventas2', N'ventas1234', N'Vendedor 2', N'ventas2@compumax.com', 1)
INSERT [dbo].[Usuario] ([usu_codigo], [usu_usuario], [usu_clave], [usu_nmbcompleto], [usu_mail], [est_codigo]) VALUES (8, N'gerentegral', N'gerente1234', N'Gerente de Area', N'gerencia@compumax.com', 1)
INSERT [dbo].[Usuario] ([usu_codigo], [usu_usuario], [usu_clave], [usu_nmbcompleto], [usu_mail], [est_codigo]) VALUES (9, N'estadisticas1', N'est1234', N'Report Manager 1', N'reportes1@compumax.com', 1)
INSERT [dbo].[Usuario] ([usu_codigo], [usu_usuario], [usu_clave], [usu_nmbcompleto], [usu_mail], [est_codigo]) VALUES (10, N'estadisticas2', N'est1234', N'Report Manager 2', N'reportes2@compumax.com', 1)
INSERT [dbo].[Usuario] ([usu_codigo], [usu_usuario], [usu_clave], [usu_nmbcompleto], [usu_mail], [est_codigo]) VALUES (11, N'stock3', N'Stock1234', N'Stockista 3', N'stock3@compumax.com', 2)
INSERT [dbo].[Usuario] ([usu_codigo], [usu_usuario], [usu_clave], [usu_nmbcompleto], [usu_mail], [est_codigo]) VALUES (12, N'ventas3', N'ventas1234', N'Vendedor 3', N'ventas3@compumax.com', 1)
SET IDENTITY_INSERT [dbo].[Usuario] OFF
/****** Object:  Table [dbo].[Proveedor]    Script Date: 11/07/2017 20:08:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Proveedor](
	[prov_codigo] [int] IDENTITY(0,1) NOT NULL,
	[prov_denom] [varchar](20) NULL,
	[prov_cuit] [bigint] NOT NULL,
	[est_codigo] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[prov_codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Proveedor] ON
INSERT [dbo].[Proveedor] ([prov_codigo], [prov_denom], [prov_cuit], [est_codigo]) VALUES (0, N'Freiberg SACI', 20123456789, 1)
INSERT [dbo].[Proveedor] ([prov_codigo], [prov_denom], [prov_cuit], [est_codigo]) VALUES (1, N'Nova Informatica', 21234567891, 1)
INSERT [dbo].[Proveedor] ([prov_codigo], [prov_denom], [prov_cuit], [est_codigo]) VALUES (2, N'Office Insumos', 22345678902, 1)
INSERT [dbo].[Proveedor] ([prov_codigo], [prov_denom], [prov_cuit], [est_codigo]) VALUES (3, N'Elit SA', 23456789123, 1)
INSERT [dbo].[Proveedor] ([prov_codigo], [prov_denom], [prov_cuit], [est_codigo]) VALUES (4, N'RM Insumos', 24567891234, 1)
INSERT [dbo].[Proveedor] ([prov_codigo], [prov_denom], [prov_cuit], [est_codigo]) VALUES (5, N'Mahnos', 25678912345, 1)
INSERT [dbo].[Proveedor] ([prov_codigo], [prov_denom], [prov_cuit], [est_codigo]) VALUES (6, N'GM Computacion', 26789123456, 1)
INSERT [dbo].[Proveedor] ([prov_codigo], [prov_denom], [prov_cuit], [est_codigo]) VALUES (7, N'Metodos Informatica', 27891234567, 1)
INSERT [dbo].[Proveedor] ([prov_codigo], [prov_denom], [prov_cuit], [est_codigo]) VALUES (8, N'Compufull', 28912345678, 1)
INSERT [dbo].[Proveedor] ([prov_codigo], [prov_denom], [prov_cuit], [est_codigo]) VALUES (9, N'MundoFix', 29321654987, 2)
SET IDENTITY_INSERT [dbo].[Proveedor] OFF
/****** Object:  Table [dbo].[VentaDetProd]    Script Date: 11/07/2017 20:08:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VentaDetProd](
	[ven_codigo] [int] NOT NULL,
	[prod_codigo] [int] NOT NULL,
	[ved_cantidad] [int] NULL,
	[ved_precio] [float] NULL,
	[prom_codigo] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ven_codigo] ASC,
	[prod_codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[VentaDetProd] ([ven_codigo], [prod_codigo], [ved_cantidad], [ved_precio], [prom_codigo]) VALUES (20, 3, 4, 18000, 0)
INSERT [dbo].[VentaDetProd] ([ven_codigo], [prod_codigo], [ved_cantidad], [ved_precio], [prom_codigo]) VALUES (26, 9, 1, 300, 0)
INSERT [dbo].[VentaDetProd] ([ven_codigo], [prod_codigo], [ved_cantidad], [ved_precio], [prom_codigo]) VALUES (26, 10, 23, 800, 0)
INSERT [dbo].[VentaDetProd] ([ven_codigo], [prod_codigo], [ved_cantidad], [ved_precio], [prom_codigo]) VALUES (28, 5, 2, 1000, 0)
INSERT [dbo].[VentaDetProd] ([ven_codigo], [prod_codigo], [ved_cantidad], [ved_precio], [prom_codigo]) VALUES (29, 6, 2, 2200, 0)
INSERT [dbo].[VentaDetProd] ([ven_codigo], [prod_codigo], [ved_cantidad], [ved_precio], [prom_codigo]) VALUES (29, 8, 2, 12000, 0)
INSERT [dbo].[VentaDetProd] ([ven_codigo], [prod_codigo], [ved_cantidad], [ved_precio], [prom_codigo]) VALUES (30, 1, 2, 5000, 0)
INSERT [dbo].[VentaDetProd] ([ven_codigo], [prod_codigo], [ved_cantidad], [ved_precio], [prom_codigo]) VALUES (34, 2, 2, 16000, 0)
INSERT [dbo].[VentaDetProd] ([ven_codigo], [prod_codigo], [ved_cantidad], [ved_precio], [prom_codigo]) VALUES (34, 4, 1, 18000, 0)
INSERT [dbo].[VentaDetProd] ([ven_codigo], [prod_codigo], [ved_cantidad], [ved_precio], [prom_codigo]) VALUES (35, 2, 5, 40000, 0)
INSERT [dbo].[VentaDetProd] ([ven_codigo], [prod_codigo], [ved_cantidad], [ved_precio], [prom_codigo]) VALUES (35, 3, 10, 20000, 0)
INSERT [dbo].[VentaDetProd] ([ven_codigo], [prod_codigo], [ved_cantidad], [ved_precio], [prom_codigo]) VALUES (36, 1, 4, 10000, 0)
INSERT [dbo].[VentaDetProd] ([ven_codigo], [prod_codigo], [ved_cantidad], [ved_precio], [prom_codigo]) VALUES (36, 3, 4, 8000, 0)
INSERT [dbo].[VentaDetProd] ([ven_codigo], [prod_codigo], [ved_cantidad], [ved_precio], [prom_codigo]) VALUES (36, 4, 2, 36000, 0)
INSERT [dbo].[VentaDetProd] ([ven_codigo], [prod_codigo], [ved_cantidad], [ved_precio], [prom_codigo]) VALUES (36, 7, 1, 2500, 0)
INSERT [dbo].[VentaDetProd] ([ven_codigo], [prod_codigo], [ved_cantidad], [ved_precio], [prom_codigo]) VALUES (36, 10, 4, 3200, 0)
INSERT [dbo].[VentaDetProd] ([ven_codigo], [prod_codigo], [ved_cantidad], [ved_precio], [prom_codigo]) VALUES (42, 3, 4, 18000, 0)
INSERT [dbo].[VentaDetProd] ([ven_codigo], [prod_codigo], [ved_cantidad], [ved_precio], [prom_codigo]) VALUES (43, 3, 4, 18000, 0)
INSERT [dbo].[VentaDetProd] ([ven_codigo], [prod_codigo], [ved_cantidad], [ved_precio], [prom_codigo]) VALUES (44, 2, 2, 16000, 0)
INSERT [dbo].[VentaDetProd] ([ven_codigo], [prod_codigo], [ved_cantidad], [ved_precio], [prom_codigo]) VALUES (44, 3, 4, 8000, 0)
INSERT [dbo].[VentaDetProd] ([ven_codigo], [prod_codigo], [ved_cantidad], [ved_precio], [prom_codigo]) VALUES (44, 4, 2, 36000, 0)
INSERT [dbo].[VentaDetProd] ([ven_codigo], [prod_codigo], [ved_cantidad], [ved_precio], [prom_codigo]) VALUES (44, 7, 2, 5000, 0)
/****** Object:  Table [dbo].[Combo]    Script Date: 11/07/2017 20:08:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Combo](
	[com_codigo] [int] IDENTITY(0,1) NOT NULL,
	[com_denom] [varchar](20) NULL,
	[est_codigo] [int] NOT NULL,
	[cat_codigo] [int] NULL,
	[com_precio] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[com_codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Combo] ON
INSERT [dbo].[Combo] ([com_codigo], [com_denom], [est_codigo], [cat_codigo], [com_precio]) VALUES (0, N'PC Gama Alta', 1, 1, 11000)
INSERT [dbo].[Combo] ([com_codigo], [com_denom], [est_codigo], [cat_codigo], [com_precio]) VALUES (1, N'PC Gama Media', 1, 1, 9000)
INSERT [dbo].[Combo] ([com_codigo], [com_denom], [est_codigo], [cat_codigo], [com_precio]) VALUES (2, N'PC Gama Baja', 1, 1, 7000)
INSERT [dbo].[Combo] ([com_codigo], [com_denom], [est_codigo], [cat_codigo], [com_precio]) VALUES (3, N'PC Estandar', 1, 3, 5000)
INSERT [dbo].[Combo] ([com_codigo], [com_denom], [est_codigo], [cat_codigo], [com_precio]) VALUES (4, N'PC Profesional', 1, 3, 8000)
INSERT [dbo].[Combo] ([com_codigo], [com_denom], [est_codigo], [cat_codigo], [com_precio]) VALUES (5, N'PC Armada', 1, 2, 7500)
INSERT [dbo].[Combo] ([com_codigo], [com_denom], [est_codigo], [cat_codigo], [com_precio]) VALUES (6, N'PC Armada c/ Perif', 1, 2, 7800)
INSERT [dbo].[Combo] ([com_codigo], [com_denom], [est_codigo], [cat_codigo], [com_precio]) VALUES (7, N'Actualizacion 1', 1, 1, 5000)
INSERT [dbo].[Combo] ([com_codigo], [com_denom], [est_codigo], [cat_codigo], [com_precio]) VALUES (8, N'Actualizacion 2', 1, 1, 4000)
INSERT [dbo].[Combo] ([com_codigo], [com_denom], [est_codigo], [cat_codigo], [com_precio]) VALUES (9, N'Actualizacion 3', 1, 1, 3500)
INSERT [dbo].[Combo] ([com_codigo], [com_denom], [est_codigo], [cat_codigo], [com_precio]) VALUES (10, N'Actualizacion 4', 1, 1, 10000)
INSERT [dbo].[Combo] ([com_codigo], [com_denom], [est_codigo], [cat_codigo], [com_precio]) VALUES (11, N'Potato PC', 1, 6, 2500)
INSERT [dbo].[Combo] ([com_codigo], [com_denom], [est_codigo], [cat_codigo], [com_precio]) VALUES (12, N'Standard PC', 1, 0, 6000)
INSERT [dbo].[Combo] ([com_codigo], [com_denom], [est_codigo], [cat_codigo], [com_precio]) VALUES (13, N'Architecture PC', 1, 4, 13500)
INSERT [dbo].[Combo] ([com_codigo], [com_denom], [est_codigo], [cat_codigo], [com_precio]) VALUES (14, N'Bussiness PC', 1, 5, 9300)
SET IDENTITY_INSERT [dbo].[Combo] OFF
/****** Object:  Table [dbo].[Cliente]    Script Date: 11/07/2017 20:08:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cliente](
	[cli_codigo] [int] IDENTITY(0,1) NOT NULL,
	[cli_nombre] [varchar](20) NOT NULL,
	[cli_apellido] [varchar](20) NOT NULL,
	[cli_cuit] [bigint] NOT NULL,
	[tdc_codigo] [int] NOT NULL,
	[cli_numdoc] [bigint] NULL,
	[cli_telefono] [varchar](20) NULL,
	[cli_mail] [varchar](40) NULL,
	[est_codigo] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[cli_codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Cliente] ON
INSERT [dbo].[Cliente] ([cli_codigo], [cli_nombre], [cli_apellido], [cli_cuit], [tdc_codigo], [cli_numdoc], [cli_telefono], [cli_mail], [est_codigo]) VALUES (3, N'dasdasd', N'asdasdas', 20170005725, 1, 17000572, N'3515154587', N'aweqweqwe', 2)
INSERT [dbo].[Cliente] ([cli_codigo], [cli_nombre], [cli_apellido], [cli_cuit], [tdc_codigo], [cli_numdoc], [cli_telefono], [cli_mail], [est_codigo]) VALUES (4, N'Facundo Alberto', N'Forcada', 23396203669, 1, 396203669, N'3515121257', N'facundoforcada.ff@gmail.com', 1)
INSERT [dbo].[Cliente] ([cli_codigo], [cli_nombre], [cli_apellido], [cli_cuit], [tdc_codigo], [cli_numdoc], [cli_telefono], [cli_mail], [est_codigo]) VALUES (5, N'Georgina', N'Forcada', 27396203673, 1, 39620367, N'3513242459', N'georgi_forcada@hotmail.com', 2)
INSERT [dbo].[Cliente] ([cli_codigo], [cli_nombre], [cli_apellido], [cli_cuit], [tdc_codigo], [cli_numdoc], [cli_telefono], [cli_mail], [est_codigo]) VALUES (6, N'asdasdasda', N'asdasd', 31235648912, 1, 23564891, N'3515564894', N'sadasdas@asdas.com', 2)
INSERT [dbo].[Cliente] ([cli_codigo], [cli_nombre], [cli_apellido], [cli_cuit], [tdc_codigo], [cli_numdoc], [cli_telefono], [cli_mail], [est_codigo]) VALUES (7, N'asdasd', N'asdasd', 13234567892, 1, 23456789, N'3515121257', N'qweqweqwe', 2)
INSERT [dbo].[Cliente] ([cli_codigo], [cli_nombre], [cli_apellido], [cli_cuit], [tdc_codigo], [cli_numdoc], [cli_telefono], [cli_mail], [est_codigo]) VALUES (8, N'Carlos', N'Menem', 12345678912, 1, 34567891, N'155152354', N'cmenen@hotmail.com', 1)
INSERT [dbo].[Cliente] ([cli_codigo], [cli_nombre], [cli_apellido], [cli_cuit], [tdc_codigo], [cli_numdoc], [cli_telefono], [cli_mail], [est_codigo]) VALUES (9, N'Facundo Alberto', N'Forcada', 23396203669, 1, 396203669, N'3515121257', N'facundoforcada.ff@gmail.com', 2)
INSERT [dbo].[Cliente] ([cli_codigo], [cli_nombre], [cli_apellido], [cli_cuit], [tdc_codigo], [cli_numdoc], [cli_telefono], [cli_mail], [est_codigo]) VALUES (10, N'Maximliano', N'Pomar', 213214, 1, 123123213, N'3571470101', N'maxipomar@live.com.ar', 1)
INSERT [dbo].[Cliente] ([cli_codigo], [cli_nombre], [cli_apellido], [cli_cuit], [tdc_codigo], [cli_numdoc], [cli_telefono], [cli_mail], [est_codigo]) VALUES (11, N'Maximiliano', N'Garcia', 27378727310, 1, 37872731, N'3515457898', N'gmaxi@gmail.com', 1)
SET IDENTITY_INSERT [dbo].[Cliente] OFF
/****** Object:  Table [dbo].[Proceso]    Script Date: 11/07/2017 20:08:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Proceso](
	[proc_codigo] [int] IDENTITY(0,1) NOT NULL,
	[proc_denom] [varchar](20) NULL,
	[est_codigo] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[proc_codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Grupo]    Script Date: 11/07/2017 20:08:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Grupo](
	[grp_codigo] [int] IDENTITY(0,1) NOT NULL,
	[grp_denom] [varchar](20) NULL,
	[est_codigo] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[grp_codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Grupo] ON
INSERT [dbo].[Grupo] ([grp_codigo], [grp_denom], [est_codigo]) VALUES (0, N'Administradores', 1)
INSERT [dbo].[Grupo] ([grp_codigo], [grp_denom], [est_codigo]) VALUES (1, N'Ventas', 1)
INSERT [dbo].[Grupo] ([grp_codigo], [grp_denom], [est_codigo]) VALUES (2, N'Control de Stock', 1)
INSERT [dbo].[Grupo] ([grp_codigo], [grp_denom], [est_codigo]) VALUES (3, N'Estadisticas', 1)
INSERT [dbo].[Grupo] ([grp_codigo], [grp_denom], [est_codigo]) VALUES (4, N'Gerencia', 1)
INSERT [dbo].[Grupo] ([grp_codigo], [grp_denom], [est_codigo]) VALUES (5, N'Compras', 1)
SET IDENTITY_INSERT [dbo].[Grupo] OFF
/****** Object:  Table [dbo].[Marca]    Script Date: 11/07/2017 20:08:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Marca](
	[mar_codigo] [int] IDENTITY(0,1) NOT NULL,
	[mar_denom] [varchar](20) NULL,
	[est_codigo] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[mar_codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Marca] ON
INSERT [dbo].[Marca] ([mar_codigo], [mar_denom], [est_codigo]) VALUES (0, N'Generico', 1)
INSERT [dbo].[Marca] ([mar_codigo], [mar_denom], [est_codigo]) VALUES (1, N'ASUS', 1)
INSERT [dbo].[Marca] ([mar_codigo], [mar_denom], [est_codigo]) VALUES (2, N'GIGABYTE', 1)
INSERT [dbo].[Marca] ([mar_codigo], [mar_denom], [est_codigo]) VALUES (3, N'MSI', 1)
INSERT [dbo].[Marca] ([mar_codigo], [mar_denom], [est_codigo]) VALUES (4, N'ASROCK', 1)
INSERT [dbo].[Marca] ([mar_codigo], [mar_denom], [est_codigo]) VALUES (5, N'INTEL', 1)
INSERT [dbo].[Marca] ([mar_codigo], [mar_denom], [est_codigo]) VALUES (6, N'AMD', 1)
INSERT [dbo].[Marca] ([mar_codigo], [mar_denom], [est_codigo]) VALUES (7, N'NVIDIA', 1)
INSERT [dbo].[Marca] ([mar_codigo], [mar_denom], [est_codigo]) VALUES (8, N'CORSAIR', 1)
INSERT [dbo].[Marca] ([mar_codigo], [mar_denom], [est_codigo]) VALUES (9, N'WESTERN DIGITAL', 1)
INSERT [dbo].[Marca] ([mar_codigo], [mar_denom], [est_codigo]) VALUES (10, N'SAMSUNG', 1)
INSERT [dbo].[Marca] ([mar_codigo], [mar_denom], [est_codigo]) VALUES (11, N'KINGSTON', 1)
INSERT [dbo].[Marca] ([mar_codigo], [mar_denom], [est_codigo]) VALUES (12, N'COOLER MASTER', 1)
INSERT [dbo].[Marca] ([mar_codigo], [mar_denom], [est_codigo]) VALUES (13, N'RAZER', 1)
INSERT [dbo].[Marca] ([mar_codigo], [mar_denom], [est_codigo]) VALUES (14, N'THERMALTAKE', 1)
INSERT [dbo].[Marca] ([mar_codigo], [mar_denom], [est_codigo]) VALUES (15, N'SENTEY', 1)
INSERT [dbo].[Marca] ([mar_codigo], [mar_denom], [est_codigo]) VALUES (16, N'NOGA NET', 1)
INSERT [dbo].[Marca] ([mar_codigo], [mar_denom], [est_codigo]) VALUES (17, N'SONY', 1)
INSERT [dbo].[Marca] ([mar_codigo], [mar_denom], [est_codigo]) VALUES (18, N'PIONEER', 1)
INSERT [dbo].[Marca] ([mar_codigo], [mar_denom], [est_codigo]) VALUES (19, N'EDIFIER', 1)
INSERT [dbo].[Marca] ([mar_codigo], [mar_denom], [est_codigo]) VALUES (20, N'STEEL SERIES', 1)
INSERT [dbo].[Marca] ([mar_codigo], [mar_denom], [est_codigo]) VALUES (21, N'ADATA', 1)
INSERT [dbo].[Marca] ([mar_codigo], [mar_denom], [est_codigo]) VALUES (22, N'NZXT', 1)
INSERT [dbo].[Marca] ([mar_codigo], [mar_denom], [est_codigo]) VALUES (23, N'ASUS', 1)
INSERT [dbo].[Marca] ([mar_codigo], [mar_denom], [est_codigo]) VALUES (24, N'NOGANET', 1)
SET IDENTITY_INSERT [dbo].[Marca] OFF
/****** Object:  Table [dbo].[GrupoUsuario]    Script Date: 11/07/2017 20:08:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GrupoUsuario](
	[grp_codigo] [int] NOT NULL,
	[usu_codigo] [int] NOT NULL,
	[est_codigo] [int] NOT NULL,
 CONSTRAINT [PK__GrupoUsu__1438845834C8D9D1] PRIMARY KEY CLUSTERED 
(
	[grp_codigo] ASC,
	[usu_codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[GrupoUsuario] ([grp_codigo], [usu_codigo], [est_codigo]) VALUES (0, 0, 1)
INSERT [dbo].[GrupoUsuario] ([grp_codigo], [usu_codigo], [est_codigo]) VALUES (0, 1, 1)
INSERT [dbo].[GrupoUsuario] ([grp_codigo], [usu_codigo], [est_codigo]) VALUES (0, 2, 1)
INSERT [dbo].[GrupoUsuario] ([grp_codigo], [usu_codigo], [est_codigo]) VALUES (0, 3, 1)
INSERT [dbo].[GrupoUsuario] ([grp_codigo], [usu_codigo], [est_codigo]) VALUES (1, 6, 1)
INSERT [dbo].[GrupoUsuario] ([grp_codigo], [usu_codigo], [est_codigo]) VALUES (1, 7, 1)
INSERT [dbo].[GrupoUsuario] ([grp_codigo], [usu_codigo], [est_codigo]) VALUES (1, 12, 1)
INSERT [dbo].[GrupoUsuario] ([grp_codigo], [usu_codigo], [est_codigo]) VALUES (2, 4, 1)
INSERT [dbo].[GrupoUsuario] ([grp_codigo], [usu_codigo], [est_codigo]) VALUES (2, 5, 1)
INSERT [dbo].[GrupoUsuario] ([grp_codigo], [usu_codigo], [est_codigo]) VALUES (2, 11, 1)
INSERT [dbo].[GrupoUsuario] ([grp_codigo], [usu_codigo], [est_codigo]) VALUES (3, 9, 1)
INSERT [dbo].[GrupoUsuario] ([grp_codigo], [usu_codigo], [est_codigo]) VALUES (3, 10, 1)
INSERT [dbo].[GrupoUsuario] ([grp_codigo], [usu_codigo], [est_codigo]) VALUES (4, 8, 1)
/****** Object:  Table [dbo].[GrupoProceso]    Script Date: 11/07/2017 20:08:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GrupoProceso](
	[grp_codigo] [int] NOT NULL,
	[proc_codigo] [int] NOT NULL,
	[est_codigo] [int] NOT NULL,
 CONSTRAINT [PK__GrupoPro__1438845838996AB5] PRIMARY KEY CLUSTERED 
(
	[grp_codigo] ASC,
	[proc_codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 11/07/2017 20:08:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Producto](
	[prod_codigo] [int] IDENTITY(0,1) NOT NULL,
	[prod_denom] [varchar](20) NULL,
	[tpr_codigo] [int] NOT NULL,
	[mar_codigo] [int] NOT NULL,
	[prod_numserie] [int] NOT NULL,
	[prod_precio] [float] NULL,
	[est_codigo] [int] NOT NULL,
	[cat_codigo] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[prod_codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Producto] ON
INSERT [dbo].[Producto] ([prod_codigo], [prod_denom], [tpr_codigo], [mar_codigo], [prod_numserie], [prod_precio], [est_codigo], [cat_codigo]) VALUES (0, N'H110M', 1, 1, 1, 1100, 1, 3)
INSERT [dbo].[Producto] ([prod_codigo], [prod_denom], [tpr_codigo], [mar_codigo], [prod_numserie], [prod_precio], [est_codigo], [cat_codigo]) VALUES (1, N'Z170A', 1, 2, 2, 2500, 1, 1)
INSERT [dbo].[Producto] ([prod_codigo], [prod_denom], [tpr_codigo], [mar_codigo], [prod_numserie], [prod_precio], [est_codigo], [cat_codigo]) VALUES (2, N'CORE I7 7700K', 2, 5, 3, 8000, 1, 1)
INSERT [dbo].[Producto] ([prod_codigo], [prod_denom], [tpr_codigo], [mar_codigo], [prod_numserie], [prod_precio], [est_codigo], [cat_codigo]) VALUES (3, N'8 GB DDR4', 3, 8, 4, 2000, 1, 5)
INSERT [dbo].[Producto] ([prod_codigo], [prod_denom], [tpr_codigo], [mar_codigo], [prod_numserie], [prod_precio], [est_codigo], [cat_codigo]) VALUES (4, N'GEFORCE GTX 1080 TI', 6, 7, 5, 18000, 1, 1)
INSERT [dbo].[Producto] ([prod_codigo], [prod_denom], [tpr_codigo], [mar_codigo], [prod_numserie], [prod_precio], [est_codigo], [cat_codigo]) VALUES (5, N'GABINETE X18', 5, 8, 6, 500, 1, 3)
INSERT [dbo].[Producto] ([prod_codigo], [prod_denom], [tpr_codigo], [mar_codigo], [prod_numserie], [prod_precio], [est_codigo], [cat_codigo]) VALUES (6, N'DISCO DURO 1TB', 4, 9, 7, 1100, 1, 2)
INSERT [dbo].[Producto] ([prod_codigo], [prod_denom], [tpr_codigo], [mar_codigo], [prod_numserie], [prod_precio], [est_codigo], [cat_codigo]) VALUES (7, N'FUENTE ATX 700 W', 7, 8, 8, 2500, 1, 5)
INSERT [dbo].[Producto] ([prod_codigo], [prod_denom], [tpr_codigo], [mar_codigo], [prod_numserie], [prod_precio], [est_codigo], [cat_codigo]) VALUES (8, N'SSD 512 MB', 8, 8, 9, 6000, 1, 4)
INSERT [dbo].[Producto] ([prod_codigo], [prod_denom], [tpr_codigo], [mar_codigo], [prod_numserie], [prod_precio], [est_codigo], [cat_codigo]) VALUES (9, N'DVD/R', 9, 10, 10, 300, 1, 3)
INSERT [dbo].[Producto] ([prod_codigo], [prod_denom], [tpr_codigo], [mar_codigo], [prod_numserie], [prod_precio], [est_codigo], [cat_codigo]) VALUES (10, N'Disco Duro 500GB', 4, 9, 123, 800, 1, 3)
SET IDENTITY_INSERT [dbo].[Producto] OFF
/****** Object:  Table [dbo].[PedidoCompra]    Script Date: 11/07/2017 20:08:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PedidoCompra](
	[pec_codigo] [int] IDENTITY(0,1) NOT NULL,
	[pec_fecha] [date] NOT NULL,
	[prov_codigo] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[pec_codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VentaDetCombo]    Script Date: 11/07/2017 20:08:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VentaDetCombo](
	[ven_codigo] [int] NOT NULL,
	[com_codigo] [int] NOT NULL,
	[ved_cantidad] [int] NULL,
	[ved_precio] [float] NULL,
	[prom_codigo] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ven_codigo] ASC,
	[com_codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[VentaDetCombo] ([ven_codigo], [com_codigo], [ved_cantidad], [ved_precio], [prom_codigo]) VALUES (22, 0, 1, 11000, 0)
INSERT [dbo].[VentaDetCombo] ([ven_codigo], [com_codigo], [ved_cantidad], [ved_precio], [prom_codigo]) VALUES (23, 6, 2, 78000, 0)
INSERT [dbo].[VentaDetCombo] ([ven_codigo], [com_codigo], [ved_cantidad], [ved_precio], [prom_codigo]) VALUES (24, 0, 1, 11000, 0)
INSERT [dbo].[VentaDetCombo] ([ven_codigo], [com_codigo], [ved_cantidad], [ved_precio], [prom_codigo]) VALUES (25, 1, 1, 9000, 0)
INSERT [dbo].[VentaDetCombo] ([ven_codigo], [com_codigo], [ved_cantidad], [ved_precio], [prom_codigo]) VALUES (26, 0, 1, 11000, 0)
INSERT [dbo].[VentaDetCombo] ([ven_codigo], [com_codigo], [ved_cantidad], [ved_precio], [prom_codigo]) VALUES (26, 1, 23, 9000, 0)
INSERT [dbo].[VentaDetCombo] ([ven_codigo], [com_codigo], [ved_cantidad], [ved_precio], [prom_codigo]) VALUES (27, 0, 1, 11000, 0)
INSERT [dbo].[VentaDetCombo] ([ven_codigo], [com_codigo], [ved_cantidad], [ved_precio], [prom_codigo]) VALUES (29, 1, 3, 27000, 0)
INSERT [dbo].[VentaDetCombo] ([ven_codigo], [com_codigo], [ved_cantidad], [ved_precio], [prom_codigo]) VALUES (29, 13, 1, 13500, 0)
INSERT [dbo].[VentaDetCombo] ([ven_codigo], [com_codigo], [ved_cantidad], [ved_precio], [prom_codigo]) VALUES (30, 0, 1, 11000, 0)
INSERT [dbo].[VentaDetCombo] ([ven_codigo], [com_codigo], [ved_cantidad], [ved_precio], [prom_codigo]) VALUES (37, 6, 2, 78000, 0)
INSERT [dbo].[VentaDetCombo] ([ven_codigo], [com_codigo], [ved_cantidad], [ved_precio], [prom_codigo]) VALUES (38, 6, 2, 78000, 0)
INSERT [dbo].[VentaDetCombo] ([ven_codigo], [com_codigo], [ved_cantidad], [ved_precio], [prom_codigo]) VALUES (39, 6, 2, 78000, 0)
INSERT [dbo].[VentaDetCombo] ([ven_codigo], [com_codigo], [ved_cantidad], [ved_precio], [prom_codigo]) VALUES (40, 6, 2, 78000, 0)
INSERT [dbo].[VentaDetCombo] ([ven_codigo], [com_codigo], [ved_cantidad], [ved_precio], [prom_codigo]) VALUES (41, 6, 2, 78000, 0)
INSERT [dbo].[VentaDetCombo] ([ven_codigo], [com_codigo], [ved_cantidad], [ved_precio], [prom_codigo]) VALUES (44, 1, 1, 9000, 0)
/****** Object:  StoredProcedure [dbo].[ReporteProveedoresActivos]    Script Date: 11/07/2017 20:08:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ReporteProveedoresActivos]
(
	@cod_desde int,
	@cod_hasta int
)
as
select P.prov_codigo, P.prov_denom, P.prov_cuit, E.est_denom
from Proveedor P, Estado E
where P.est_codigo = E.est_codigo AND E.est_codigo = 1
order by P.prov_codigo
asc
GO
/****** Object:  StoredProcedure [dbo].[ReporteProveedores]    Script Date: 11/07/2017 20:08:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ReporteProveedores]
(
	@cod_desde int,
	@cod_hasta int
)
as
select P.prov_codigo, P.prov_denom, P.prov_cuit, E.est_denom
from Proveedor P, Estado E
where P.est_codigo = E.est_codigo
order by P.prov_codigo
asc
GO
/****** Object:  StoredProcedure [dbo].[ReporteClientesActivos]    Script Date: 11/07/2017 20:08:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ReporteClientesActivos]
(
	@cod_desde int,
	@cod_hasta int
)
as
select C.cli_codigo, C.cli_nombre, C.cli_apellido, TD.tdc_denom, C.cli_numdoc, C.cli_cuit, C.cli_telefono, C.cli_mail, E.est_denom
from Cliente C, TipoDocumento TD, Estado E
where C.tdc_codigo = TD.tdc_codigo AND C.est_codigo = E.est_codigo AND C.cli_codigo BETWEEN @cod_desde AND @cod_hasta AND C.est_codigo = 1
order by C.cli_codigo
asc
GO
/****** Object:  StoredProcedure [dbo].[ReporteClientes]    Script Date: 11/07/2017 20:08:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ReporteClientes]
(
	@cod_desde int,
	@cod_hasta int
)
as
select C.cli_codigo, C.cli_nombre, C.cli_apellido, TD.tdc_denom, C.cli_numdoc, C.cli_cuit, C.cli_telefono, C.cli_mail, E.est_denom
from Cliente C, TipoDocumento TD, Estado E
where C.tdc_codigo = TD.tdc_codigo AND C.est_codigo = E.est_codigo AND C.cli_codigo BETWEEN @cod_desde AND @cod_hasta
order by C.cli_codigo
asc
GO
/****** Object:  Table [dbo].[StockProducto]    Script Date: 11/07/2017 20:08:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StockProducto](
	[stp_codigo] [int] IDENTITY(0,1) NOT NULL,
	[prod_codigo] [int] NOT NULL,
	[stp_cantactual] [int] NULL,
	[stp_cantminima] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[stp_codigo] ASC,
	[prod_codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[StockProducto] ON
INSERT [dbo].[StockProducto] ([stp_codigo], [prod_codigo], [stp_cantactual], [stp_cantminima]) VALUES (0, 0, 85, 10)
INSERT [dbo].[StockProducto] ([stp_codigo], [prod_codigo], [stp_cantactual], [stp_cantminima]) VALUES (1, 1, 90, 10)
INSERT [dbo].[StockProducto] ([stp_codigo], [prod_codigo], [stp_cantactual], [stp_cantminima]) VALUES (2, 2, 62, 10)
INSERT [dbo].[StockProducto] ([stp_codigo], [prod_codigo], [stp_cantactual], [stp_cantminima]) VALUES (3, 3, 20, 10)
INSERT [dbo].[StockProducto] ([stp_codigo], [prod_codigo], [stp_cantactual], [stp_cantminima]) VALUES (4, 4, 50, 10)
INSERT [dbo].[StockProducto] ([stp_codigo], [prod_codigo], [stp_cantactual], [stp_cantminima]) VALUES (5, 5, 75, 10)
INSERT [dbo].[StockProducto] ([stp_codigo], [prod_codigo], [stp_cantactual], [stp_cantminima]) VALUES (6, 6, 39, 10)
INSERT [dbo].[StockProducto] ([stp_codigo], [prod_codigo], [stp_cantactual], [stp_cantminima]) VALUES (7, 7, 45, 10)
INSERT [dbo].[StockProducto] ([stp_codigo], [prod_codigo], [stp_cantactual], [stp_cantminima]) VALUES (8, 8, 20, 10)
INSERT [dbo].[StockProducto] ([stp_codigo], [prod_codigo], [stp_cantactual], [stp_cantminima]) VALUES (9, 9, 12, 10)
INSERT [dbo].[StockProducto] ([stp_codigo], [prod_codigo], [stp_cantactual], [stp_cantminima]) VALUES (10, 10, 30, 10)
SET IDENTITY_INSERT [dbo].[StockProducto] OFF
/****** Object:  Table [dbo].[PedidoCompraDet]    Script Date: 11/07/2017 20:08:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PedidoCompraDet](
	[pec_codigo] [int] NOT NULL,
	[prod_codigo] [int] NOT NULL,
	[pcd_cantidad] [int] NULL,
 CONSTRAINT [PK__PedidoCo__7137C858440B1D61] PRIMARY KEY CLUSTERED 
(
	[pec_codigo] ASC,
	[prod_codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MovimientoStock]    Script Date: 11/07/2017 20:08:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovimientoStock](
	[mvs_codigo] [int] NOT NULL,
	[prod_codigo] [int] NOT NULL,
	[mvs_fecha] [date] NOT NULL,
	[mvs_cantidad] [int] NOT NULL,
 CONSTRAINT [PK_mvs] PRIMARY KEY CLUSTERED 
(
	[mvs_codigo] ASC,
	[prod_codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Default [DF__Venta__ven_facto__4D94879B]    Script Date: 11/07/2017 20:08:33 ******/
ALTER TABLE [dbo].[Venta] ADD  DEFAULT ((1)) FOR [ven_factor]
GO
/****** Object:  Default [DF__VentaDetP__ved_c__4E88ABD4]    Script Date: 11/07/2017 20:08:33 ******/
ALTER TABLE [dbo].[VentaDetProd] ADD  DEFAULT ((1)) FOR [ved_cantidad]
GO
/****** Object:  Default [DF__VentaDetP__ved_p__4F7CD00D]    Script Date: 11/07/2017 20:08:33 ******/
ALTER TABLE [dbo].[VentaDetProd] ADD  DEFAULT ((0)) FOR [ved_precio]
GO
/****** Object:  Default [DF__Producto__prod_p__5070F446]    Script Date: 11/07/2017 20:08:33 ******/
ALTER TABLE [dbo].[Producto] ADD  DEFAULT ((0)) FOR [prod_precio]
GO
/****** Object:  Default [DF__VentaDetC__ved_c__5165187F]    Script Date: 11/07/2017 20:08:33 ******/
ALTER TABLE [dbo].[VentaDetCombo] ADD  DEFAULT ((1)) FOR [ved_cantidad]
GO
/****** Object:  Default [DF__VentaDetC__ved_p__52593CB8]    Script Date: 11/07/2017 20:08:33 ******/
ALTER TABLE [dbo].[VentaDetCombo] ADD  DEFAULT ((0)) FOR [ved_precio]
GO
/****** Object:  Default [DF__StockProd__stp_c__534D60F1]    Script Date: 11/07/2017 20:08:35 ******/
ALTER TABLE [dbo].[StockProducto] ADD  DEFAULT ((0)) FOR [stp_cantminima]
GO
/****** Object:  Default [DF__PedidoCom__pcd_c__5441852A]    Script Date: 11/07/2017 20:08:35 ******/
ALTER TABLE [dbo].[PedidoCompraDet] ADD  DEFAULT ((1)) FOR [pcd_cantidad]
GO
/****** Object:  ForeignKey [FK__Usuario__est_cod__5535A963]    Script Date: 11/07/2017 20:08:33 ******/
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD FOREIGN KEY([est_codigo])
REFERENCES [dbo].[Estado] ([est_codigo])
GO
/****** Object:  ForeignKey [FK__Usuario__est_cod__5629CD9C]    Script Date: 11/07/2017 20:08:33 ******/
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD FOREIGN KEY([est_codigo])
REFERENCES [dbo].[Estado] ([est_codigo])
GO
/****** Object:  ForeignKey [FK__Proveedor__est_c__571DF1D5]    Script Date: 11/07/2017 20:08:33 ******/
ALTER TABLE [dbo].[Proveedor]  WITH CHECK ADD FOREIGN KEY([est_codigo])
REFERENCES [dbo].[Estado] ([est_codigo])
GO
/****** Object:  ForeignKey [FK__Proveedor__est_c__5812160E]    Script Date: 11/07/2017 20:08:33 ******/
ALTER TABLE [dbo].[Proveedor]  WITH CHECK ADD FOREIGN KEY([est_codigo])
REFERENCES [dbo].[Estado] ([est_codigo])
GO
/****** Object:  ForeignKey [FK__VentaDetP__ven_c__59063A47]    Script Date: 11/07/2017 20:08:33 ******/
ALTER TABLE [dbo].[VentaDetProd]  WITH CHECK ADD FOREIGN KEY([ven_codigo])
REFERENCES [dbo].[Venta] ([ven_codigo])
GO
/****** Object:  ForeignKey [FK__VentaDetP__ven_c__59FA5E80]    Script Date: 11/07/2017 20:08:33 ******/
ALTER TABLE [dbo].[VentaDetProd]  WITH CHECK ADD FOREIGN KEY([ven_codigo])
REFERENCES [dbo].[Venta] ([ven_codigo])
GO
/****** Object:  ForeignKey [FK_prom_codigo_prod]    Script Date: 11/07/2017 20:08:33 ******/
ALTER TABLE [dbo].[VentaDetProd]  WITH CHECK ADD  CONSTRAINT [FK_prom_codigo_prod] FOREIGN KEY([prom_codigo])
REFERENCES [dbo].[Promocion] ([prom_codigo])
GO
ALTER TABLE [dbo].[VentaDetProd] CHECK CONSTRAINT [FK_prom_codigo_prod]
GO
/****** Object:  ForeignKey [FK__Combo__cat_codig__5BE2A6F2]    Script Date: 11/07/2017 20:08:33 ******/
ALTER TABLE [dbo].[Combo]  WITH CHECK ADD FOREIGN KEY([cat_codigo])
REFERENCES [dbo].[Categoria] ([cat_codigo])
GO
/****** Object:  ForeignKey [FK__Combo__est_codig__5CD6CB2B]    Script Date: 11/07/2017 20:08:33 ******/
ALTER TABLE [dbo].[Combo]  WITH CHECK ADD FOREIGN KEY([est_codigo])
REFERENCES [dbo].[Estado] ([est_codigo])
GO
/****** Object:  ForeignKey [FK__Combo__est_codig__5DCAEF64]    Script Date: 11/07/2017 20:08:33 ******/
ALTER TABLE [dbo].[Combo]  WITH CHECK ADD FOREIGN KEY([est_codigo])
REFERENCES [dbo].[Estado] ([est_codigo])
GO
/****** Object:  ForeignKey [FK__Cliente__est_cod__5EBF139D]    Script Date: 11/07/2017 20:08:33 ******/
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD FOREIGN KEY([est_codigo])
REFERENCES [dbo].[Estado] ([est_codigo])
GO
/****** Object:  ForeignKey [FK__Cliente__est_cod__5FB337D6]    Script Date: 11/07/2017 20:08:33 ******/
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD FOREIGN KEY([est_codigo])
REFERENCES [dbo].[Estado] ([est_codigo])
GO
/****** Object:  ForeignKey [FK__Cliente__tdc_cod__60A75C0F]    Script Date: 11/07/2017 20:08:33 ******/
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD FOREIGN KEY([tdc_codigo])
REFERENCES [dbo].[TipoDocumento] ([tdc_codigo])
GO
/****** Object:  ForeignKey [FK__Cliente__tdc_cod__619B8048]    Script Date: 11/07/2017 20:08:33 ******/
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD FOREIGN KEY([tdc_codigo])
REFERENCES [dbo].[TipoDocumento] ([tdc_codigo])
GO
/****** Object:  ForeignKey [FK__Proceso__est_cod__628FA481]    Script Date: 11/07/2017 20:08:33 ******/
ALTER TABLE [dbo].[Proceso]  WITH CHECK ADD FOREIGN KEY([est_codigo])
REFERENCES [dbo].[Estado] ([est_codigo])
GO
/****** Object:  ForeignKey [FK__Proceso__est_cod__6383C8BA]    Script Date: 11/07/2017 20:08:33 ******/
ALTER TABLE [dbo].[Proceso]  WITH CHECK ADD FOREIGN KEY([est_codigo])
REFERENCES [dbo].[Estado] ([est_codigo])
GO
/****** Object:  ForeignKey [FK__Grupo__est_codig__6477ECF3]    Script Date: 11/07/2017 20:08:33 ******/
ALTER TABLE [dbo].[Grupo]  WITH CHECK ADD FOREIGN KEY([est_codigo])
REFERENCES [dbo].[Estado] ([est_codigo])
GO
/****** Object:  ForeignKey [FK__Grupo__est_codig__656C112C]    Script Date: 11/07/2017 20:08:33 ******/
ALTER TABLE [dbo].[Grupo]  WITH CHECK ADD FOREIGN KEY([est_codigo])
REFERENCES [dbo].[Estado] ([est_codigo])
GO
/****** Object:  ForeignKey [FK__Marca__est_codig__66603565]    Script Date: 11/07/2017 20:08:33 ******/
ALTER TABLE [dbo].[Marca]  WITH CHECK ADD FOREIGN KEY([est_codigo])
REFERENCES [dbo].[Estado] ([est_codigo])
GO
/****** Object:  ForeignKey [FK__Marca__est_codig__6754599E]    Script Date: 11/07/2017 20:08:33 ******/
ALTER TABLE [dbo].[Marca]  WITH CHECK ADD FOREIGN KEY([est_codigo])
REFERENCES [dbo].[Estado] ([est_codigo])
GO
/****** Object:  ForeignKey [FK__GrupoUsua__est_c__68487DD7]    Script Date: 11/07/2017 20:08:33 ******/
ALTER TABLE [dbo].[GrupoUsuario]  WITH CHECK ADD FOREIGN KEY([est_codigo])
REFERENCES [dbo].[Estado] ([est_codigo])
GO
/****** Object:  ForeignKey [FK__GrupoUsua__est_c__693CA210]    Script Date: 11/07/2017 20:08:33 ******/
ALTER TABLE [dbo].[GrupoUsuario]  WITH CHECK ADD FOREIGN KEY([est_codigo])
REFERENCES [dbo].[Estado] ([est_codigo])
GO
/****** Object:  ForeignKey [FK__GrupoUsua__grp_c__6A30C649]    Script Date: 11/07/2017 20:08:33 ******/
ALTER TABLE [dbo].[GrupoUsuario]  WITH CHECK ADD FOREIGN KEY([grp_codigo])
REFERENCES [dbo].[Grupo] ([grp_codigo])
GO
/****** Object:  ForeignKey [FK__GrupoUsua__grp_c__6B24EA82]    Script Date: 11/07/2017 20:08:33 ******/
ALTER TABLE [dbo].[GrupoUsuario]  WITH CHECK ADD FOREIGN KEY([grp_codigo])
REFERENCES [dbo].[Grupo] ([grp_codigo])
GO
/****** Object:  ForeignKey [FK__GrupoUsua__usu_c__6C190EBB]    Script Date: 11/07/2017 20:08:33 ******/
ALTER TABLE [dbo].[GrupoUsuario]  WITH CHECK ADD FOREIGN KEY([usu_codigo])
REFERENCES [dbo].[Usuario] ([usu_codigo])
GO
/****** Object:  ForeignKey [FK__GrupoUsua__usu_c__6D0D32F4]    Script Date: 11/07/2017 20:08:33 ******/
ALTER TABLE [dbo].[GrupoUsuario]  WITH CHECK ADD FOREIGN KEY([usu_codigo])
REFERENCES [dbo].[Usuario] ([usu_codigo])
GO
/****** Object:  ForeignKey [FK_GrupoUsuario_GrupoUsuario]    Script Date: 11/07/2017 20:08:33 ******/
ALTER TABLE [dbo].[GrupoUsuario]  WITH CHECK ADD  CONSTRAINT [FK_GrupoUsuario_GrupoUsuario] FOREIGN KEY([grp_codigo], [usu_codigo])
REFERENCES [dbo].[GrupoUsuario] ([grp_codigo], [usu_codigo])
GO
ALTER TABLE [dbo].[GrupoUsuario] CHECK CONSTRAINT [FK_GrupoUsuario_GrupoUsuario]
GO
/****** Object:  ForeignKey [FK__GrupoProc__est_c__6EF57B66]    Script Date: 11/07/2017 20:08:33 ******/
ALTER TABLE [dbo].[GrupoProceso]  WITH CHECK ADD FOREIGN KEY([est_codigo])
REFERENCES [dbo].[Estado] ([est_codigo])
GO
/****** Object:  ForeignKey [FK__GrupoProc__est_c__6FE99F9F]    Script Date: 11/07/2017 20:08:33 ******/
ALTER TABLE [dbo].[GrupoProceso]  WITH CHECK ADD FOREIGN KEY([est_codigo])
REFERENCES [dbo].[Estado] ([est_codigo])
GO
/****** Object:  ForeignKey [FK__GrupoProc__grp_c__70DDC3D8]    Script Date: 11/07/2017 20:08:33 ******/
ALTER TABLE [dbo].[GrupoProceso]  WITH CHECK ADD FOREIGN KEY([grp_codigo])
REFERENCES [dbo].[Grupo] ([grp_codigo])
GO
/****** Object:  ForeignKey [FK__GrupoProc__grp_c__71D1E811]    Script Date: 11/07/2017 20:08:33 ******/
ALTER TABLE [dbo].[GrupoProceso]  WITH CHECK ADD FOREIGN KEY([grp_codigo])
REFERENCES [dbo].[Grupo] ([grp_codigo])
GO
/****** Object:  ForeignKey [FK__GrupoProc__proc___72C60C4A]    Script Date: 11/07/2017 20:08:33 ******/
ALTER TABLE [dbo].[GrupoProceso]  WITH CHECK ADD FOREIGN KEY([proc_codigo])
REFERENCES [dbo].[Proceso] ([proc_codigo])
GO
/****** Object:  ForeignKey [FK__GrupoProc__proc___73BA3083]    Script Date: 11/07/2017 20:08:33 ******/
ALTER TABLE [dbo].[GrupoProceso]  WITH CHECK ADD FOREIGN KEY([proc_codigo])
REFERENCES [dbo].[Proceso] ([proc_codigo])
GO
/****** Object:  ForeignKey [FK__Producto__cat_co__74AE54BC]    Script Date: 11/07/2017 20:08:33 ******/
ALTER TABLE [dbo].[Producto]  WITH CHECK ADD FOREIGN KEY([cat_codigo])
REFERENCES [dbo].[Categoria] ([cat_codigo])
GO
/****** Object:  ForeignKey [FK__Producto__est_co__75A278F5]    Script Date: 11/07/2017 20:08:33 ******/
ALTER TABLE [dbo].[Producto]  WITH CHECK ADD FOREIGN KEY([est_codigo])
REFERENCES [dbo].[Estado] ([est_codigo])
GO
/****** Object:  ForeignKey [FK__Producto__est_co__76969D2E]    Script Date: 11/07/2017 20:08:33 ******/
ALTER TABLE [dbo].[Producto]  WITH CHECK ADD FOREIGN KEY([est_codigo])
REFERENCES [dbo].[Estado] ([est_codigo])
GO
/****** Object:  ForeignKey [FK__Producto__mar_co__778AC167]    Script Date: 11/07/2017 20:08:33 ******/
ALTER TABLE [dbo].[Producto]  WITH CHECK ADD FOREIGN KEY([mar_codigo])
REFERENCES [dbo].[Marca] ([mar_codigo])
GO
/****** Object:  ForeignKey [FK__Producto__mar_co__787EE5A0]    Script Date: 11/07/2017 20:08:33 ******/
ALTER TABLE [dbo].[Producto]  WITH CHECK ADD FOREIGN KEY([mar_codigo])
REFERENCES [dbo].[Marca] ([mar_codigo])
GO
/****** Object:  ForeignKey [FK__Producto__tpr_co__797309D9]    Script Date: 11/07/2017 20:08:33 ******/
ALTER TABLE [dbo].[Producto]  WITH CHECK ADD FOREIGN KEY([tpr_codigo])
REFERENCES [dbo].[TipoProducto] ([tpr_codigo])
GO
/****** Object:  ForeignKey [FK__Producto__tpr_co__7A672E12]    Script Date: 11/07/2017 20:08:33 ******/
ALTER TABLE [dbo].[Producto]  WITH CHECK ADD FOREIGN KEY([tpr_codigo])
REFERENCES [dbo].[TipoProducto] ([tpr_codigo])
GO
/****** Object:  ForeignKey [FK__PedidoCom__prov___7B5B524B]    Script Date: 11/07/2017 20:08:33 ******/
ALTER TABLE [dbo].[PedidoCompra]  WITH CHECK ADD FOREIGN KEY([prov_codigo])
REFERENCES [dbo].[Proveedor] ([prov_codigo])
GO
/****** Object:  ForeignKey [FK__PedidoCom__prov___7C4F7684]    Script Date: 11/07/2017 20:08:33 ******/
ALTER TABLE [dbo].[PedidoCompra]  WITH CHECK ADD FOREIGN KEY([prov_codigo])
REFERENCES [dbo].[Proveedor] ([prov_codigo])
GO
/****** Object:  ForeignKey [FK__VentaDetC__com_c__7D439ABD]    Script Date: 11/07/2017 20:08:33 ******/
ALTER TABLE [dbo].[VentaDetCombo]  WITH CHECK ADD FOREIGN KEY([com_codigo])
REFERENCES [dbo].[Combo] ([com_codigo])
GO
/****** Object:  ForeignKey [FK__VentaDetC__com_c__7E37BEF6]    Script Date: 11/07/2017 20:08:33 ******/
ALTER TABLE [dbo].[VentaDetCombo]  WITH CHECK ADD FOREIGN KEY([com_codigo])
REFERENCES [dbo].[Combo] ([com_codigo])
GO
/****** Object:  ForeignKey [FK__VentaDetC__ven_c__00200768]    Script Date: 11/07/2017 20:08:33 ******/
ALTER TABLE [dbo].[VentaDetCombo]  WITH CHECK ADD FOREIGN KEY([ven_codigo])
REFERENCES [dbo].[Venta] ([ven_codigo])
GO
/****** Object:  ForeignKey [FK__VentaDetC__ven_c__7F2BE32F]    Script Date: 11/07/2017 20:08:33 ******/
ALTER TABLE [dbo].[VentaDetCombo]  WITH CHECK ADD FOREIGN KEY([ven_codigo])
REFERENCES [dbo].[Venta] ([ven_codigo])
GO
/****** Object:  ForeignKey [FK_prom_codigo]    Script Date: 11/07/2017 20:08:33 ******/
ALTER TABLE [dbo].[VentaDetCombo]  WITH CHECK ADD  CONSTRAINT [FK_prom_codigo] FOREIGN KEY([prom_codigo])
REFERENCES [dbo].[Promocion] ([prom_codigo])
GO
ALTER TABLE [dbo].[VentaDetCombo] CHECK CONSTRAINT [FK_prom_codigo]
GO
/****** Object:  ForeignKey [FK__StockProd__prod___02084FDA]    Script Date: 11/07/2017 20:08:35 ******/
ALTER TABLE [dbo].[StockProducto]  WITH CHECK ADD FOREIGN KEY([prod_codigo])
REFERENCES [dbo].[Producto] ([prod_codigo])
GO
/****** Object:  ForeignKey [FK__StockProd__prod___02FC7413]    Script Date: 11/07/2017 20:08:35 ******/
ALTER TABLE [dbo].[StockProducto]  WITH CHECK ADD FOREIGN KEY([prod_codigo])
REFERENCES [dbo].[Producto] ([prod_codigo])
GO
/****** Object:  ForeignKey [FK__PedidoCom__pec_c__03F0984C]    Script Date: 11/07/2017 20:08:35 ******/
ALTER TABLE [dbo].[PedidoCompraDet]  WITH CHECK ADD FOREIGN KEY([pec_codigo])
REFERENCES [dbo].[PedidoCompra] ([pec_codigo])
GO
/****** Object:  ForeignKey [FK__PedidoCom__pec_c__04E4BC85]    Script Date: 11/07/2017 20:08:35 ******/
ALTER TABLE [dbo].[PedidoCompraDet]  WITH CHECK ADD FOREIGN KEY([pec_codigo])
REFERENCES [dbo].[PedidoCompra] ([pec_codigo])
GO
/****** Object:  ForeignKey [FK__PedidoCom__prod___05D8E0BE]    Script Date: 11/07/2017 20:08:35 ******/
ALTER TABLE [dbo].[PedidoCompraDet]  WITH CHECK ADD FOREIGN KEY([prod_codigo])
REFERENCES [dbo].[Producto] ([prod_codigo])
GO
/****** Object:  ForeignKey [FK__PedidoCom__prod___06CD04F7]    Script Date: 11/07/2017 20:08:35 ******/
ALTER TABLE [dbo].[PedidoCompraDet]  WITH CHECK ADD FOREIGN KEY([prod_codigo])
REFERENCES [dbo].[Producto] ([prod_codigo])
GO
/****** Object:  ForeignKey [FK_mvs]    Script Date: 11/07/2017 20:08:35 ******/
ALTER TABLE [dbo].[MovimientoStock]  WITH CHECK ADD  CONSTRAINT [FK_mvs] FOREIGN KEY([prod_codigo])
REFERENCES [dbo].[Producto] ([prod_codigo])
GO
ALTER TABLE [dbo].[MovimientoStock] CHECK CONSTRAINT [FK_mvs]
GO
