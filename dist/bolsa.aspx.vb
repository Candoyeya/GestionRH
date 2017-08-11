Imports System.Data
Imports System.EventArgs
Partial Class dist_bolsa
    Inherits System.Web.UI.Page
    Protected Sub LlenarTabla(ByVal Sql As String)
        '--Creacion 2017/03/21 Llenar GV
        '--Update 2017/03/24

        'Dim Reg As Integer = Nothing
        Try
            '---Definir tabla temporal para llenar gv
            Dim DataTable As New DataTable()
            DataTable.Columns.AddRange(New DataColumn() {
                                                       New DataColumn("IdPros", GetType(String)),
                                                       New DataColumn("Nombre", GetType(String)),
                                                       New DataColumn("Domicilio", GetType(String)),
                                                       New DataColumn("Ciudad", GetType(String)),
                                                       New DataColumn("Edad", GetType(String)),
                                                       New DataColumn("Id", GetType(String))})
            cnn2.Open()
            cmd2 = New SqlClient.SqlCommand(Sql, cnn2)
            dr2 = cmd2.ExecuteReader()

            '--------->Recorrer todos los registros de la consulta
            If dr2.HasRows Then
                While dr2.Read
                    DataTable.Rows.Add(dr2.Item("Id"),
                                       dr2.Item("Nombre"),
                                       dr2.Item("Domicilio"),
                                       dr2.Item("Ciudad"),
                                       dr2.Item("Edad"),
                                       dr2.Item("Id"))
                    'Reg = Reg + 1
                End While
            End If

            cnn2.Close()
            dr2.Close()

            '----Agregar los datos a gridview
            GvProspectos.DataSource = DataTable
            GvProspectos.DataBind()


            '--ClientScript.RegisterStartupScript(Me.[GetType](), "aleasrt", "alert('Registros Encontrados: " & Reg & "');  ", True)

        Catch ex As Exception
            cnn2.Close()
            dr2.Close()
            Dim fail As String = ex.Message
            ClientScript.RegisterStartupScript(Me.[GetType](), "aleasrt", "alert('" & fail & "');  ", True)
        End Try
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        '--Creacion 2017/03/21 --Cargar vista inicial
        '--actualizacion 2017/03/24
        If Not Page.IsPostBack Then
            Dim SqlEmpleados As String = "Select Id=T0.id,Nombre=T0.nombre,Domicilio=T0.Domicilio,Ciudad=T0.Ciudad,Edad=T0.Edad " &
                                         "From TIPDPGRH T0 "
            LlenarTabla(SqlEmpleados)
        End If
    End Sub

End Class
