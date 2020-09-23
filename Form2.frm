VERSION 5.00
Begin VB.Form Form2 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Ready"
   ClientHeight    =   4515
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   5190
   ControlBox      =   0   'False
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4515
   ScaleWidth      =   5190
   StartUpPosition =   2  'CenterScreen
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   3000
      Left            =   210
      Top             =   3105
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Take my picture!"
      Height          =   405
      Left            =   1320
      TabIndex        =   1
      Top             =   3975
      Width           =   2610
   End
   Begin VB.Image Image1 
      Height          =   2130
      Left            =   1500
      Picture         =   "Form2.frx":0000
      Top             =   1950
      Width           =   2160
   End
   Begin VB.Label Label1 
      Caption         =   $"Form2.frx":1313
      Height          =   2445
      Left            =   45
      TabIndex        =   0
      Top             =   45
      Width           =   5100
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
    Command1.Enabled = False
    Command1.Caption = "Preparing to take photo..."
    Screen.MousePointer = 11
    Timer1.Enabled = True
End Sub

Private Sub Timer1_Timer()
    Form3.Visible = True
    Screen.MousePointer = 0
    Unload Me
End Sub
