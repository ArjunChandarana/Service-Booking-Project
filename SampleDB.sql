USE [master]
GO
/****** Object:  Database [SampleDB]    Script Date: 01-03-2021 21:35:15 ******/
CREATE DATABASE [SampleDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SampleDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS01\MSSQL\DATA\SampleDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SampleDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS01\MSSQL\DATA\SampleDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [SampleDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SampleDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SampleDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SampleDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SampleDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SampleDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SampleDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [SampleDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SampleDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SampleDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SampleDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SampleDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SampleDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SampleDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SampleDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SampleDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SampleDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SampleDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SampleDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SampleDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SampleDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SampleDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SampleDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SampleDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SampleDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SampleDB] SET  MULTI_USER 
GO
ALTER DATABASE [SampleDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SampleDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SampleDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SampleDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SampleDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SampleDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [SampleDB] SET QUERY_STORE = OFF
GO
USE [SampleDB]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 01-03-2021 21:35:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 01-03-2021 21:35:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 01-03-2021 21:35:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 01-03-2021 21:35:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 01-03-2021 21:35:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 01-03-2021 21:35:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Brands]    Script Date: 01-03-2021 21:35:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brands](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Brands] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 01-03-2021 21:35:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Email] [nvarchar](256) NOT NULL,
	[PhoneNumber] [nvarchar](13) NULL,
	[UserId] [nvarchar](128) NULL,
	[Address] [nvarchar](250) NULL,
	[DealerId] [int] NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DealerBrands]    Script Date: 01-03-2021 21:35:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DealerBrands](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DealerId] [int] NOT NULL,
	[BrandId] [int] NOT NULL,
 CONSTRAINT [PK_DealerBrands] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dealers]    Script Date: 01-03-2021 21:35:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dealers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[PhoneNumber] [nvarchar](13) NOT NULL,
	[Email] [nvarchar](250) NOT NULL,
	[Address] [nvarchar](250) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[UserId] [nvarchar](128) NULL,
 CONSTRAINT [PK_Dealers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mechanics]    Script Date: 01-03-2021 21:35:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mechanics](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[PhoneNumber] [nvarchar](13) NOT NULL,
	[Email] [nvarchar](250) NOT NULL,
	[DealerId] [int] NOT NULL,
 CONSTRAINT [PK_Mechanics] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Models]    Script Date: 01-03-2021 21:35:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Models](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[BrandId] [int] NOT NULL,
 CONSTRAINT [PK_Models] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SelectedServices]    Script Date: 01-03-2021 21:35:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SelectedServices](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ServiceBookingId] [int] NOT NULL,
	[ServiceId] [int] NOT NULL,
 CONSTRAINT [PK_SelectedServices] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ServiceBookings]    Script Date: 01-03-2021 21:35:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServiceBookings](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BookingDate] [date] NOT NULL,
	[ReturnDate] [date] NULL,
	[TotalAmmount] [float] NOT NULL,
	[Status] [nchar](10) NOT NULL,
	[PickupAddress] [nvarchar](250) NOT NULL,
	[DropAddress] [nvarchar](250) NULL,
	[Feedback] [nvarchar](250) NOT NULL,
	[VehicleId] [int] NOT NULL,
	[DealerId] [int] NOT NULL,
 CONSTRAINT [PK_ServiceBookings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Services]    Script Date: 01-03-2021 21:35:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Services](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Type] [nvarchar](20) NOT NULL,
	[Duration] [time](7) NOT NULL,
	[Amount] [float] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Services] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vehicles]    Script Date: 01-03-2021 21:35:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vehicles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[NumberPlate] [nvarchar](12) NOT NULL,
	[ChassisNumber] [nvarchar](17) NOT NULL,
	[RegistrationDate] [date] NOT NULL,
	[LastServiceDate] [date] NULL,
	[FuelType] [nvarchar](10) NOT NULL,
	[CustomerId] [int] NOT NULL,
	[ModelId] [int] NOT NULL,
 CONSTRAINT [PK_Vehicles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202102161036064_InitialCreate', N'MultiAuthDemo.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5CDB6EE436127D5F60FF41D05376E1B47CC90C668D7602A76DEF1A195F30ED09F236604BECB63012A548946363912FDB877C527E618B1275E345A2BAE5EE7630C0A045164F158B45B2582CFACFFFFD31FDE1390CAC279CA47E44CEECA3C9A16D61E2469E4F5667764697DF7EB07FF8FEEF7F9B5E7AE1B3F5734977C2E8A02549CFEC474AE353C749DD471CA27412FA6E12A5D1924EDC2874901739C78787FF728E8E1C0C10366059D6F45346A81FE2FC033E671171714C3314DC441E0E525E0E35F31CD5BA45214E63E4E233FB260BA87F9ED1C70B1C469382DEB6CE031F812C731C2C6D0B1112514441D2D3CF299ED32422AB790C052878788931D02D519062DE83D39ADCB43387C7AC334EDDB08472B39446E140C0A313AE1D476CBE968EED4A7BA0BF4BD0337D61BDCE7578665F7B382FFA1405A00091E1E92C481831A8B962719EC6B7984ECA869302F22A01B8DFA2E4EBA489786019B73BA8ACE97872C8FE1D583318DA2CC16704673441C181759F2D02DFFD09BF3C445F31393B395A2C4F3EBC7B8FBC93F7DFE19377CD9E425F81AE550045F74914E30464C3CBAAFFB6E5B4DB3962C3AA59A34DA115B0259818B675839E3F62B2A28F30658E3FD8D695FF8CBDB2841BD767E2C33C824634C9E0F3360B02B4087055EF74F264FF77703D7EF77E14AEB7E8C95FE5432FF0878993C0BCFA8483BC367DF4E3627AB5C6FB0B27BB4AA2907DB7EDABA8FD328FB2C4659D89B4240F285961DA966EEAD4C66B64D20C6A7CB32E51F7DFB499A4B2792B495987D69909258B6DCF8652DED7E56B6C71E7710C83979B16D348A7C129B6AB89D01E4CAB49559BCF91A9F910E8D65F7935BC0C911F8CB01C1A70015F64E92721AE7AF96304C687C86099EF519AC26AE0FD07A58F1DA2C3CF11449F63374BC048E71485F1AB73BB7F8C08BECDC205B3FDEDF11A6D681E7E8BAE904BA3E492B0561BE37D8CDCAF51462F89778128FE4CDD12907D3EF8A139C028E29CBB2E4ED32B3066ECCD2270B54BC06B424F8E07C3B1256AD7EEC82C407EA8F64784C5F44B495AFB246A0AC92FD190A97C932E513F462B9F98895A92EA452D287A45E564434565606692724ABDA03941AF9C05D568DE5E3E42E3BB7B39ECFEFB7B9B6DDEBAB5A0A1C639AC90F8DF98E0049631EF1E518A13528F80C9BAB10B67211F3EC6F4D5F7A69CD3CF28C8C666B5D66CC81781F167430EBBFFB32117138A9F7C8F79250687A09218E08DE8D5E7ABFE392748B6EDE9D0EAE6B6996F670DD04D97F3348D5C3F9F058AF0170F5EB4E5071FCEEA8F6414BD11A32176718E635B1E9440DF6CD1A8EEC8050E30C5D6B95B84076728759127AB113AE40D10ACDC511582D55191B670FF947882A5E3843542EC1094C24CF50995A7854F5C3F4641AF968496865B18EB7BC543ACB9C031268C61AF264C98AB83204C808A8F30287D1A9A3A0D8BEB36448DD7AA1BF33E17B61E772936B1159BECF19D3576C9FDB75731CC6E8D6DC138BB5562228036A0B70B03E567155303100F2EFB66A0C2894963A0DCA5DA8A81B635B603036DABE4CD19687144351D7FE1BCBA6FE6D93E286F7F5BEF54D70E6CB3A58F3D33CDC2F78436145AE04436CF8B05ABC4CF5471380339F9F92CE5AEAE68220C7C8E693B6453FBBB4A3FD4E906118DA80BB036B41E507E15280149136A8070652CAF533AEE450C802DE36E9DB07CED17601B36206337AF441B84FA8B53D1388D4E1F55CF2A6B908CDCE8B0D0C0511884B878B53B6EA0145D5C56568C892F3CC41B6E748C0F4687827A3C578D92CACE8CAEA5D234FBB5A472C886B8641B6949709F345A2A3B33BA96B88DF62B49E1140C700B3652517B0B1F69B295918E6AB7A9EAA64E912BC50BA68E26A96A7A83E2D827AB4692152FB1E64586D5ECDBF9F0C4A3B0C070DC54917F54495B71A251825658A805D620E9959FA4F40251B4402CCE33F342894CB9B76A96FF926573FB9407B1DC074A6AF6BB68A1BCC06FEDB6B23BC251AEA08F21F369F240BAC202D4CD2D96F68602942862F7B328C842A277B1F4AD8B1BBC66FBA24446983A82FC920B25E94B7274DBCA371A1A795A8C364C950FB3FE50E921740A2F3DD0A6CA755EA91EA50C5235517481AB9D0D9DCE9919385CA2A7387CB47A115E676EF1F49426002F1A88D1C87090C01A75E6A8ED24942666BBC61C51C83469420A5503A46CE693B4846C56AC85A7D1A89AC29C839C41D244976BCD9115B9244D6845F51AD80A99C53A735445BA491358516D8E5DE79E88CBE81EEF5EDAF3CB06DB5771C8DD6CFFD260BCCE9A38CEF6D7B8CB6F02358A0762F1DB7A098C97EFA53D694F7A1BD85311DDD8CC9E3418FAD5A7750FDE5E7C3A2FEFF598ADCBEDD602DF75B9AFC71B66B5AF6A1BD2514F24A9B857473EE16837E5C7ACFE4735D2B9AB20B1AD528DB0B9BFA4148713463099FF1ACC021FB3A5BC24B841C45FE29416091DF6F1E1D1B1F02A677F5EC83869EA058A63AAEE994C7BCCB6909B459E50E23EA244CE94D8E015490D2A05A1AF89879FCFECFFE6AD4EF37806FB95171F58D7E967E2FF9A41C5439261EB7739F3739CAC7A83771C95A0BFBF890712E62ABFFEE54BD1F4C0BA4B603A9D5A8782A2D719FEF6B38941D2144D379066EDC7146F77B6B55E29285185D9B2FEA384854F477990504AF94D889EFF315434E5A3838D10150F0BC6C21B4585BA8703EB60691F0D78F049F34703C33AAB7E44B08E68DA07043E190E263E1F305F86CA963BDC871447A66D2C49B99E7BD3AF37CAC5DCF5DE2465696F34D1E54CEC0170A3665B6FE6A2BCB12CE6D1B64E4592F268D8BBB4FB57CF4CDE9764E4DA69DF6D0EF236D38E3BAE95FE52D9C67B901FA7C8F7D97D4EF1B66D4D1703DEF3C4CC6199C37B666C7C9BDF7D7EF0B68D4D1720DE73631B9405BC67B6B6ABFD73C79666BC85EE3CA7574E4FD2DCE5A8A2C87D39BB45C81D8EFF8B088CA0F0288BA796EA24B1AE04D71E8635899EA93E3B4D642C4D1C89AF44D1CD76585FF986DFD9594ED3CD5693D3D9C59BAFFF9DBC394D376F4DA6E42EB28D95B98AAA0CF09E75AC2B89EA2D6517B77AD293CCDEE7B3765ECCBFA564E25194D29A3D9ADBE5B7933B3C8A4AC69C3A037285E58B62D83B1B7FA311F6EFD45FD510EC2F3612ECB676CD8AE69A2CA372F316242A498408CD0DA6C8832DF53CA1FE12B914AA59003A7F2B9E07F5D835C8027BD7E42EA37146A1CB385C04AD80177302BAF8E709D16D99A77731FB4AC7E80288E9B3C0FD1DF931F303AF92FB4A1113D24030EF82877BD9585216F65DBD5448B7113104E2EAAB9CA2071CC60180A577648E9EF03AB281F97DC42BE4BED411401D48FF40B4D53EBDF0D12A4161CA31EAF6F00936EC85CFDFFF1F758251C0AA540000, N'6.2.0-61023')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'75cc462c-fbb2-4421-8897-b4fe19eb1753', N'Admin')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'a95017b5-d829-4264-8727-d73303fd0e8d', N'Customer')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'f08f6abb-0116-4bf9-9685-8c018d9c69a3', N'Dealer')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c438c1e9-38d6-4834-8d73-7c9e34b45c77', N'75cc462c-fbb2-4421-8897-b4fe19eb1753')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'40c03d57-c966-40c1-a981-32ca7faf9a89', N'a95017b5-d829-4264-8727-d73303fd0e8d')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'bfe1ea5a-2f5c-4ba6-8048-01f476d9a4ae', N'a95017b5-d829-4264-8727-d73303fd0e8d')
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'40c03d57-c966-40c1-a981-32ca7faf9a89', N'kuldip.patel2@gmail.com', 0, N'AEQdvdzgy7umU2BtO6r/MV5e0uwlvoGfvW+WQLfvs+4nM0OUECas0dUK/6o9J6fauA==', N'c14967e6-765e-4bda-a2c5-2053c70395a0', NULL, 0, 0, NULL, 1, 0, N'kuldip2')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'bfe1ea5a-2f5c-4ba6-8048-01f476d9a4ae', N'kuldip.patel1@gmail.com', 0, N'AN9BCWNKtE8Z+WCoKsi4qP90nXBAT2Y9rPCQp5OnWEP2phbE06c5+ksFld6w89ur0Q==', N'9f594d67-0e3b-4e9e-9bdb-c7fbc9e5bf04', NULL, 0, 0, NULL, 1, 0, N'kuldip1')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'c438c1e9-38d6-4834-8d73-7c9e34b45c77', N'kuldip@gmail.com', 0, N'AE457o4bfB+d5VDz8WYKrSsDulj3C/yr/UZr2TavBbPv8acuaZ1HGPGHJjXc6a/IgA==', N'37f967b5-d203-4dc3-b0c6-d539bfb85c31', NULL, 0, 0, NULL, 0, 0, N'kuldip')
GO
SET IDENTITY_INSERT [dbo].[Brands] ON 

