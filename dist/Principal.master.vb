Imports System.Data
Imports System.EventArgs
Partial Class dist_Principal
    Inherits System.Web.UI.MasterPage
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            Nombre.InnerText = Session("NomUser")
        End If
    End Sub
End Class

