VERSION 5.00
Begin VB.Form DASHBOARD 
   BackColor       =   &H003D4255&
   Caption         =   "Form1"
   ClientHeight    =   8925
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   14730
   LinkTopic       =   "Form1"
   MousePointer    =   1  'Arrow
   ScaleHeight     =   8925
   ScaleWidth      =   14730
   StartUpPosition =   2  'CenterScreen
   Begin VB.Frame MainMenuGroupBox 
      BackColor       =   &H003D4255&
      Height          =   1095
      Left            =   240
      TabIndex        =   0
      Top             =   240
      Width           =   14295
      Begin VB.Label SettingsButton 
         Alignment       =   2  'Center
         BackColor       =   &H003D4255&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "SETTINGS"
         BeginProperty Font 
            Name            =   "Consolas"
            Size            =   24
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   735
         Left            =   10920
         TabIndex        =   23
         Top             =   240
         Width           =   2895
      End
      Begin VB.Label SalesButton 
         Alignment       =   2  'Center
         BackColor       =   &H003D4255&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "SALES"
         BeginProperty Font 
            Name            =   "Consolas"
            Size            =   24
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   735
         Left            =   5640
         TabIndex        =   22
         Top             =   240
         Width           =   2895
      End
      Begin VB.Label POSbutton 
         Alignment       =   2  'Center
         BackColor       =   &H003D4255&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "POS"
         BeginProperty Font 
            Name            =   "Consolas"
            Size            =   24
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   735
         Left            =   360
         TabIndex        =   21
         Top             =   240
         Width           =   2895
      End
   End
   Begin VB.Frame POSControlGroupBox 
      BackColor       =   &H003D4255&
      Height          =   7335
      Left            =   240
      TabIndex        =   1
      Top             =   1560
      Width           =   14295
      Begin VB.ListBox ItemListBox 
         BeginProperty Font 
            Name            =   "Consolas"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   2940
         Left            =   9960
         TabIndex        =   12
         Top             =   600
         Width           =   3975
      End
      Begin VB.TextBox QuantityTextBox 
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   2640
         MousePointer    =   3  'I-Beam
         TabIndex        =   11
         Top             =   2400
         Width           =   1815
      End
      Begin VB.ComboBox ProductNameCombobox 
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   405
         Left            =   2640
         Style           =   2  'Dropdown List
         TabIndex        =   8
         Top             =   1080
         Width           =   2415
      End
      Begin VB.ComboBox CategoriesCombobox 
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   405
         Left            =   2640
         Style           =   2  'Dropdown List
         TabIndex        =   7
         Top             =   360
         Width           =   2415
      End
      Begin VB.Frame Groupbox1 
         BackColor       =   &H00ADC0FF&
         ForeColor       =   &H00ADC0FF&
         Height          =   1695
         Left            =   10200
         TabIndex        =   3
         Top             =   4080
         Width           =   3495
         Begin VB.Label Label9 
            Alignment       =   2  'Center
            BackColor       =   &H00ADC0FF&
            Caption         =   "Total Amount"
            BeginProperty Font 
               Name            =   "Constantia"
               Size            =   14.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H003D4255&
            Height          =   375
            Left            =   720
            TabIndex        =   31
            Top             =   240
            Width           =   1935
         End
         Begin VB.Label Label6 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00ADC0FF&
            Caption         =   "P"
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   14.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H003D4255&
            Height          =   375
            Left            =   -600
            TabIndex        =   20
            Top             =   840
            Width           =   1935
         End
         Begin VB.Label TotalAmountLabel 
            BackColor       =   &H00ADC0FF&
            Caption         =   "0.00"
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   14.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H003D4255&
            Height          =   375
            Left            =   1560
            TabIndex        =   14
            Top             =   840
            Width           =   1575
         End
      End
      Begin VB.Frame Groupbox3 
         BackColor       =   &H00ADC0FF&
         Height          =   1815
         Left            =   600
         TabIndex        =   2
         Top             =   3840
         Width           =   3495
         Begin VB.Label Label8 
            Alignment       =   2  'Center
            BackColor       =   &H00ADC0FF&
            Caption         =   "Amount"
            BeginProperty Font 
               Name            =   "Constantia"
               Size            =   14.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H003D4255&
            Height          =   375
            Left            =   840
            TabIndex        =   30
            Top             =   240
            Width           =   1575
         End
         Begin VB.Label Label4 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00ADC0FF&
            Caption         =   "P"
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H003D4255&
            Height          =   375
            Left            =   -720
            TabIndex        =   19
            Top             =   960
            Width           =   1935
         End
         Begin VB.Label AmountLabel 
            BackColor       =   &H00ADC0FF&
            Caption         =   "0.00"
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   14.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H003D4255&
            Height          =   375
            Left            =   1560
            TabIndex        =   13
            Top             =   960
            Width           =   1575
         End
      End
      Begin VB.Label Label7 
         Alignment       =   1  'Right Justify
         BackColor       =   &H003D4255&
         Caption         =   "P"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   375
         Left            =   2520
         TabIndex        =   29
         Top             =   1800
         Width           =   375
      End
      Begin VB.Shape Shape2 
         BackColor       =   &H00ADC0FF&
         BackStyle       =   1  'Opaque
         BorderColor     =   &H00ADC0FF&
         Height          =   2055
         Left            =   10080
         Shape           =   4  'Rounded Rectangle
         Top             =   3960
         Width           =   3735
      End
      Begin VB.Shape Shape1 
         BackColor       =   &H00ADC0FF&
         BackStyle       =   1  'Opaque
         BorderColor     =   &H00ADC0FF&
         Height          =   2055
         Left            =   480
         Shape           =   4  'Rounded Rectangle
         Top             =   3720
         Width           =   3735
      End
      Begin VB.Label SubmitButton 
         Alignment       =   2  'Center
         BackColor       =   &H003D4255&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Submit"
         BeginProperty Font 
            Name            =   "Consolas"
            Size            =   24
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   735
         Left            =   10800
         TabIndex        =   27
         Top             =   6240
         Width           =   2895
      End
      Begin VB.Label ClearButton 
         Alignment       =   2  'Center
         BackColor       =   &H003D4255&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Clear"
         BeginProperty Font 
            Name            =   "Consolas"
            Size            =   24
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   735
         Left            =   7560
         TabIndex        =   26
         Top             =   6240
         Width           =   2895
      End
      Begin VB.Label AddItemButton 
         Alignment       =   2  'Center
         BackColor       =   &H003D4255&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Add Item"
         BeginProperty Font 
            Name            =   "Consolas"
            Size            =   24
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   735
         Left            =   720
         TabIndex        =   25
         Top             =   6240
         Width           =   2895
      End
      Begin VB.Label VoidButton 
         Alignment       =   2  'Center
         BackColor       =   &H003D4255&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Void"
         BeginProperty Font 
            Name            =   "Consolas"
            Size            =   24
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   735
         Left            =   4200
         TabIndex        =   24
         Top             =   6240
         Width           =   2895
      End
      Begin VB.Label Label5 
         BackColor       =   &H003D4255&
         Caption         =   "Quantity"
         BeginProperty Font 
            Name            =   "Constantia"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   375
         Left            =   360
         TabIndex        =   10
         Top             =   2520
         Width           =   1575
      End
      Begin VB.Label PriceLabel 
         BackColor       =   &H003D4255&
         Caption         =   "0.0"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000B&
         Height          =   375
         Left            =   3120
         TabIndex        =   9
         Top             =   1800
         Width           =   1695
      End
      Begin VB.Label Label3 
         BackColor       =   &H003D4255&
         Caption         =   "Price"
         BeginProperty Font 
            Name            =   "Constantia"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   375
         Left            =   360
         TabIndex        =   6
         Top             =   1800
         Width           =   1575
      End
      Begin VB.Label Label2 
         BackColor       =   &H003D4255&
         Caption         =   "Products"
         BeginProperty Font 
            Name            =   "Constantia"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   375
         Left            =   360
         TabIndex        =   5
         Top             =   1080
         Width           =   1575
      End
      Begin VB.Label Label1 
         BackColor       =   &H003D4255&
         Caption         =   "Categories"
         BeginProperty Font 
            Name            =   "Constantia"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   495
         Left            =   360
         TabIndex        =   4
         Top             =   360
         Width           =   1575
      End
   End
   Begin VB.Frame SalesGroupBox 
      BackColor       =   &H003D4255&
      Height          =   7335
      Left            =   240
      TabIndex        =   16
      Top             =   1560
      Width           =   14295
      Begin VB.ListBox ItemSoldListBox 
         BeginProperty Font 
            Name            =   "Consolas"
            Size            =   18
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   3000
         Left            =   4920
         TabIndex        =   17
         Top             =   480
         Width           =   4455
      End
      Begin VB.Label lblTotalSales 
         BackColor       =   &H003D4255&
         Caption         =   "Price"
         BeginProperty Font 
            Name            =   "Consolas"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   375
         Left            =   6360
         TabIndex        =   18
         Top             =   4440
         Width           =   1575
      End
   End
   Begin VB.Frame SettingsGroupBox 
      BackColor       =   &H003D4255&
      Height          =   7335
      Left            =   240
      TabIndex        =   15
      Top             =   1560
      Width           =   14295
      Begin VB.Label LogOutButton 
         Alignment       =   2  'Center
         BackColor       =   &H003D4255&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Logout"
         BeginProperty Font 
            Name            =   "Consolas"
            Size            =   24
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   735
         Left            =   5400
         TabIndex        =   28
         Top             =   3240
         Width           =   2895
      End
   End
