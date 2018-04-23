Imports Microsoft.VisualBasic
Imports System
Imports System.Data
Imports System.Configuration
Imports System.Web
Imports System.Web.Security
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Web.UI.WebControls.WebParts
Imports System.Web.UI.HtmlControls

Partial Public Class _Default
	Inherits System.Web.UI.Page
	Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
		RestoreFilter()
	End Sub

	Private Sub SaveFilter()
		' Session["Filter"] = grid.FilterExpression;

		Response.Cookies("Filter")("Expression") = grid.FilterExpression
		Response.Cookies("Filter").Expires = DateTime.Now.AddDays(1R)
	End Sub

	Private Sub RestoreFilter()
'         if (Session["Filter"] != null)
'             grid.FilterExpression = Session["Filter"].ToString();

		If Request.Cookies("Filter") IsNot Nothing Then
			grid.FilterExpression = Request.Cookies("Filter")("Expression")
		End If
	End Sub

	Protected Sub grid_DataBound(ByVal sender As Object, ByVal e As EventArgs)
		SaveFilter()
	End Sub
End Class
