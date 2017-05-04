Imports System.Data
Imports System.EventArgs
Partial Class dist_AddPros
    Inherits System.Web.UI.Page
    Dim DataTable As New DataTable("TempGVEscolaridad")
    Dim DataTableDF As New DataTable("TempGVDF")
    Dim DataTableEMP As New DataTable("TempGVEMP")
    Dim DataTableMEMP As New DataTable("TempGVMotivoE")
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
            DataTableDF.Rows.Add(INombreDF.Value, SParentesco.Value, IviveCon.Value, SVive.Value, IDireccionDF.Value, IOcupacionF.Value, IEdadF.Text)

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

    Protected Sub BtnAddEmpleo_Click(sender As Object, e As EventArgs) Handles BtnAddEmpleo.Click
        Try
            '---Definir tabla temporal para llenar gv
            Dim DataTableEMP As DataTable
            DataTableEMP = Session("TempGVEMP")
            Dim DataTableMEMP As DataTable
            DataTableMEMP = Session("TempGVMotivoE")

            '--Llenar Filas
            DataTableEMP.Rows.Add(INombreEMP.Value, ITelefonoEMP.Value, IPuestoEMP.Value, IFechaIniEMP.Text, IFechaFinEMP.Text, ISueldoEMP.Text, INomJefeEMP.Value, IPuestoJefeEMP.Value)
            DataTableMEMP.Rows.Add(IMovSep.Value)
            '--confirmar cambios
            DataTableEMP.AcceptChanges()
            DataTableMEMP.AcceptChanges()

            '----Agregar los datos a gridview
            GVEmpleos.DataSource = DataTableEMP
            GVEmpleos.DataBind()
            GvMotivoE.DataSource = DataTableMEMP
            GvMotivoE.DataBind()
            '--Guardar tabla temp
            Session("TempGVEMP") = DataTableEMP
            Session("TempGVMotivoE") = DataTableMEMP

            LimpiarEmpleo()
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
                LlenarEmpleos()
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
                                                           New DataColumn("ViveCon", GetType(String)),
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

    Protected Sub LlenarEmpleos()
        Try
            DataTableEMP.Columns.AddRange(New DataColumn() {New DataColumn("Nombre", GetType(String)),
                                                           New DataColumn("Telefono", GetType(String)),
                                                           New DataColumn("Puesto", GetType(String)),
                                                           New DataColumn("Fecha_Inicio", GetType(String)),
                                                           New DataColumn("Fecha_Final", GetType(String)),
                                                           New DataColumn("Sueldo", GetType(String)),
                                                           New DataColumn("Nom_Jefe", GetType(String)),
                                                           New DataColumn("Pues_Jefe", GetType(String))})
            Session("TempGVEMP") = DataTableEMP

            DataTableMEMP.Columns.AddRange(New DataColumn() {New DataColumn("Mot_Separacion", GetType(String))})
            Session("TempGVMotivoE") = DataTableMEMP
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
        IviveCon.Value = Nothing
        SVive.SelectedIndex = 0
        IDireccionDF.Value = Nothing
        IOcupacionF.Value = Nothing
        IEdadF.Text = Nothing

    End Sub

    Protected Sub LimpiarEmpleo()
        INombreEMP.Value = Nothing
        ITelefonoEMP.Value = Nothing
        IPuestoEMP.Value = Nothing
        IFechaIniEMP.Text = Nothing
        IFechaFinEMP.Text = Nothing
        ISueldoEMP.Text = Nothing
        INomJefeEMP.Value = Nothing
        IPuestoJefeEMP.Value = Nothing
        IMovSep.Value = Nothing
    End Sub

End Class
