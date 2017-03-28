Imports System.Data
Imports System.EventArgs

Partial Class dist_index
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
                                                       New DataColumn("Turno", GetType(String))})
            cnn.Open()
            cmd = New SqlClient.SqlCommand(Sql, cnn)
            dr = cmd.ExecuteReader()

            '--------->Recorrer todos los registros de la consulta
            If dr.HasRows Then
                While dr.Read
                    DataTable.Rows.Add(dr.Item("Nombre"),
                                       dr.Item("Departamento"),
                                       dr.Item("Puesto"),
                                       dr.Item("Turno"))
                    'Reg = Reg + 1
                End While
            End If

            cnn.Close()
            dr.Close()

            '----Agregar los datos a gridview
            GvEmpleados.DataSource = DataTable
            GvEmpleados.DataBind()

            '--ClientScript.RegisterStartupScript(Me.[GetType](), "aleasrt", "alert('Registros Encontrados: " & Reg & "');  ", True)

        Catch ex As Exception
            cnn.Close()
            dr.Close()
            Dim fail As String = ex.Message
            ClientScript.RegisterStartupScript(Me.[GetType](), "aleasrt", "alert('" & fail & "');  ", True)
        End Try
    End Sub

    Protected Sub Departamentos()
        '--Creacion 2017/03/24 ---Llenar lista de departamentos.

        Try
            Departamento.Items.Clear()

            Dim SqlDepartamento As String = "Select T0.descripcion From NOM10003 T0"

            cnn.Open()
            cmd = New SqlClient.SqlCommand(SqlDepartamento, cnn)
            dr = cmd.ExecuteReader()

            '--------->Recorrer todos los registros de la consulta
            Departamento.DataSource = dr
            Departamento.DataTextField = "descripcion"
            Departamento.DataValueField = "descripcion"
            Departamento.DataBind()
            Departamento.Items.Insert(0, New ListItem("- Seleccione Departamento -", "00"))
            cnn.Close()
            dr.Close()
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
            Departamentos()
            Dim SqlEmpleados As String = "Select Nombre=T0.nombrelargo,Departamento=T1.descripcion,Puesto=T2.descripcion,Turno=T3.descripcion " &
                                        "From NOM10001 T0 " &
                                            "Inner Join NOM10003 T1 On (T1.iddepartamento=T0.iddepartamento) " &
                                            "Inner Join NOM10006 T2 On (T2.idpuesto=T0.idpuesto) " &
                                            "Inner Join NOM10032 T3 On (T3.idturno=T0.idturno) " &
                                        "where T0.estadoempleado='A' " &
                                        "Order By T1.descripcion"
            LlenarTabla(SqlEmpleados)
        End If
    End Sub

    Protected Sub BtnBEmpleado_Click(sender As Object, e As EventArgs) Handles BtnBEmpleado.Click
        '--Creacion 2017/03/22 ---Enter en Textbox
        '--actualizacion 2017/03/27
        Dim SqlEmpleados As String = "Select Nombre=T0.nombrelargo,Departamento=T1.descripcion,Puesto=T2.descripcion,Turno=T3.descripcion " &
                                    "From NOM10001 T0 " &
                                        "Inner Join NOM10003 T1 On (T1.iddepartamento=T0.iddepartamento) " &
                                        "Inner Join NOM10006 T2 On (T2.idpuesto=T0.idpuesto) " &
                                        "Inner Join NOM10032 T3 On (T3.idturno=T0.idturno) "
        If Departamento.SelectedValue = "00" Then
            SqlEmpleados = SqlEmpleados + "where T0.estadoempleado='A' and T0.nombrelargo Like '%" & nombre.Text & "%' "
        Else
            SqlEmpleados = SqlEmpleados + "where T0.estadoempleado='A' and T1.descripcion= '" & Departamento.SelectedValue & "' AND T0.nombrelargo Like '%" & nombre.Text & "%' "
        End If
        SqlEmpleados = SqlEmpleados + "Order By T1.descripcion"

        LlenarTabla(SqlEmpleados)

    End Sub

    Protected Sub Departamento_SelectedIndexChanged() Handles Departamento.SelectedIndexChanged
        '--Creacion 2017/03/23 ---- Realizar busqueda al cambiar de departamento
        '--actualizacion 2017/03/27
        Dim SqlDepartamento As String = "Select Nombre=T0.nombrelargo,Departamento=T1.descripcion,Puesto=T2.descripcion,Turno=T3.descripcion " &
                                        "From NOM10001 T0 " &
                                            "Inner Join NOM10003 T1 On (T1.iddepartamento=T0.iddepartamento) " &
                                            "Inner Join NOM10006 T2 On (T2.idpuesto=T0.idpuesto) " &
                                            "Inner Join NOM10032 T3 On (T3.idturno=T0.idturno) "


        If nombre.Text = "" Then
            SqlDepartamento = SqlDepartamento + "where T0.estadoempleado='A' and T1.descripcion= '" & Departamento.SelectedValue & "' "
        Else
            SqlDepartamento = SqlDepartamento + "where T0.estadoempleado='A' and T1.descripcion= '" & Departamento.SelectedValue & "' AND T0.nombrelargo Like '%" & nombre.Text & "%' "
        End If
        SqlDepartamento = SqlDepartamento + "Order By T1.descripcion"

        LlenarTabla(SqlDepartamento)
    End Sub
End Class
