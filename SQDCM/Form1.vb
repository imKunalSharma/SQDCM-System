Imports System.IO.Ports
Imports MySql.Data
Imports MySql.Data.MySqlClient
Imports System.Drawing.Color
Imports System.Globalization

Public Class Form1

    Private Sub Form1_Load(sender As System.Object, e As System.EventArgs) Handles MyBase.Load
        Dim dt As DataTable = GetData("SELECT * FROM `port` WHERE `Id` = 1")
        If dt.Rows.Count() > 0 Then
            Port1 = dt.Rows(0).Item("Port2")
            PortConnect()   'serial Port Function
        End If
        AxMSFlexGrid()  'MSFlexGrid Function
        ViewFuncation()
        Timer1.Start()
        Timer2.Enabled = True
        Timer2.Interval = 1000

        'month change
        Timer3.Enabled = True
        Timer3.Interval = 1000

        'National Holiday and sunday
        Timer4.Enabled = True
        Timer4.Interval = 1000

    End Sub
    Private Sub Timer1_Tick(sender As Object, e As System.EventArgs) Handles Timer1.Tick
        Label10.Text = "Date : " + System.DateTime.Now.ToString("dd/MM/yyyy") & "  " & "Time : " + System.DateTime.Now.ToString("HH:mm:ss")

    End Sub
    Public Sub SerialPort1_DataReceived(ByVal sender As Object, ByVal e As SerialDataReceivedEventArgs) Handles SerialPort1.DataReceived
        'SerialPort1.ReadTimeout = 20
        Do While SerialPort1.BytesToRead > 0
            Try
                buff_rx = SerialPort1.ReadByte
                Me.Invoke(New EventHandler(AddressOf update_dat))
            Catch ex As Exception

            End Try
            'Application.DoEvents()
        Loop

    End Sub
    Dim datarec As String
    Dim datastr As String
    Public Sub update_dat(ByVal sender As Object, ByVal e As System.EventArgs)
        'On Error GoTo exit1

        RX = Convert.ToChar(buff_rx).ToString()
        RichTextBox1.AppendText(RX)
        datarec = datarec + RX
        If RX = Chr(13) Then
            datastr = datarec
            datarec = ""
            Label8.Text = "Current data : " & datastr

        End If


        'exit1:
    End Sub

    Dim dealy_sd As Integer
    Dim counter_sd As Integer


    Private Sub Timer2_Tick(sender As Object, e As System.EventArgs) Handles Timer2.Tick
        On Error GoTo exit1

        dealy_sd = dealy_sd + 1
        If dealy_sd >= 2 Then
            dealy_sd = 0
            If counter_sd < 5 Then
                counter_sd = counter_sd + 1

                AlertFuncation()


                TX(1) = "$SS" + S + CuuArr(1)
                TX(2) = "$QS" + Q + CuuArr(2)
                TX(3) = "$DS" + D + CuuArr(3)
                TX(4) = "$CS" + C + CuuArr(4)
                TX(5) = "$MS" + M + CuuArr(5)


                RichTextBox1.AppendText("TX - " & TX(counter_sd) & vbCr)
                Label4.Text = "Send data : " & TX(counter_sd)
                SerialPort1.Write(TX(counter_sd) & vbCr) ' for send query data

                ViewFuncation()

            Else
                counter_sd = 0
            End If
        End If