INSERT [dbo].[Brands] ([Id], [Name], [IsActive]) VALUES (1, N'Honda', 0)
INSERT [dbo].[Brands] ([Id], [Name], [IsActive]) VALUES (2, N'Hero', 0)
INSERT [dbo].[Brands] ([Id], [Name], [IsActive]) VALUES (3, N'Brand new', 0)
INSERT [dbo].[Brands] ([Id], [Name], [IsActive]) VALUES (4, N'Tyre', 1)
SET IDENTITY_INSERT [dbo].[Brands] OFF
GO
SET IDENTITY_INSERT [dbo].[Customers] ON 

INSERT [dbo].[Customers] ([Id], [Name], [Email], [PhoneNumber], [UserId], [Address], [DealerId], [IsActive]) VALUES (6, N'Customer1', N'kuldip.patel2@gmail.com', N'12345783690', N'40c03d57-c966-40c1-a981-32ca7faf9a89', N'Rajkot', 1, 0)
INSERT [dbo].[Customers] ([Id], [Name], [Email], [PhoneNumber], [UserId], [Address], [DealerId], [IsActive]) VALUES (1006, N'Customer 2', N'cs2@gmail.com', N'1234567892', NULL, N'Rajkot City', 2, 1)
SET IDENTITY_INSERT [dbo].[Customers] OFF
GO
SET IDENTITY_INSERT [dbo].[Dealers] ON 

