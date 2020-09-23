VERSION 5.00
Begin VB.Form Form3 
   BackColor       =   &H00000000&
   BorderStyle     =   0  'None
   Caption         =   "Form3"
   ClientHeight    =   9000
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   12000
   LinkTopic       =   "Form3"
   ScaleHeight     =   9000
   ScaleWidth      =   12000
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.Timer Timer2 
      Interval        =   20000
      Left            =   135
      Top             =   1320
   End
   Begin VB.Timer Timer1 
      Interval        =   1
      Left            =   105
      Top             =   795
   End
   Begin VB.Image linegif 
      Height          =   15
      Left            =   -75
      Picture         =   "Form3.frx":0000
      Top             =   -15
      Width           =   75000
   End
End
Attribute VB_Name = "Form3"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
    linepos = 15
End Sub

Private Sub Timer1_Timer()
    linegif.Top = linepos
    linepos = linepos + 30
End Sub

Private Sub Timer2_Timer()
    Timer2.Enabled = False
    Timer1.Enabled = False
    Form3.Visible = False
    MsgBox "Your picture has been taken. Press OK to view it.", vbOKOnly + vbInformation, "Information"
    Form4.Show
    Unload Me
End Sub