exit1:
    End Sub
    Dim ctime2 As String
    Private Sub Timer3_Tick(sender As Object, e As System.EventArgs) Handles Timer3.Tick

        ctime2 = System.DateTime.Now.ToString("hh:mm:ss tt")
        Dim CurrentDay As Integer = System.DateTime.Now.ToString("dd")
        Dim CurrentMonth As Integer = System.DateTime.Now.ToString("MM")
        Dim OldMonth As Integer = System.DateTime.Now.AddMonths("-1").ToString("MM")
        Dim CurrentDT As String = System.DateTime.Now.ToString("yyyy-MM-dd") & " " & System.DateTime.Now.ToString("HH:mm:ss")
        If CurrentDay = 1 Then
            If ctime2 >= "08:00:31 AM" And ctime2 <= "08:10:59 AM" Then

                Dim dt2 As DataTable = GetData("SELECT * FROM `sqdcm_result`")
                Dim rowcount2 As Integer = dt2.Rows.Count()
                If rowcount2 = 0 Then
                    If rowcount2 = 0 Then
                        For i = 1 To 31
                            MyNonQuery("INSERT INTO `sqdcm_result`(`Day1`, `S`, `Q`, `D`, `C`, `M`,`OldMonth`,`NewMonth`, `DateTime1`) VALUES ('" & i & "', '0', '0', '0', '0', '0', '" & OldMonth & "', '" & CurrentMonth & "', '" & CurrentDT & "')")
                        Next
                        ViewFuncation()
                    End If
                Else

                    Dim dt As DataTable = GetData("SELECT * FROM `sqdcm_result` WHERE `OldMonth` = '" & OldMonth & "' and `NewMonth` = '" & CurrentMonth & "' ")
                    Dim rowcount As Integer = dt.Rows.Count()
                    If dt.Rows.Count() > 0 Then
                        Dim Day1 As String = dt.Rows(0).Item("Day1")
                    Else
                        For i = 1 To 31
                            MyNonQuery("UPDATE `sqdcm_result` SET `S`='0',`Q`='0',`D`='0',`C`='0',`M`='0',`OldMonth`='" & OldMonth & "', `NewMonth`='" & CurrentMonth & "', `DateTime1`= '" & CurrentDT & "' WHERE `Day1`='" & i & "'")
                        Next
                        ViewFuncation()
                    End If

                End If
            End If
        End If
    End Sub



    Function AxMSFlexGrid() As String

        AxMSFlexGrid1.set_ColWidth(0, 1500)
        AxMSFlexGrid1.set_ColWidth(1, 1500)
        AxMSFlexGrid1.set_ColWidth(2, 1500)
        AxMSFlexGrid1.set_ColWidth(3, 1500)
        AxMSFlexGrid1.set_ColWidth(4, 1500)
        AxMSFlexGrid1.set_ColWidth(5, 1500)
        AxMSFlexGrid1.set_ColWidth(6, 2500)

        AxMSFlexGrid1.set_TextMatrix(0, 0, "DAY")
        AxMSFlexGrid1.set_TextMatrix(0, 1, "S")
        AxMSFlexGrid1.set_TextMatrix(0, 2, "Q")
        AxMSFlexGrid1.set_TextMatrix(0, 3, "D")
        AxMSFlexGrid1.set_TextMatrix(0, 4, "C")
        AxMSFlexGrid1.set_TextMatrix(0, 5, "M")
        AxMSFlexGrid1.set_TextMatrix(0, 6, "DATE TIME")

        AxMSFlexGrid1.set_ColAlignment(0, colAlignment:=4)
        AxMSFlexGrid1.set_ColAlignment(1, colAlignment:=4)
        AxMSFlexGrid1.set_ColAlignment(2, colAlignment:=4)
        AxMSFlexGrid1.set_ColAlignment(3, colAlignment:=4)
        AxMSFlexGrid1.set_ColAlignment(4, colAlignment:=4)
        AxMSFlexGrid1.set_ColAlignment(5, colAlignment:=4)
        AxMSFlexGrid1.set_ColAlignment(6, colAlignment:=4)

        Return Nothing
    End Function

    Public Sub ViewFuncation()
        Dim CurrentDay As Integer = System.DateTime.Now.ToString("dd")
        For i = 1 To 32
            Dim dt As DataTable = GetData("SELECT * FROM `sqdcm_result` WHERE `Day1` = '" & i & "'")
            If dt.Rows.Count() > 0 Then

                AxMSFlexGrid1.set_TextMatrix(i, 0, dt.Rows(0).Item("Day1").ToString)
                AxMSFlexGrid1.set_TextMatrix(i, 1, dt.Rows(0).Item("S").ToString)
                AxMSFlexGrid1.set_TextMatrix(i, 2, dt.Rows(0).Item("Q").ToString)
                AxMSFlexGrid1.set_TextMatrix(i, 3, dt.Rows(0).Item("D").ToString)
                AxMSFlexGrid1.set_TextMatrix(i, 4, dt.Rows(0).Item("C").ToString)
                AxMSFlexGrid1.set_TextMatrix(i, 5, dt.Rows(0).Item("M").ToString)
                AxMSFlexGrid1.set_TextMatrix(i, 6, dt.Rows(0).Item("DateTime1").ToString)

            End If
        Next
    End Sub

    Private Sub CheckDates(FromDate As Date, ToDate As Date, ByRef AllDaysCount As Integer, ByRef RelevantDayCount As Integer)
        RelevantDayCount = 0
        AllDaysCount = 0
        Dim dCheck As Date = FromDate
        Dim tsToAdd As TimeSpan = TimeSpan.FromDays(1)
        Do
            If Not (dCheck.DayOfWeek = DayOfWeek.Saturday OrElse dCheck.DayOfWeek = DayOfWeek.Sunday) Then RelevantDayCount += 1
            AllDaysCount += 1
            dCheck += tsToAdd
            If dCheck > ToDate Then Exit Do
        Loop
    End Sub


    Private Sub Button1_Click(sender As System.Object, e As System.EventArgs)


    End Sub

    Private Sub Timer4_Tick(sender As Object, e As System.EventArgs) Handles Timer4.Tick


        Dim CurrentDay As Integer = System.DateTime.Now.ToString("dd")
        Dim CurrentMonth As Integer = System.DateTime.Now.ToString("MM")
        Dim OldMonth As Integer = System.DateTime.Now.AddMonths("-1").ToString("MM")
        Dim CurrentDT As String = System.DateTime.Now.ToString("yyyy-MM-dd") & " " & System.DateTime.Now.ToString("HH:mm:ss")

        Dim Currentdate As Date = System.DateTime.Now.ToString("yyyy-MM-dd")
        'Dim Currentdate As New DateTime(2023, 8, 6)
        Dim StrSunday As String = Currentdate.ToString("ddd", CultureInfo.InvariantCulture).ToUpper()
        If StrSunday = "SUN" Then
            'MyNonQuery("UPDATE `sqdcm_result` SET `S`='3',`Q`='3',`D`='3',`C`='3',`M`='3',`OldMonth`='" & OldMonth & "', `NewMonth`='" & CurrentMonth & "', `DateTime1`= '" & CurrentDT & "' WHERE `Day1`='" & CurrentDay & "'")

            MyNonQuery("UPDATE `sqdcm_result` SET `S`='3',`Q`='3',`D`='3',`C`='3',`M`='3' WHERE `Day1`='" & CurrentDay & "'")


        End If

        Dim query As String = "SELECT * FROM `holidaytb` WHERE `Selectdate` = '" & System.DateTime.Now.ToString("yyyy-MM-dd") & "'"
        Dim dt As DataTable = GetData(query)
        If dt.Rows.Count() > 0 Then
            'MyNonQuery("UPDATE `sqdcm_result` SET `S`='3',`Q`='3',`D`='3',`C`='3',`M`='3',`OldMonth`='" & OldMonth & "', `NewMonth`='" & CurrentMonth & "', `DateTime1`= '" & CurrentDT & "' WHERE `Day1`='" & CurrentDay & "'")
            Dim d As String = "UPDATE `sqdcm_result` SET `S`='3',`Q`='3',`D`='3',`C`='3',`M`='3' WHERE `Day1`='" & CurrentDay & "'"
            MyNonQuery(d)

        End If
        ViewFuncation()


        'Dim CurrentMonth As Integer = System.DateTime.Now.ToString("MM")
        'Dim Currentdate As Date = System.DateTime.Now.ToString("yyyy-MM-dd")
        'Dim lastdate As Date = System.DateTime.DaysInMonth(2016, CurrentMonth)
        'For i = 1 To CurrentMonth
        '    If dCheck.DayOfWeek = DayOfWeek.Sunday Then

        '    End If
        '    MsgBox(i.ToString(DayOfWeek.Sunday))
        'Next

        'Dim startDt As New Date(System.DateTime.Now.ToString("yyyy"), System.DateTime.Now.ToString("MM"), 1)
        'Dim endDt As New Date(System.DateTime.Now.ToString("yyyy"), System.DateTime.Now.ToString("MM"), Date.DaysInMonth(System.DateTime.Now.ToString("yyyy"), System.DateTime.Now.ToString("MM")))
        'Dim tsToAdd As DateTime = Today.AddDays(1)
        'Dim i As Integer = 1
        'Do

        '    i = i + 1
        '    startDt.AddDays(i)
        'Loop



        'Dim month As Integer = 8
        'Dim year As Integer = 2023

        'Dim current As New DateTime(year, month, 1)
        'Dim ending As DateTime = current.AddMonths(1)

        'Dim numSat As Integer = 0
        'Dim numSun As Integer = 0

        'While current < ending
        '    If current.DayOfWeek = DayOfWeek.Saturday Then
        '        numSat += 1
        '    End If
        '    If current.DayOfWeek = DayOfWeek.Sunday Then
        '        MsgBox("Suns: " & numSun)
        '        numSun += 1
        '    End If
        '    current = current.AddDays(1)
        'End While



        'Console.WriteLine("Sats: " & numSat)
        'Console.WriteLine("Suns: " & numSun)
        'Console.ReadLine()

        
    End Sub

    Private Sub Label1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Label1.Click

    End Sub
End Class