<%@ Page Language="vb" AutoEventWireup="true"  CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v15.1, Version=15.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web" TagPrefix="dxe" %>

<%@ Register Assembly="DevExpress.Web.v15.1, Version=15.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web" TagPrefix="dxwgv" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
	<title>How to store filter to Cookies/Session</title>
</head>
<body>
	<form id="form1" runat="server">
	<div>

		<dxwgv:ASPxGridView ID="grid" runat="server" AutoGenerateColumns="False" DataSourceID="ads"
			KeyFieldName="ProductID" OnDataBound="grid_DataBound">
			<Columns>
                <dxwgv:GridViewCommandColumn VisibleIndex="0" ShowClearFilterButton="True"/>
				<dxwgv:GridViewDataTextColumn FieldName="ProductID" ReadOnly="True" VisibleIndex="1">
					<EditFormSettings Visible="False" />
				</dxwgv:GridViewDataTextColumn>
				<dxwgv:GridViewDataTextColumn FieldName="ProductName" VisibleIndex="2">
				</dxwgv:GridViewDataTextColumn>
				<dxwgv:GridViewDataTextColumn FieldName="CategoryID" VisibleIndex="3">
				</dxwgv:GridViewDataTextColumn>
			</Columns>
			<Settings ShowFilterBar="Visible" ShowFilterRowMenu="True" ShowFilterRow="True" ShowHeaderFilterButton="True" />
		</dxwgv:ASPxGridView>

		<asp:SqlDataSource ID="ads" runat="server" SelectCommand="SELECT [ProductID], [ProductName], [CategoryID] FROM [Products]" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" ></asp:SqlDataSource>
	</div>
	</form>
</body>
</html>
