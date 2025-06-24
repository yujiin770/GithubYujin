Public Class FrmZombieGame
    Dim Upb As Boolean
    Dim DownB As Boolean = False
    Dim leftb As Boolean = False
    Dim rightb As Boolean = False
    Dim shootUpb As Boolean = False
    Dim shootDownb As Boolean = False
    Dim shootLeftb As Boolean = False
    Dim shootRightb As Boolean = False

    Dim minutes As Integer = 0
    Dim seconds As Integer = 0
    Dim tempcount As Integer = 0

    Dim bullet(50) As PictureBox
    Dim bulletUse(50) As Boolean
    Dim BulletDirection(50) As Integer
    Dim ZombieSpawn As Integer = 0
    Dim Zombie(50) As PictureBox
    Dim ZombieUse(50) As Boolean

    Dim health As Integer = 100
    Dim kills As Integer = 0

    Dim PowerUp(50) As PictureBox
    Dim PowerUpUse(50) As Boolean
    Dim PowerUpSpawn As Integer = 0

    Dim lastDamageTime As DateTime = DateTime.MinValue
    Dim damageCooldown As TimeSpan = TimeSpan.FromSeconds(1) ' 1 second cooldown



    Private Sub Label1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles lbltime.Click

    End Sub

    Private Sub Label2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles lblhealth.Click

    End Sub

    Private Sub PLAYToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles PLAYToolStripMenuItem.Click
        TrmMovement.Start()
        health = 100
        PicPlayer.Visible = True
        PicBulletPic.Visible = False
        Pic2ZombiePic.Visible = False
        lblResume.Visible = False
        lblMainMenu.Visible = False
    End Sub

    Private Sub PAUSEToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles PAUSEToolStripMenuItem.Click
        TrmMovement.Stop()
        PicPlayer.Visible = False
        PicBulletPic.Visible = False
        Pic2ZombiePic.Visible = False
        lblResume.Visible = True
        lblMainMenu.Visible = True
    End Sub

    Private Sub FrmZombieGame_KeyDown(ByVal sender As Object, ByVal e As System.Windows.Forms.KeyEventArgs) Handles Me.KeyDown
        If e.KeyCode = Keys.Down Then
            DownB = True
            shootDownb = True
            shootLeftb = False
            shootRightb = False
            shootUpb = False
        ElseIf e.KeyCode = Keys.Up Then
            Upb = True
            shootDownb = False
            shootLeftb = False
            shootRightb = False
            shootUpb = True
        ElseIf e.KeyCode = Keys.Left Then
            leftb = True
            shootDownb = False
            shootLeftb = True
            shootRightb = False
            shootUpb = False
        ElseIf e.KeyCode = Keys.Right Then
            rightb = True
            shootDownb = False
            shootLeftb = False
            shootRightb = True
            shootUpb = False
        End If
        If e.KeyCode = Keys.Space Then
            Dim available As Integer
            For i = 0 To 49 Step 1
                If bulletUse(i) = False Then
                    available = i
                    GoTo a
                End If
