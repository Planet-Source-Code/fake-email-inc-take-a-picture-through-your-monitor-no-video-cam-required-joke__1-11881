VERSION 5.00
Begin VB.Form Form6 
   BorderStyle     =   3  'Fixed Dialog
   ClientHeight    =   345
   ClientLeft      =   45
   ClientTop       =   45
   ClientWidth     =   4635
   ControlBox      =   0   'False
   LinkTopic       =   "Form6"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   345
   ScaleWidth      =   4635
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.Timer Timer1 
      Interval        =   5500
      Left            =   -30
      Top             =   -30
   End
   Begin VB.TextBox Text1 
      Alignment       =   2  'Center
      Height          =   285
      Left            =   30
      Locked          =   -1  'True
      TabIndex        =   0
      Text            =   "Created by www.fakeemail.org"
      Top             =   30
      Width           =   4575
   End
End
Attribute VB_Name = "Form6"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Timer1_Timer()
    End
End Sub
