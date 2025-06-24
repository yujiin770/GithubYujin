VERSION 5.00
Begin VB.Form RecieptForm 
   BackColor       =   &H003D4255&
   Caption         =   "Form1"
   ClientHeight    =   8085
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   11430
   LinkTopic       =   "Form1"
   ScaleHeight     =   8085
   ScaleWidth      =   11430
   StartUpPosition =   2  'CenterScreen
   Begin VB.ListBox RecieptItemListBox 
      BackColor       =   &H00C0C0FF&
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   3195
      Left            =   3600
      TabIndex        =   0
      Top             =   1080
      Width           =   3975
   End
   Begin VB.Label Label8 
      Alignment       =   1  'Right Justify
      BackColor       =   &H003D4255&
      Caption         =   "P"
      BeginProperty Font 
         Name            =   "Constantia"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   375
      Left            =   7800
      TabIndex        =   14
      Top             =   5880
      Width           =   255
   End
   Begin VB.Label Label7 
      Alignment       =   1  'Right Justify
      BackColor       =   &H003D4255&
      Caption         =   "P"
      BeginProperty Font 
         Name            =   "Constantia"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   375
      Left            =   7800
      TabIndex        =   13
      Top             =   5280
      Width           =   255
   End
   Begin VB.Label Label6 
      Alignment       =   1  'Right Justify
      BackColor       =   &H003D4255&
      Caption         =   "P"
      BeginProperty Font 
         Name            =   "Constantia"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   375
      Left            =   3120
      TabIndex        =   12
      Top             =   5880
      Width           =   255
   End
   Begin VB.Label Label5 
      Alignment       =   1  'Right Justify
      BackColor       =   &H003D4255&
      Caption         =   "P"
      BeginProperty Font 
         Name            =   "Constantia"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   375
      Left            =   3120
      TabIndex        =   11
      Top             =   5280
      Width           =   255
   End
   Begin VB.Label Label4 
      Alignment       =   1  'Right Justify
      BackColor       =   &H003D4255&
      Caption         =   "Change:"
      BeginProperty Font 
         Name            =   "Constantia"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   495
      Left            =   5880
      TabIndex        =   10
      Top             =   5880
      Width           =   1575
   End
   Begin VB.Label Label3 
      Alignment       =   1  'Right Justify
      BackColor       =   &H003D4255&
      Caption         =   "VAT:"
      BeginProperty Font 
         Name            =   "Constantia"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   495
      Left            =   5880
      TabIndex        =   9
      Top             =   5280
      Width           =   1575
   End
   Begin VB.Label Label2 
      Alignment       =   1  'Right Justify
      BackColor       =   &H003D4255&
      Caption         =   "Total Amount:"
      BeginProperty Font 
         Name            =   "Constantia"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   375
      Left            =   960
      TabIndex        =   8
      Top             =   5880
      Width           =   2055
   End
   Begin VB.Label Label1 
      Alignment       =   1  'Right Justify
      BackColor       =   &H003D4255&
      Caption         =   "Payment:"
      BeginProperty Font 
         Name            =   "Constantia"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   375
      Left            =   1440
      TabIndex        =   7
      Top             =   5280
      Width           =   1575
   End
   Begin VB.Label ProceedButton 
      Alignment       =   2  'Center
      BackColor       =   &H003D4255&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Print"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   495
      Left            =   9360
      TabIndex        =   5
      Top             =   7200
      Width           =   1815
   End
   Begin VB.Label CancelButton 
      Alignment       =   2  'Center
      BackColor       =   &H003D4255&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Cancel"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   495
      Left            =   7440
      TabIndex        =   6
      Top             =   7200
      Width           =   1815
   End
   Begin VB.Label Changelabel 
      BackColor       =   &H003D4255&
      Caption         =   "0.00"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   375
      Left            =   8160
      TabIndex        =   4
      Top             =   5880
      Width           =   1575
   End
   Begin VB.Label Vatlabel 
      BackColor       =   &H003D4255&
      Caption         =   "0.00"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   375
      Left            =   8160
      TabIndex        =   3
      Top             =   5280
      Width           =   1575
   End
   Begin VB.Label TotalAmountlabel 
      BackColor       =   &H003D4255&
      Caption         =   "0.00"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   375
      Left            =   3480
      TabIndex        =   2
      Top             =   5880
      Width           =   1575
   End
   Begin VB.Label PaymentLabel 
      BackColor       =   &H003D4255&
      Caption         =   "0.00"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   375
      Left            =   3480
      TabIndex        =   1
      Top             =   5280
      Width           =   1575
   End
End
Attribute VB_Name = "RecieptForm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub ProceedButton_Click()
    Dim TotalAmount As Double
    TotalAmount = Val(DASHBOARD.TotalAmountLabel.Caption)
    
   
    DASHBOARD.lblTotalSales.Caption = Format(Val(DASHBOARD.lblTotalSales.Caption) + TotalAmount, "0.00")
    
    
    Dim i As Integer
    For i = 0 To DASHBOARD.ItemListBox.ListCount - 1
        DASHBOARD.ItemSoldListBox.AddItem DASHBOARD.ItemListBox.List(i)
    Next
    DASHBOARD.ItemListBox.Clear

   
    DASHBOARD.AmountLabel.Caption = "0.00"
    DASHBOARD.TotalAmountLabel.Caption = "0.00"
    DASHBOARD.PriceLabel.Caption = "0.00"
    DASHBOARD.ItemListBox.Clear
    
    RecieptItemListBox.Text = ""
    DASHBOARD.QuantityTextBox.Text = ""
    RecieptItemListBox.Clear
    
    
    DASHBOARD.Show
    ProceedButton.Enabled = False
    CancelButton.Enabled = False

End Sub

Private Sub CancelButton_Click()
    Dim response As Integer
    response = MsgBox("Are you sure you want to cancel the transaction?", vbOKCancel, "Confirm Cancellation")
    
    If response = vbOK Then
        DASHBOARD.Show
        Me.Hide
    End If

    DASHBOARD.Refresh
End Sub

