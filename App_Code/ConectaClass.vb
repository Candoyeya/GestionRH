Imports Microsoft.VisualBasic
Imports System.Data.SqlClient

Public Class ConectaClass

End Class

Public Module ConectaMod
    '-------------------------------------------------------------------------------------------------------------------------------------
    '--Creacion 2017/03/21
    '--Actualizacion 2017/03/28 servidor nuevo
    '---Conexion sql
    Public ConnectionString As String = "Data Source=SERVER\COMPAC; Initial Catalog=ct2017_SURTIDOR2_; User Id=sa; Password=SURTIDORA.2017"
    Public cnn As SqlConnection = New SqlConnection(ConnectionString)
    Public con As SqlConnection = New SqlConnection(ConnectionString)
    Public cmd, command As SqlCommand
    Public dr, dr2 As SqlDataReader
End Module