End
Attribute VB_Name = "DASHBOARD"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Dim ApplePrice As Currency
Dim BananaPrice As Currency
Dim CherryPrice As Currency
Dim CarrotPrice As Currency
Dim BroccoliPrice As Currency
Dim LettucePrice As Currency
Dim CokePrice As Currency
Dim JuicePrice As Currency
Dim WaterPrice As Currency
Dim Amount As Currency

Private Sub Form_Load()
    ApplePrice = 75
    BananaPrice = 85
    CherryPrice = 79.99
    CarrotPrice = 59.99
    BroccoliPrice = 39.99
    LettucePrice = 70
    CokePrice = 99.99
    JuicePrice = 90
    WaterPrice = 120
    Amount = 0#
    
    CategoriesCombobox.AddItem "Select-Item"
    CategoriesCombobox.AddItem "EXPRESSO"
    CategoriesCombobox.AddItem "ICED"
    CategoriesCombobox.AddItem "DESSERT"
    CategoriesCombobox.ListIndex = 0
    
    ProductNameCombobox.AddItem "Select-Item"
    ProductNameCombobox.ListIndex = 0
End Sub

Private Sub CategoriesComboBox_Click()
    ProductNameCombobox.Clear
    Select Case CategoriesCombobox.ListIndex
        Case 1
            ProductNameCombobox.AddItem "Cafe Latte"
            ProductNameCombobox.AddItem "Cafe Americano"
            ProductNameCombobox.AddItem "Capuccino"
        Case 2
            ProductNameCombobox.AddItem "Iced-Coffee"
            ProductNameCombobox.AddItem "Milk-Tea"
            ProductNameCombobox.AddItem "Frappe"
        Case 3
            ProductNameCombobox.AddItem "Cheesecake"
            ProductNameCombobox.AddItem "Brownies"
            ProductNameCombobox.AddItem "Chocolate-Cake"
    End Select
