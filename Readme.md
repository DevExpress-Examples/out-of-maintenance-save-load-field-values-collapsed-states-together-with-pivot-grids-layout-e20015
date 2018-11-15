<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/ASPxPivotGrid_SaveLoadCollapsedState/Default.aspx) (VB: [Default.aspx.vb](./VB/ASPxPivotGrid_SaveLoadCollapsedState/Default.aspx.vb))
* [Default.aspx.cs](./CS/ASPxPivotGrid_SaveLoadCollapsedState/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/ASPxPivotGrid_SaveLoadCollapsedState/Default.aspx.vb))
<!-- default file list end -->
# Save/load field values' collapsed states together with pivot grid's layout


<p>Field values' collapsed states can be restored only in the same layout they have been saved in. This example shows how to save and load a control's layout together with collapsed states to ensure that the states are loaded in the appropriate layout.</p><br />



<h3>Description</h3>

<p>Starting from the version 11.1.7, it is necessary to specify the <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxPivotGridPivotGridWebOptionsLayout_DefaultLayouttopic">PivotGridWebOptionsLayout.DefaultLayout </a> property to create fields that are present in the saved layout but do not exist in the pivot grid. This behavior is connected with the use of the <a href="http://documentation.devexpress.com/#CoreLibraries/DevExpressUtilsOptionsColumnLayout_RemoveOldColumnstopic">PivotGridWebOptionsLayout.Columns.RemoveOldColumns</a> property.</p>

<br/>


