USE [TestDB]
GO

/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 6/15/2018 5:26:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 6/15/2018 5:26:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 6/15/2018 5:26:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 6/15/2018 5:26:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 6/15/2018 5:26:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 6/15/2018 5:26:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[DoneTaskNumber] [int] NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[UserRating] [float] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 6/15/2018 5:26:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CodeHistories]    Script Date: 6/15/2018 5:26:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CodeHistories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CodeText] [nvarchar](max) NULL,
	[Error] [nvarchar](max) NULL,
	[IsFavouriteCode] [bit] NOT NULL,
	[Result] [nvarchar](max) NULL,
	[UserCodeId] [int] NOT NULL,
	[time] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_CodeHistories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comments]    Script Date: 6/15/2018 5:26:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CommentText] [nvarchar](max) NULL,
	[CreationDateTime] [datetime2](7) NOT NULL,
	[ExerciseId] [int] NOT NULL,
	[Rating] [int] NULL,
	[UserId] [nvarchar](max) NULL,
	[UserName] [nvarchar](max) NULL,
 CONSTRAINT [PK_Comments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Courses]    Script Date: 6/15/2018 5:26:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Courses](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreationDate] [datetime2](7) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[UserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_Courses] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Exercises]    Script Date: 6/15/2018 5:26:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Exercises](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Course] [nvarchar](max) NULL,
	[CourseId] [int] NOT NULL,
	[CreateDateTime] [datetime2](7) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[Rating] [float] NOT NULL,
	[TaskBaseCodeField] [nvarchar](max) NULL,
	[TaskName] [nvarchar](max) NULL,
	[TaskTextField] [nvarchar](max) NULL,
	[TeacherId] [nvarchar](max) NULL,
	[TestCasesCode] [nvarchar](max) NULL,
	[UpdateDateTime] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Exercises] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Messages]    Script Date: 6/15/2018 5:26:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Messages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Date] [datetime2](7) NOT NULL,
	[FromEmail] [nvarchar](max) NULL,
	[InboxText] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsInBox] [bit] NOT NULL,
	[IsNew] [bit] NOT NULL,
	[OutboxText] [nvarchar](max) NULL,
	[Subject] [nvarchar](max) NULL,
	[ToEmail] [nvarchar](max) NULL,
 CONSTRAINT [PK_Messages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[News]    Script Date: 6/15/2018 5:26:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CourseId] [int] NOT NULL,
	[Day] [int] NOT NULL,
	[ImagePath] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
	[Month] [nvarchar](max) NULL,
	[Text] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
 CONSTRAINT [PK_News] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UsersCode]    Script Date: 6/15/2018 5:26:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsersCode](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CodeStatus] [int] NOT NULL,
	[CodeText] [nvarchar](max) NULL,
	[EndTime] [datetime2](7) NOT NULL,
	[ExerciseId] [int] NOT NULL,
	[Mark] [int] NOT NULL,
	[TeachersComment] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_UsersCode] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[AspNetRoles] ([Id], [ConcurrencyStamp], [Name], [NormalizedName]) VALUES (N'5b2698db-067b-4ecf-b307-794f32033192', N'c507d150-bbcb-496b-88bc-8a934342d26b', N'Student', N'STUDENT')
INSERT [dbo].[AspNetRoles] ([Id], [ConcurrencyStamp], [Name], [NormalizedName]) VALUES (N'5bdfe113-396c-4313-9e26-b0c95e7ea3e5', N'69aa2dbd-1302-4a89-8534-85a4128d60e0', N'Teacher', N'TEACHER')
INSERT [dbo].[AspNetRoles] ([Id], [ConcurrencyStamp], [Name], [NormalizedName]) VALUES (N'bc98c887-be09-463d-9234-2d0694a68028', N'8a576669-f5d3-4e54-a64e-fb5bb6b4bcc7', N'Administrator', N'ADMINISTRATOR')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'ee63e075-38b2-44a6-82cb-58a659b7d78c', N'5b2698db-067b-4ecf-b307-794f32033192')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'cb1e2359-ba25-4c5c-9011-47fde8165d72', N'5bdfe113-396c-4313-9e26-b0c95e7ea3e5')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'd034cd52-15e2-4d0f-943d-5fb42be68efc', N'5bdfe113-396c-4313-9e26-b0c95e7ea3e5')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'84262e21-424a-46c8-849e-afea368a6c7d', N'bc98c887-be09-463d-9234-2d0694a68028')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [DoneTaskNumber], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [UserRating]) VALUES (N'84262e21-424a-46c8-849e-afea368a6c7d', 0, N'950426b8-487f-40ac-ac01-cc5b345683f1', 0, N'admin@gmail.com', 1, 1, NULL, N'ADMIN@GMAIL.COM', N'ADMIN@GMAIL.COM', N'AQAAAAEAACcQAAAAEAjj/g+KIYnkDJ8LIj2u+TnU3piXHb9YQXN1jxEqippy1utWGjsBsBDnTC9U09Xndg==', NULL, 0, N'ad1d07ca-868e-4187-8f0e-ee54eda54f71', 0, N'admin@gmail.com', 0)
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [DoneTaskNumber], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [UserRating]) VALUES (N'cb1e2359-ba25-4c5c-9011-47fde8165d72', 0, N'2a08e6ba-28f4-47a4-b888-ef9c9c870c48', 0, N'teacher@gmail.com', 1, 1, NULL, N'TEACHER@GMAIL.COM', N'TEACHER@GMAIL.COM', N'AQAAAAEAACcQAAAAEN4ohyvy2ejd7+ElqG541BAwEjQ4sHFImRI5ZqlK4kGxTSOfZ4/aBg4ooO2B+kKEWQ==', NULL, 0, N'a7540c65-7028-432a-9a0a-9aedb177680e', 0, N'teacher@gmail.com', 0)
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [DoneTaskNumber], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [UserRating]) VALUES (N'd034cd52-15e2-4d0f-943d-5fb42be68efc', 0, N'3d6f3bba-2098-4fe9-8c01-bfc4b91efcd3', 0, N'teacher2@gmail.com', 1, 1, NULL, N'TEACHER2@GMAIL.COM', N'TEACHER2@GMAIL.COM', N'AQAAAAEAACcQAAAAEEijmHw134g5swoNnccpvOlRlagnx7sSZYINBei2x7mmDtj39+peDvbqLmkGPvdVIg==', NULL, 0, N'8490b7b4-2023-48dc-b7f8-b46dbe046f93', 0, N'teacher2@gmail.com', 0)
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [DoneTaskNumber], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [UserRating]) VALUES (N'ee63e075-38b2-44a6-82cb-58a659b7d78c', 0, N'cb52fcd5-ad33-4afb-9954-c5e40f24225d', 4, N'student@gmail.com', 1, 1, NULL, N'STUDENT@GMAIL.COM', N'STUDENT@GMAIL.COM', N'AQAAAAEAACcQAAAAEL9rs+Kmwmf638hk95OWGlUmgMkjw+vN0ebt9xXqQbSk+mSSGNjxgpD86/szCM9dZg==', NULL, 0, N'bcef6f9d-26b9-491b-95eb-b6d957278187', 0, N'student@gmail.com', 89)
SET IDENTITY_INSERT [dbo].[CodeHistories] ON 