End Sub

Private Sub POSButton_Click()
SalesGroupBox.Visible = False
SettingsGroupBox.Visible = False
POSControlGroupBox.Visible = True
End Sub

Private Sub ProductNameCombobox_Click()
    PriceLabel.Caption = "0.00"
    Select Case ProductNameCombobox.Text
        Case "Cafe Latte": PriceLabel.Caption = ApplePrice
        Case "Cafe Americano": PriceLabel.Caption = BananaPrice
        Case "Capuccino": PriceLabel.Caption = CherryPrice
        Case "Iced-Coffee": PriceLabel.Caption = CarrotPrice
        Case "Milk-Tea": PriceLabel.Caption = BroccoliPrice
        Case "Frappe": PriceLabel.Caption = LettucePrice
        Case "Cheesecake": PriceLabel.Caption = CokePrice
        Case "Brownies": PriceLabel.Caption = JuicePrice
        Case "Chocolate-Cake": PriceLabel.Caption = WaterPrice
    End Select
End Sub

Private Sub QuantityTextBox_Change()
    If IsNumeric(QuantityTextBox.Text) Then
        AmountLabel.Caption = Val(PriceLabel.Caption) * Val(QuantityTextBox.Text)
    Else
        AmountLabel.Caption = "0.00"
    End If
