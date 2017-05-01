Imports System.Data
Imports System.EventArgs
Partial Class dist_AddPros
    Inherits System.Web.UI.Page
    Dim DataTable As New DataTable("TempGVEscolaridad")
    Dim DataTableDF As New DataTable("TempGVDF")
    Protected Sub BtnAddEscolaridad_Click(sender As Object, e As EventArgs) Handles BtnAddEscolaridad.Click
        Try
            '---Definir tabla temporal para llenar gv
            Dim DataTable As DataTable
            DataTable = Session("TempGVEscolaridad")

            '--Llenar Filas
            DataTable.Rows.Add(INomEscuela.Value, SNivel.Value, IDireccion.Value, IFechaIni.Text, IFechaFin.Text, STitulo.Value)

            DataTable.AcceptChanges()
            '----Agregar los datos a gridview
            GvEscolaridad.DataSource = DataTable
            GvEscolaridad.DataBind()
            Session("TempGVEscolaridad") = DataTable
            LimpiarEscolaridad()
        Catch ex As Exception
            Dim fail As String = ex.Message
            ClientScript.RegisterStartupScript(Me.[GetType](), "aleasrt", "alert('" & fail & "');  ", True)
        End Try
    End Sub

    Protected Sub BtnAddDF_Click(sender As Object, e As EventArgs) Handles BtnAddDF.Click
        Try
            '---Definir tabla temporal para llenar gv
            Dim DataTableDF As DataTable
            DataTableDF = Session("TempGVDF")

            '--Llenar Filas
            DataTableDF.Rows.Add(INombreDF.Value, SParentesco.Value, SVive.Value, IDireccionDF.Value, IOcupacionF.Value, IEdadF.Value)

            DataTableDF.AcceptChanges()
            '----Agregar los datos a gridview
            GvDF.DataSource = DataTableDF
            GvDF.DataBind()
            Session("TempGVDF") = DataTableDF
            LimpiarDF()
        Catch ex As Exception
            Dim fail As String = ex.Message
            ClientScript.RegisterStartupScript(Me.[GetType](), "aleasrt", "alert('" & fail & "');  ", True)
        End Try
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            Try
                LlenarEscolaridad()
                LlenarDF()
            Catch ex As Exception
                Dim fail As String = ex.Message
                ClientScript.RegisterStartupScript(Me.[GetType](), "aleasrt", "alert('" & fail & "');  ", True)
            End Try
        End If
    End Sub

    Protected Sub LlenarEscolaridad()
        Try
            DataTable.Columns.AddRange(New DataColumn() {New DataColumn("Nombre", GetType(String)),
                                                           New DataColumn("Nivel", GetType(String)),
                                                           New DataColumn("Direccion", GetType(String)),
                                                           New DataColumn("Fecha_Inicio", GetType(String)),
                                                           New DataColumn("Fecha_Final", GetType(String)),
                                                           New DataColumn("Titulo", GetType(String))})
            Session("TempGVEscolaridad") = DataTable
        Catch ex As Exception
            Dim fail As String = ex.Message
            ClientScript.RegisterStartupScript(Me.[GetType](), "aleasrt", "alert('" & fail & "');  ", True)
        End Try
    End Sub

    Protected Sub LlenarDF()
        Try
            DataTableDF.Columns.AddRange(New DataColumn() {New DataColumn("Nombre", GetType(String)),
                                                           New DataColumn("Parentesco", GetType(String)),
                                                           New DataColumn("Vive", GetType(String)),
                                                           New DataColumn("Direccion", GetType(String)),
                                                           New DataColumn("Ocupacion", GetType(String)),
                                                           New DataColumn("Edad", GetType(String))})
            Session("TempGVDF") = DataTableDF
        Catch ex As Exception
            Dim fail As String = ex.Message
            ClientScript.RegisterStartupScript(Me.[GetType](), "aleasrt", "alert('" & fail & "');  ", True)
        End Try
    End Sub

    Protected Sub LimpiarEscolaridad()
        INomEscuela.Value = Nothing
        SNivel.SelectedIndex = 0
        IDireccion.Value = Nothing
        IFechaIni.Text = Nothing
        IFechaFin.Text = Nothing
        STitulo.SelectedIndex = 0
    End Sub

    Protected Sub LimpiarDF()
        INombreDF.Value = Nothing
        SParentesco.SelectedIndex = 0
        SVive.SelectedIndex = 0
        IDireccionDF.Value = Nothing
        IOcupacionF.Value = Nothing
        IEdadF.Value = Nothing

    End Sub
End Class
