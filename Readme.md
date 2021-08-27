<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128577928/11.1.4%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/E20015)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/ASPxPivotGrid_SaveLoadCollapsedState/Default.aspx) (VB: [Default.aspx](./VB/ASPxPivotGrid_SaveLoadCollapsedState/Default.aspx))
* [Default.aspx.cs](./CS/ASPxPivotGrid_SaveLoadCollapsedState/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/ASPxPivotGrid_SaveLoadCollapsedState/Default.aspx.vb))
<!-- default file list end -->
# Save/load field values' collapsed states together with pivot grid's layout
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/e20015/)**
<!-- run online end -->


<p>Field values' collapsed states can be restored only in the same layout they have been saved in. This example shows how to save and load a control's layout together with collapsed states to ensure that the states are loaded in the appropriate layout.</p><br />



<h3>Description</h3>

<p>This example displays a pivot grid control and two buttons: Save and Load. When the Save button is clicked, the control layout and field values&#39; collapsed states are saved via the SaveLayoutToString and SaveCollapsedStateToStream methods, respectively. On the Load button click, the LoadLayoutFromString method is firstly called to restore the layout, and then the collapsed states are loaded using the LoadCollapsedStateFromStream method. This ensures that the control&#39;s state will be restored correctly when you click the Load button.</p><br />


<br/>


