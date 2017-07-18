Imports System.Data
Imports System.EventArgs
Partial Class dist_InfoEmpleados
    Inherits System.Web.UI.Page
    Dim CodigoEmpleado As String
    Protected Sub CargarDatos()
        '--creacion 26/04/2017
        '--Cargar Informacion del empleado
        Try
            '--Sentencia Consulta nombre
            Dim sql_Datos As String = "Select T0.nombrelargo,T0.direccion,T0.codigopostal,T0.poblacion,T0.telefono," &
                                            "Curp=T0.curpi+substring(convert(VARCHAR,T0.fechanacimiento,112),3,6)+T0.curpf, " &
                                            "Estado=(Case T0.estadocivil " &
                                                "When 'C' Then 'Casado' " &
                                                "When 'D' Then 'Divorciado' " &
                                                "When 'S' Then 'Soltero' " &
                                                "When 'U' Then 'Union Libre' " &
                                                "When 'V' Then 'Viudo'" &
                                                "When '' Then 'No Capturado'End), " &
                                            "Puesto=T1.descripcion,Departamento=T2.descripcion,Turno=T3.descripcion," &
                                            "T0.numerosegurosocial,RFC=T0.curpi+substring(convert(VARCHAR,T0.fechanacimiento,112),3,6)+t0.homoclave," &
                                            "T0.numerofonacot,t2.descripcion,t0.fechaalta," &
                                              "FechaBaja=(case when substring(convert(VARCHAR,t0.fechabaja,112),1,4)<'1900'" &
                                                "then 'N/A'" &
                                                "else substring(convert(VARCHAR,t0.fechabaja,101),1,10) end)," &
                                            "puesto=t1.descripcion,t0.codigoempleado " &
                                      "From nom10001 T0 " &
                                            "Inner Join nom10006 T1 On (T1.idpuesto=T0.idpuesto) " &
                                            "Inner Join nom10003 T2 On (T2.iddepartamento=T0.iddepartamento) " &
                                            "Inner Join NOM10032 T3 On (T3.idturno=T0.idturno) " &
                                      "Where T0.codigoempleado='" & CodigoEmpleado & "'"
            cnn.Open()
            cmd = New SqlClient.SqlCommand(sql_Datos, cnn)
            dr = cmd.ExecuteReader()

            '--------->Recorrer todos los registros de la consulta
            If dr.HasRows Then
                While dr.Read
                    'dr.Item("")
                    SpEmpleado.InnerText = dr.Item("nombrelargo")
                    ICalle.Value = dr.Item("direccion")
                    ICP.Value = dr.Item("codigopostal")
                    Iciudad.Value = dr.Item("poblacion")
                    ICurp.Value = dr.Item("Curp")
                    IEstadoCivil.Value = dr.Item("Estado")
                    INSS.Value = dr.Item("numerosegurosocial")
                    IRFC.Value = dr.Item("RFC")
                    IFonacot.Value = dr.Item("numerofonacot")
                    IDepartamento.Value = dr.Item("descripcion")
                    IFechaIngreso.Value = dr.Item("fechaalta")
                    IFechaBaja.Value = dr.Item("FechaBaja")
                    IPuesto.Value = dr.Item("puesto")
                    INomina.Value = dr.Item("codigoempleado")
                    ' IInfonavit.Value = dr.Item("Infonavit")
                    INumero.Value = dr.Item("telefono")
                End While
            End If

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
        '--creacion 26/04/2017
        If Not Page.IsPostBack Then
            LoadString()
            CargarDatos()
        End If
    End Sub

    Protected Sub LoadString()
        '--creacion 26/04/2017
        '--Cargar codigo

        If Request.QueryString("codigoempleado") <> "" Then
            CodigoEmpleado = Request.QueryString("codigoempleado")
        End If

    End Sub
End Class
