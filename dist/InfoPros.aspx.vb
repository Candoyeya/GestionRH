Imports System.Data
Imports System.EventArgs
Partial Class dist_InfoPros
    Inherits System.Web.UI.Page
    Dim IdPros As String
    Protected Sub CargarDatos()

        Try

            Dim Sql_Datos As String = "select t0.Nombre,t0.Domicilio,t0.Ciudad,t1.CURP,t0.CP,t0.Telefono,t1.NSS from TIPDPGRH T0" &
                                      " inner join TIPDGRH T1 on t1.id=t0.Id where t0.id='" & IdPros & "'"

            cnn2.Open()
            cmd2 = New SqlClient.SqlCommand(Sql_Datos, cnn2)
            dr2 = cmd2.ExecuteReader()


            If dr2.HasRows Then
                While dr2.Read
                    INombre.Value = dr2.Item("Nombre")
                    IDomicilio.Value = dr2.Item("Domicilio")
                    ICiudad.Value = dr2.Item("Ciudad")
                    ICurp.Value = dr2.Item("Curp")
                    ICp.Value = dr2.Item("Cp")
                    ITelefono.Value = dr2.Item("Telefono")
                    INSS.Value = dr2.Item("NSS")
                End While
            End If

            cnn2.Close()
            dr2.Close()

        Catch ex As Exception
            cnn2.Close()
            dr2.Close()
            Dim fail As String = ex.Message
            ClientScript.RegisterStartupScript(Me.[GetType](), "aleasrt", "alert('" & fail & "');  ", True)
        End Try
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            ObtenerID()
            CargarDatos()
        End If
    End Sub

    Protected Sub ObtenerID()
        If Request.QueryString("IdPros") <> "" Then
            IdPros = Request.QueryString("IdPros")
        End If
    End Sub



End Class