a:
            Next
            If shootDownb = True Then
                BulletDirection(available) = 2
            ElseIf shootUpb = True Then
                BulletDirection(available) = 1
            ElseIf shootLeftb = True Then
                BulletDirection(available) = 3
            Else
                BulletDirection(available) = 4
            End If
            bullet(available) = New PictureBox
            bullet(available).Image = PicBulletPic.Image
            bullet(available).BackColor = Color.Transparent
            bullet(available).Width = 20
            bullet(available).Height = 20
            bullet(available).Location = New Point(PicPlayer.Location.X, PicPlayer.Location.Y)
            Me.Controls.Add(bullet(available))
            bulletUse(available) = True
        End If
    End Sub

    Private Sub FrmZombieGame_KeyUp(ByVal sender As Object, ByVal e As System.Windows.Forms.KeyEventArgs) Handles Me.KeyUp
        If e.KeyCode = Keys.Down Then
            DownB = False
        ElseIf e.KeyCode = Keys.Up Then
            Upb = False
        ElseIf e.KeyCode = Keys.Left Then
            leftb = False
        ElseIf e.KeyCode = Keys.Right Then
            rightb = False
        End If
    End Sub
    Private Sub Form1_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        ProgressBar1.Minimum = 0
        ProgressBar1.Maximum = 100
        ProgressBar1.Value = health

        ' power-up use 
        For i = 0 To 49
            PowerUpUse(i) = False
        Next
    End Sub

    Private Sub TrmMovement_Tick(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles TrmMovement.Tick
        ' Player movement 
        If Upb Then
            PicPlayer.Location = New Point(PicPlayer.Location.X, PicPlayer.Location.Y - 15)
        End If
        If DownB Then
            PicPlayer.Location = New Point(PicPlayer.Location.X, PicPlayer.Location.Y + 15)
        End If
        If leftb Then
            PicPlayer.Location = New Point(PicPlayer.Location.X - 15, PicPlayer.Location.Y)
        End If
        If rightb Then
            PicPlayer.Location = New Point(PicPlayer.Location.X + 15, PicPlayer.Location.Y)
        End If
        ' Bullet movement 
        For i = 0 To 49
            If bulletUse(i) Then
                ' bullet movement direction
                Select Case BulletDirection(i)
                    Case 1 ' Up
                        bullet(i).Location = New Point(bullet(i).Location.X, bullet(i).Location.Y - 20)
                    Case 2 ' Down
                        bullet(i).Location = New Point(bullet(i).Location.X, bullet(i).Location.Y + 20)
                    Case 3 ' Left
                        bullet(i).Location = New Point(bullet(i).Location.X - 20, bullet(i).Location.Y)
                    Case 4 ' Right
                        bullet(i).Location = New Point(bullet(i).Location.X + 20, bullet(i).Location.Y)
                End Select

                ' Check for collision with zombies
                For y = 0 To 49
                    If ZombieUse(y) AndAlso Zombie(y).Bounds.IntersectsWith(bullet(i).Bounds) Then
                        Zombie(y).Dispose()
                        Me.Controls.Remove(Zombie(y))
                        Me.Controls.Remove(bullet(i))
                        bulletUse(i) = False
                        ZombieUse(y) = False
                        kills += 1
                        lblKills.Text = "Kills: " & kills
                    End If
                Next
            End If
        Next

        ' Zombie spawning 
        ZombieSpawn += 1
        If ZombieSpawn = 15 Then
            Dim available As Integer = -1
            ZombieSpawn = 0
            For i = 0 To 49
                If Not ZombieUse(i) Then
                    available = i
                    Exit For
                End If
            Next
            If available >= 0 Then
                ' Spawn a new zombie at a random position
                Zombie(available) = New PictureBox
                Zombie(available).BackColor = Color.Transparent
                Zombie(available).Width = 65
                Zombie(available).Height = 65
                Zombie(available).Image = Pic2ZombiePic.Image
                Zombie(available).SizeMode = PictureBoxSizeMode.Zoom
                ZombieUse(available) = True

                ' Randomize zombie spawn 
                Randomize()
                Dim randomside = CInt(Math.Floor(Rnd() * 4)) + 1
                Dim randomlocation = CInt(Math.Floor(Rnd() * 980)) + 1

                Select Case randomside
                    Case 1 ' Top
                        Zombie(available).Location = New Point(randomlocation, 20)
                    Case 2 ' Bottom
                        Zombie(available).Location = New Point(randomlocation, 980)
                    Case 3 ' Left
                        Zombie(available).Location = New Point(20, randomlocation)
                    Case 4 ' Right
                        Zombie(available).Location = New Point(980, randomlocation)
                End Select
                Me.Controls.Add(Zombie(available))
            End If
        End If

        ' Power-up spawning 
        PowerUpSpawn += 1
        If PowerUpSpawn = 30 Then
            Dim available As Integer = -1
            PowerUpSpawn = 0
            For i = 0 To 49
                If Not PowerUpUse(i) Then
                    available = i
                    Exit For
                End If
            Next
            If available >= 0 Then
                ' Spawn a health power-up 
                PowerUp(available) = New PictureBox
                PowerUp(available).BackColor = Color.Transparent
                PowerUp(available).Width = 30
                PowerUp(available).Height = 30
                PowerUp(available).Image = PicHealthPowerUp.Image
                PowerUp(available).SizeMode = PictureBoxSizeMode.StretchImage
                PowerUpUse(available) = True

                ' Randomize power-up spawn
                Randomize()
                Dim randomside = CInt(Math.Floor(Rnd() * 4)) + 1
                Dim randomlocation = CInt(Math.Floor(Rnd() * 850)) + 1

                Select Case randomside
                    Case 1 ' Top
                        PowerUp(available).Location = New Point(randomlocation, 20)
                    Case 2 ' Bottom
                        PowerUp(available).Location = New Point(randomlocation, 900)
                    Case 3 ' Left
                        PowerUp(available).Location = New Point(20, randomlocation)
                    Case 4 ' Right
                        PowerUp(available).Location = New Point(900, randomlocation)
                End Select
                Me.Controls.Add(PowerUp(available))
            End If
        End If

        '  collides with power-ups
        For i = 0 To 49
            If PowerUpUse(i) AndAlso PowerUp(i).Bounds.IntersectsWith(PicPlayer.Bounds) Then
                ' Increase health
                If health < 100 Then
                    health += 10
                    If health > 100 Then health = 100
                    ProgressBar1.Value = health
                End If

                ' Remove power-up after it's collected
                PowerUpUse(i) = False
                Me.Controls.Remove(PowerUp(i))
            End If
        Next
        ' Zombie movement 
        For i = 0 To 49
            If ZombieUse(i) Then
                If PicPlayer.Left > Zombie(i).Left - 10 Then
                    Zombie(i).Location = New Point(Zombie(i).Location.X + 10, Zombie(i).Location.Y)
                ElseIf PicPlayer.Left < Zombie(i).Left + 10 Then
                    Zombie(i).Location = New Point(Zombie(i).Location.X - 12, Zombie(i).Location.Y)
                End If
                If PicPlayer.Top > Zombie(i).Top - 10 Then
                    Zombie(i).Location = New Point(Zombie(i).Location.X, Zombie(i).Location.Y + 10)
                ElseIf PicPlayer.Top < Zombie(i).Top + 10 Then
                    Zombie(i).Location = New Point(Zombie(i).Location.X, Zombie(i).Location.Y - 10)
                End If

                ' Health decrease on collision
                If Zombie(i).Bounds.IntersectsWith(PicPlayer.Bounds) Then
                    If health > 0 Then
                        ' Decrease health 
                        health -= 10
                        ProgressBar1.Value = health
                    Else
                        ' Stop the movement timer
                        TrmMovement.Stop()

                        ' Hide player and zombie images
                        PicPlayer.Visible = False
                        Pic2ZombiePic.Visible = False
                        PicHealthPowerUp.Visible = False

                        ' Show "You Died" message
                        lblDied.Visible = True
                        lblRetry.Visible = True
                        ' Deactivate all zombies and hide them
                        For j = 0 To 49
                            If ZombieUse(j) Then
                                ZombieUse(j) = False  ' 
                                Zombie(j).Visible = False
                                Me.Controls.Remove(Zombie(j))
                            End If
                            If PowerUpUse(j) Then
                                PowerUpUse(j) = False
                                PowerUp(j).Visible = False
                                Me.Controls.Remove(PowerUp(j))
                            End If
                            If bulletUse(j) Then
                                bulletUse(j) = False
                                bullet(j).Visible = False
                                Me.Controls.Remove(bullet(j))
                            End If
                        Next
                    End If
                End If
            End If
        Next

        ' Timer 
        tempcount += 1
        If tempcount = 10 Then
            tempcount = 0
            seconds += 1
            If seconds = 60 Then
                seconds = 0
                minutes += 1
            End If
            If seconds > 9 Then
                lbltime.Text = "Time: " & minutes & ":" & seconds
            Else
                lbltime.Text = "Time: " & minutes & ":0" & seconds
            End If
        End If
    End Sub

    Private Sub PicPlayer_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles PicPlayer.Click

    End Sub

    Private Sub NEWGAMEToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles NEWGAMEToolStripMenuItem.Click
        On Error Resume Next
        For i = 0 To 49 Step 1
            Me.Controls.Remove(Zombie(i))
            Me.Controls.Remove(bullet(i))
            bulletUse(i) = False
            ZombieUse(i) = False
            health = 100
            kills = 0
            lblKills.Text = "Kills: 0"
            lbltime.Text = "Time 0:00"
            tempcount = 0
            minutes = 0
            seconds = 0
        Next
    End Sub

    Private Sub Timer1_Tick(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles TimerHealth.Tick

    End Sub

    Private Sub lblResume_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles lblResume.Click
        TrmMovement.Start()
        PicPlayer.Visible = True
        PicBulletPic.Visible = False
        Pic2ZombiePic.Visible = False
        lblResume.Visible = False
        lblMainMenu.Visible = False
    End Sub

    Private Sub lblMainMenu_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles lblMainMenu.Click

    End Sub

    Private Sub Label1_Click_1(ByVal sender As System.Object, ByVal e As System.EventArgs)
        ' Reset the game 
        health = 100
        kills = 0
        minutes = 0
        seconds = 0
        tempcount = 0

        ' Reset the player position (starting position)
        PicPlayer.Location = New Point(491, 401)  ' Set the starting position
        PicPlayer.Visible = True  ' Make the player visible

        ' Reset the game UI (health, kills, time)
        lblDied.Visible = False
        lblRetry.Visible = False
        lblKills.Text = "Kills: 0"
        lbltime.Text = "Time: 0"
        ProgressBar1.Value = health
        ' Reset zombies 
        For i = 0 To 49
            If ZombieUse(i) Then
                ZombieUse(i) = False
                Zombie(i).Visible = False
                Me.Controls.Remove(Zombie(i))
            End If
        Next

        ' Restart the game timer and movement
        TrmMovement.Start()


        lblhealth.Text = "Health: " & health
    End Sub

    Private Sub lblRetry_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles lblRetry.Click
        ' Reset the game state
        health = 100
        kills = 0
        minutes = 0
        seconds = 0
        tempcount = 0

        ' Reset the player and zombie visibility
        PicPlayer.Visible = True
        PicPlayer.Location = New Point(491, 401) ' Reset player position
        lblDied.Visible = False
        lblRetry.Visible = False
        lblKills.Text = "Kills: 0"
        lbltime.Text = "Time 0:00"
        ProgressBar1.Value = health

        ' Reset zombies 
        For i = 0 To 49
            If ZombieUse(i) Then
                ZombieUse(i) = False
                Zombie(i).Visible = False
                Me.Controls.Remove(Zombie(i))
            End If
        Next
        ' Restart the game timer and movement
        TrmMovement.Start()
    End Sub

    Private Sub MenuStrip1_ItemClicked(ByVal sender As System.Object, ByVal e As System.Windows.Forms.ToolStripItemClickedEventArgs) Handles MenuStrip1.ItemClicked

    End Sub
End Class
