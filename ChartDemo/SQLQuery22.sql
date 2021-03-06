USE [MBDemo]
GO
/****** Object:  User [utp]    Script Date: 11/04/2011 11:53:50 ******/
CREATE USER [utp] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[db_owner]
GO
/****** Object:  Table [dbo].[tblUtilType]    Script Date: 11/04/2011 11:53:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblUtilType](
	[UtilType] [varchar](4) NOT NULL,
	[UtilityTypeID] [varchar](20) NOT NULL,
	[Descr] [varchar](20) NULL,
	[LastUpdated] [datetime] NULL,
	[UserID] [varchar](20) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblStreetName]    Script Date: 11/04/2011 11:53:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblStreetName](
	[StreetCode] [varchar](4) NULL,
	[StreetCodeID] [varchar](50) NOT NULL,
	[StreetName] [varchar](128) NOT NULL,
	[LastUpdated] [datetime] NULL,
	[UserID] [varchar](20) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblRevenue]    Script Date: 11/04/2011 11:53:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblRevenue](
	[RevC] [varchar](10) NOT NULL,
	[Descr] [varchar](50) NULL,
	[PaySeq] [smallint] NULL,
	[RevenueCodeID] [varchar](20) NOT NULL,
	[Prorate] [bit] NULL,
	[Disc] [bit] NULL,
	[Tax1] [varchar](20) NULL,
	[Tax2] [varchar](20) NULL,
	[Tax3] [varchar](20) NULL,
	[Tax4] [varchar](20) NULL,
	[Tax5] [varchar](20) NULL,
	[GLOffset] [varchar](15) NULL,
	[GLCash] [varchar](15) NULL,
	[DefaultAmt] [float] NULL,
	[AutoXfr] [bit] NULL,
	[AutoNew] [bit] NULL,
	[MemoBill] [bit] NULL,
	[LastUpdated] [datetime] NULL,
	[UserID] [varchar](20) NULL,
	[UtilityTypeID] [varchar](20) NOT NULL,
	[GLAcct] [varchar](15) NULL,
	[RevenueType] [varchar](50) NULL,
	[UtilityType] [varchar](50) NULL,
	[CustomerTypeID] [varchar](20) NULL,
	[ApplyToCurr] [bit] NULL,
	[UseGLClass] [bit] NULL,
	[IsDeleted] [bit] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblRateUsage]    Script Date: 11/04/2011 11:53:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblRateUsage](
	[EffectiveDate] [datetime] NOT NULL,
	[RateUsageID] [varchar](20) NOT NULL,
	[DemandEnabled] [bit] NULL,
	[Invalidate] [datetime] NULL,
	[RationSchgRevC] [varchar](50) NULL,
	[DemandMonths] [smallint] NULL,
	[DemandPercent] [smallint] NULL,
	[DemandRevCID] [varchar](20) NULL,
	[RationSchgAmt] [money] NULL,
	[RationSchgRevCID] [varchar](20) NULL,
	[DemandRevC] [varchar](50) NULL,
	[StartSeason] [int] NOT NULL,
	[EndSeason] [int] NOT NULL,
	[IsActive] [int] NOT NULL,
	[UsageRate] [varchar](10) NOT NULL,
	[Description] [varchar](250) NULL,
	[CustomerTypeID] [varchar](20) NULL,
	[IsTest] [bit] NULL,
	[OrigRateID] [varchar](20) NULL,
	[IsTestActive] [bit] NULL,
	[IsDeleted] [bit] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblPremise]    Script Date: 11/04/2011 11:53:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblPremise](
	[OwnPrefName] [varchar](4) NULL,
	[OwnLastName] [varchar](25) NULL,
	[PremiseID] [varchar](50) NOT NULL,
	[OwnFirstName] [varchar](20) NULL,
	[OwnMI] [varchar](3) NULL,
	[OwnAttention] [varchar](50) NULL,
	[OwnPhone] [varchar](15) NULL,
	[Attn] [varchar](50) NULL,
	[OwnStrNum] [varchar](8) NULL,
	[OwnStrName] [varchar](25) NULL,
	[OwnApt] [varchar](20) NULL,
	[OwnAddrLine2] [varchar](25) NULL,
	[OwnCity] [varchar](25) NULL,
	[OwnCityCode] [varchar](20) NULL,
	[OwnState] [varchar](2) NULL,
	[OwnZIP5] [varchar](10) NULL,
	[OwnZIP4] [varchar](4) NULL,
	[OwnCarrRoute] [varchar](4) NULL,
	[StrNum] [varchar](15) NULL,
	[Apt] [varchar](20) NULL,
	[AddrLine2] [varchar](255) NULL,
	[City] [varchar](25) NOT NULL,
	[Inside] [bit] NULL,
	[State] [varchar](2) NULL,
	[ZIP5] [varchar](10) NULL,
	[ZIP4] [varchar](4) NULL,
	[CarrRoute] [varchar](8) NULL,
	[DepoOwner] [int] NULL,
	[SubDivision] [varchar](20) NULL,
	[CountyCode] [varchar](250) NULL,
	[Lot] [varchar](12) NULL,
	[LotSize] [smallint] NULL,
	[HouseSize] [bigint] NOT NULL,
	[Parcel] [varchar](20) NULL,
	[Tract] [varchar](20) NULL,
	[SrvArea] [varchar](4) NULL,
	[Zone] [varchar](4) NULL,
	[SubStation] [varchar](4) NULL,
	[Grid] [varchar](4) NULL,
	[System] [varchar](4) NULL,
	[TapNo] [varchar](4) NULL,
	[MapCoord] [varchar](10) NULL,
	[XStreet] [varchar](255) NULL,
	[StructType] [varchar](4) NULL,
	[Units] [float] NOT NULL,
	[Occupants] [float] NOT NULL,
	[SrvStartDt] [datetime] NULL,
	[SrvType] [varchar](4) NULL,
	[Pool] [bit] NULL,
	[Heater] [bit] NULL,
	[Range] [bit] NULL,
	[Air] [bit] NULL,
	[Irrigation] [bit] NULL,
	[AvgWaterYear] [float] NULL,
	[AvgWaterWinter] [float] NULL,
	[TrashPickupType] [varchar](2) NULL,
	[TrashBinTypeSize] [varchar](2) NULL,
	[TrashPickupLocation] [varchar](2) NULL,
	[TrashRecycle] [bit] NULL,
	[TrashMultiFamily] [bit] NULL,
	[Open1] [varchar](4) NULL,
	[Open2] [varchar](4) NULL,
	[Open3] [varchar](6) NULL,
	[Open4] [varchar](6) NULL,
	[Open5] [varchar](10) NULL,
	[Comments] [text] NULL,
	[OwnDeliveryPointBarCode] [varchar](4) NULL,
	[DeliveryPointBarCode] [varchar](3) NULL,
	[LastUpdated] [datetime] NULL,
	[EndorsementLine] [varchar](40) NULL,
	[OwnEndorsementLine] [varchar](40) NULL,
	[PostalLock] [varchar](1) NULL,
	[PostalBrk] [varchar](1) NULL,
	[PostalPkgNum] [varchar](6) NULL,
	[PostalTryNum] [int] NULL,
	[OwnPostalLock] [varchar](1) NULL,
	[OwnPostalBrk] [varchar](1) NULL,
	[OwnPostalPkgNum] [varchar](6) NULL,
	[CityCodeID] [varchar](20) NULL,
	[OwnPostalTryNum] [int] NULL,
	[StreetCodeID] [varchar](50) NULL,
	[Status] [varchar](10) NULL,
	[UserID] [varchar](20) NULL,
	[CustomerID] [varchar](20) NULL,
	[OwnerAccount] [varchar](20) NULL,
	[PresortID] [int] NULL,
	[TrayID] [int] NULL,
	[PackageID] [int] NULL,
	[DPBarcode] [varchar](50) NULL,
	[LOTNum] [varchar](20) NULL,
	[ErrorCodes] [varchar](64) NULL,
	[DPC] [varchar](50) NULL,
	[CASSDate] [int] NULL,
	[LocationID] [varchar](20) NULL,
	[GISLongitude] [float] NULL,
	[GISLatitude] [float] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblMetrHist]    Script Date: 11/04/2011 11:53:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblMetrHist](
	[PremiseID] [varchar](50) NULL,
	[ReadDt] [datetime] NULL,
	[OnPeakUsage] [float] NULL,
	[ID] [varchar](30) NOT NULL,
	[IsEst] [bit] NULL,
	[IsAdjust] [bit] NULL,
	[Swapped] [bit] NULL,
	[UsageChrg] [float] NULL,
	[BillDt] [datetime] NULL,
	[Dials] [smallint] NULL,
	[Decimals] [varchar](2) NULL,
	[Pressure] [float] NULL,
	[Multiplier] [float] NULL,
	[LastUpdated] [datetime] NULL,
	[CustomerID] [varchar](20) NOT NULL,
	[UtilityTypeID] [varchar](20) NOT NULL,
	[ReadTypeID] [varchar](20) NULL,
	[MeterID] [varchar](15) NULL,
	[RateUsageID] [varchar](20) NULL,
	[OnPeakRead] [float] NULL,
	[PartPeakRead] [float] NULL,
	[OffPeakRead] [float] NULL,
	[SuperPeakRead] [float] NULL,
	[PartPeakUsage] [float] NULL,
	[OffPeakUsage] [float] NULL,
	[SuperPeakUsage] [float] NULL,
	[PressureZoneCodeID] [varchar](20) NULL,
	[ElevationID] [varchar](20) NULL,
	[BTUCodeID] [varchar](20) NULL,
	[UserID] [varchar](20) NULL,
	[MeterTypeID] [varchar](20) NULL,
	[acctnum] [varchar](25) NULL,
	[MeterAccount] [varchar](50) NULL,
	[ParcelID] [varchar](12) NULL,
 CONSTRAINT [PK_tblMetrHist] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblCycle]    Script Date: 11/04/2011 11:53:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblCycle](
	[CompanyID] [varchar](20) NULL,
	[CycleID] [varchar](20) NOT NULL,
	[Cycle] [smallint] NOT NULL,
	[BillPeriodDays] [real] NULL,
	[Description] [varchar](255) NULL,
	[BillFrequency] [varchar](1) NULL,
	[LastUpdated] [datetime] NULL,
	[AuditCaptureDate] [datetime] NULL,
	[UserID] [varchar](20) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblCustomerHistory]    Script Date: 11/04/2011 11:53:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblCustomerHistory](
	[CustomerAccount] [varchar](25) NOT NULL,
	[CustomerHisotryID] [varchar](20) NOT NULL,
	[CustomerID] [varchar](20) NOT NULL,
	[PremiseID] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblCustomer]    Script Date: 11/04/2011 11:53:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblCustomer](
	[AcctNum] [varchar](25) NOT NULL,
	[CustomerID] [varchar](20) NOT NULL,
	[PremiseID] [varchar](50) NULL,
	[StatDt] [datetime] NOT NULL,
	[Owner] [varchar](1) NULL,
	[InDate] [datetime] NULL,
	[OutDate] [datetime] NULL,
	[PrefName] [varchar](4) NULL,
	[LastName] [varchar](255) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[Attention] [varchar](50) NULL,
	[MI] [varchar](5) NULL,
	[BirthDate] [datetime] NULL,
	[SSN] [varchar](120) NULL,
	[DrvLicNum] [varchar](120) NULL,
	[DrvLicSt] [varchar](2) NULL,
	[WrkPhone] [varchar](15) NULL,
	[HomePhone] [varchar](15) NULL,
	[WorkLoc] [varchar](25) NULL,
	[SpouseFirstName] [varchar](25) NULL,
	[SpouseLastName] [varchar](25) NULL,
	[SpouseWorkLoc] [varchar](25) NULL,
	[SpouseSSN] [varchar](120) NULL,
	[SpouseWrkPh] [varchar](15) NULL,
	[SpouseDrvLic] [varchar](120) NULL,
	[SpouseDrvLicSt] [varchar](2) NULL,
	[HdpCode] [bit] NULL,
	[SpcHandle] [bit] NULL,
	[BillDate] [datetime] NULL,
	[BillAmt] [money] NULL,
	[PayDate] [datetime] NULL,
	[PayAmt] [money] NULL,
	[AdjDate] [datetime] NULL,
	[AdjAmt] [money] NULL,
	[NSFDate] [datetime] NULL,
	[RemDate] [datetime] NULL,
	[RemAmt] [money] NULL,
	[PastDate] [datetime] NULL,
	[PastAmt] [money] NULL,
	[ShutDate] [datetime] NULL,
	[ShutAmt] [money] NULL,
	[CurrDue] [money] NULL,
	[TotalDue] [money] NULL,
	[Est] [bit] NULL,
	[Verify] [bit] NULL,
	[Prorate] [bit] NULL,
	[TaxF] [bit] NULL,
	[Tax1] [varchar](20) NULL,
	[Tax2] [varchar](20) NULL,
	[Tax3] [varchar](20) NULL,
	[Tax4] [varchar](20) NULL,
	[Tax5] [varchar](20) NULL,
	[Remind] [bit] NULL,
	[PastDue] [bit] NULL,
	[ShutOff] [bit] NULL,
	[PayHist] [varchar](12) NULL,
	[PastHist] [varchar](12) NULL,
	[CycleID] [varchar](20) NULL,
	[Credit] [varchar](4) NULL,
	[NSF_Count] [int] NULL,
	[PastCount] [int] NULL,
	[RemindCount] [int] NULL,
	[ShutCount] [int] NULL,
	[Units] [float] NULL,
	[IsAdjust] [bit] NULL,
	[IsWorkOrder] [bit] NULL,
	[IsCollect] [bit] NULL,
	[IsMemo] [bit] NULL,
	[IsDeposit] [bit] NULL,
	[IsMail] [bit] NULL,
	[IsFlat] [bit] NULL,
	[IsRecurring] [bit] NULL,
	[IsBudget] [bit] NULL,
	[IsInstall] [bit] NULL,
	[IsMessage] [bit] NULL,
	[IsUser] [bit] NULL,
	[IsPurchase] [bit] NULL,
	[FixedUsageMeters] [bit] NULL,
	[Open1] [varchar](50) NULL,
	[Open2] [varchar](50) NULL,
	[Open3] [varchar](50) NULL,
	[Open4] [varchar](50) NULL,
	[Open5] [varchar](50) NULL,
	[Comments] [text] NULL,
	[LastUpdated] [datetime] NULL,
	[BimonthlySequence] [smallint] NULL,
	[TaxPercent] [real] NULL,
	[CompanyID] [varchar](20) NOT NULL,
	[CustomerStateID] [varchar](20) NOT NULL,
	[CustomerTypeID] [varchar](20) NULL,
	[ServiceRateID] [varchar](20) NULL,
	[SewerRateID] [varchar](20) NULL,
	[Past1] [money] NULL,
	[Past2] [money] NULL,
	[Past3] [money] NULL,
	[UserID] [varchar](20) NULL,
	[MasterAccountID] [varchar](25) NULL,
	[Tax1Percent] [real] NULL,
	[Tax2Percent] [real] NULL,
	[Tax3Percent] [real] NULL,
	[Tax4Percent] [real] NULL,
	[Tax5Percent] [real] NULL,
	[isLockBox] [bit] NULL,
	[Email] [varchar](120) NULL,
	[PrintInvDetail] [bit] NULL,
	[NOCHKS] [smallint] NULL,
	[TranDate] [datetime] NULL,
	[ESCROWNUMBER] [varchar](30) NULL,
	[ESCROWTITLECOMPANYNAME] [varchar](50) NULL,
	[ESCROWCONTACTPERSON] [varchar](30) NULL,
	[ESCROWSTREETNO] [varchar](20) NULL,
	[ESCROWSTREET] [varchar](50) NULL,
	[ESCROWAPARTMENT] [varchar](20) NULL,
	[ESCROWCITY] [varchar](30) NULL,
	[ESCROWSTATE] [varchar](20) NULL,
	[ESCROWZIP5] [varchar](15) NULL,
	[ESCROWZIP4] [varchar](15) NULL,
	[ESCROWPHONE] [varchar](20) NULL,
	[ESCROWFAX] [varchar](20) NULL,
	[cPastDue] [int] NULL,
	[cShutOff] [int] NULL,
	[cReminder] [int] NULL,
	[cPayment] [int] NULL,
	[cCheck] [int] NULL,
	[Points] [int] NULL,
	[BusinessName] [varchar](150) NULL,
	[EmailBill] [smallint] NOT NULL,
	[BaseOnPremiseID] [varchar](50) NULL,
	[DNTopt] [bit] NULL,
	[MobileTel] [varchar](15) NULL,
	[EmailPast] [smallint] NOT NULL,
	[EmailRemin] [smallint] NOT NULL,
	[OwnerName] [varchar](50) NULL,
	[DelinquencyCode] [varchar](20) NULL,
	[DrvLicNumMD5] [varchar](120) NULL,
	[SSNMD5] [varchar](120) NULL,
	[SPOUSESSNMD5] [varchar](120) NULL,
	[SPOUSEDrvLicMD5] [varchar](120) NULL,
 CONSTRAINT [PK_tblCustomer] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblCompany]    Script Date: 11/04/2011 11:53:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblCompany](
	[Comp] [varchar](4) NOT NULL,
	[CompanyID] [varchar](20) NOT NULL,
	[CompName] [varchar](50) NOT NULL,
	[AddrLine1] [varchar](50) NULL,
	[AddrLine2] [varchar](50) NULL,
	[AddrLine3] [varchar](50) NULL,
	[AddrLine4] [varchar](50) NULL,
	[Telephone] [varchar](15) NULL,
	[TelephonePM] [varchar](15) NULL,
	[FaxNumber] [varchar](15) NULL,
	[EMailAddress] [varchar](120) NULL,
	[BillMsg1] [text] NULL,
	[BillMsg2] [text] NULL,
	[RemindMsg1] [text] NULL,
	[RemindMsg2] [varchar](255) NULL,
	[PastMsg1] [text] NULL,
	[PastMsg2] [varchar](255) NULL,
	[ShutMsg1] [text] NULL,
	[ShutMsg2] [varchar](255) NULL,
	[Prorate] [bit] NOT NULL,
	[BillingDatesMethod] [varchar](1) NULL,
	[ProrateDays] [smallint] NULL,
	[BillingDays] [smallint] NULL,
	[BillDueDateDays] [smallint] NULL,
	[HistBillEnabled] [bit] NULL,
	[MinBillAmt] [money] NULL,
	[MaxBillAmt] [money] NULL,
	[MinPastAmount] [money] NULL,
	[MinPastAmountWhat] [varchar](1) NULL,
	[MinRemAmount] [money] NULL,
	[MinRemAmountWhat] [varchar](1) NULL,
	[MinShutAmount] [money] NULL,
	[MinShutAmountWhat] [varchar](2) NULL,
	[HistBill] [float] NULL,
	[HistUsag] [float] NULL,
	[TransferHistBill] [bit] NULL,
	[DmdStartMo] [datetime] NULL,
	[DmdEndMo] [datetime] NULL,
	[DemandMo] [varchar](25) NULL,
	[FlatChg1] [money] NULL,
	[FlatRevc1] [varchar](20) NULL,
	[FlatChg2] [money] NULL,
	[FlatRevc2] [varchar](20) NULL,
	[FlatChg3] [money] NULL,
	[FlatRevc3] [varchar](20) NULL,
	[FlatChg4] [money] NULL,
	[FlatRevc4] [varchar](20) NULL,
	[FlatChg5] [money] NULL,
	[FlatRevc5] [varchar](20) NULL,
	[RchkChg] [money] NULL,
	[RchkRevc] [varchar](20) NULL,
	[RecoChg] [money] NULL,
	[RecoRevc] [varchar](20) NULL,
	[RecoAfterHoursChg] [money] NULL,
	[RecoAfterHoursRevc] [varchar](20) NULL,
	[RecoDeposit] [money] NULL,
	[DisconnectChg] [money] NULL,
	[DisconnectRevC] [varchar](20) NULL,
	[DelinquentGraceDays] [smallint] NULL,
	[DepositAmtDefault] [money] NULL,
	[DepRevCode] [varchar](20) NULL,
	[DepoInt] [float] NULL,
	[DepoMethod] [varchar](1) NULL,
	[RefundWhen] [int] NULL,
	[DepoWhenCalc] [varchar](1) NULL,
	[IntMethod] [varchar](1) NULL,
	[DepIntRevCode] [varchar](20) NULL,
	[RefundType] [varchar](1) NULL,
	[RefMaxRem] [float] NULL,
	[RefMaxPast] [float] NULL,
	[RefMaxShut] [float] NULL,
	[Refundable] [bit] NULL,
	[RefCredit] [varchar](4) NULL,
	[EstLastBill] [float] NULL,
	[EstLastYr] [bit] NULL,
	[EstBestFit] [bit] NULL,
	[EstAvgStMo] [float] NULL,
	[EstAvgEndMo] [float] NULL,
	[SwrAvgStMo] [float] NULL,
	[SwrAvgEndMo] [float] NULL,
	[WinStart] [float] NULL,
	[WinEnd] [float] NULL,
	[SumStart] [float] NULL,
	[SumEnd] [float] NULL,
	[BillHistDet] [bit] NULL,
	[AgedHistDet] [bit] NULL,
	[AllocResF] [varchar](1) NULL,
	[AllocResDt] [datetime] NULL,
	[BillRegType] [varchar](1) NULL,
	[BillFormType] [varchar](4) NULL,
	[RemFormType] [varchar](4) NULL,
	[PastFormType] [varchar](4) NULL,
	[ShutFormType] [varchar](4) NULL,
	[PayOverpayMethod] [varchar](1) NULL,
	[PayOverpayRevc] [varchar](20) NULL,
	[PayHow] [varchar](1) NULL,
	[ReadHiPct] [float] NULL,
	[ReadLoPct] [float] NULL,
	[ReadEntM] [varchar](1) NULL,
	[AcctNew] [bit] NULL,
	[AcctSuff] [bit] NULL,
	[LengthSuffix] [smallint] NULL,
	[GeneralLedgerSystemID] [varchar](1) NULL,
	[DepositRefundRevc] [varchar](20) NULL,
	[WriteOffRevc] [varchar](20) NULL,
	[PathBillPrint] [varchar](75) NULL,
	[PathBankDrafts] [varchar](75) NULL,
	[PathWriteoffs] [varchar](75) NULL,
	[PathHandHeld] [varchar](75) NULL,
	[PathReadings] [varchar](75) NULL,
	[PathPayments] [varchar](75) NULL,
	[PathGLTrans] [varchar](75) NULL,
	[PathWriteoffExport] [varchar](75) NULL,
	[PathCASSImportExport] [varchar](75) NULL,
	[LastPost] [datetime] NULL,
	[LastBill] [datetime] NULL,
	[LastReminder] [datetime] NULL,
	[LastPastDue] [datetime] NULL,
	[LastShutoff] [datetime] NULL,
	[LastUpdated] [datetime] NULL,
	[ChkW] [bit] NULL,
	[WLateChgPct0] [real] NULL,
	[WLateAmt0] [money] NULL,
	[WLateChgPct1] [real] NULL,
	[WLateAmt1] [money] NULL,
	[WLateChgPct2] [real] NULL,
	[WLateAmt2] [money] NULL,
	[WLateChgPct3] [real] NULL,
	[WLateAmt3] [money] NULL,
	[WLateRevc] [varchar](20) NULL,
	[ChkS] [bit] NULL,
	[SLateChgPct0] [real] NULL,
	[SLateAmt0] [money] NULL,
	[SLateChgPct1] [real] NULL,
	[SLateAmt1] [money] NULL,
	[SLateChgPct2] [real] NULL,
	[SLateAmt2] [money] NULL,
	[SLateChgPct3] [real] NULL,
	[SLateAmt3] [money] NULL,
	[SLateRevc] [varchar](20) NULL,
	[ChkE] [bit] NULL,
	[ELateChgPct0] [real] NULL,
	[ELateAmt0] [money] NULL,
	[ELateChgPct1] [real] NULL,
	[ELateAmt1] [money] NULL,
	[ELateChgPct2] [real] NULL,
	[ELateAmt2] [money] NULL,
	[ELateChgPct3] [real] NULL,
	[ELateAmt3] [money] NULL,
	[ELateRevc] [varchar](20) NULL,
	[ChkG] [bit] NULL,
	[GLateChgPct0] [real] NULL,
	[GLateAmt0] [money] NULL,
	[GLateChgPct1] [real] NULL,
	[GLateAmt1] [money] NULL,
	[GLateChgPct2] [real] NULL,
	[GLateAmt2] [money] NULL,
	[GLateChgPct3] [real] NULL,
	[GLateAmt3] [money] NULL,
	[GLateRevc] [varchar](20) NULL,
	[ChkP] [bit] NULL,
	[PLateChgPct0] [real] NULL,
	[PLateAmt0] [money] NULL,
	[PLateChgPct1] [real] NULL,
	[PLateAmt1] [money] NULL,
	[PLateChgPct2] [real] NULL,
	[PLateAmt2] [money] NULL,
	[PLateChgPct3] [real] NULL,
	[PLateAmt3] [money] NULL,
	[PLateRevc] [varchar](20) NULL,
	[ChkT] [bit] NULL,
	[TLateChgPct0] [real] NULL,
	[TLateAmt0] [money] NULL,
	[TLateChgPct1] [real] NULL,
	[TLateAmt1] [money] NULL,
	[TLateChgPct2] [real] NULL,
	[TLateAmt2] [money] NULL,
	[TLateChgPct3] [real] NULL,
	[TLateAmt3] [money] NULL,
	[TLateRevc] [varchar](20) NULL,
	[ChkO] [bit] NULL,
	[OLateChgPct0] [real] NULL,
	[OLateAmt0] [money] NULL,
	[OLateChgPct1] [real] NULL,
	[OLateAmt1] [money] NULL,
	[OLateChgPct2] [real] NULL,
	[OLateAmt2] [money] NULL,
	[OLateChgPct3] [real] NULL,
	[OLateAmt3] [money] NULL,
	[OLateRevc] [varchar](20) NULL,
	[ChkA] [bit] NULL,
	[ALateChgPct0] [real] NULL,
	[ALateAmt0] [varchar](50) NULL,
	[ALateChgPct1] [real] NULL,
	[ALateAmt1] [varchar](50) NULL,
	[ALateChgPct2] [real] NULL,
	[ALateAmt2] [varchar](50) NULL,
	[ALateChgPct3] [real] NULL,
	[ALateAmt3] [varchar](50) NULL,
	[ALateRevc] [varchar](20) NULL,
	[SystemName] [varchar](25) NULL,
	[Security] [varchar](4) NULL,
	[DiscountDays] [smallint] NULL,
	[DiscountPercent] [real] NULL,
	[Discounts] [bit] NULL,
	[ByUsage] [bit] NULL,
	[UsageOnWhat] [varchar](1) NULL,
	[MonthlyBilling] [bit] NULL,
	[BudgetHalfWayRecalc] [bit] NULL,
	[BudgetHalfWayPercentRecalc] [smallint] NULL,
	[BimonthlyReads] [bit] NULL,
	[ProRateOddCycle] [bit] NULL,
	[ProRateOddCycleDays] [smallint] NULL,
	[SqftPercent] [real] NULL,
	[OccPercent] [real] NULL,
	[CompanyFileID] [varchar](10) NULL,
	[CompanyBankRoute] [varchar](10) NULL,
	[CompanyBankAccount] [varchar](120) NULL,
	[CompanyBankName] [varchar](23) NULL,
	[CompanyBankPhoneNumber] [varchar](20) NULL,
	[CompanyPaymentRevCode] [varchar](20) NULL,
	[CompanyAgingOption] [smallint] NULL,
	[AgeOverpayment] [bit] NULL,
	[UserID] [varchar](20) NULL,
	[OWNER] [varchar](1) NULL,
	[IsSurchargeAdjust] [int] NULL,
	[GracePeriod] [int] NULL,
	[chkX] [bit] NULL,
	[XLateChgPct0] [real] NULL,
	[XLateAmt0] [money] NULL,
	[XLateChgPct1] [real] NULL,
	[XLateAmt1] [money] NULL,
	[XLateChgPct2] [real] NULL,
	[XLateAmt2] [money] NULL,
	[XLateChgPct3] [real] NULL,
	[XLateAmt3] [money] NULL,
	[XLateRevc] [varchar](20) NULL,
	[chkY] [bit] NULL,
	[YLateChgPct0] [real] NULL,
	[YLateAmt0] [money] NULL,
	[YLateRevc] [varchar](20) NULL,
	[chkZ] [bit] NULL,
	[RefundRevenueCodeID] [varchar](20) NULL,
	[CompNum] [varchar](10) NULL,
	[CompanyCode] [varchar](100) NULL,
	[CPACode] [varchar](5) NULL,
	[FileNumber] [int] NULL,
	[Hhid] [int] NULL,
	[Upload] [int] NULL,
	[DownLoad] [int] NULL,
	[BudgetResetMethod] [int] NULL,
	[BudgetResetFreq] [varchar](10) NULL,
	[BudgetResetFixedMonth] [varchar](10) NULL,
	[FileFormat] [varchar](10) NULL,
	[MaxPoint] [int] NULL,
	[BasePoint] [int] NULL,
	[PathOwnerN] [varchar](75) NULL,
	[PathReturnCheckN] [varchar](75) NULL,
	[PathServiceN] [varchar](75) NULL,
	[PathEmergencyN] [varchar](75) NULL,
	[DNTRevCode] [varchar](20) NULL,
	[PathBillPrintToPDF] [varchar](75) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblBillHistory]    Script Date: 11/04/2011 11:53:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblBillHistory](
	[Amount] [money] NOT NULL,
	[BillHistoryID] [varchar](20) NOT NULL,
	[UserID] [varchar](20) NULL,
	[LateCharge] [money] NULL,
	[LastUpdated] [datetime] NULL,
	[CustomerID] [varchar](20) NOT NULL,
	[TransactionDate] [datetime] NULL,
	[RevenueCodeID] [varchar](20) NULL,
	[GLBatchNum] [int] NULL,
	[GLBatchDate] [datetime] NULL,
	[DocumentRefNum] [varchar](50) NULL,
	[Authorization] [varchar](20) NULL,
	[ChkNum] [varchar](20) NULL,
	[PayMeth] [varchar](20) NULL,
	[PointCode] [varchar](20) NULL,
	[SEQ] [int] NOT NULL,
	[acctnum] [varchar](25) NULL,
	[RevenueType] [varchar](20) NULL,
	[TagMark] [varchar](10) NULL,
	[AgebillID] [varchar](20) NULL,
	[BillNumberID] [varchar](50) NULL,
	[CreateUserID] [varchar](20) NULL,
	[paymentid] [varchar](20) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[ViewBillHistory]    Script Date: 11/04/2011 11:53:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[ViewBillHistory]
AS
SELECT     CP.Comp, CL.Cycle, C.AcctNum, C.CustomerID, ISNULL(C.FirstName, '') + ' ' + ISNULL(C.LastName, '') AS Name, BH.Amount AS TotalDue, C.CurrDue, C.Past1, C.Past2, 
                      C.Past3, CASE WHEN [C].[CustomerStateID] IN ('LOGF', 'OFFB', 'OWNB', 'OWNN') THEN ISNULL([PH].[StrNum], '') + ' ' + ISNULL([SNH].[StreetName], '') 
                      + ' ' + ISNULL([PH].[Apt], '') ELSE ISNULL([P].[StrNum], '') + ' ' + ISNULL([SN].[StreetName], '') + ' ' + ISNULL([P].[Apt], '') END AS Address, 
                      CASE WHEN [C].[CustomerStateID] IN ('LOGF', 'OFFB', 'OFFP', 'OWNB', 'OWNN') THEN ISNULL([PH].[City], '') + ' ' + ISNULL([PH].[State], '') + ' ' + ISNULL([PH].[ZIP5], '') 
                      + ' ' + ISNULL([PH].[ZIP4], '') ELSE ISNULL([P].[City], '') + ' ' + ISNULL([P].[State], '') + ' ' + ISNULL([P].[ZIP5], '') + ' ' + ISNULL([P].[ZIP4], '') END AS Location, 
                      BH.Amount AS Expr1, BH.LateCharge, BH.TransactionDate, CONVERT(VARCHAR(7), BH.TransactionDate, 120) AS TransactionMonth, RV.RevC, RV.RevenueType, 
                      BH.GLBatchNum, BH.GLBatchDate, BH.BillNumberID, CP.CompName, CP.CompanyID
FROM         dbo.tblBillHistory AS BH INNER JOIN
                      dbo.tblCustomer AS C ON C.CustomerID = BH.CustomerID AND BH.RevenueType <> 'PY' LEFT OUTER JOIN
                          (SELECT     CustomerAccount, CustomerHisotryID, CustomerID, PremiseID
                            FROM          dbo.tblCustomerHistory
                            WHERE      (CustomerHisotryID IN
                                                       (SELECT     MAX(CustomerHisotryID) AS Expr1
                                                         FROM          dbo.tblCustomerHistory AS tblCustomerHistory_1
                                                         GROUP BY CustomerID))) AS CH ON CH.CustomerID = C.CustomerID LEFT OUTER JOIN
                      dbo.tblPremise AS PH ON PH.PremiseID = CH.PremiseID LEFT OUTER JOIN
                      dbo.tblStreetName AS SNH ON SNH.StreetCodeID = PH.StreetCodeID LEFT OUTER JOIN
                      dbo.tblPremise AS P ON P.PremiseID = C.PremiseID LEFT OUTER JOIN
                      dbo.tblStreetName AS SN ON SN.StreetCodeID = P.StreetCodeID LEFT OUTER JOIN
                      dbo.tblRevenue AS RV ON RV.RevenueCodeID = BH.RevenueCodeID LEFT OUTER JOIN
                      dbo.tblCompany AS CP ON CP.CompanyID = C.CompanyID LEFT OUTER JOIN
                      dbo.tblCycle AS CL ON CL.CycleID = C.CycleID
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "BH"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 213
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "C"
            Begin Extent = 
               Top = 6
               Left = 251
               Bottom = 125
               Right = 488
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CH"
            Begin Extent = 
               Top = 6
               Left = 526
               Bottom = 125
               Right = 706
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "PH"
            Begin Extent = 
               Top = 6
               Left = 744
               Bottom = 125
               Right = 959
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "SNH"
            Begin Extent = 
               Top = 6
               Left = 997
               Bottom = 125
               Right = 1157
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "P"
            Begin Extent = 
               Top = 126
               Left = 38
               Bottom = 245
               Right = 253
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "SN"
            Begin Extent = 
               Top = 126
               Left = 291
               Bottom = 245
               Right = 451
            End
            DisplayFlags = 280
            TopColumn = 0
         End' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ViewBillHistory'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'
         Begin Table = "RV"
            Begin Extent = 
               Top = 126
               Left = 489
               Bottom = 245
               Right = 659
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CP"
            Begin Extent = 
               Top = 126
               Left = 697
               Bottom = 245
               Right = 929
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CL"
            Begin Extent = 
               Top = 126
               Left = 967
               Bottom = 245
               Right = 1143
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 24
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ViewBillHistory'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ViewBillHistory'
GO
/****** Object:  View [dbo].[viewUsageSummaryByCycle]    Script Date: 11/04/2011 11:53:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[viewUsageSummaryByCycle]
AS
SELECT     TOP (100) PERCENT CompanyID, CycleID, BillDt, UsageSummary
FROM         (SELECT     CompanyID, CycleID, SUBSTRING(CONVERT(VARCHAR(10), BillDt, 103), 4, 7) AS BillDt, SUM(PartPeakUsage) AS UsageSummary
                       FROM          (SELECT     b.CompanyID, b.CycleID, b.AcctNum, a.BillDt, a.PartPeakUsage
                                               FROM          dbo.tblMetrHist AS a INNER JOIN
                                                                      dbo.tblCustomer AS b ON a.acctnum = b.AcctNum) AS c
                       GROUP BY CompanyID, CycleID, SUBSTRING(CONVERT(VARCHAR(10), BillDt, 103), 4, 7)) AS d
ORDER BY CompanyID, BillDt
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "d"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 201
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'viewUsageSummaryByCycle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'viewUsageSummaryByCycle'
GO
/****** Object:  View [dbo].[viewUsageSummarybyCompany]    Script Date: 11/04/2011 11:53:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[viewUsageSummarybyCompany]
AS
SELECT     TOP (100) PERCENT CompanyID, SUBSTRING(CONVERT(VARCHAR(10), BillDt, 103), 4, 7) AS BillDt, SUM(PartPeakUsage) AS UsageSummary
FROM         (SELECT     b.CompanyID, b.CycleID, b.AcctNum, a.BillDt, a.PartPeakUsage
                       FROM          dbo.tblMetrHist AS a INNER JOIN
                                              dbo.tblCustomer AS b ON a.CustomerID = b.CustomerID) AS c
GROUP BY CompanyID, SUBSTRING(CONVERT(VARCHAR(10), BillDt, 103), 4, 7)
ORDER BY CompanyID, BillDt
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "c"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 216
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 1440
         Alias = 1335
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'viewUsageSummarybyCompany'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'viewUsageSummarybyCompany'
GO
/****** Object:  View [dbo].[viewUsageSummaryByAcctNum]    Script Date: 11/04/2011 11:53:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[viewUsageSummaryByAcctNum]
AS
SELECT     TOP (100) PERCENT CompanyID, CycleID, AcctNum, BillDt, UsageSummary
FROM         (SELECT     CompanyID, CycleID, AcctNum, SUBSTRING(CONVERT(VARCHAR(10), BillDt, 103), 4, 7) AS BillDt, SUM(PartPeakUsage) AS UsageSummary
                       FROM          (SELECT     b.CompanyID, b.CycleID, b.AcctNum, a.BillDt, a.PartPeakUsage
                                               FROM          dbo.tblMetrHist AS a INNER JOIN
                                                                      dbo.tblCustomer AS b ON a.acctnum = b.AcctNum) AS c
                       GROUP BY CompanyID, CycleID, AcctNum, SUBSTRING(CONVERT(VARCHAR(10), BillDt, 103), 4, 7)) AS d
ORDER BY CompanyID, AcctNum, BillDt
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "d"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 201
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'viewUsageSummaryByAcctNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'viewUsageSummaryByAcctNum'
GO
/****** Object:  View [dbo].[viewUsageSummaryAll]    Script Date: 11/04/2011 11:53:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[viewUsageSummaryAll]
AS
SELECT     SUBSTRING(CONVERT(VARCHAR(10), BillDt, 103), 4, 7) AS BillDt, SUM(PartPeakUsage) AS UsageSummary
FROM         dbo.tblMetrHist
GROUP BY SUBSTRING(CONVERT(VARCHAR(10), BillDt, 103), 4, 7)
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tblMetrHist"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 245
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'viewUsageSummaryAll'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'viewUsageSummaryAll'
GO
/****** Object:  View [dbo].[ViewUsageHistory]    Script Date: 11/04/2011 11:53:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[ViewUsageHistory]
AS
SELECT     CP.Comp, CL.Cycle, C.AcctNum, C.CustomerID, ISNULL(C.FirstName, '') + ' ' + ISNULL(C.LastName, '') AS Name, C.TotalDue, C.CurrDue, C.Past1, C.Past2, C.Past3, 
                      CASE WHEN [C].[CustomerStateID] IN ('LOGF', 'OFFB', 'OWNB', 'OWNN') THEN ISNULL([PH].[StrNum], '') + ' ' + ISNULL([SNH].[StreetName], '') + ' ' + ISNULL([PH].[Apt], 
                      '') ELSE ISNULL([P].[StrNum], '') + ' ' + ISNULL([SN].[StreetName], '') + ' ' + ISNULL([P].[Apt], '') END AS Address, CASE WHEN [C].[CustomerStateID] IN ('LOGF', 'OFFB', 
                      'OFFP', 'OWNB', 'OWNN') THEN ISNULL([PH].[City], '') + ' ' + ISNULL([PH].[State], '') + ' ' + ISNULL([PH].[ZIP5], '') + ' ' + ISNULL([PH].[ZIP4], '') ELSE ISNULL([P].[City], '') 
                      + ' ' + ISNULL([P].[State], '') + ' ' + ISNULL([P].[ZIP5], '') + ' ' + ISNULL([P].[ZIP4], '') END AS Location, MH.ReadDt, MH.BillDt, MH.MeterAccount, MH.PartPeakRead, 
                      MH.PartPeakUsage, MH.UsageChrg, CASE WHEN [MH].[IsEst] = 0 THEN 'No' ELSE 'Yes' END AS IsEst, UT.UtilType, RU.UsageRate, PH.PremiseID, 
                      SUBSTRING(CONVERT(VARCHAR(10), MH.ReadDt, 103), 4, 7) AS Readdate, CP.CompName
FROM         dbo.tblMetrHist AS MH INNER JOIN
                      dbo.tblCustomer AS C ON C.CustomerID = MH.CustomerID LEFT OUTER JOIN
                          (SELECT     CustomerAccount, CustomerHisotryID, CustomerID, PremiseID
                            FROM          dbo.tblCustomerHistory
                            WHERE      (CustomerHisotryID IN
                                                       (SELECT     MAX(CustomerHisotryID) AS Expr1
                                                         FROM          dbo.tblCustomerHistory AS tblCustomerHistory_1
                                                         GROUP BY CustomerID))) AS CH ON CH.CustomerID = C.CustomerID LEFT OUTER JOIN
                      dbo.tblPremise AS PH ON PH.PremiseID = CH.PremiseID LEFT OUTER JOIN
                      dbo.tblStreetName AS SNH ON SNH.StreetCodeID = PH.StreetCodeID LEFT OUTER JOIN
                      dbo.tblPremise AS P ON P.PremiseID = C.PremiseID LEFT OUTER JOIN
                      dbo.tblStreetName AS SN ON SN.StreetCodeID = P.StreetCodeID LEFT OUTER JOIN
                      dbo.tblUtilType AS UT ON UT.UtilityTypeID = MH.UtilityTypeID LEFT OUTER JOIN
                      dbo.tblRateUsage AS RU ON RU.RateUsageID = MH.RateUsageID LEFT OUTER JOIN
                      dbo.tblCompany AS CP ON CP.CompanyID = C.CompanyID LEFT OUTER JOIN
                      dbo.tblCycle AS CL ON CL.CycleID = C.CycleID
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "MH"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 229
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "C"
            Begin Extent = 
               Top = 6
               Left = 267
               Bottom = 125
               Right = 504
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CH"
            Begin Extent = 
               Top = 6
               Left = 542
               Bottom = 125
               Right = 722
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "PH"
            Begin Extent = 
               Top = 6
               Left = 760
               Bottom = 125
               Right = 975
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "SNH"
            Begin Extent = 
               Top = 6
               Left = 1013
               Bottom = 125
               Right = 1173
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "P"
            Begin Extent = 
               Top = 126
               Left = 38
               Bottom = 245
               Right = 253
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "SN"
            Begin Extent = 
               Top = 126
               Left = 291
               Bottom = 245
               Right = 451
            End
            DisplayFlags = 280
            TopColumn = 0
         En' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ViewUsageHistory'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'd
         Begin Table = "UT"
            Begin Extent = 
               Top = 126
               Left = 489
               Bottom = 245
               Right = 649
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "RU"
            Begin Extent = 
               Top = 126
               Left = 687
               Bottom = 245
               Right = 867
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CP"
            Begin Extent = 
               Top = 126
               Left = 905
               Bottom = 245
               Right = 1137
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CL"
            Begin Extent = 
               Top = 246
               Left = 38
               Bottom = 365
               Right = 214
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 25
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ViewUsageHistory'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ViewUsageHistory'
GO
/****** Object:  View [dbo].[ViewTopCustomer]    Script Date: 11/04/2011 11:53:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[ViewTopCustomer]
AS
SELECT     TOP (100) CompName, Cycle, Name, AcctNum, SUM(PartPeakUsage) AS Usage
FROM         dbo.ViewUsageHistory AS vus
GROUP BY CONVERT(VARCHAR(10), ReadDt, 120), Name, AcctNum, Cycle, CompName
ORDER BY Usage DESC, CONVERT(VARCHAR(10), ReadDt, 120)
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "vus"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 216
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ViewTopCustomer'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ViewTopCustomer'
GO