INSERT [dbo].[Dealers] ([Id], [Name], [PhoneNumber], [Email], [Address], [IsActive], [UserId]) VALUES (1, N'Dealer1', N'9664962476', N'del1@gmail.com', N'Rajkot', 1, NULL)
INSERT [dbo].[Dealers] ([Id], [Name], [PhoneNumber], [Email], [Address], [IsActive], [UserId]) VALUES (2, N'Dealer2 Name', N'9664962476', N'kuldip.patel1@gmail.com', N'Rajkot', 1, NULL)
SET IDENTITY_INSERT [dbo].[Dealers] OFF
GO
SET IDENTITY_INSERT [dbo].[Models] ON 

INSERT [dbo].[Models] ([Id], [Name], [IsActive], [BrandId]) VALUES (1, N'HB01', 1, 1)
INSERT [dbo].[Models] ([Id], [Name], [IsActive], [BrandId]) VALUES (2, N'Model2', 0, 2)
INSERT [dbo].[Models] ([Id], [Name], [IsActive], [BrandId]) VALUES (3, N'New1', 1, 2)
SET IDENTITY_INSERT [dbo].[Models] OFF
GO
SET IDENTITY_INSERT [dbo].[Services] ON 

INSERT [dbo].[Services] ([Id], [Name], [Type], [Duration], [Amount], [IsActive]) VALUES (1, N'Body Service', N'Outer', CAST(N'02:00:00' AS Time), 1000, 1)
INSERT [dbo].[Services] ([Id], [Name], [Type], [Duration], [Amount], [IsActive]) VALUES (2, N'All Tyre', N'Outer body', CAST(N'02:00:00' AS Time), 2000, 0)
INSERT [dbo].[Services] ([Id], [Name], [Type], [Duration], [Amount], [IsActive]) VALUES (3, N'brake', N'Outer body', CAST(N'01:00:00' AS Time), 500, 0)
SET IDENTITY_INSERT [dbo].[Services] OFF
GO
SET IDENTITY_INSERT [dbo].[Vehicles] ON 

