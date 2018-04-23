Imports Microsoft.VisualBasic
Imports System
Imports System.IO
Imports System.Web.UI
Imports DevExpress.Utils

Namespace ASPxPivotGrid_SaveLoadCollapsedState
	Partial Public Class _Default
		Inherits Page
		Protected Sub btnSave_Click(ByVal sender As Object, ByVal e As EventArgs)
			Session("Layout") = ASPxPivotGrid1.SaveLayout()
			Dim collapseStateStream As MemoryStream = CType(Session("CollapseStateStream"), MemoryStream)
			If collapseStateStream IsNot Nothing Then
				collapseStateStream.Dispose()
			End If
			collapseStateStream = New MemoryStream()
			ASPxPivotGrid1.SaveCollapsedStateToStream(collapseStateStream)
			Session("CollapseStateStream") = collapseStateStream
		End Sub
		Protected Sub btnLoad_Click(ByVal sender As Object, ByVal e As EventArgs)
			Dim collapseStateStream As MemoryStream = CType(Session("CollapseStateStream"), MemoryStream)
			Dim layout As String = CStr(Session("Layout"))
			If layout Is Nothing OrElse collapseStateStream Is Nothing Then
				Return
			End If
			ASPxPivotGrid1.LoadLayout(layout)
			collapseStateStream.Seek(0, SeekOrigin.Begin)
			ASPxPivotGrid1.LoadCollapsedStateFromStream(collapseStateStream)
		End Sub
		Protected Sub btnClear_Click(ByVal sender As Object, ByVal e As EventArgs)
			ASPxPivotGrid1.Fields.Clear()
		End Sub
	End Class
End Namespace