INSERT [dbo].[CodeHistories] ([Id], [CodeText], [Error], [IsFavouriteCode], [Result], [UserCodeId], [time]) VALUES (5, N'public class Program
{
    public static int Addition(int a, int b)
    {
        return a + 9+b;
    }
}', NULL, 1, N'Total:3; Passed:3; Failed:0; Duration:1.028194', 4, CAST(N'2018-05-21T11:51:26.3727236' AS DateTime2))
INSERT [dbo].[CodeHistories] ([Id], [CodeText], [Error], [IsFavouriteCode], [Result], [UserCodeId], [time]) VALUES (6, N'public class Elevator
    {
        public Status Direction { get; set; }
        public int CurrentFloor { get; set; }
        public int ResultFloor { get; set; }

        public Elevator(int currentFloor, int resultFloor)
        {
            this.CurrentFloor = currentFloor;
            this.ResultFloor = resultFloor;
            if (CurrentFloor - ResultFloor > 0)
            {
                Direction = Status.Down;
            }
            else if (CurrentFloor - ResultFloor < 0)
            {
                Direction = Status.Up;
            }
            else
            {
                Direction = Status.Stop;
            }
        }

        public override bool Equals(object obj)
        {
            return CurrentFloor == ((Elevator)obj).CurrentFloor && ResultFloor == ((Elevator)obj).ResultFloor;
        }

        public override int GetHashCode()
        {
            return CurrentFloor.GetHashCode() + ResultFloor.GetHashCode();
        }
    }

    public class Person
    {
        public Status Direction { get; set; }
        public int Floor { get; set; }

        public Person(Status state, int floor)
        {
            this.Direction = state;
            this.Floor = floor;
        }
    }

    public enum Status
    {
        Stop, Up, Down
    }

    public class ElevatorSelector
    {
        private List<Elevator> Elevators;

        public ElevatorSelector(params Elevator[] items)
        {
            Elevators = new List<Elevator>();
            foreach (var item in items)
            {
                Elevators.Add(item);
            }
        }

        public Elevator Find(Person person)
        {
            if (Elevators.Count != 0)
            {
                bool isAnyPast = false;
                int minOptimalTimeForPast = Int16.MaxValue;
                int minOptimalTime = Int16.MaxValue;
                Elevator optimal = null;
                foreach (var elevator in Elevators)
                {
                    if (person.Direction == elevator.Direction &&
                        (
                          (person.Floor >= elevator.CurrentFloor && person.Floor <= elevator.ResultFloor) ||
                          (person.Floor >= elevator.ResultFloor && person.Floor <= elevator.CurrentFloor)
                        )
                       )
                    {
                        if (Math.Abs(person.Floor - elevator.CurrentFloor) < minOptimalTimeForPast)
                        {
                            minOptimalTimeForPast = Math.Abs(person.Floor - elevator.CurrentFloor);
                            optimal = elevator;
                        }
                        isAnyPast = true;
                    }
                    else if (!isAnyPast)
                    {
                        int temp = Math.Abs(elevator.CurrentFloor - elevator.ResultFloor) + Math.Abs(person.Floor - elevator.ResultFloor);
                        if (temp < minOptimalTime)
                        {
                            minOptimalTime = temp;
                            optimal = elevator;
                        }
                    }
                }
                return optimal;
            }
            return null;
        }
    }', NULL, 0, N'Total:4; Passed:4; Failed:0; Duration:1.128995', 5, CAST(N'2018-05-21T12:16:38.6628240' AS DateTime2))
INSERT [dbo].[CodeHistories] ([Id], [CodeText], [Error], [IsFavouriteCode], [Result], [UserCodeId], [time]) VALUES (7, N'public class Elevator
    {
        public Status Direction { get; set; }
        public int CurrentFloor { get; set; }
        public int ResultFloor { get; set; }

        public Elevator(int currentFloor, int resultFloor)
        {
            this.CurrentFloor = currentFloor;
            this.ResultFloor = resultFloor;
            if (CurrentFloor - ResultFloor > 0)
            {
                Direction = Status.Down;
            }
            else if (CurrentFloor - ResultFloor < 0)
            {
                Direction = Status.Up;
            }
            else
            {
                Direction = Status.Stop;
            }
        }

        public override bool Equals(object obj)
        {
            return CurrentFloor == ((Elevator)obj).CurrentFloor && ResultFloor == ((Elevator)obj).ResultFloor;
        }

        public override int GetHashCode()
        {
            return CurrentFloor.GetHashCode() + ResultFloor.GetHashCode();
        }
    }

    public class Person
    {
        public Status Direction { get; set; }
        public int Floor { get; set; }

        public Person(Status state, int floor)
        {
            this.Direction = state;
            this.Floor = floor;
        }
    }

    public enum Status
    {
        Stop, Up, Down
    }

    public class ElevatorSelector
    {
        private List<Elevator> Elevators;

        public ElevatorSelector(params Elevator[] items)
        {
            Elevators = new List<Elevator>();
            foreach (var item in items)
            {
                Elevators.Add(item);
            }
        }

        public Elevator Find(Person person)
        {
            if (Elevators.Count != 0)
            {
                bool isAnyPast = false;
                int minOptimalTimeForPast = Int16.MaxValue;
                int minOptimalTime = Int16.MaxValue;
                Elevator optimal = null;
                foreach (var elevator in Elevators)
                {
                    if (person.Direction == elevator.Direction &&
                        (
                          (person.Floor >= elevator.CurrentFloor && person.Floor <= elevator.ResultFloor) ||
                          (person.Floor >= elevator.ResultFloor && person.Floor <= elevator.CurrentFloor)
                        )
                       )
                    {
                        if (Math.Abs(person.Floor - elevator.CurrentFloor) < minOptimalTimeForPast)
                        {
                            minOptimalTimeForPast = Math.Abs(person.Floor - elevator.CurrentFloor);
                            optimal = elevator;
                        }
                        isAnyPast = true;
                    }
                    else if (!isAnyPast)
                    {
                        int temp = Math.Abs(elevator.CurrentFloor - elevator.ResultFloor) + Math.Abs(person.Floor - elevator.ResultFloor);
                        if (temp < minOptimalTime)
                        {
                            minOptimalTime = temp;
                            optimal = elevator;
                        }
                    }
                }
                return optimal;
            }
            return null;
        }
    }', NULL, 0, N'Total:4; Passed:4; Failed:0; Duration:1.024362', 5, CAST(N'2018-05-21T12:21:49.1838080' AS DateTime2))
INSERT [dbo].[CodeHistories] ([Id], [CodeText], [Error], [IsFavouriteCode], [Result], [UserCodeId], [time]) VALUES (2011, N'public class Program
{
    public static int Addition(int a, int b)
    {
        return a + b;
    }
}', N'Compile errors', 0, NULL, 4, CAST(N'2018-06-13T19:02:01.0087823' AS DateTime2))
INSERT [dbo].[CodeHistories] ([Id], [CodeText], [Error], [IsFavouriteCode], [Result], [UserCodeId], [time]) VALUES (3010, N'public class Program
{
    public static int Addition(int a, int b)
    {
        return a + b;
    }
}', N'Compile errors', 0, NULL, 4, CAST(N'2018-06-13T19:11:35.8720127' AS DateTime2))
INSERT [dbo].[CodeHistories] ([Id], [CodeText], [Error], [IsFavouriteCode], [Result], [UserCodeId], [time]) VALUES (3011, N'public class Program
{
    public static int Addition(int a, int b)
    {
        return a + b;
    }
}', NULL, 0, N'Total:; Passed:; Failed:; Duration:', 4, CAST(N'2018-06-13T19:14:29.8592364' AS DateTime2))
INSERT [dbo].[CodeHistories] ([Id], [CodeText], [Error], [IsFavouriteCode], [Result], [UserCodeId], [time]) VALUES (3012, N'public class Program
{
    public static int Addition(int a, int b)
    {
        return a + b;
    }
}', NULL, 0, N'Total:3; Passed:3; Failed:0; Duration:1.143385', 4, CAST(N'2018-06-13T19:14:55.2285920' AS DateTime2))
INSERT [dbo].[CodeHistories] ([Id], [CodeText], [Error], [IsFavouriteCode], [Result], [UserCodeId], [time]) VALUES (3016, N'public class Indexer
{
        private int[] TargetArray { get; set; }

        public Indexer(int[] arr)
        {
            TargetArray = arr;
        }

        public int this[int index]
        {
            get
            {
                if (index >= 0 && index < TargetArray.Length)
                {
                    return TargetArray[index];
                }
                return -1;
            }
            set
            {
                if (index >= 0 && index < TargetArray.Length)
                {
                    TargetArray[index] = value;
                }
            }
        }

        public int TestMethod(int value)
        {
            return Array.IndexOf(TargetArray, value);
        }
}', NULL, 0, N'Total:2; Passed:2; Failed:0; Duration:0.945118', 3010, CAST(N'2018-06-13T20:38:15.9609252' AS DateTime2))
SET IDENTITY_INSERT [dbo].[CodeHistories] OFF
SET IDENTITY_INSERT [dbo].[Comments] ON 

INSERT [dbo].[Comments] ([Id], [CommentText], [CreationDateTime], [ExerciseId], [Rating], [UserId], [UserName]) VALUES (1, N'The best task what i ever seen', CAST(N'2018-05-21T11:46:57.3692249' AS DateTime2), 1, 5, N'cb1e2359-ba25-4c5c-9011-47fde8165d72', N'teacher@gmail.com')
INSERT [dbo].[Comments] ([Id], [CommentText], [CreationDateTime], [ExerciseId], [Rating], [UserId], [UserName]) VALUES (2, N'Not very good', CAST(N'2018-05-21T11:47:08.5900938' AS DateTime2), 1, 3, N'cb1e2359-ba25-4c5c-9011-47fde8165d72', N'teacher@gmail.com')
INSERT [dbo].[Comments] ([Id], [CommentText], [CreationDateTime], [ExerciseId], [Rating], [UserId], [UserName]) VALUES (3, N'Interesting task', CAST(N'2018-05-21T11:47:49.8259169' AS DateTime2), 2, 4, N'cb1e2359-ba25-4c5c-9011-47fde8165d72', N'teacher@gmail.com')
INSERT [dbo].[Comments] ([Id], [CommentText], [CreationDateTime], [ExerciseId], [Rating], [UserId], [UserName]) VALUES (4, N'Very good exercise', CAST(N'2018-05-21T11:48:07.1811880' AS DateTime2), 2, 0, N'cb1e2359-ba25-4c5c-9011-47fde8165d72', N'teacher@gmail.com')
INSERT [dbo].[Comments] ([Id], [CommentText], [CreationDateTime], [ExerciseId], [Rating], [UserId], [UserName]) VALUES (5, N'Like it', CAST(N'2018-05-21T11:48:23.5387024' AS DateTime2), 2, 5, N'cb1e2359-ba25-4c5c-9011-47fde8165d72', N'teacher@gmail.com')
INSERT [dbo].[Comments] ([Id], [CommentText], [CreationDateTime], [ExerciseId], [Rating], [UserId], [UserName]) VALUES (6, N'Wow!', CAST(N'2018-05-21T11:48:42.8149214' AS DateTime2), 3, 5, N'cb1e2359-ba25-4c5c-9011-47fde8165d72', N'teacher@gmail.com')
INSERT [dbo].[Comments] ([Id], [CommentText], [CreationDateTime], [ExerciseId], [Rating], [UserId], [UserName]) VALUES (7, N'Hard for me', CAST(N'2018-05-21T11:48:53.9067819' AS DateTime2), 3, 2, N'cb1e2359-ba25-4c5c-9011-47fde8165d72', N'teacher@gmail.com')
INSERT [dbo].[Comments] ([Id], [CommentText], [CreationDateTime], [ExerciseId], [Rating], [UserId], [UserName]) VALUES (8, N'Awesome!!', CAST(N'2018-05-21T11:49:27.8271747' AS DateTime2), 3, 5, N'cb1e2359-ba25-4c5c-9011-47fde8165d72', N'teacher@gmail.com')
INSERT [dbo].[Comments] ([Id], [CommentText], [CreationDateTime], [ExerciseId], [Rating], [UserId], [UserName]) VALUES (9, N'COment', CAST(N'2018-05-21T12:14:11.9001682' AS DateTime2), 1, 4, N'ee63e075-38b2-44a6-82cb-58a659b7d78c', N'student@gmail.com')
INSERT [dbo].[Comments] ([Id], [CommentText], [CreationDateTime], [ExerciseId], [Rating], [UserId], [UserName]) VALUES (10, N'Now It''s perfect', CAST(N'2018-06-06T14:27:25.7700218' AS DateTime2), 1, 5, N'546e23f2-4b6e-41eb-9640-896ec4a4b346', N'Darth_Vader@gmail.com')
INSERT [dbo].[Comments] ([Id], [CommentText], [CreationDateTime], [ExerciseId], [Rating], [UserId], [UserName]) VALUES (11, N'Now It''s perfect', CAST(N'2018-06-06T14:27:53.6445203' AS DateTime2), 1, 5, N'546e23f2-4b6e-41eb-9640-896ec4a4b346', N'Darth_Vader@gmail.com')
INSERT [dbo].[Comments] ([Id], [CommentText], [CreationDateTime], [ExerciseId], [Rating], [UserId], [UserName]) VALUES (1010, N'gut', CAST(N'2018-06-13T19:48:49.2146032' AS DateTime2), 1, 2, N'cb1e2359-ba25-4c5c-9011-47fde8165d72', N'teacher@gmail.com')
SET IDENTITY_INSERT [dbo].[Comments] OFF
SET IDENTITY_INSERT [dbo].[Courses] ON 

INSERT [dbo].[Courses] ([Id], [CreationDate], [Description], [IsActive], [Name], [UserId]) VALUES (1, CAST(N'2018-05-21T11:36:49.0000000' AS DateTime2), N'The "C# Starter" course is a unique course for beginners, which will allow you to begin learning the C# programming language without having any special preliminary training.', 1, N'C# Starter', N'cb1e2359-ba25-4c5c-9011-47fde8165d72')
INSERT [dbo].[Courses] ([Id], [CreationDate], [Description], [IsActive], [Name], [UserId]) VALUES (2, CAST(N'2018-05-21T11:36:49.7733350' AS DateTime2), N'The course "C# Essential" will allow you to fully understand the syntax of the C# language and its semantics. It will give you the necessary level of knowledge and skills, you will master the basic capabilities of the C# programming language and this will be a good foundation for learning more complex technologies that .NET Developer should possess.', 1, N'C# Essential', N'd034cd52-15e2-4d0f-943d-5fb42be68efc')
INSERT [dbo].[Courses] ([Id], [CreationDate], [Description], [IsActive], [Name], [UserId]) VALUES (3, CAST(N'2018-05-21T11:36:49.7889226' AS DateTime2), N'The "C# Advanced" course focuses on in-depth study of the Microsoft .NET Framework and C#. In this course you will learn what is reflection and attributes, serialization and garbage collection.', 1, N'C# Advanced', N'd034cd52-15e2-4d0f-943d-5fb42be68efc')
SET IDENTITY_INSERT [dbo].[Courses] OFF
SET IDENTITY_INSERT [dbo].[Exercises] ON 

INSERT [dbo].[Exercises] ([Id], [Course], [CourseId], [CreateDateTime], [IsDeleted], [Rating], [TaskBaseCodeField], [TaskName], [TaskTextField], [TeacherId], [TestCasesCode], [UpdateDateTime]) VALUES (1, N'C# Starter', 1, CAST(N'2018-05-21T11:36:49.8876307' AS DateTime2), 0, 4, N'public class Program
{
    public static int Addition(int a, int b)
    {
        return a + b;
    }
}', N'Simple addition', N'Implement a simple function which will add two integer numbers and return their sum.', N'cb1e2359-ba25-4c5c-9011-47fde8165d72', N'using NUnit.Framework;
[TestFixture]
public class UnitTest
{
    [Test, TestCaseSource("Cases")]
    public void TestMethod(int expected, int a, int b)
    {
        Assert.AreEqual(expected, Program.Addition(a, b));
    }
    static object[] Cases =
    {
        new object[] { 12, 8, 4 },
        new object[] { 12, 6, 6 },
        new object[] { 12, 2, 10 }
    };
}', CAST(N'2018-05-21T11:36:49.8877314' AS DateTime2))
INSERT [dbo].[Exercises] ([Id], [Course], [CourseId], [CreateDateTime], [IsDeleted], [Rating], [TaskBaseCodeField], [TaskName], [TaskTextField], [TeacherId], [TestCasesCode], [UpdateDateTime]) VALUES (2, N'C# Essential', 2, CAST(N'2018-05-21T11:36:49.9106939' AS DateTime2), 0, 4.5, N'public class Indexer
{
        private int[] TargetArray { get; set; }

        public Indexer(int[] arr)
        {
            TargetArray = arr;
        }

        public int this[int index]
        {
            get
            {
                if (index >= 0 && index < TargetArray.Length)
                {
                    return TargetArray[index];
                }
                return -1;
            }
            set
            {
                if (index >= 0 && index < TargetArray.Length)
                {
                    TargetArray[index] = value;
                }
            }
        }

        public int TestMethod(int value)
        {
            return Array.IndexOf(TargetArray, value);
        }
}', N'Indexers', N'Create a class which must contain an array of integer numbers. Add constructor with one parameter(type of in-class array) and initialize the array. Create an indexer which will allow to access members of array. Finally, create a method: int parameter - integer value; int output - index of value in array. If value does not exist in array return -1.', N'cb1e2359-ba25-4c5c-9011-47fde8165d72', N'using NUnit.Framework;
using System;
[TestFixture]
public class UnitTest
{
        [Test, TestCaseSource("Cases")]
        public void TestMethod(int expected, int[] array, int value)
                {
                    Assert.AreEqual(expected, new Indexer(array).TestMethod(value));
                }
                static object[] Cases =
                {
            new object[] { 3, new int[] {1, 2, 3, 4 ,5}, 4 },
            new object[] { -1, new int[] {1, 2, 3, 4 ,5}, 10 }
        };
            }
            ', CAST(N'2018-05-21T11:36:49.9106982' AS DateTime2))
INSERT [dbo].[Exercises] ([Id], [Course], [CourseId], [CreateDateTime], [IsDeleted], [Rating], [TaskBaseCodeField], [TaskName], [TaskTextField], [TeacherId], [TestCasesCode], [UpdateDateTime]) VALUES (3, N'C# Advanced', 3, CAST(N'2018-05-21T11:36:49.9230047' AS DateTime2), 0, 4, N'public class Elevator
    {
        public Status Direction { get; set; }
        public int CurrentFloor { get; set; }
        public int ResultFloor { get; set; }

        public Elevator(int currentFloor, int resultFloor)
        {
            this.CurrentFloor = currentFloor;
            this.ResultFloor = resultFloor;
            if (CurrentFloor - ResultFloor > 0)
            {
                Direction = Status.Down;
            }
            else if (CurrentFloor - ResultFloor < 0)
            {
                Direction = Status.Up;
            }
            else
            {
                Direction = Status.Stop;
            }
        }

        public override bool Equals(object obj)
        {
            return CurrentFloor == ((Elevator)obj).CurrentFloor && ResultFloor == ((Elevator)obj).ResultFloor;
        }

        public override int GetHashCode()
        {
            return CurrentFloor.GetHashCode() + ResultFloor.GetHashCode();
        }
    }

    public class Person
    {
        public Status Direction { get; set; }
        public int Floor { get; set; }

        public Person(Status state, int floor)
        {
            this.Direction = state;
            this.Floor = floor;
        }
    }

    public enum Status
    {
        Stop, Up, Down
    }

    public class ElevatorSelector
    {
        private List<Elevator> Elevators;

        public ElevatorSelector(params Elevator[] items)
        {
            Elevators = new List<Elevator>();
            foreach (var item in items)
            {
                Elevators.Add(item);
            }
        }

        public Elevator Find(Person person)
        {
            if (Elevators.Count != 0)
            {
                bool isAnyPast = false;
                int minOptimalTimeForPast = Int16.MaxValue;
                int minOptimalTime = Int16.MaxValue;
                Elevator optimal = null;
                foreach (var elevator in Elevators)
                {
                    if (person.Direction == elevator.Direction &&
                        (
                          (person.Floor >= elevator.CurrentFloor && person.Floor <= elevator.ResultFloor) ||
                          (person.Floor >= elevator.ResultFloor && person.Floor <= elevator.CurrentFloor)
                        )
                       )
                    {
                        if (Math.Abs(person.Floor - elevator.CurrentFloor) < minOptimalTimeForPast)
                        {
                            minOptimalTimeForPast = Math.Abs(person.Floor - elevator.CurrentFloor);
                            optimal = elevator;
                        }
                        isAnyPast = true;
                    }
                    else if (!isAnyPast)
                    {
                        int temp = Math.Abs(elevator.CurrentFloor - elevator.ResultFloor) + Math.Abs(person.Floor - elevator.ResultFloor);
                        if (temp < minOptimalTime)
                        {
                            minOptimalTime = temp;
                            optimal = elevator;
                        }
                    }
                }
                return optimal;
            }
            return null;
        }
    }', N'Elevator modeling', N'Write a simple program that will accept a set of elevators with parameters and information about pressing a button by the user. Output the best lift for the current user.', N'cb1e2359-ba25-4c5c-9011-47fde8165d72', N'using NUnit.Framework;
using System;
using System.Collections.Generic;
[TestFixture]
public class ElevatorModelUnitTest
    {
        [Test, TestCaseSource("TestCases")]
        public void ElevatorTest(Person person, ElevatorSelector elevatorSelector, Elevator expected)
                {
                    Assert.AreEqual(expected, elevatorSelector.Find(person));
                }

                static object[] TestCases =
                {
        new object[] {new Person(Status.Up, 7), new ElevatorSelector(new Elevator(1, 6), new Elevator(8, 8), new Elevator(9, 6), new Elevator(9, 10)), new Elevator(8, 8)},
        new object[] {new Person(Status.Up, 7), new ElevatorSelector(new Elevator(10, 20), new Elevator(1, 8), new Elevator(6, 6)), new Elevator(1, 8) },
        new object[] {new Person(Status.Up, 7), new ElevatorSelector(new Elevator(1, 10), new Elevator(6, 8)), new Elevator(6, 8) },
        new object[] {new Person(Status.Down, 8), new ElevatorSelector(new Elevator(7, 8), new Elevator(10, 9), new Elevator(8, 8), new Elevator(10, 8)), new Elevator(10, 8)}
        };
            }
            ', CAST(N'2018-05-21T11:36:49.9230084' AS DateTime2))
INSERT [dbo].[Exercises] ([Id], [Course], [CourseId], [CreateDateTime], [IsDeleted], [Rating], [TaskBaseCodeField], [TaskName], [TaskTextField], [TeacherId], [TestCasesCode], [UpdateDateTime]) VALUES (4, N'C# Essential', 2, CAST(N'2018-05-21T12:12:41.8022959' AS DateTime2), 0, 0, N'namespace ///', N'TaskForTest', N'<p>Please do something</p>', N'cb1e2359-ba25-4c5c-9011-47fde8165d72', N'using NUnit.Framework;

', CAST(N'2018-05-21T12:12:41.8023011' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Exercises] OFF
SET IDENTITY_INSERT [dbo].[Messages] ON 

INSERT [dbo].[Messages] ([Id], [Date], [FromEmail], [InboxText], [IsDeleted], [IsInBox], [IsNew], [OutboxText], [Subject], [ToEmail]) VALUES (1, CAST(N'2018-05-21T11:38:34.0534504' AS DateTime2), NULL, NULL, 0, 0, 0, N'Существует классическая форма построения таких текстов, которая наиболее часто применяется рекламодателями:

    Заголовок. Важнейший элемент, от которого во многом зависит успех или, наоборот, неудача всей рекламы. Именно на заголовок обращено основное внимание возможных покупателей продукции.
    Слоган. Чаще всего это небольшая фраза, в которой говорится о производителе продукта и его положительных качествах.
    Текст. Основная часть рекламы, в которой потребителю рассказывают о конкретном товаре и его свойствах.
    Эхо фраза. Данный элемент рекламного текста находиться в самом конце и повторяет основные мысли рекламы. Эхо фраза нужна для того чтобы еще раз напомнить покупателю о достоинствах товара. Ведь как выяснили психологи, именно последняя часть текста запоминается лучше всего.
', NULL, N'admin@gmail.com')
INSERT [dbo].[Messages] ([Id], [Date], [FromEmail], [InboxText], [IsDeleted], [IsInBox], [IsNew], [OutboxText], [Subject], [ToEmail]) VALUES (2, CAST(N'2018-05-21T11:39:40.4890007' AS DateTime2), N'qwerty@mail.ru', N'Существует классическая форма построения таких текстов, которая наиболее часто применяется рекламодателями:

    Заголовок. Важнейший элемент, от которого во многом зависит успех или, наоборот, неудача всей рекламы. Именно на заголовок обращено основное внимание возможных покупателей продукции.
    Слоган. Чаще всего это небольшая фраза, в которой говорится о производителе продукта и его положительных качествах.
    Текст. Основная часть рекламы, в которой потребителю рассказывают о конкретном товаре и его свойствах.
    Эхо фраза. Данный элемент рекламного текста находиться в самом конце и повторяет основные мысли рекламы. Эхо фраза нужна для того чтобы еще раз напомнить покупателю о достоинствах товара. Ведь как выяснили психологи, именно последняя часть текста запоминается лучше всего.
', 0, 0, 0, NULL, NULL, NULL)
INSERT [dbo].[Messages] ([Id], [Date], [FromEmail], [InboxText], [IsDeleted], [IsInBox], [IsNew], [OutboxText], [Subject], [ToEmail]) VALUES (3, CAST(N'2018-05-21T11:40:32.8566589' AS DateTime2), NULL, NULL, 0, 1, 0, N'https://www.michaelgmccarthy.com/2016/08/24/entity-framework-addorupdate-is-a-destructive-operation/

Michael McCarthyMichael McCarthy

Entity Framework: AddOrUpdate is a Destructive Operation

Although we’ve been using it for over three years at my job developers are still incorrectly using Entity Framework’s .AddOrUpdate(). I’ve also seen incorrect usages of in open source projects as well. Maybe it’s the way Microsoft named it, but a developer with little background in

Written by

Michael McCarthy', NULL, N'teacher@gmail.com')
INSERT [dbo].[Messages] ([Id], [Date], [FromEmail], [InboxText], [IsDeleted], [IsInBox], [IsNew], [OutboxText], [Subject], [ToEmail]) VALUES (4, CAST(N'2018-05-21T12:08:43.6733621' AS DateTime2), N'test@gmail.com', N'test', 0, 1, 0, NULL, NULL, NULL)
INSERT [dbo].[Messages] ([Id], [Date], [FromEmail], [InboxText], [IsDeleted], [IsInBox], [IsNew], [OutboxText], [Subject], [ToEmail]) VALUES (5, CAST(N'2018-05-21T12:25:47.9470345' AS DateTime2), NULL, NULL, 0, 0, 0, N'test mail', NULL, N'admin@gmail.com')
INSERT [dbo].[Messages] ([Id], [Date], [FromEmail], [InboxText], [IsDeleted], [IsInBox], [IsNew], [OutboxText], [Subject], [ToEmail]) VALUES (6, CAST(N'2018-06-06T14:22:17.5044405' AS DateTime2), N'Vader@gmail.com', N'I want to be a member of the Dark Side )))', 0, 0, 0, NULL, NULL, NULL)
INSERT [dbo].[Messages] ([Id], [Date], [FromEmail], [InboxText], [IsDeleted], [IsInBox], [IsNew], [OutboxText], [Subject], [ToEmail]) VALUES (7, CAST(N'2018-06-06T14:24:36.4523657' AS DateTime2), NULL, NULL, 0, 1, 0, N'No problem Brudda', NULL, N'Vader@gmail.com')
INSERT [dbo].[Messages] ([Id], [Date], [FromEmail], [InboxText], [IsDeleted], [IsInBox], [IsNew], [OutboxText], [Subject], [ToEmail]) VALUES (1006, CAST(N'2018-06-06T15:08:55.9657194' AS DateTime2), NULL, NULL, 0, 1, 0, N'aaaa', NULL, N'admin@gmail.com')
INSERT [dbo].[Messages] ([Id], [Date], [FromEmail], [InboxText], [IsDeleted], [IsInBox], [IsNew], [OutboxText], [Subject], [ToEmail]) VALUES (1007, CAST(N'2018-06-06T15:16:48.0937581' AS DateTime2), N'test@gmail.com', N'test', 0, 1, 0, NULL, NULL, NULL)
INSERT [dbo].[Messages] ([Id], [Date], [FromEmail], [InboxText], [IsDeleted], [IsInBox], [IsNew], [OutboxText], [Subject], [ToEmail]) VALUES (1008, CAST(N'2018-06-13T20:12:37.5709545' AS DateTime2), N'a@a.a', N'aaa', 0, 1, 0, NULL, NULL, NULL)
INSERT [dbo].[Messages] ([Id], [Date], [FromEmail], [InboxText], [IsDeleted], [IsInBox], [IsNew], [OutboxText], [Subject], [ToEmail]) VALUES (1009, CAST(N'2018-06-13T20:41:43.8413165' AS DateTime2), N'test@gmai.com', N'test', 0, 1, 1, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Messages] OFF
SET IDENTITY_INSERT [dbo].[News] ON 

INSERT [dbo].[News] ([Id], [CourseId], [Day], [ImagePath], [IsDeleted], [Month], [Text], [Title]) VALUES (1, 1, 21, N'/images/8wrq7vfhyqv2saamr2d5z2jha5o.png', 0, N'May', N'In June a course "C# Starter" starts. We are looking for beginner in .Net, who are ready to learn basics of C# language and .Net technologies.', N'New course starts!')
INSERT [dbo].[News] ([Id], [CourseId], [Day], [ImagePath], [IsDeleted], [Month], [Text], [Title]) VALUES (2, 2, 21, N'/images/8wrq7vfhyqv2saamr2d5z2jha5o.png', 0, N'May', N'A course "C# Essential" starts in September on 12. We are looking for students who have a good knowledge of basics of .Net technologies.', N'Course "C# Essential" starts soon.')
INSERT [dbo].[News] ([Id], [CourseId], [Day], [ImagePath], [IsDeleted], [Month], [Text], [Title]) VALUES (3, 3, 21, N'/images/8wrq7vfhyqv2saamr2d5z2jha5o.png', 0, N'May', N'The course "C# Advanced" is going to start in the beginning of next year. Our company is looking for students with strong knowledge of .Net technologies.', N'The course "C# Advanced" is going to start in the beginning of next year.')
INSERT [dbo].[News] ([Id], [CourseId], [Day], [ImagePath], [IsDeleted], [Month], [Text], [Title]) VALUES (4, 1, 13, N'/images/!!!o.jpg', 0, N'June', N'Hello', N'C# Starter')
SET IDENTITY_INSERT [dbo].[News] OFF
SET IDENTITY_INSERT [dbo].[UsersCode] ON 

INSERT [dbo].[UsersCode] ([Id], [CodeStatus], [CodeText], [EndTime], [ExerciseId], [Mark], [TeachersComment], [UserId]) VALUES (4, 3, N'public class Program
{
    public static int Addition(int a, int b)
    {
        return a + b;
    }
}', CAST(N'2018-05-21T12:16:03.2881919' AS DateTime2), 1, 82, N'<p>Good. Let it be.</p>', N'ee63e075-38b2-44a6-82cb-58a659b7d78c')
INSERT [dbo].[UsersCode] ([Id], [CodeStatus], [CodeText], [EndTime], [ExerciseId], [Mark], [TeachersComment], [UserId]) VALUES (5, 3, N'public class Elevator
    {
        public Status Direction { get; set; }
        public int CurrentFloor { get; set; }
        public int ResultFloor { get; set; }

        public Elevator(int currentFloor, int resultFloor)
        {
            this.CurrentFloor = currentFloor;
            this.ResultFloor = resultFloor;
            if (CurrentFloor - ResultFloor > 0)
            {
                Direction = Status.Down;
            }
            else if (CurrentFloor - ResultFloor < 0)
            {
                Direction = Status.Up;
            }
            else
            {
                Direction = Status.Stop;
            }
        }

        public override bool Equals(object obj)
        {
            return CurrentFloor == ((Elevator)obj).CurrentFloor && ResultFloor == ((Elevator)obj).ResultFloor;
        }

        public override int GetHashCode()
        {
            return CurrentFloor.GetHashCode() + ResultFloor.GetHashCode();
        }
    }

    public class Person
    {
        public Status Direction { get; set; }
        public int Floor { get; set; }

        public Person(Status state, int floor)
        {
            this.Direction = state;
            this.Floor = floor;
        }
    }

    public enum Status
    {
        Stop, Up, Down
    }

    public class ElevatorSelector
    {
        private List<Elevator> Elevators;

        public ElevatorSelector(params Elevator[] items)
        {
            Elevators = new List<Elevator>();
            foreach (var item in items)
            {
                Elevators.Add(item);
            }
        }

        public Elevator Find(Person person)
        {
            if (Elevators.Count != 0)
            {
                bool isAnyPast = false;
                int minOptimalTimeForPast = Int16.MaxValue;
                int minOptimalTime = Int16.MaxValue;
                Elevator optimal = null;
                foreach (var elevator in Elevators)
                {
                    if (person.Direction == elevator.Direction &&
                        (
                          (person.Floor >= elevator.CurrentFloor && person.Floor <= elevator.ResultFloor) ||
                          (person.Floor >= elevator.ResultFloor && person.Floor <= elevator.CurrentFloor)
                        )
                       )
                    {
                        if (Math.Abs(person.Floor - elevator.CurrentFloor) < minOptimalTimeForPast)
                        {
                            minOptimalTimeForPast = Math.Abs(person.Floor - elevator.CurrentFloor);
                            optimal = elevator;
                        }
                        isAnyPast = true;
                    }
                    else if (!isAnyPast)
                    {
                        int temp = Math.Abs(elevator.CurrentFloor - elevator.ResultFloor) + Math.Abs(person.Floor - elevator.ResultFloor);
                        if (temp < minOptimalTime)
                        {
                            minOptimalTime = temp;
                            optimal = elevator;
                        }
                    }
                }
                return optimal;
            }
            return null;
        }
    }', CAST(N'2018-05-21T12:21:26.4990597' AS DateTime2), 3, 90, N'<p>Test</p>', N'ee63e075-38b2-44a6-82cb-58a659b7d78c')
INSERT [dbo].[UsersCode] ([Id], [CodeStatus], [CodeText], [EndTime], [ExerciseId], [Mark], [TeachersComment], [UserId]) VALUES (3010, 3, N'public class Indexer
{
        private int[] TargetArray { get; set; }

        public Indexer(int[] arr)
        {
            TargetArray = arr;
        }

        public int this[int index]
        {
            get
            {
                if (index >= 0 && index < TargetArray.Length)
                {
                    return TargetArray[index];
                }
                return -1;
            }
            set
            {
                if (index >= 0 && index < TargetArray.Length)
                {
                    TargetArray[index] = value;
                }
            }
        }

        public int TestMethod(int value)
        {
            return Array.IndexOf(TargetArray, value);
        }
}', CAST(N'2018-06-13T20:38:37.7431489' AS DateTime2), 2, 95, N'<p>good</p>', N'ee63e075-38b2-44a6-82cb-58a659b7d78c')
SET IDENTITY_INSERT [dbo].[UsersCode] OFF
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 6/15/2018 5:26:06 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 6/15/2018 5:26:06 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 6/15/2018 5:26:06 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 6/15/2018 5:26:06 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 6/15/2018 5:26:06 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 6/15/2018 5:26:06 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 6/15/2018 5:26:06 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CodeHistories_UserCodeId]    Script Date: 6/15/2018 5:26:06 PM ******/
CREATE NONCLUSTERED INDEX [IX_CodeHistories_UserCodeId] ON [dbo].[CodeHistories]
(
	[UserCodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Courses_UserId]    Script Date: 6/15/2018 5:26:06 PM ******/
CREATE NONCLUSTERED INDEX [IX_Courses_UserId] ON [dbo].[Courses]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_News_CourseId]    Script Date: 6/15/2018 5:26:06 PM ******/
CREATE NONCLUSTERED INDEX [IX_News_CourseId] ON [dbo].[News]
(
	[CourseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_UsersCode_ExerciseId]    Script Date: 6/15/2018 5:26:06 PM ******/
CREATE NONCLUSTERED INDEX [IX_UsersCode_ExerciseId] ON [dbo].[UsersCode]
(
	[ExerciseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UsersCode_UserId]    Script Date: 6/15/2018 5:26:06 PM ******/
CREATE NONCLUSTERED INDEX [IX_UsersCode_UserId] ON [dbo].[UsersCode]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[CodeHistories]  WITH CHECK ADD  CONSTRAINT [FK_CodeHistories_UsersCode_UserCodeId] FOREIGN KEY([UserCodeId])
REFERENCES [dbo].[UsersCode] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CodeHistories] CHECK CONSTRAINT [FK_CodeHistories_UsersCode_UserCodeId]
GO
ALTER TABLE [dbo].[Courses]  WITH CHECK ADD  CONSTRAINT [FK_Courses_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Courses] CHECK CONSTRAINT [FK_Courses_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[News]  WITH CHECK ADD  CONSTRAINT [FK_News_Courses_CourseId] FOREIGN KEY([CourseId])
REFERENCES [dbo].[Courses] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[News] CHECK CONSTRAINT [FK_News_Courses_CourseId]
GO
ALTER TABLE [dbo].[UsersCode]  WITH CHECK ADD  CONSTRAINT [FK_UsersCode_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[UsersCode] CHECK CONSTRAINT [FK_UsersCode_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[UsersCode]  WITH CHECK ADD  CONSTRAINT [FK_UsersCode_Exercises_ExerciseId] FOREIGN KEY([ExerciseId])
REFERENCES [dbo].[Exercises] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UsersCode] CHECK CONSTRAINT [FK_UsersCode_Exercises_ExerciseId]
GO

