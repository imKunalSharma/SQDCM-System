
Imports System
Imports System.ComponentModel
Imports System.Threading
Imports System.IO.Ports
Imports MySql.Data
Imports MySql.Data.MySqlClient
Imports System.Drawing.Color

Imports System.Data.OleDb
Module Module1

    Public conn As New MySqlConnection("server=localhost;User Id=root;database=havells_andon_dehradun")
    Public Port1 As String

    Public buff_rx As Byte
    Public RX As String
    Public TX(5) As String

    Public Function PortConnect()

        Try
            Form1.SerialPort1.PortName = Port1
            Form1.SerialPort1.BaudRate = "9600"
            Form1.SerialPort1.DataBits = 8
            Form1.SerialPort1.StopBits = IO.Ports.StopBits.One
            Form1.SerialPort1.Parity = IO.Ports.Parity.None
            Form1.SerialPort1.Handshake = Handshake.None
            Form1.SerialPort1.Open()

        Catch ex As Exception
            MsgBox(ErrorToString, MsgBoxStyle.Information, Title:=Port1 & " Commucation Alert")
        End Try

        Return Nothing

    End Function


    'create new DataTable object to hold results
    Public Function GetData(ByVal query As String) As DataTable
        Dim cmd As MySqlCommand = New MySqlCommand(query)
        Using sda As MySqlDataAdapter = New MySqlDataAdapter()
            cmd.Connection = conn
            sda.SelectCommand = cmd
            Using dt As DataTable = New DataTable()
                sda.Fill(dt)
                Return dt
            End Using
        End Using
    End Function
    'insert funcation
    Public Sub MyNonQuery(ByVal SQCommand As String)
        Dim SQLCMD As New MySqlCommand(SQCommand, conn)
        conn.Open()
        SQLCMD.ExecuteNonQuery()
        conn.Close()
    End Sub

    Public S As String
    Public Q As String
    Public D As String
    Public C As String
    Public M As String
    Public CuuArr(10) As String
    Public Sub AlertFuncation()
        Dim CurrentDay As Integer = System.DateTime.Now.ToString("dd")
        S = ""
        Q = ""
        D = ""
        C = ""
        M = ""
        conn.Open()
        Dim cmd As New MySqlCommand("SELECT * FROM `sqdcm_result`", conn)
        Dim rd As MySqlDataReader
        rd = cmd.ExecuteReader
        Dim i As Integer = 1
        While rd.Read

            S = S + rd("S").ToString
            Q = Q + rd("Q").ToString
            D = D + rd("D").ToString
            C = C + rd("C").ToString
            M = M + rd("M").ToString
            If i = CurrentDay Then
                CuuArr(1) = rd("S").ToString
                CuuArr(2) = rd("Q").ToString
                CuuArr(3) = rd("D").ToString
                CuuArr(4) = rd("C").ToString
                CuuArr(5) = rd("M").ToString

            End If
            i = i + 1
        End While

        rd.Close()
        conn.Close()

    End Sub

    


End Module
