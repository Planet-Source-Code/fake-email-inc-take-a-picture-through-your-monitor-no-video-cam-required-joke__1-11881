VERSION 5.00
Object = "{6B7E6392-850A-101B-AFC0-4210102A8DA7}#1.3#0"; "COMCTL32.OCX"
Begin VB.Form Form4 
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "Developing photo.."
   ClientHeight    =   1575
   ClientLeft      =   45
   ClientTop       =   285
   ClientWidth     =   3120
   ControlBox      =   0   'False
   LinkTopic       =   "Form4"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1575
   ScaleWidth      =   3120
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   150
      Left            =   105
      Top             =   1110
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Processing..."
      Enabled         =   0   'False
      Height          =   375
      Left            =   870
      TabIndex        =   2
      Top             =   1140
      Width           =   1455
   End
   Begin ComctlLib.ProgressBar ProgressBar1 
      Height          =   225
      Left            =   30
      TabIndex        =   1
      Top             =   645
      Width           =   3075
      _ExtentX        =   5424
      _ExtentY        =   397
      _Version        =   327682
      Appearance      =   1
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      Height          =   240
      Left            =   0
      TabIndex        =   3
      Top             =   900
      Width           =   3135
   End
   Begin VB.Label Label1 
      Caption         =   "Your picture is being processed. When the button is enabled, click on it to view your picture."
      Height          =   660
      Left            =   30
      TabIndex        =   0
      Top             =   0
      Width           =   3180
   End
End
Attribute VB_Name = "Form4"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
    Form5.Visible = True
    Unload Me
End Sub

Private Sub Form_Load()
    progress2 = 0
    Timer1.Enabled = True
End Sub

Private Sub Timer1_Timer()
    progress2 = progress2 + 1
    ProgressBar1.Value = progress2
    Label2.Caption = progress2 & "%"
    If progress2 = 100 Then
        Timer1.Enabled = False
        Command1.Enabled = True
        Command1.Caption = "View your picture!"
    End If
End Sub
