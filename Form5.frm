VERSION 5.00
Begin VB.Form Form5 
   BorderStyle     =   3  'Fixed Dialog
   ClientHeight    =   7320
   ClientLeft      =   45
   ClientTop       =   45
   ClientWidth     =   10095
   ControlBox      =   0   'False
   LinkTopic       =   "Form5"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Picture         =   "Form5.frx":0000
   ScaleHeight     =   7320
   ScaleWidth      =   10095
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Command1 
      Caption         =   "Exit"
      Height          =   285
      Left            =   4485
      TabIndex        =   1
      Top             =   7005
      Width           =   1275
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      Caption         =   "Here is your picture, ready to print and share with all your friends!"
      Height          =   315
      Left            =   0
      TabIndex        =   0
      Top             =   6750
      Width           =   10065
   End
End
Attribute VB_Name = "Form5"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
    Form6.Show
    Unload Me
End Sub
