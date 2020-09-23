Attribute VB_Name = "Module1"
Declare Function ReleaseCapture Lib "user32.dll" () As Long
Declare Function SendMessage Lib "user32.dll" Alias "SendMessageA" (ByVal hWnd As Long, ByVal wMsg As Long, ByVal wParam As Long, lParam As Any) As Long
Function MsgBox(Message, title)
Form3.Msg.Caption = Message
Form3.title = title
Form3.Show
End Function

