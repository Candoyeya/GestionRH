Imports System.Data
Imports System.EventArgs
Imports System.Data.SqlClient
Partial Class dist_AddPros
    Inherits System.Web.UI.Page
    Dim DataTable As New DataTable("TempGVEscolaridad")
    Dim DataTableDF As New DataTable("TempGVDF")
    Dim DataTableEMP As New DataTable("TempGVEMP")
    Dim DataTableMEMP As New DataTable("TempGVMotivoE")
    Dim DataTableR As New DataTable("TempGVR")
    Dim DataTableE As New DataTable("TempGVE")
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

    Protected Sub BtnReferencia_Click(sender As Object, e As EventArgs) Handles BtnReferencia.Click
        Try
            '---Definir tabla temporal para llenar gv
            Dim DataTableR As DataTable
            DataTableR = Session("TempGVR")
            '--Llenar Filas
            DataTableR.Rows.Add(INom_Ref.Value, IDire_Ref.Value, ITele_Ref.Value, IOcupa_Ref.Value, ITim_Ref.Value)
            '--confirmar cambios
            DataTableR.AcceptChanges()
            '----Agregar los datos a gridview
            GVReferencia.DataSource = DataTableR
            GVReferencia.DataBind()
            '--Guardar tabla temp
            Session("TempGVR") = DataTableR

            LimpiarRef()


        Catch ex As Exception
            Dim fail As String = ex.Message
            ClientScript.RegisterStartupScript(Me.[GetType](), "aleasrt", "alert('" & fail & "');  ", True)
        End Try
    End Sub
    Protected Sub BtnEvaluacion_Click(sender As Object, e As EventArgs) Handles BtnEvaluacion.Click
        Try
            '---Definir tabla temporal para llenar gv
            Dim DataTableE As DataTable
            DataTableE = Session("TempGVE")
            '--Llenar Filas
            DataTableE.Rows.Add(INom_Evalua.Value, ICalificacion.Value, SApto.Value, Departamento.SelectedValue, IComenta.Value)
            '--confirmar cambios
            DataTableE.AcceptChanges()
            '----Agregar los datos a gridview
            GVEvaluacion.DataSource = DataTableE
            GVEvaluacion.DataBind()
            '--Guardar tabla temp
            Session("TempGVE") = DataTableE

            LimpiarEvalua()

        Catch ex As Exception
            Dim fail As String = ex.Message
            ClientScript.RegisterStartupScript(Me.[GetType](), "aleasrt", "alert('" & fail & "');  ", True)
        End Try
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            Try
                Departamentos()
                LlenarEscolaridad()
                LlenarDF()
                LlenarReferencias()
                LlenarEmpleos()
                LlenarEvaluacion()

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

    Protected Sub LlenarReferencias()
        Try
            DataTableR.Columns.AddRange(New DataColumn() {New DataColumn("Nombre", GetType(String)),
                                                           New DataColumn("Direccion", GetType(String)),
                                                           New DataColumn("Telefono", GetType(String)),
                                                           New DataColumn("Ocupacion", GetType(String)),
                                                           New DataColumn("Tiempo", GetType(String))})
            Session("TempGVR") = DataTableR
        Catch ex As Exception
            Dim fail As String = ex.Message
            ClientScript.RegisterStartupScript(Me.[GetType](), "aleasrt", "alert('" & fail & "');  ", True)
        End Try
    End Sub

    Protected Sub LlenarEvaluacion()
        Try
            DataTableE.Columns.AddRange(New DataColumn() {New DataColumn("Nombre", GetType(String)),
                                                           New DataColumn("Calificacion", GetType(String)),
                                                           New DataColumn("Apto", GetType(String)),
                                                           New DataColumn("Area", GetType(String)),
                                                           New DataColumn("Comentarios", GetType(String))})
            Session("TempGVE") = DataTableE
        Catch ex As Exception
            Dim fail As String = ex.Message
            ClientScript.RegisterStartupScript(Me.[GetType](), "aleasrt", "alert('" & fail & "');  ", True)
        End Try
    End Sub
    '<--------------------------Limpiar Campos------------------------------------------->
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
    Protected Sub LimpiarRef()
        INom_Ref.Value = Nothing
        IDire_Ref.Value = Nothing
        ITele_Ref.Value = Nothing
        IOcupa_Ref.Value = Nothing
        ITim_Ref.Value = Nothing

    End Sub

    Protected Sub LimpiarEvalua()
        INom_Evalua.Value = Nothing
        ICalificacion.Value = Nothing
        SApto.SelectedIndex = 0
        Departamento.SelectedIndex = 0
        IComenta.Value = Nothing

    End Sub
    '  <----------------------------------Insertar--------------------------------------------->
    Protected Sub BtnGuardar_Click(sender As Object, e As EventArgs) Handles BtnGuardar.Click
        'DatosPersonales()
        'DatosDocumentacion()
        'RecorerGVDF()
        'RecorerGVEscolaridad()
        'RecorerGVEmpleos()
        'RecorerGVReferencia()
        RecorerGVEvalua()

    End Sub

    Protected Sub DatosPersonales()

        Try
            Dim Datos As String = "'" & INombre.Value & "'" &
                                  "," & "'" & IDomicilio.Value & "'" &
                                  "," & "'" & ICiudad.Value & "'" &
                                  "," & "'" & ICP.Text & "'" &
                                  "," & "'" & IFecha_Naci.Text & "'" &
                                  "," & "'" & IEdad.Text & "'" &
                                  "," & "'" & ITelefono.Text & "'" &
                                  "," & "'" & ICelular.Text & "'" &
                                  "," & "'" & ILugar_Naci.Value & "'" &
                                  "," & "'" & SSexo.Value & "'" &
                                  "," & "'" & SEstado.Value & "'"


            InsertarIPDP(Datos)
            LimpiarDatosPersonales()


        Catch ex As Exception
            Dim fail As String = ex.Message
            ClientScript.RegisterStartupScript(Me.[GetType](), "aleasrt", "alert('" & fail & "');  ", True)
        End Try

    End Sub

    Protected Sub DatosDocumentacion()

        Try
            Dim Datos As String = "'" & Icurp.Value & "'" &
                                  "," & "'" & IRFC.Value & "'" &
                                  "," & "'" & INSS.Text & "'" &
                                  "," & "'" & IInfonavit.Value & "'" &
                                  "," & "'" & SLicencia.Value & "'" &
                                  "," & "'" & SClase_Lic.Value & "'" &
                                  "," & "'" & INume_Lice.Text & "'"


            InsertarIPD(Datos)
            LimpiarDocumentacions()


        Catch ex As Exception
            Dim fail As String = ex.Message
            ClientScript.RegisterStartupScript(Me.[GetType](), "aleasrt", "alert('" & fail & "');  ", True)
        End Try

    End Sub

    Protected Sub RecorerGVDF()

        Try
            Dim fila As String = Nothing


            For Each Dt_row As GridViewRow In GvDF.Rows
                fila = Nothing
                For i As Integer = 0 To 6

                    If i = 6 Then
                        fila = fila & "'" & Dt_row.Cells(i).Text & "'"
                    Else
                        fila = fila & "'" & Dt_row.Cells(i).Text & "',"
                    End If

                Next
                InsertarIPDF(fila)
                ClientScript.RegisterStartupScript(Me.[GetType](), "aleasrt", "alert('" & fila & "');  ", True)
            Next

            LimpiarGVDF()

        Catch ex As Exception
            Dim fail As String = ex.Message
            ClientScript.RegisterStartupScript(Me.[GetType](), "aleasrt", "alert('" & fail & "');  ", True)
        End Try

    End Sub

    Protected Sub RecorerGVEscolaridad()

        Try
            Dim fila As String = Nothing


            For Each Dt_row As GridViewRow In GvEscolaridad.Rows
                fila = Nothing
                For i As Integer = 0 To 5
                    If i = 5 Then
                        fila = fila & "'" & Dt_row.Cells(i).Text & "'"
                    Else
                        fila = fila & "'" & Dt_row.Cells(i).Text & "',"
                    End If

                Next
                InsertarIPEscolaridad(fila)
                ClientScript.RegisterStartupScript(Me.[GetType](), "aleasrt", "alert('" & fila & "');  ", True)
            Next

            LimpiarGVEscolaridad()

        Catch ex As Exception
            Dim fail As String = ex.Message
            ClientScript.RegisterStartupScript(Me.[GetType](), "aleasrt", "alert('" & fail & "');  ", True)
        End Try

    End Sub

    Protected Sub RecorerGVEmpleos()

        Try
            Dim fila As String = Nothing
            Dim fila2 As String = Nothing

            Dim j As Integer = 0

            For Each Dt_row As GridViewRow In GVEmpleos.Rows
                fila = Nothing

                For i As Integer = 0 To 7

                    fila = fila & "'" & Dt_row.Cells(i).Text & "',"

                Next
                ClientScript.RegisterStartupScript(Me.[GetType](), "aleasrt", "alert('" & fila & "');  ", True)

                fila2 = "'" & GvMotivoE.Rows(j).Cells(0).Text & "'"

                j = j + 1
                ClientScript.RegisterStartupScript(Me.[GetType](), "aleasrt", "alert('" & fila2 & "');  ", True)

                InsertarIPEM(fila, fila2)
            Next


            LimpiarGVEmpleados()



        Catch ex As Exception
            Dim fail As String = ex.Message
            ClientScript.RegisterStartupScript(Me.[GetType](), "aleasrt", "alert('" & fail & "');  ", True)
        End Try

    End Sub

    Protected Sub RecorerGVReferencia()

        Try
            Dim fila As String = Nothing


            For Each Dt_row As GridViewRow In GVReferencia.Rows
                fila = Nothing
                For i As Integer = 0 To 4
                    If i = 4 Then
                        fila = fila & "'" & Dt_row.Cells(i).Text & "'"
                    Else
                        fila = fila & "'" & Dt_row.Cells(i).Text & "',"
                    End If


                Next
                InsertarIPReferencia(fila)
                ClientScript.RegisterStartupScript(Me.[GetType](), "aleasrt", "alert('" & fila & "');  ", True)
            Next



            LimpiarGVreferencia()

        Catch ex As Exception
            Dim fail As String = ex.Message
            ClientScript.RegisterStartupScript(Me.[GetType](), "aleasrt", "alert('" & fail & "');  ", True)
        End Try

    End Sub

    Protected Sub RecorerGVEvalua()

        Try
            Dim fila As String = Nothing


            For Each Dt_row As GridViewRow In GVEvaluacion.Rows
                fila = Nothing

                For i As Integer = 0 To 4
                    If i = 4 Then
                        fila = fila & "'" & Dt_row.Cells(i).Text & "'"
                    Else
                        fila = fila & "'" & Dt_row.Cells(i).Text & "',"
                    End If


                Next
                InsertarIPEvalua(fila)
                ClientScript.RegisterStartupScript(Me.[GetType](), "aleasrt", "alert('" & fila & "');  ", True)
            Next



            LimpiarGVEvalua()

        Catch ex As Exception
            Dim fail As String = ex.Message
            ClientScript.RegisterStartupScript(Me.[GetType](), "aleasrt", "alert('" & fail & "');  ", True)
        End Try

    End Sub
    '<------------------------------- Insertar Datos ------------------------------------------------->
    Protected Sub InsertarIPDP(Datos As String)
        Dim SqlInsert As String = "Insert into TIPDPGRH (Nombre,Domicilio,Ciudad,CP,Fecha_Nacimiento," &
                                    "Edad,Telefono,Celular, Lugar_Naci, Sexo, Estado_Civil) values (" & Datos & ")"

        Try
            cmd2 = New SqlClient.SqlCommand(SqlInsert)
            Using con2 As New SqlClient.SqlConnection(ConnectionString2)
                If con2.State = ConnectionState.Closed Then
                    cmd2.Connection = con2
                    con2.Open()
                    cmd2.ExecuteNonQuery()
                End If
                'cmd.Dispose()
                con2.Close()
            End Using

        Catch ex As Exception
            Dim fail As String = ex.Message
            ClientScript.RegisterStartupScript(Me.[GetType](), "aleasrt", "alert('" & fail & "');  ", True)
        End Try
    End Sub

    Protected Sub InsertarIPD(Datos As String)

        Dim Id As String = "(SELECT Id FROM TIPDPGRH WHERE Id = (SELECT MAX(Id) from TIPDPGRH))"

        Dim SqlInsert As String = "Insert into TIPDGRH (id,CURP,RFC,NSS,Infonavit,Licencia," &
                                    "Licencia_Clase,Num_Licencia) values (" & Id & "," & Datos & ")"

        Try
            cmd2 = New SqlClient.SqlCommand(SqlInsert)
            Using con2 As New SqlClient.SqlConnection(ConnectionString2)
                If con2.State = ConnectionState.Closed Then
                    cmd2.Connection = con2
                    con2.Open()
                    cmd2.ExecuteNonQuery()
                End If
                'cmd.Dispose()
                con2.Close()
            End Using

        Catch ex As Exception
            Dim fail As String = ex.Message
            ClientScript.RegisterStartupScript(Me.[GetType](), "aleasrt", "alert('" & fail & "');  ", True)
        End Try
    End Sub

    Protected Sub InsertarIPDF(fila As String)

        Dim Id As String = "(SELECT Id FROM TIPDPGRH WHERE Id = (SELECT MAX(Id) from TIPDPGRH))"

        Dim SqlInsert As String = "Insert into TIPDFGRH (id,Nombre,Parentesco,Vive_Con,Vive," &
                                    "Direccion,Ocupacion,Edad) values (" & Id & "," & fila & ")"

        Try
            cmd2 = New SqlClient.SqlCommand(SqlInsert)
            Using con2 As New SqlClient.SqlConnection(ConnectionString2)
                If con2.State = ConnectionState.Closed Then
                    cmd2.Connection = con2
                    con2.Open()
                    cmd2.ExecuteNonQuery()
                End If
                'cmd.Dispose()
                con2.Close()
            End Using

        Catch ex As Exception
            Dim fail As String = ex.Message
            ClientScript.RegisterStartupScript(Me.[GetType](), "aleasrt", "alert('" & fail & "');  ", True)
        End Try
    End Sub

    Protected Sub InsertarIPEscolaridad(fila As String)

        Dim Id As String = "(SELECT Id FROM TIPDPGRH WHERE Id = (SELECT MAX(Id) from TIPDPGRH))"

        Dim SqlInsert As String = "Insert into TIPESGRH (id,Nombre,Escolaridad,Direccion,Fecha_Ini,Fecha_Fin," &
                                    "Titulo) values (" & Id & "," & fila & ")"

        Try
            cmd2 = New SqlClient.SqlCommand(SqlInsert)
            Using con2 As New SqlClient.SqlConnection(ConnectionString2)
                If con2.State = ConnectionState.Closed Then
                    cmd2.Connection = con2
                    con2.Open()
                    cmd2.ExecuteNonQuery()
                End If
                'cmd.Dispose()
                con2.Close()
            End Using

        Catch ex As Exception
            Dim fail As String = ex.Message
            ClientScript.RegisterStartupScript(Me.[GetType](), "aleasrt", "alert('" & fail & "');  ", True)
        End Try
    End Sub

    Protected Sub InsertarIPEM(fila As String, fila2 As String)

        Dim Id As String = "(SELECT Id FROM TIPDPGRH WHERE Id = (SELECT MAX(Id) from TIPDPGRH))"

        Dim SqlInsert As String = "Insert into TIPEMGRH (id,Nombre,Telefono,Puesto,Fecha_Ini," &
                                    "Fecha_Fin,Sueldo,Nom_Jefe,Puesto_Jefe, Separacion) values (" & Id & "," & fila & fila2 & ")"

        Try
            cmd2 = New SqlClient.SqlCommand(SqlInsert)
            Using con2 As New SqlClient.SqlConnection(ConnectionString2)
                If con2.State = ConnectionState.Closed Then
                    cmd2.Connection = con2
                    con2.Open()
                    cmd2.ExecuteNonQuery()
                End If
                'cmd.Dispose()
                con2.Close()
            End Using

        Catch ex As Exception
            Dim fail As String = ex.Message
            ClientScript.RegisterStartupScript(Me.[GetType](), "aleasrt", "alert('" & fail & "');  ", True)
        End Try
    End Sub

    Protected Sub InsertarIPReferencia(fila As String)

        Dim Id As String = "(SELECT Id FROM TIPDPGRH WHERE Id = (SELECT MAX(Id) from TIPDPGRH))"

        Dim SqlInsert As String = "Insert into TIPRGRH (id,Nombre,Direccion,Telefono,Ocupacion," &
                                    "tiempo_Conoce) values (" & Id & "," & fila & ")"

        Try
            cmd2 = New SqlClient.SqlCommand(SqlInsert)
            Using con2 As New SqlClient.SqlConnection(ConnectionString2)
                If con2.State = ConnectionState.Closed Then
                    cmd2.Connection = con2
                    con2.Open()
                    cmd2.ExecuteNonQuery()
                End If
                'cmd.Dispose()
                con2.Close()
            End Using

        Catch ex As Exception
            Dim fail As String = ex.Message
            ClientScript.RegisterStartupScript(Me.[GetType](), "aleasrt", "alert('" & fail & "');  ", True)
        End Try
    End Sub

    Protected Sub InsertarIPEvalua(fila As String)

        Dim Id As String = "(SELECT Id FROM TIPDPGRH WHERE Id = (SELECT MAX(Id) from TIPDPGRH))"

        Dim SqlInsert As String = "Insert into TIPEVGRH (id,Nombre,Califica,Apto,Departamento,Comenta" &
                                    ") values (" & Id & "," & fila & ")"

        Try
            cmd2 = New SqlClient.SqlCommand(SqlInsert)
            Using con2 As New SqlClient.SqlConnection(ConnectionString2)
                If con2.State = ConnectionState.Closed Then
                    cmd2.Connection = con2
                    con2.Open()
                    cmd2.ExecuteNonQuery()
                End If
                'cmd.Dispose()
                con2.Close()
            End Using

        Catch ex As Exception
            Dim fail As String = ex.Message
            ClientScript.RegisterStartupScript(Me.[GetType](), "aleasrt", "alert('" & fail & "');  ", True)
        End Try
    End Sub

    '<--------------------------------Limpiar Tabla ---------------------------------->
    Protected Sub LimpiarDatosPersonales()
        INombre.Value = Nothing
        IDireccion.Value = Nothing
        ICiudad.Value = Nothing
        ICP.Text = Nothing
        IFecha_Naci.Text = Nothing
        IEdad.Text = Nothing
        ITelefono.Text = Nothing
        ICelular.Text = Nothing
        ILugar_Naci.Value = Nothing
        SSexo.SelectedIndex = 0
        SEstado.SelectedIndex = 0
    End Sub
    Protected Sub LimpiarGVEmpleados()
        GVEmpleos.DataSource = Nothing
        GVEmpleos.DataBind()
        GvMotivoE.DataSource = Nothing
        GvMotivoE.DataBind()
    End Sub

    Protected Sub LimpiarDocumentacions()
        Icurp.Value = Nothing
        IRFC.Value = Nothing
        INSS.Text = Nothing
        IInfonavit.Value = Nothing
        SLicencia.SelectedIndex = 0
        SClase_Lic.SelectedIndex = 0
        INume_Lice.Text = Nothing

    End Sub

    Protected Sub LimpiarGVDF()
        GvDF.DataSource = Nothing
        GvDF.DataBind()
    End Sub

    Protected Sub LimpiarGVEscolaridad()
        GvEscolaridad.DataSource = Nothing
        GvEscolaridad.DataBind()
    End Sub

    Protected Sub LimpiarGVreferencia()
        GVReferencia.DataSource = Nothing
        GVReferencia.DataBind()

    End Sub
    Protected Sub LimpiarGVEvalua()
        GVEvaluacion.DataSource = Nothing
        GVEvaluacion.DataBind()
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

End Class