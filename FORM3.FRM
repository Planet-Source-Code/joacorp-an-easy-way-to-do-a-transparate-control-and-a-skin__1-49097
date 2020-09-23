VERSION 5.00
Begin VB.Form Form3 
   BackColor       =   &H00FF0000&
   BorderStyle     =   0  'None
   Caption         =   "Form3"
   ClientHeight    =   2055
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   3120
   LinkTopic       =   "Form3"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2055
   ScaleWidth      =   3120
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin Proyecto1.UserControl1 UserControl11 
      Height          =   135
      Left            =   3000
      TabIndex        =   4
      Top             =   2280
      Width           =   120
      _ExtentX        =   212
      _ExtentY        =   238
   End
   Begin VB.CommandButton Command1 
      Appearance      =   0  'Flat
      BackColor       =   &H00FF0000&
      Caption         =   "OK"
      Height          =   375
      Left            =   1080
      Style           =   1  'Graphical
      TabIndex        =   3
      Top             =   1440
      Width           =   975
   End
   Begin VB.Label Msg 
      BackStyle       =   0  'Transparent
      Caption         =   "An easy way to make a skin"
      ForeColor       =   &H8000000E&
      Height          =   735
      Left            =   480
      TabIndex        =   2
      Top             =   600
      Width           =   2175
   End
   Begin VB.Label title 
      BackStyle       =   0  'Transparent
      Caption         =   "An easy way to make a skin"
      ForeColor       =   &H8000000E&
      Height          =   375
      Left            =   120
      TabIndex        =   1
      Top             =   120
      Width           =   2535
   End
   Begin VB.Line Line1 
      BorderColor     =   &H80000005&
      BorderStyle     =   3  'Dot
      DrawMode        =   15  'Merge Pen Not
      X1              =   0
      X2              =   3120
      Y1              =   360
      Y2              =   360
   End
   Begin VB.Shape min 
      BorderColor     =   &H80000005&
      Height          =   195
      Left            =   2760
      Shape           =   4  'Rounded Rectangle
      Top             =   120
      Width           =   195
   End
   Begin VB.Label Label1 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "X"
      ForeColor       =   &H8000000D&
      Height          =   255
      Left            =   2805
      TabIndex        =   0
      Top             =   120
      Width           =   135
   End
   Begin VB.Shape Shape1 
      BackColor       =   &H8000000D&
      BackStyle       =   1  'Opaque
      BorderColor     =   &H80000004&
      BorderStyle     =   3  'Dot
      Height          =   2055
      Left            =   0
      Shape           =   4  'Rounded Rectangle
      Top             =   0
      Width           =   3135
   End
End
Attribute VB_Name = "Form3"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Unload Me
End Sub

Private Sub Command1_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Command1.BackColor = Shape1.BackColor
End Sub

Private Sub Form_Load()
Shape1.BackColor = Form1.Shape1.BackColor + 30
End Sub

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
ReleaseCapture
SendMessage hWnd, 161, 2, 0
Command1.BackColor = vbBlue
End Sub

Private Sub Label3_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
ReleaseCapture
SendMessage hWnd, 161, 2, 0
End Sub

Private Sub Label1_Click()
Unload Me
End Sub
Private Sub title_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
ReleaseCapture
SendMessage hWnd, 161, 2, 0
End Sub
