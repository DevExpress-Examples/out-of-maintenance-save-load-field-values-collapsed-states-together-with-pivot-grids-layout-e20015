using System;
using System.IO;
using System.Web.UI;
using DevExpress.Utils;

namespace ASPxPivotGrid_SaveLoadCollapsedState {
    public partial class _Default : Page {
        protected void btnSave_Click(object sender, EventArgs e) {
            Session["Layout"] = ASPxPivotGrid1.SaveLayoutToString();
            MemoryStream collapseStateStream = (MemoryStream)(Session["CollapseStateStream"]);
            if (collapseStateStream != null) {
                collapseStateStream.Dispose();
            }
            collapseStateStream = new MemoryStream();
            ASPxPivotGrid1.SaveCollapsedStateToStream(collapseStateStream);
            Session["CollapseStateStream"] = collapseStateStream;
        }
        protected void btnLoad_Click(object sender, EventArgs e) {
            MemoryStream collapseStateStream = (MemoryStream)(Session["CollapseStateStream"]);
            string layout = (string)(Session["Layout"]);
            if (layout == null ||
                collapseStateStream == null) {
                return;
            }
            ASPxPivotGrid1.LoadLayoutFromString(layout);
            collapseStateStream.Seek(0, SeekOrigin.Begin);
            ASPxPivotGrid1.LoadCollapsedStateFromStream(collapseStateStream);
        }
    }
}
