VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H00FF0000&
   BorderStyle     =   0  'None
   Caption         =   "Form1"
   ClientHeight    =   2910
   ClientLeft      =   105
   ClientTop       =   105
   ClientWidth     =   4110
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2910
   ScaleWidth      =   4110
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Appearance      =   0  'Flat
      BackColor       =   &H00FF0000&
      Caption         =   "Msgbox"
      Height          =   375
      Left            =   1080
      Style           =   1  'Graphical
      TabIndex        =   6
      Top             =   840
      Width           =   975
   End
   Begin VB.CommandButton Command2 
      BackColor       =   &H00FF0000&
      Caption         =   "About"
      Height          =   375
      Left            =   2040
      Style           =   1  'Graphical
      TabIndex        =   0
      Top             =   840
      Width           =   975
   End
   Begin Proyecto1.UserControl1 UserControl11 
      Height          =   120
      Left            =   4080
      TabIndex        =   4
      Top             =   2880
      Width           =   120
      _ExtentX        =   212
      _ExtentY        =   212
   End
   Begin VB.FileListBox File1 
      BackColor       =   &H00FF0000&
      Height          =   1260
      Left            =   1080
      TabIndex        =   1
      Top             =   1200
      Width           =   1935
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   1
      Left            =   3480
      Top             =   480
   End
   Begin VB.Label Label3 
      BackStyle       =   0  'Transparent
      Caption         =   "An easy way to make a skin"
      ForeColor       =   &H8000000E&
      Height          =   375
      Left            =   240
      TabIndex        =   5
      Top             =   120
      Width           =   3255
   End
   Begin VB.Label Label2 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "_"
      ForeColor       =   &H8000000D&
      Height          =   255
      Left            =   3765
      TabIndex        =   3
      Top             =   80
      Width           =   135
   End
   Begin VB.Label Label1 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "X"
      ForeColor       =   &H8000000D&
      Height          =   255
      Left            =   3520
      TabIndex        =   2
      Top             =   120
      Width           =   135
   End
   Begin VB.Shape min 
      BorderColor     =   &H80000005&
      Height          =   195
      Left            =   3480
      Shape           =   4  'Rounded Rectangle
      Top             =   120
      Width           =   195
   End
   Begin VB.Shape max 
      BorderColor     =   &H80000005&
      Height          =   200
      Left            =   3720
      Shape           =   4  'Rounded Rectangle
      Top             =   120
      Width           =   200
   End
   Begin VB.Line Line1 
      BorderColor     =   &H80000005&
      BorderStyle     =   3  'Dot
      DrawMode        =   15  'Merge Pen Not
      X1              =   0
      X2              =   4080
      Y1              =   360
      Y2              =   360
   End
   Begin VB.Shape Shape1 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      BorderColor     =   &H80000004&
      Height          =   2895
      Left            =   0
      Shape           =   4  'Rounded Rectangle
      Top             =   0
      Width           =   4095
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'copyright 2003-2018 Joaquín encina S.
Private Sub Command1_Click()
MsgBox "An easy skin by JoAcOmAn Encina Copyright 2003-2018", "About"
End Sub

Private Sub Command1_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Command1.BackColor = Shape1.BackColor
End Sub
Private Sub Command2_Click()
Form2.Show
End Sub

Private Sub Command2_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Command2.BackColor = Shape1.BackColor
End Sub

Private Sub Form_DblClick()
Me.Width = 4110
Me.Height = 2910
Me.BackColor = vbBlue
End Sub

Private Sub Form_Load()
Shape1.BackColor = RGB(88, 154, 250)
App.TaskVisible = False
End Sub

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
ReleaseCapture
SendMessage hWnd, 161, 2, 0
Command2.BackColor = vbBlue
Command1.BackColor = vbBlue
End Sub

Private Sub Label1_Click()
End
End Sub

Private Sub Label2_Click()
Timer1.Enabled = True
End Sub
Private Sub Label3_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
ReleaseCapture
SendMessage hWnd, 161, 2, 0
End Sub

Private Sub Timer1_Timer()
If Me.Height > 100 Then
Me.Width = Me.Width - 100
Me.Height = Me.Height - 100
Else
Me.Width = 100
Me.Height = 100
Me.BackColor = Shape1.BackColor
MsgBox "double click for maximize", "For maximize"
Timer1.Enabled = False
End If
End Sub
