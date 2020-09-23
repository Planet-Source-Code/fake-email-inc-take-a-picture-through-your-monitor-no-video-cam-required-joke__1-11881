VERSION 5.00
Object = "{6B7E6392-850A-101B-AFC0-4210102A8DA7}#1.3#0"; "COMCTL32.OCX"
Begin VB.Form Form1 
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "Working..."
   ClientHeight    =   645
   ClientLeft      =   45
   ClientTop       =   285
   ClientWidth     =   2235
   ControlBox      =   0   'False
   Icon            =   "Form1.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   645
   ScaleWidth      =   2235
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.Timer Timer1 
      Interval        =   100
      Left            =   135
      Top             =   660
   End
   Begin ComctlLib.ProgressBar ProgressBar1 
      Height          =   210
      Left            =   15
      TabIndex        =   1
      Top             =   240
      Width           =   2205
      _ExtentX        =   3889
      _ExtentY        =   370
      _Version        =   327682
      Appearance      =   1
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      Height          =   210
      Left            =   60
      TabIndex        =   2
      Top             =   465
      Width           =   2115
   End
   Begin VB.Label Label1 
      Caption         =   "Checking monitor compatibility"
      Height          =   240
      Left            =   30
      TabIndex        =   0
      Top             =   15
      Width           =   2235
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
    progress = 0
End Sub

Private Sub Timer1_Timer()
    progress = progress + 1
    If progress = 100 Then
        Me.Hide
        MsgBox "Your monitor is capable of taking your picture. Press OK to continue.", vbOKOnly + vbInformation, "Continue?"
        Form2.Show
        Timer1.Enabled = False
        Exit Sub
    End If
    ProgressBar1.Value = progress
    Label2.Caption = progress & "%"
End Sub