End Sub

Private Sub AddItemButton_Click()
 If ProductNameCombobox.Text = "Select-Item" Or ProductNameCombobox.Text = "" Then
        MsgBox "Please select a product!", vbOKOnly, "Selection Error"
        Exit Sub
    End If
    If Val(QuantityTextBox.Text) <= 0 Then
        MsgBox "Please enter a valid quantity!", vbOKOnly, "Quantity Error"
        Exit Sub
    End If
    If Val(AmountLabel.Caption) <= 0 Then
        MsgBox "Invalid price! Please select a valid product.", vbOKOnly, "Price Error"
        Exit Sub
    End If
    
    Dim itemDetails As String
    itemDetails = ProductNameCombobox.Text & "  " & QuantityTextBox.Text & "  " & AmountLabel.Caption
    ItemListBox.AddItem itemDetails
    RecieptForm.RecieptItemListBox.AddItem itemDetails
    TotalAmountlabel.Caption = Format(Val(TotalAmountlabel.Caption) + Val(AmountLabel.Caption), "0.00")
    
    AmountLabel.Caption = "0.00"
    QuantityTextBox.Text = ""
  
End Sub



Private Sub QuantityTextBox_KeyPress(KeyAscii As Integer)
If (KeyAscii < 48 Or KeyAscii > 57) And KeyAscii <> 8 Then
        KeyAscii = 0
    End If
End Sub

Private Sub SalesButton_Click()
SalesGroupBox.Visible = True
SettingsGroupBox.Visible = False
POSControlGroupBox.Visible = False
End Sub

Private Sub SettingsButton_Click()
SalesGroupBox.Visible = False
SettingsGroupBox.Visible = True
POSControlGroupBox.Visible = False
End Sub



Private Sub VoidButton_Click()
 If ItemListBox.ListIndex >= 0 Then
    If MsgBox("Are you sure you want to void this item?", vbOKCancel, "Confirm Void") = vbOK Then
        Dim selectedItem As String
        selectedItem = ItemListBox.List(ItemListBox.ListIndex)
        
        Dim itemParts() As String
        itemParts = Split(selectedItem, "  ")

        If UBound(itemParts) >= 2 Then
            TotalAmountlabel.Caption = Format(Val(TotalAmountlabel.Caption) - Val(itemParts(2)), "0.00")
        End If

      
        ItemListBox.RemoveItem ItemListBox.ListIndex
        Dim i As Integer
        For i = 0 To RecieptForm.RecieptItemListBox.ListCount - 1
            If RecieptForm.RecieptItemListBox.List(i) = selectedItem Then
                RecieptForm.RecieptItemListBox.RemoveItem i
                Exit For
            End If
        Next
    End If
Else
    MsgBox "Please select an item to void", vbOKOnly, "Error"
End If

  
    
End Sub

Private Sub ClearButton_Click()

    PriceLabel.Caption = "0.00"
    QuantityTextBox.Text = ""
    AmountLabel.Caption = "0.00"
    ItemListBox.Clear
    TotalAmountlabel.Caption = "0.00"
   
End Sub

Private Sub SubmitButton_Click()
PaymentForm.Show
End Sub

Private Sub LogOutButton_Click()
    If MsgBox("Are you sure you want to Logout?", vbOKCancel) = vbOK Then
        LoginForm.Show
        Me.Hide
    End If
    LoginForm.TextBox3.Text = ""
End Sub

