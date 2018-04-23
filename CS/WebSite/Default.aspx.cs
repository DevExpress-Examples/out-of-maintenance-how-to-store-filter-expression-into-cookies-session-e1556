using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        RestoreFilter();
    }

    private void SaveFilter()
    {
        // Session["Filter"] = grid.FilterExpression;

        Response.Cookies["Filter"]["Expression"] = grid.FilterExpression;
        Response.Cookies["Filter"].Expires = DateTime.Now.AddDays(1d);
    }

    private void RestoreFilter()
    {
        /* if (Session["Filter"] != null)
             grid.FilterExpression = Session["Filter"].ToString();*/

        if (Request.Cookies["Filter"] != null)
            grid.FilterExpression = Request.Cookies["Filter"]["Expression"];
    }

    protected void grid_DataBound(object sender, EventArgs e)
    {
        SaveFilter();
    }
}
