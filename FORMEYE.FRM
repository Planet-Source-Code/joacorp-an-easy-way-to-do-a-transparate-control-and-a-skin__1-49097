VERSION 5.00
Begin VB.Form Form2 
   BackColor       =   &H80000013&
   BorderStyle     =   0  'None
   Caption         =   "Form2"
   ClientHeight    =   780
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   4275
   LinkTopic       =   "Form2"
   ScaleHeight     =   780
   ScaleWidth      =   4275
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin Proyecto1.UserControl1 UserControl11 
      Height          =   30
      Left            =   720
      TabIndex        =   1
      Top             =   1920
      Width           =   120
      _ExtentX        =   212
      _ExtentY        =   53
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "BY JOACOMAN"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   27.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   2295
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   6495
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Label1_DblClick()
Unload Me
End Sub

Private Sub Label1_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
ReleaseCapture
SendMessage hWnd, 161, 2, 0
End Sub
