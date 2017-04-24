Imports Microsoft.VisualBasic
Imports System.Data.SqlClient

Public Class ConectaClass

End Class

Public Module ConectaMod
    '-------------------------------------------------------------------------------------------------------------------------------------
    '--Creacion 2017/03/21
    '--Actualizacion 2017/04/24 
    '---Conexion sql Compac
    Public ConnectionString As String = "Data Source=SERVER\COMPAC; Initial Catalog=ct2017_SURTIDOR2_; User Id=sa; Password=SURTIDORA.2017"
    Public cnn As SqlConnection = New SqlConnection(ConnectionString)
    Public con As SqlConnection = New SqlConnection(ConnectionString)
    Public cmd, command As SqlCommand
    Public dr As SqlDataReader
    '---Conexion sql SERVERiii
    Public ConnectionString2 As String = "Data Source=SERVERIII; Initial Catalog=GestionRH; User Id=sa; Password=B1Admin"
    Public cnn2 As SqlConnection = New SqlConnection(ConnectionString2)
    Public con2 As SqlConnection = New SqlConnection(ConnectionString2)
    Public cmd2, command2 As SqlCommand
    Public dr2 As SqlDataReader
End Module
