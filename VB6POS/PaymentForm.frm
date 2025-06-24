VERSION 5.00
Begin VB.Form PaymentForm 
   BackColor       =   &H003D4255&
   Caption         =   "Form1"
   ClientHeight    =   5445
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   6750
   LinkTopic       =   "Form1"
   ScaleHeight     =   5445
   ScaleWidth      =   6750
   StartUpPosition =   2  'CenterScreen
   Begin VB.TextBox PaymentAmountTextBox 
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   1800
      TabIndex        =   0
      Top             =   1080
      Width           =   2895
   End
   Begin VB.Label CancelButton 
      Alignment       =   2  'Center
      BackColor       =   &H003D4255&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Cancel"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   615
      Left            =   2160
      TabIndex        =   2
      Top             =   2760
      Width           =   2175
   End
   Begin VB.Label PayButton 
      Alignment       =   2  'Center
      BackColor       =   &H003D4255&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Pay"
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
      Left            =   2160
      TabIndex        =   1
      Top             =   1920
      Width           =   2175
   End
End
Attribute VB_Name = "PaymentForm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub CancelButton_Click()
    Unload Me
End Sub

Private Sub PayButton_Click()
    If DASHBOARD.ItemListBox.ListCount = 0 Then
        MsgBox "Select an item to purchase!", vbOKOnly, "Transaction Error"
        Exit Sub
    End If
    
    Dim paymentAmount As Double
    Dim TotalAmount As Double
    
    paymentAmount = Val(PaymentAmountTextBox.Text)
    TotalAmount = Val(DASHBOARD.TotalAmountLabel.Caption)
    
    If paymentAmount >= TotalAmount Then
        RecieptForm.PaymentLabel.Caption = paymentAmount
        RecieptForm.TotalAmountLabel.Caption = TotalAmount
        RecieptForm.Vatlabel.Caption = TotalAmount * 0.12
        RecieptForm.Changelabel.Caption = paymentAmount - TotalAmount
        
       
        
        RecieptForm.Show
        Unload Me
        
        RecieptForm.ProceedButton.Enabled = True
        RecieptForm.CancelButton.Enabled = True
        RecieptForm.Enabled = True
        
        DASHBOARD.Hide
    Else
        MsgBox "Insufficient Amount!", vbOKOnly, "Transaction Error"
    End If
End Sub

Private Sub GroupBox1_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
  
End Sub

Private Sub PaymentAmountTextBox_KeyPress(KeyAscii As Integer)
   
    If Not (KeyAscii >= 48 And KeyAscii <= 57) And KeyAscii <> 8 And KeyAscii <> 46 Then
        KeyAscii = 0
    End If
    
    If KeyAscii = 46 And InStr(1, PaymentAmountTextBox.Text, ".") > 0 Then
        KeyAscii = 0
    End If
End Sub

