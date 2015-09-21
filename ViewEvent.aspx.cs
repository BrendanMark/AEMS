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
        Connection objDB = new Connection();
        SqlCommand objCommand = new SqlCommand();

        protected void Page_Load(object sender, EventArgs e)
        {
            // fills are gridview with all the events when page is loaded for the first time
            if (!IsPostBack)
            {
                
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

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string searchFor = txtSearchEvent.Text;             // string entered by user to search for an event
            if (searchFor != String.Empty)                      // if user entered a word to search for an event following code will run else error will be displayed
            {
                lblDisplay.Visible = false;

                // Set the SQLCommand object's properties for executing a Stored Procedure
                objCommand.CommandType = CommandType.StoredProcedure;
                objCommand.CommandText = "SearchEventByName";
                objCommand.Parameters.AddWithValue("@EventName", searchFor);

                DataSet myDS = objDB.GetDataSetUsingCmdObj(objCommand);
                
                if (myDS.Tables[0].Rows.Count == 0)   // if there were no enteries returned by the database it means there were no events matching the search criteria
                {
                    lblDisplay.Visible = true;
                    lblDisplay.Text = "No Events found";
                }
                gvEvents.DataSource = myDS;
                gvEvents.DataBind();
            }
            else
            {
                lblDisplay.Visible = true;
                lblDisplay.Text = "Please Enter the name of the event you want to search";
            }
        }

        protected void ddlEventCategory_SelectedIndexChanged(object sender, EventArgs e)
        {
            string category = ddlEventCategory.SelectedValue;   // string entered by user to search for an event
            if (category != String.Empty)                      // if user entered a word to search for an event following code will run else error will be displayed
            {
                lblDisplay.Visible = false;

                // Set the SQLCommand object's properties for executing a Stored Procedure
                objCommand.CommandType = CommandType.StoredProcedure;
                objCommand.CommandText = "SearchEventByCategory";
                objCommand.Parameters.AddWithValue("@EventCategory", category);

                DataSet myDS = objDB.GetDataSetUsingCmdObj(objCommand);

                if (myDS.Tables[0].Rows.Count == 0)   // if there were no enteries returned by the database it means there were no events matching the search criteria
                {
                    lblDisplay.Visible = true;
                    lblDisplay.Text = "No Events found";
                }
                gvEvents.DataSource = myDS;
                gvEvents.DataBind();
            }
            else
            {
                lblDisplay.Visible = true;
                lblDisplay.Text = "Please select a category to find the events";
            }
        }

        protected void ddlOwnerLastName_SelectedIndexChanged(object sender, EventArgs e)
        {
            string ownerLastName = ddlOwnerLastName.SelectedValue; // string entered by user to search for an event
            if (ownerLastName != String.Empty)                      // if user entered a word to search for an event following code will run else error will be displayed
            {
                lblDisplay.Visible = false;

                // Set the SQLCommand object's properties for executing a Stored Procedure
                objCommand.CommandType = CommandType.StoredProcedure;
                objCommand.CommandText = "SearchEventByOwnerLastName";
                objCommand.Parameters.AddWithValue("@OwnerLastName", ownerLastName);

                DataSet myDS = objDB.GetDataSetUsingCmdObj(objCommand);

                if (myDS.Tables[0].Rows.Count == 0)   // if there were no enteries returned by the database it means there were no events matching the search criteria
                {
                    lblDisplay.Visible = true;
                    lblDisplay.Text = "No Events found";
                }
                gvEvents.DataSource = myDS;
                gvEvents.DataBind();
            }
            else
            {
                lblDisplay.Visible = true;
                lblDisplay.Text = "Please select owner's last name to find the events";
            }
        }

        protected void ddlDate_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void ddlEventName_SelectedIndexChanged(object sender, EventArgs e)
        {
            string eventName = ddlEventName.SelectedValue;      // string entered by user to search for an event
            if (eventName != String.Empty)                      // if user entered a word to search for an event following code will run else error will be displayed
            {
                lblDisplay.Visible = false;

                // Set the SQLCommand object's properties for executing a Stored Procedure
                objCommand.CommandType = CommandType.StoredProcedure;
                objCommand.CommandText = "SearchEventByName";
                objCommand.Parameters.AddWithValue("@EventName", eventName);

                DataSet myDS = objDB.GetDataSetUsingCmdObj(objCommand);

                if (myDS.Tables[0].Rows.Count == 0)   // if there were no enteries returned by the database it means there were no events matching the search criteria
                {
                    lblDisplay.Visible = true;
                    lblDisplay.Text = "No Events found";
                }
                gvEvents.DataSource = myDS;
                gvEvents.DataBind();
            }
            else
            {
                lblDisplay.Visible = true;
                lblDisplay.Text = "Please select owner's last name to find the events";
            }
        }


    }
}