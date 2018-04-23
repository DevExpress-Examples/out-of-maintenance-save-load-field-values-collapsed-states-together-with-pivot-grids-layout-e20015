<%@ Page Language="vb" AutoEventWireup="true" Codebehind="Default.aspx.vb"
	Inherits="ASPxPivotGrid_SaveLoadCollapsedState._Default" %>
<%@ Register Assembly="DevExpress.Web.ASPxEditors.v11.1, Version=11.1.5.0,
	Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web.ASPxEditors"
	TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.ASPxPivotGrid.v11.1, Version=11.1.5.0,
	Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web.ASPxPivotGrid"
	TagPrefix="dx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title>Untitled Page</title>
</head>
<body>
	<form id="form1" runat="server">
		<div>
			<table>
				<tbody>
					<tr>
						<td>
							<dx:ASPxButton ID="btnSave" runat="server" Text="Save"
							OnClick="btnSave_Click" />
						</td>
						<td>
							<dx:ASPxButton ID="btnLoad" runat="server" Text="Load"
							OnClick="btnLoad_Click" />
						</td>
						<td>
							<dx:ASPxButton ID="btnClear" runat="server" Text="Clear"
							OnClick="btnClear_Click" />
						</td>
					</tr>
				</tbody>
			</table>
			<dx:ASPxPivotGrid ID="ASPxPivotGrid1" runat="server" DataSourceID="AccessDataSource1"
				Width="677px" OptionsView-ShowHorizontalScrollBar="true">
				<Fields>
					<dx:PivotGridField ID="fieldProductName" Area="RowArea" AreaIndex="0"
						Caption="Product Name" FieldName="ProductName">
					</dx:PivotGridField>
					<dx:PivotGridField ID="fieldYear" Area="ColumnArea" AreaIndex="0" Caption="Year"
						FieldName="OrderDate" GroupIndex="0" GroupInterval="DateYear"
						InnerGroupIndex="0" UnboundFieldName="fieldYear">
					</dx:PivotGridField>
					<dx:PivotGridField ID="fieldExtendedPrice" Area="DataArea" AreaIndex="0"
						Caption="Extended Price" FieldName="ExtendedPrice">
					</dx:PivotGridField>
					<dx:PivotGridField ID="fieldQuantity" Area="DataArea" AreaIndex="1"
						Caption="Quantity" FieldName="Quantity">
					</dx:PivotGridField>
					<dx:PivotGridField ID="fieldMonth" Area="ColumnArea" AreaIndex="2" Caption="Month"
						FieldName="OrderDate" GroupIndex="0" InnerGroupIndex="2"
						GroupInterval="DateMonth" UnboundFieldName="fieldMonth">
					</dx:PivotGridField>
					<dx:PivotGridField ID="fieldQuarter" Area="ColumnArea" AreaIndex="1"
						Caption="Quarter" FieldName="OrderDate" GroupIndex="0"
						GroupInterval="DateQuarter" InnerGroupIndex="1"
						UnboundFieldName="fieldQuarter">
					</dx:PivotGridField>
				</Fields>
				<Groups>
					<dx:PivotGridWebGroup />
				</Groups>
			</dx:ASPxPivotGrid>
			<asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/nwind.mdb"
				SelectCommand="SELECT [ProductName], [ExtendedPrice], [Quantity],
				[OrderDate] FROM [Invoices]">
			</asp:AccessDataSource>
		</div>
	</form>
</body>
</html>