VERSION 5.00
Begin VB.Form LoginForm 
   BackColor       =   &H00ADC0FF&
   Caption         =   "Form1"
   ClientHeight    =   9000
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   11250
   LinkTopic       =   "Form1"
   ScaleHeight     =   9000
   ScaleWidth      =   11250
   StartUpPosition =   2  'CenterScreen
   Begin VB.TextBox TextBox3 
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   465
      Left            =   1080
      MousePointer    =   3  'I-Beam
      TabIndex        =   2
      Top             =   4320
      Width           =   2775
   End
   Begin VB.Label Label2 
      BackColor       =   &H003D4255&
      Caption         =   " Copyright 2025 - Nexus Triad Inc."
      BeginProperty Font 
         Name            =   "Constantia"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   375
      Left            =   480
      TabIndex        =   6
      Top             =   8400
      Width           =   4935
   End
   Begin VB.Label Label1 
      BackColor       =   &H00ADC0FF&
      Caption         =   $"LoginForm.frx":0000
      BeginProperty Font 
         Name            =   "Segoe UI"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H003D4255&
      Height          =   1575
      Left            =   6240
      TabIndex        =   5
      Top             =   7200
      Width           =   4695
   End
   Begin VB.Image Image1 
      Height          =   5400
      Left            =   5040
      Picture         =   "LoginForm.frx":00B3
      Top             =   0
      Width           =   7200
   End
   Begin VB.Image PictureBox1 
      Height          =   1200
      Left            =   1680
      Picture         =   "LoginForm.frx":10E891
      Stretch         =   -1  'True
      Top             =   1920
      Width           =   2040
   End
   Begin VB.Label Label4 
      BackColor       =   &H003D4255&
      Caption         =   "Password:"
      BeginProperty Font 
         Name            =   "Segoe UI Emoji"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   375
      Left            =   2040
      TabIndex        =   4
      Top             =   3480
      Width           =   1575
   End
   Begin VB.Label Button2 
      Alignment       =   2  'Center
      BackColor       =   &H003D4255&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Show"
      BeginProperty Font 
         Name            =   "Consolas"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   495
      Left            =   3960
      TabIndex        =   3
      Top             =   4320
      Width           =   975
   End
   Begin VB.Label Button1 
      Alignment       =   2  'Center
      BackColor       =   &H003D4255&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Login"
      BeginProperty Font 
         Name            =   "Consolas"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   615
      Left            =   3240
      TabIndex        =   1
      Top             =   5160
      Width           =   1695
   End
   Begin VB.Label BtnExit 
      Alignment       =   2  'Center
      BackColor       =   &H003D4255&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Exit"
      BeginProperty Font 
         Name            =   "Consolas"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   615
      Left            =   1080
      TabIndex        =   0
      Top             =   5160
      Width           =   1815
   End
   Begin VB.Shape Shape1 
      BackColor       =   &H003D4255&
      BackStyle       =   1  'Opaque
      Height          =   9015
      Left            =   -480
      Shape           =   4  'Rounded Rectangle
      Top             =   0
      Width           =   6495
   End
End
Attribute VB_Name = "LoginForm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim passwordVisible As Boolean

Private Sub BtnExit_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
BtnExit.BackColor = RGB(255, 192, 173)
BtnExit.ForeColor = RGB(85, 66, 61)
End Sub

Private Sub Button1_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Button1.BackColor = RGB(255, 192, 173)
Button1.ForeColor = RGB(85, 66, 61)
End Sub

Private Sub Button2_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Button2.BackColor = RGB(255, 192, 173)
Button2.ForeColor = RGB(85, 66, 61)

End Sub

Private Sub Form_Load()
    passwordVisible = False
    TextBox3.PasswordChar = "*"
End Sub

Private Sub Button1_Click()
    Dim validpassword As String
    Dim password As String
    
    validpassword = "123"
    password = TextBox3.Text
    
    If validpassword = password Then
        MsgBox "Log in Successful", vbOKOnly, "Success"
        DASHBOARD.Show
        DASHBOARD.SalesGroupBox.Visible = False
        DASHBOARD.SettingsGroupBox.Visible = False
        DASHBOARD.POSControlGroupBox.Visible = True
       
        DASHBOARD.AmountLabel.Caption = "0.00"
        DASHBOARD.TotalAmountLabel.Caption = "0.00"
        DASHBOARD.PriceLabel.Caption = "0.00"
        DASHBOARD.ItemListBox.Clear
        RecieptForm.RecieptItemListBox.Clear
        Me.Hide
    Else
        MsgBox "Log in Failed!", vbOKOnly, "Error"
    End If
End Sub

Private Sub Button2_Click()
    If passwordVisible Then
        TextBox3.PasswordChar = "*"
        Button2.Caption = "Show"
    Else
        TextBox3.PasswordChar = ""
        Button2.Caption = "Hide"
    End If
    passwordVisible = Not passwordVisible
End Sub

Private Sub BtnExit_Click()
    If MsgBox("Are you sure you want to Exit?", vbOKCancel) = vbOK Then
        End
    End If
End Sub

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
BtnExit.BackColor = RGB(85, 66, 61)
BtnExit.ForeColor = vbWhite
Button1.BackColor = RGB(85, 66, 61)
Button1.ForeColor = vbWhite
Button2.BackColor = RGB(85, 66, 61)
Button2.ForeColor = vbWhite
End Sub
