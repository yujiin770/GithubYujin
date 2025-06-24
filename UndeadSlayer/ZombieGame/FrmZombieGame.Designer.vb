<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class FrmZombieGame
    Inherits System.Windows.Forms.Form

    'Form overrides dispose to clean up the component list.
    <System.Diagnostics.DebuggerNonUserCode()> _
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        Try
            If disposing AndAlso components IsNot Nothing Then
                components.Dispose()
            End If
        Finally
            MyBase.Dispose(disposing)
        End Try
    End Sub

    'Required by the Windows Form Designer
    Private components As System.ComponentModel.IContainer

    'NOTE: The following procedure is required by the Windows Form Designer
    'It can be modified using the Windows Form Designer.  
    'Do not modify it using the code editor.
    <System.Diagnostics.DebuggerStepThrough()> _
    Private Sub InitializeComponent()
        Me.components = New System.ComponentModel.Container()
        Me.MenuStrip1 = New System.Windows.Forms.MenuStrip()
        Me.PLAYToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.PAUSEToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.NEWGAMEToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.EXITToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.ToolStripMenuItem1 = New System.Windows.Forms.ToolStripMenuItem()
        Me.TrmMovement = New System.Windows.Forms.Timer(Me.components)
        Me.lbltime = New System.Windows.Forms.Label()
        Me.lblhealth = New System.Windows.Forms.Label()
        Me.lblKills = New System.Windows.Forms.Label()
        Me.ProgressBar1 = New System.Windows.Forms.ProgressBar()
        Me.TimerHealth = New System.Windows.Forms.Timer(Me.components)
        Me.lblMainMenu = New System.Windows.Forms.Label()
        Me.lblResume = New System.Windows.Forms.Label()
        Me.lblDied = New System.Windows.Forms.Label()
        Me.lblRetry = New System.Windows.Forms.Label()
        Me.PicHealthPowerUp = New System.Windows.Forms.PictureBox()
        Me.PicBulletPic = New System.Windows.Forms.PictureBox()
        Me.Pic2ZombiePic = New System.Windows.Forms.PictureBox()
        Me.PicPlayer = New System.Windows.Forms.PictureBox()
        Me.MenuStrip1.SuspendLayout()
        CType(Me.PicHealthPowerUp, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.PicBulletPic, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.Pic2ZombiePic, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.PicPlayer, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'MenuStrip1
        '
        Me.MenuStrip1.BackColor = System.Drawing.Color.Transparent
        Me.MenuStrip1.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.PLAYToolStripMenuItem, Me.PAUSEToolStripMenuItem, Me.NEWGAMEToolStripMenuItem, Me.EXITToolStripMenuItem, Me.ToolStripMenuItem1})
        Me.MenuStrip1.Location = New System.Drawing.Point(0, 0)
        Me.MenuStrip1.Name = "MenuStrip1"
        Me.MenuStrip1.Size = New System.Drawing.Size(935, 31)
        Me.MenuStrip1.TabIndex = 0
        Me.MenuStrip1.Text = "MenuStrip1"
        '
        'PLAYToolStripMenuItem
        '
        Me.PLAYToolStripMenuItem.Font = New System.Drawing.Font("Chiller", 14.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.PLAYToolStripMenuItem.ForeColor = System.Drawing.Color.WhiteSmoke
        Me.PLAYToolStripMenuItem.Name = "PLAYToolStripMenuItem"
        Me.PLAYToolStripMenuItem.Size = New System.Drawing.Size(59, 27)
        Me.PLAYToolStripMenuItem.Text = "PLAY"
        '
        'PAUSEToolStripMenuItem
        '
        Me.PAUSEToolStripMenuItem.Font = New System.Drawing.Font("Chiller", 14.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.PAUSEToolStripMenuItem.ForeColor = System.Drawing.Color.WhiteSmoke
        Me.PAUSEToolStripMenuItem.Name = "PAUSEToolStripMenuItem"
        Me.PAUSEToolStripMenuItem.Size = New System.Drawing.Size(67, 27)
        Me.PAUSEToolStripMenuItem.Text = "PAUSE"
        '
        'NEWGAMEToolStripMenuItem
        '
        Me.NEWGAMEToolStripMenuItem.Font = New System.Drawing.Font("Chiller", 14.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.NEWGAMEToolStripMenuItem.ForeColor = System.Drawing.Color.WhiteSmoke
        Me.NEWGAMEToolStripMenuItem.Name = "NEWGAMEToolStripMenuItem"
        Me.NEWGAMEToolStripMenuItem.Size = New System.Drawing.Size(105, 27)
        Me.NEWGAMEToolStripMenuItem.Text = "NEW GAME "
        '
        'EXITToolStripMenuItem
        '
        Me.EXITToolStripMenuItem.Font = New System.Drawing.Font("Chiller", 14.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.EXITToolStripMenuItem.ForeColor = System.Drawing.Color.WhiteSmoke
        Me.EXITToolStripMenuItem.Name = "EXITToolStripMenuItem"
        Me.EXITToolStripMenuItem.Size = New System.Drawing.Size(57, 27)
        Me.EXITToolStripMenuItem.Text = "EXIT"
        '
        'ToolStripMenuItem1
        '
        Me.ToolStripMenuItem1.Name = "ToolStripMenuItem1"
        Me.ToolStripMenuItem1.Size = New System.Drawing.Size(12, 27)
        '
        'TrmMovement
        '
        '
        'lbltime
        '
        Me.lbltime.AutoSize = True
        Me.lbltime.BackColor = System.Drawing.Color.Transparent
        Me.lbltime.Font = New System.Drawing.Font("Chiller", 15.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lbltime.ForeColor = System.Drawing.Color.WhiteSmoke
        Me.lbltime.Location = New System.Drawing.Point(562, 9)
        Me.lbltime.Name = "lbltime"
        Me.lbltime.Size = New System.Drawing.Size(56, 24)
        Me.lbltime.TabIndex = 4
        Me.lbltime.Text = "TIME:"
        '
        'lblhealth
        '
        Me.lblhealth.AutoSize = True
        Me.lblhealth.BackColor = System.Drawing.Color.Transparent
        Me.lblhealth.Font = New System.Drawing.Font("Chiller", 15.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lblhealth.ForeColor = System.Drawing.Color.WhiteSmoke
        Me.lblhealth.Location = New System.Drawing.Point(706, 9)
        Me.lblhealth.Name = "lblhealth"
        Me.lblhealth.Size = New System.Drawing.Size(77, 24)
        Me.lblhealth.TabIndex = 5
        Me.lblhealth.Text = "HEALTH:"
        '
        'lblKills
        '
        Me.lblKills.AutoSize = True
        Me.lblKills.BackColor = System.Drawing.Color.Transparent
        Me.lblKills.Font = New System.Drawing.Font("Chiller", 15.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lblKills.ForeColor = System.Drawing.Color.WhiteSmoke
        Me.lblKills.Location = New System.Drawing.Point(415, 7)
        Me.lblKills.Name = "lblKills"
        Me.lblKills.Size = New System.Drawing.Size(63, 24)
        Me.lblKills.TabIndex = 6
        Me.lblKills.Text = "KILLS:"
        '
        'ProgressBar1
        '
        Me.ProgressBar1.Location = New System.Drawing.Point(789, 12)
        Me.ProgressBar1.Name = "ProgressBar1"
        Me.ProgressBar1.Size = New System.Drawing.Size(82, 19)
        Me.ProgressBar1.TabIndex = 7
        '
        'TimerHealth
        '
        Me.TimerHealth.Enabled = True
        Me.TimerHealth.Interval = 10
        '
        'lblMainMenu
        '
        Me.lblMainMenu.Font = New System.Drawing.Font("Chiller", 21.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lblMainMenu.ForeColor = System.Drawing.Color.WhiteSmoke
        Me.lblMainMenu.Location = New System.Drawing.Point(413, 319)
        Me.lblMainMenu.Name = "lblMainMenu"
        Me.lblMainMenu.Size = New System.Drawing.Size(136, 50)
        Me.lblMainMenu.TabIndex = 8
        Me.lblMainMenu.Text = "Main Menu"
        Me.lblMainMenu.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        Me.lblMainMenu.Visible = False
        '
        'lblResume
        '
        Me.lblResume.Font = New System.Drawing.Font("Chiller", 21.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lblResume.ForeColor = System.Drawing.Color.WhiteSmoke
        Me.lblResume.Location = New System.Drawing.Point(413, 255)
        Me.lblResume.Name = "lblResume"
        Me.lblResume.Size = New System.Drawing.Size(136, 50)
        Me.lblResume.TabIndex = 9
        Me.lblResume.Text = "Resume"
        Me.lblResume.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        Me.lblResume.Visible = False
        '
        'lblDied
        '
        Me.lblDied.Font = New System.Drawing.Font("Chiller", 21.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lblDied.ForeColor = System.Drawing.Color.Firebrick
        Me.lblDied.Location = New System.Drawing.Point(311, 184)
        Me.lblDied.Name = "lblDied"
        Me.lblDied.Size = New System.Drawing.Size(314, 121)
        Me.lblDied.TabIndex = 10
        Me.lblDied.Text = "You DieD !!"
        Me.lblDied.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        Me.lblDied.Visible = False
        '
        'lblRetry
        '
        Me.lblRetry.Font = New System.Drawing.Font("Chiller", 21.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lblRetry.ForeColor = System.Drawing.Color.Firebrick
        Me.lblRetry.Location = New System.Drawing.Point(317, 295)
        Me.lblRetry.Name = "lblRetry"
        Me.lblRetry.Size = New System.Drawing.Size(301, 99)
        Me.lblRetry.TabIndex = 11
        Me.lblRetry.Text = "RETRY!!"
        Me.lblRetry.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        Me.lblRetry.Visible = False
        '
        'PicHealthPowerUp
        '
        Me.PicHealthPowerUp.BackColor = System.Drawing.Color.Transparent
        Me.PicHealthPowerUp.Image = Global.ZombieGame.My.Resources.Resources.health
        Me.PicHealthPowerUp.Location = New System.Drawing.Point(160, 350)
        Me.PicHealthPowerUp.Name = "PicHealthPowerUp"
        Me.PicHealthPowerUp.Size = New System.Drawing.Size(40, 37)
        Me.PicHealthPowerUp.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage
        Me.PicHealthPowerUp.TabIndex = 12
        Me.PicHealthPowerUp.TabStop = False
        Me.PicHealthPowerUp.Visible = False
        '
        'PicBulletPic
        '
        Me.PicBulletPic.BackColor = System.Drawing.Color.Transparent
        Me.PicBulletPic.Image = Global.ZombieGame.My.Resources.Resources.Bullet3
        Me.PicBulletPic.Location = New System.Drawing.Point(681, 401)
        Me.PicBulletPic.Name = "PicBulletPic"
        Me.PicBulletPic.Size = New System.Drawing.Size(8, 35)
        Me.PicBulletPic.SizeMode = System.Windows.Forms.PictureBoxSizeMode.AutoSize
        Me.PicBulletPic.TabIndex = 3
        Me.PicBulletPic.TabStop = False
        Me.PicBulletPic.Visible = False
        '
        'Pic2ZombiePic
        '
        Me.Pic2ZombiePic.BackColor = System.Drawing.Color.Transparent
        Me.Pic2ZombiePic.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Zoom
        Me.Pic2ZombiePic.Image = Global.ZombieGame.My.Resources.Resources._462541271_548088771186171_2182733735407160627_n1
        Me.Pic2ZombiePic.Location = New System.Drawing.Point(631, 255)
        Me.Pic2ZombiePic.Name = "Pic2ZombiePic"
        Me.Pic2ZombiePic.Size = New System.Drawing.Size(44, 50)
        Me.Pic2ZombiePic.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage
        Me.Pic2ZombiePic.TabIndex = 2
        Me.Pic2ZombiePic.TabStop = False
        Me.Pic2ZombiePic.Visible = False
        '
        'PicPlayer
        '
        Me.PicPlayer.BackColor = System.Drawing.Color.Transparent
        Me.PicPlayer.Image = Global.ZombieGame.My.Resources.Resources.MainChar1
        Me.PicPlayer.Location = New System.Drawing.Point(419, 401)
        Me.PicPlayer.Name = "PicPlayer"
        Me.PicPlayer.Size = New System.Drawing.Size(58, 50)
        Me.PicPlayer.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom
        Me.PicPlayer.TabIndex = 1
        Me.PicPlayer.TabStop = False
        '
        'FrmZombieGame
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackColor = System.Drawing.SystemColors.ActiveCaptionText
        Me.ClientSize = New System.Drawing.Size(935, 575)
        Me.Controls.Add(Me.PicHealthPowerUp)
        Me.Controls.Add(Me.lblRetry)
        Me.Controls.Add(Me.lblDied)
        Me.Controls.Add(Me.lblResume)
        Me.Controls.Add(Me.lblMainMenu)
        Me.Controls.Add(Me.ProgressBar1)
        Me.Controls.Add(Me.lblKills)
        Me.Controls.Add(Me.lblhealth)
        Me.Controls.Add(Me.lbltime)
        Me.Controls.Add(Me.PicBulletPic)
        Me.Controls.Add(Me.Pic2ZombiePic)
        Me.Controls.Add(Me.PicPlayer)
        Me.Controls.Add(Me.MenuStrip1)
        Me.MainMenuStrip = Me.MenuStrip1
        Me.Name = "FrmZombieGame"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "Form1"
        Me.MenuStrip1.ResumeLayout(False)
        Me.MenuStrip1.PerformLayout()
        CType(Me.PicHealthPowerUp, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.PicBulletPic, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.Pic2ZombiePic, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.PicPlayer, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents MenuStrip1 As System.Windows.Forms.MenuStrip
    Friend WithEvents TrmMovement As System.Windows.Forms.Timer
    Friend WithEvents PicPlayer As System.Windows.Forms.PictureBox
    Friend WithEvents Pic2ZombiePic As System.Windows.Forms.PictureBox
    Friend WithEvents PicBulletPic As System.Windows.Forms.PictureBox
    Friend WithEvents PLAYToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents PAUSEToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents NEWGAMEToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents EXITToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents lbltime As System.Windows.Forms.Label
    Friend WithEvents lblhealth As System.Windows.Forms.Label
    Friend WithEvents lblKills As System.Windows.Forms.Label
    Friend WithEvents ProgressBar1 As System.Windows.Forms.ProgressBar
    Friend WithEvents TimerHealth As System.Windows.Forms.Timer
    Friend WithEvents lblMainMenu As System.Windows.Forms.Label
    Friend WithEvents lblResume As System.Windows.Forms.Label
    Friend WithEvents lblDied As System.Windows.Forms.Label
    Friend WithEvents lblRetry As System.Windows.Forms.Label
    Friend WithEvents PicHealthPowerUp As System.Windows.Forms.PictureBox
    Friend WithEvents ToolStripMenuItem1 As System.Windows.Forms.ToolStripMenuItem

End Class
