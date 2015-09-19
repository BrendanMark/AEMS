using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AEMS
{
    public partial class ViewEvent : System.Web.UI.Page
    {
        Connection objDB;

        protected void Page_Load(object sender, EventArgs e)
        {
            objDB = new Connection();
            SqlCommand objCommand = new SqlCommand();
            if (IsPostBack == false)
            {
                // gets all the events and display them in the gridview
                // Set the SQLCommand object's properties for executing a Stored Procedure
                objCommand.CommandType = CommandType.StoredProcedure;
                objCommand.CommandText = "GetAllEvents";

                DataSet myDS = objDB.GetDataSetUsingCmdObj(objCommand);

                gvEvents.DataSource = myDS;
                gvEvents.DataBind();
            }
        }

        // code for hover over effect in gridview
        protected void gvEvents_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                e.Row.Attributes.Add("onMouseOver", "this.originalstyle=this.style.backgroundColor;this.style.backgroundColor='#ea4335';this.style.cursor='pointer';");
                e.Row.Attributes.Add("OnMouseOut", "this.style.backgroundColor=this.originalstyle;");
            }
        }
    }
}