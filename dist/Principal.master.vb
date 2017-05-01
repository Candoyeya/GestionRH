Imports System.Data
Imports System.EventArgs
Partial Class dist_Principal
    Inherits System.Web.UI.MasterPage
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        '--Creacion 2017/03/24 Llenar GV
        '--Update 2017/03/27
        Session.Timeout = 20
        If Not Page.IsPostBack Then
            If Session("NomUser") = "" Then
                Session.Abandon()
                Response.Redirect("Login.aspx")
            Else
                Nombre.InnerText = Session("NomUser")
            End If
        End If
    End Sub
End Class

