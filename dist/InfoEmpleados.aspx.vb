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
            Dim sql_Datos As String = "Select T0.nombrelargo,T0.direccion,T0.codigopostal,T0.poblacion,T0.telefono,Curp=T0.curpi+' '+T0.curpf, " &
                                            "T0.estadocivil,Puesto=T1.descripcion,Departamento=T2.descripcion,Turno=T3.descripcion,T0.numerosegurosocial " &
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
                    IDomicilio.Value = dr.Item("direccion")
                    ICP.Value = dr.Item("codigopostal")
                    Iciudad.Value = dr.Item("poblacion")
                    ITelefono.Value = dr.Item("telefono")
                    ICurp.Value = dr.Item("Curp")
                    IEstadoCivil.Value = dr.Item("estadocivil")
                    IPuesto.Value = dr.Item("Puesto")
                    IDepartamento.Value = dr.Item("Departamento")
                    ITurno.Value = dr.Item("Turno")
                    INSS.Value = dr.Item("numerosegurosocial")
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
