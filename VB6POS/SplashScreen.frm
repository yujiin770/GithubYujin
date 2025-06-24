VERSION 5.00
Object = "{6B7E6392-850A-101B-AFC0-4210102A8DA7}#1.5#0"; "comctl32.ocx"
Begin VB.Form SplashScreen 
   BackColor       =   &H003D4255&
   BorderStyle     =   0  'None
   Caption         =   "Form1"
   ClientHeight    =   6870
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   13230
   LinkTopic       =   "Form1"
   ScaleHeight     =   6870
   ScaleWidth      =   13230
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin ComctlLib.ProgressBar ProgressBar1 
      Height          =   615
      Left            =   240
      TabIndex        =   2
      Top             =   6120
      Width           =   10575
      _ExtentX        =   18653
      _ExtentY        =   1085
      _Version        =   327682
      BorderStyle     =   1
      Appearance      =   1
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   100
      Left            =   360
      Top             =   5040
   End
   Begin VB.Label Label3 
      Alignment       =   2  'Center
      BackColor       =   &H003D4255&
      Caption         =   "0%"
      BeginProperty Font 
         Name            =   "Arial Narrow"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   375
      Left            =   0
      TabIndex        =   4
      Top             =   5640
      Width           =   1095
   End
   Begin VB.Label Button1 
      Alignment       =   2  'Center
      BackColor       =   &H003D4255&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "START"
      BeginProperty Font 
         Name            =   "Constantia"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   615
      Left            =   10920
      TabIndex        =   3
      Top             =   6120
      Width           =   2295
   End
   Begin VB.Image Image1 
      Height          =   3120
      Left            =   7440
      Picture         =   "SplashScreen.frx":0000
      Stretch         =   -1  'True
      Top             =   480
      Width           =   5280
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BackColor       =   &H003D4255&
      Caption         =   "Point Of Sale Management"
      BeginProperty Font 
         Name            =   "Constantia"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   375
      Left            =   1680
      TabIndex        =   1
      Top             =   2400
      Width           =   3975
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BackColor       =   &H003D4255&
      Caption         =   "Brew Haven Coffee"
      BeginProperty Font 
         Name            =   "Constantia"
         Size            =   36
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   3015
      Left            =   1080
      TabIndex        =   0
      Top             =   480
      Width           =   5415
   End
End
Attribute VB_Name = "SplashScreen"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub Button1_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Button1.BackColor = RGB(255, 192, 173)
Button1.ForeColor = RGB(85, 66, 61)
End Sub

Private Sub Form_Load()
    Timer1.Interval = 500
    Timer1.Enabled = True
    Label3.BackStyle = 0
    ProgressBar1.Value = 0
    Button1.Visible = False
End Sub

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Button1.BackColor = RGB(85, 66, 61)
Button1.ForeColor = vbWhite
End Sub

Private Sub Timer1_Timer()
    Label3.Caption = ProgressBar1.Value & "%"
    
    If ProgressBar1.Value < 100 Then
        ProgressBar1.Value = ProgressBar1.Value + 10
    Else
        Label3.Visible = False
        Timer1.Enabled = False
        Button1.Visible = True
    End If
End Sub

Private Sub Button1_Click()
    LoginForm.Show
    Me.Hide
End Sub

