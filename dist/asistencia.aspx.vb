Imports System.Data
Imports System.EventArgs
Partial Class dist_asistencia
    Inherits System.Web.UI.Page
    Protected Sub LlenarTabla(ByVal Sql As String)
        '--Creacion 2017/03/21 Llenar GV
        '--Update 2017/03/24

        'Dim Reg As Integer = Nothing
        Try
            '---Definir tabla temporal para llenar gv
            Dim DataTable As New DataTable()
            DataTable.Columns.AddRange(New DataColumn() {New DataColumn("Nombre", GetType(String)),
                                                       New DataColumn("Departamento", GetType(String)),
                                                       New DataColumn("Puesto", GetType(String)),
                                                       New DataColumn("Turno", GetType(String)),
                                                       New DataColumn("codigoempleado", GetType(String))})
            cnn.Open()
            cmd = New SqlClient.SqlCommand(Sql, cnn)
            dr = cmd.ExecuteReader()

            '--------->Recorrer todos los registros de la consulta
            If dr.HasRows Then
                While dr.Read
                    DataTable.Rows.Add(dr.Item("Nombre"),
                                       dr.Item("Departamento"),
                                       dr.Item("Puesto"),
                                       dr.Item("Turno"),
                                       dr.Item("codigoempleado"))
                    'Reg = Reg + 1
                End While
            End If

            cnn.Close()
            dr.Close()

            '----Agregar los datos a gridview
            GvAsistencias.DataSource = DataTable
            GvAsistencias.DataBind()

            '--ClientScript.RegisterStartupScript(Me.[GetType](), "aleasrt", "alert('Registros Encontrados: " & Reg & "');  ", True)

        Catch ex As Exception
            cnn.Close()
            dr.Close()
            Dim fail As String = ex.Message
            ClientScript.RegisterStartupScript(Me.[GetType](), "aleasrt", "alert('" & fail & "');  ", True)
        End Try
    End Sub
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        '--Creacion 2017/03/21 --Cargar vista inicial
        '--actualizacion 2017/03/24
        If Not Page.IsPostBack Then

            Dim SqlEmpleados As String = "Select Nombre=T0.nombrelargo,Departamento=T1.descripcion,Puesto=T2.descripcion,Turno=T3.descripcion,T0.codigoempleado " &
                                        "From NOM10001 T0 " &
                                            "Inner Join NOM10003 T1 On (T1.iddepartamento=T0.iddepartamento) " &
                                            "Inner Join NOM10006 T2 On (T2.idpuesto=T0.idpuesto) " &
                                            "Inner Join NOM10032 T3 On (T3.idturno=T0.idturno) " &
                                        "where T0.estadoempleado='A' " &
                                        "Order By T1.descripcion"
            LlenarTabla(SqlEmpleados)
        End If
    End Sub
End Class
