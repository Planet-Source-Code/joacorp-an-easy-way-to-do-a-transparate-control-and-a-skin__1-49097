VERSION 5.00
Begin VB.UserControl UserControl1 
   ClientHeight    =   90
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   90
   ScaleHeight     =   90
   ScaleWidth      =   90
   Begin VB.Timer Timer1 
      Interval        =   1
      Left            =   1800
      Top             =   1560
   End
End
Attribute VB_Name = "UserControl1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Const LW_KEY = &H1
Const G_E = (-20)
Const W_E = &H80000
Private Declare Function GetWindowLong Lib "user32" Alias "GetWindowLongA" (ByVal hWnd As Long, ByVal nIndex As Long) As Long
Private Declare Function SetWindowLong Lib "user32" Alias "SetWindowLongA" (ByVal hWnd As Long, ByVal nIndex As Long, ByVal dwNewLong As Long) As Long
Private Declare Function ReleaseCapture Lib "user32.dll" () As Long
Private Declare Function SendMessage Lib "user32.dll" Alias "SendMessageA" (ByVal hWnd As Long, ByVal wMsg As Long, ByVal wParam As Long, lParam As Any) As Long
Private Declare Function SetLayeredWindowAttributes Lib "user32.dll" (ByVal hWnd As Long, ByVal crKey As Long, ByVal bAlpha As Byte, ByVal dwFlags As Long) As Long
Private Sub Timer1_Timer()
On Error Resume Next
Dim Ret As Long
Dim TC As Long
TC = vbBlue
Ret = GetWindowLong(UserControl.Parent.hWnd, G_E)
Ret = Ret Or W_E
SetWindowLong UserControl.Parent.hWnd, G_E, Ret
SetLayeredWindowAttributes UserControl.Parent.hWnd, TC, 0, LW_KEY
UserControl.BackColor = UserControl.Parent.BackColor
End Sub

Private Sub UserControl_Initialize()
On Error Resume Next
UserControl.BackColor = UserControl.Parent.BackColor
End Sub
