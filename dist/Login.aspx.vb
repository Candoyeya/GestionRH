Imports System.Data
Imports System.EventArgs
Partial Class dist_Login
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        '--Creacion 2017/04/24 --Cargar vista inicial
        If Not Page.IsPostBack Then
            Alertamail.Style("display") = "none"
        End If
    End Sub

    Protected Sub BtnEntrar_Click(sender As Object, e As EventArgs) Handles BtnEntrar.Click
        '--Creacion 2017/04/24
        Try
            '--Sentencia query
            Dim sql_login As String = "Select TOP 1 Res='Y' From GestionRH.dbo.TUGRH T0 Where T0.codigoempleado='" & username.Value & "' and T0.contrasena='" & password.Value & "'"
            cnn2.Open()
            cmd2 = New SqlClient.SqlCommand(sql_login, cnn2)
            dr2 = cmd2.ExecuteReader()
            Dim Resultado As String = Nothing
            '--------->Recorrer todos los registros de la consulta
            If dr2.HasRows Then
                While dr2.Read
                    Resultado = dr2.Item("Res")
                    'Reg = Reg + 1
                End While
            End If
            Alertamail.Style("display") = "none"
            cnn2.Close()
            dr2.Close()

            If Resultado = "Y" Then
                '--Guardar Codigoempleado
                Session("codigoempleado") = username.Value
                '--Sentencia Consulta nombre
                Dim sql_Datos As String = "Select Nombre=T0.nombre+' '+T0.apellidopaterno+' '+T0.apellidomaterno " &
                                      "From NOM10001 T0 " &
                                      "Where T0.codigoempleado='" & Session("codigoempleado") & "'"
                cnn.Open()
                cmd = New SqlClient.SqlCommand(sql_Datos, cnn)
                dr = cmd.ExecuteReader()

                '--------->Recorrer todos los registros de la consulta
                If dr.HasRows Then
                    While dr.Read
                        'dr.Item("Nombre")
                        Session("NomUser") = dr.Item("Nombre")
                        'Reg = Reg + 1
                    End While
                End If

                cnn.Close()
                dr.Close()
                '--Ir a Pagina Principal
                Response.Redirect("index.aspx", False)
            Else
                Alertamail.Style("display") = "block"
            End If

        Catch ex As Exception
            cnn.Close()
            dr.Close()
            cnn2.Close()
            dr2.Close()
            Dim fail As String = ex.Message
            ClientScript.RegisterStartupScript(Me.[GetType](), "aleasrt", "alert('" & fail & "');  ", True)
        End Try
    End Sub

End Class