INSERT [dbo].[Vehicles] ([Id], [Name], [NumberPlate], [ChassisNumber], [RegistrationDate], [LastServiceDate], [FuelType], [CustomerId], [ModelId]) VALUES (1, N'Vehicle1', N'GJ03AA0001', N'12121212121221', CAST(N'2021-02-11' AS Date), NULL, N'Gas', 6, 1)
INSERT [dbo].[Vehicles] ([Id], [Name], [NumberPlate], [ChassisNumber], [RegistrationDate], [LastServiceDate], [FuelType], [CustomerId], [ModelId]) VALUES (2, N'Vehicle 2', N'Gj03ER1234', N'1234567899874', CAST(N'0001-01-01' AS Date), NULL, N'Deasel', 6, 2)
SET IDENTITY_INSERT [dbo].[Vehicles] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 01-03-2021 21:35:16 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 01-03-2021 21:35:16 ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 01-03-2021 21:35:16 ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_RoleId]    Script Date: 01-03-2021 21:35:16 ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 01-03-2021 21:35:16 ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 01-03-2021 21:35:16 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Brands] ADD  CONSTRAINT [DF_Brands_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Customers] ADD  CONSTRAINT [DF_Customers_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Dealers] ADD  CONSTRAINT [DF_Dealers_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Models] ADD  CONSTRAINT [DF_Models_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Customers]  WITH CHECK ADD  CONSTRAINT [FK_Customers_Dealers] FOREIGN KEY([DealerId])
REFERENCES [dbo].[Dealers] ([Id])
GO
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [FK_Customers_Dealers]
GO
ALTER TABLE [dbo].[DealerBrands]  WITH CHECK ADD  CONSTRAINT [FK_DealerBrands_Brands] FOREIGN KEY([BrandId])
REFERENCES [dbo].[Brands] ([Id])
GO
ALTER TABLE [dbo].[DealerBrands] CHECK CONSTRAINT [FK_DealerBrands_Brands]
GO
ALTER TABLE [dbo].[DealerBrands]  WITH CHECK ADD  CONSTRAINT [FK_DealerBrands_Dealers] FOREIGN KEY([DealerId])
REFERENCES [dbo].[Dealers] ([Id])
GO
ALTER TABLE [dbo].[DealerBrands] CHECK CONSTRAINT [FK_DealerBrands_Dealers]
GO
ALTER TABLE [dbo].[Mechanics]  WITH CHECK ADD  CONSTRAINT [FK_Mechanics_Dealers] FOREIGN KEY([DealerId])
REFERENCES [dbo].[Dealers] ([Id])
GO
ALTER TABLE [dbo].[Mechanics] CHECK CONSTRAINT [FK_Mechanics_Dealers]
GO
ALTER TABLE [dbo].[Models]  WITH CHECK ADD  CONSTRAINT [FK_Models_Brands] FOREIGN KEY([BrandId])
REFERENCES [dbo].[Brands] ([Id])
GO
ALTER TABLE [dbo].[Models] CHECK CONSTRAINT [FK_Models_Brands]
GO
ALTER TABLE [dbo].[SelectedServices]  WITH CHECK ADD  CONSTRAINT [FK_SelectedServices_ServiceBookings] FOREIGN KEY([ServiceBookingId])
REFERENCES [dbo].[ServiceBookings] ([Id])
GO
ALTER TABLE [dbo].[SelectedServices] CHECK CONSTRAINT [FK_SelectedServices_ServiceBookings]
GO
ALTER TABLE [dbo].[SelectedServices]  WITH CHECK ADD  CONSTRAINT [FK_SelectedServices_Services] FOREIGN KEY([ServiceId])
REFERENCES [dbo].[Services] ([Id])
GO
ALTER TABLE [dbo].[SelectedServices] CHECK CONSTRAINT [FK_SelectedServices_Services]
GO
ALTER TABLE [dbo].[ServiceBookings]  WITH CHECK ADD  CONSTRAINT [FK_ServiceBookings_Dealers] FOREIGN KEY([DealerId])
REFERENCES [dbo].[Dealers] ([Id])
GO
ALTER TABLE [dbo].[ServiceBookings] CHECK CONSTRAINT [FK_ServiceBookings_Dealers]
GO
ALTER TABLE [dbo].[Vehicles]  WITH CHECK ADD  CONSTRAINT [FK_Vehicles_Customers] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customers] ([Id])
GO
ALTER TABLE [dbo].[Vehicles] CHECK CONSTRAINT [FK_Vehicles_Customers]
GO
ALTER TABLE [dbo].[Vehicles]  WITH CHECK ADD  CONSTRAINT [FK_Vehicles_Models] FOREIGN KEY([ModelId])
REFERENCES [dbo].[Models] ([Id])
GO
ALTER TABLE [dbo].[Vehicles] CHECK CONSTRAINT [FK_Vehicles_Models]
GO
USE [master]
GO
ALTER DATABASE [SampleDB] SET  READ_WRITE 
GO
