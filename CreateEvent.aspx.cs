using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
namespace AEMS
{
    public partial class createEvent : System.Web.UI.Page
    {
        //connect to database
        Connection objDB = new Connection();
        SqlCommand objCommand = new SqlCommand();

        protected void Page_Load(object sender, EventArgs e)
        {
            Admin admin = new Admin();
            //admin.adminID = 2;
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            SaveMainEventOwner();
            SaveEvent();
        }

        public void SaveMainEventOwner()
        {
            string strSQL = "CreateEventOwner";
            objCommand.CommandText = strSQL;
            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.Parameters.AddWithValue("@OwnerFirstName", txtOwnerFirstName.Text);
            objCommand.Parameters.AddWithValue("@OwnerLastName", txtOwnerLastName.Text);
            objCommand.Parameters.AddWithValue("@OwnerEmail", txtEmail.Text);
            objCommand.Parameters.AddWithValue("@OwnerPhoneNumber", txtPhoneNumber.Text);
            objDB.DoUpdateUsingCmdObj(objCommand);

        }

        public void SaveEvent()
        {
            string strSQL = "CreateEvent";
            objCommand.CommandText = strSQL;
            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.Parameters.AddWithValue("@EventName", txtEventName.Text);
            //objCommand.Parameters.AddWithValue("@StartDate", starttimepicker.Text);
            //objCommand.Parameters.AddWithValue("@EndDate", txtEventName.Text);
            objDB.DoUpdateUsingCmdObj(objCommand);
        }
    }
}