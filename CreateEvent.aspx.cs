﻿using System;
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
        SqlCommand SaveSponserobjCommand = new SqlCommand();
        SqlCommand SavePanelListobjCommand = new SqlCommand();
        SqlCommand SaveSubEventDetailsCommand = new SqlCommand();
        SqlCommand SaveSubEventLocationCommand = new SqlCommand();
        SqlCommand SaveSubEventSponserCommand = new SqlCommand();
        SqlCommand SaveSubEventPanelistCommand = new SqlCommand();

        protected void Page_Load(object sender, EventArgs e)
        {
            Admin admin = new Admin();
            //admin.adminID = 2;

            
        }

        public void DynamicCheckBoxTasks()
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            //SaveMainEventOwner();
            //SaveEvent();
            //SaveLocation();
            SaveSponsor();
            //SavePanelList();
            //SaveSubEventLocation();
            //SaveSubEventSponsor();
            //SaveSubEventPanelist();
            //SaveEventOverview();
            //SaveBudget();
            //SaveMarketingCommunication();
            //SavePreEventLogistics();
            //SavePostEventLogistics();
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
            
            
            //string startDate = Request.Form["sdp"];
            string dob = Convert.ToString(Request.Form["sdp"]);
            //string startDate = Request.Form["startdatepicker.UniqueID"];
            DateTime endDate = Convert.ToDateTime(Request.Form["edp"]);
            DateTime startTime = Convert.ToDateTime(Request.Form["st"]);
            DateTime endTime = Convert.ToDateTime(Request.Form["et"]);
            
            string strSQL = "CreateEvent";
            objCommand.CommandText = strSQL;
            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.Parameters.AddWithValue("@EventName", txtEventName.Text);
            objCommand.Parameters.AddWithValue("@StartDate", hdnStartDatePicker.Value);
            objCommand.Parameters.AddWithValue("@EndDate", hdnEndDatePicker.Value);
            objCommand.Parameters.AddWithValue("@StartTime", hdnStartTimePicker.Value);
            objCommand.Parameters.AddWithValue("@EndTime", hdnEndTimePicker.Value);
            objCommand.Parameters.AddWithValue("@EventCategory", chkAlumniSociety.Text);
            objDB.DoUpdateUsingCmdObj(objCommand);
        }

        public void SaveLocation()
        {
            string strSQL = "CreateLocation";
            objCommand.CommandText = strSQL;
            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.Parameters.AddWithValue("@StreetAddress1", txtStreetAddress1.Text);
            objCommand.Parameters.AddWithValue("@StreetAddress2", txtStreetAddress2.Text);
            objCommand.Parameters.AddWithValue("@BuildingName", txtBuildingName.Text);
            objCommand.Parameters.AddWithValue("@RoomNumber", txtRoomNumber.Text);
            objCommand.Parameters.AddWithValue("@City", txtCity.Text);
            objCommand.Parameters.AddWithValue("@State", ddlStates.SelectedItem);
            objCommand.Parameters.AddWithValue("@ZipCode", txtZipCode.Text);
            objCommand.Parameters.AddWithValue("@Country", ddlCountry.SelectedItem);
            objCommand.Parameters.AddWithValue("@TimeZone", ddlTimeZone.SelectedItem);
            objDB.DoUpdateUsingCmdObj(objCommand);
        }

        public void SaveSponsor()
        {
            string strSQL = "CreateSponsor";
            SaveSponserobjCommand.CommandText = strSQL;
            SaveSponserobjCommand.CommandType = CommandType.StoredProcedure;
            SaveSponserobjCommand.Parameters.AddWithValue("@SponsorFirstName", txtEventSponsorFirstName.Text);
            SaveSponserobjCommand.Parameters.AddWithValue("@SponsorLastName", txtEventSponsorLastName.Text);
            SaveSponserobjCommand.Parameters.AddWithValue("@CoSponsorFirstName", txtEventCoSponsorFirstName.Text);
            SaveSponserobjCommand.Parameters.AddWithValue("@CoSponsorLastName", txtEventCoSponsorLastName.Text);
            SaveSponserobjCommand.Parameters.AddWithValue("@UniversityPartner", rdbEventUniversityPartner.SelectedIndex);
            SaveSponserobjCommand.Parameters.AddWithValue("@CoUniversityPartner", rdbEventCoUniversityPartner.SelectedIndex);
            SaveSponserobjCommand.Parameters.AddWithValue("@SponsorEmail", txtEventSponsorEmail.Text);
            SaveSponserobjCommand.Parameters.AddWithValue("@CoSponsorEmail", txtEventCoSponsorEmail.Text);

            objDB.DoUpdateUsingCmdObj(SaveSponserobjCommand);
        }

        public void SavePanelList()
        {
            string strSQL = "CreatePanellist";
            SavePanelListobjCommand.CommandText = strSQL;
            SavePanelListobjCommand.CommandType = CommandType.StoredProcedure;
            SavePanelListobjCommand.Parameters.AddWithValue("@PanelistFirstName", txtEventPanelistFirstName.Text);
            SavePanelListobjCommand.Parameters.AddWithValue("@PanelistEmail", txtEventPanellistEmail.Text);
            SavePanelListobjCommand.Parameters.AddWithValue("@PanelistPhoneNumber", txtEventPanelistPhoneNumber.Text);
            SavePanelListobjCommand.Parameters.AddWithValue("@PanelistLastName", txtEventPanelistLastName.Text);
            SavePanelListobjCommand.Parameters.AddWithValue("@PanelistRole", txtEventPanelistRole.Text);

            objDB.DoUpdateUsingCmdObj(SavePanelListobjCommand);
        }

        public void SaveSubEventDetails()
        {
            string strSQL = "CreatePanelist";
            SaveSubEventDetailsCommand.CommandText = strSQL;
            SaveSubEventDetailsCommand.CommandType = CommandType.StoredProcedure;

            SaveSubEventDetailsCommand.Parameters.AddWithValue("@PanelistFirstName", txtEventPanelistFirstName.Text);
            SaveSubEventDetailsCommand.Parameters.AddWithValue("@PanelistEmail", txtEventPanellistEmail.Text);
            SaveSubEventDetailsCommand.Parameters.AddWithValue("@PanelistPhoneNumber", txtEventPanelistPhoneNumber.Text);
            SaveSubEventDetailsCommand.Parameters.AddWithValue("@PanelistLastName", txtEventPanelistLastName.Text);
            SaveSubEventDetailsCommand.Parameters.AddWithValue("@PanelistRole", txtEventPanelistRole.Text);

            objDB.DoUpdateUsingCmdObj(SaveSubEventDetailsCommand);
        }



        //public void SaveSubEventOwner()
        //{
        //    string strSQL = "CreateSubEventOwner";
        //    SaveEventOwnerCommand.CommandText = strSQL;
        //    SaveEventOwnerCommand.CommandType = CommandType.StoredProcedure;
        //    SaveEventOwnerCommand.Parameters.AddWithValue("@SubEventName", txtSubOwnerFirstName.Text);
        //    SaveEventOwnerCommand.Parameters.AddWithValue("@SubEventStartDate", txtSubOwnerLastName.Text);
        //    SaveEventOwnerCommand.Parameters.AddWithValue("@SubEventEndDate", txtSubEmail.Text);
        //    SaveEventOwnerCommand.Parameters.AddWithValue("@RegistrationURL", txtSubPhoneNumber.Text);


        //    objDB.DoUpdateUsingCmdObj(SaveEventOwnerCommand);
        //}


        public void SaveSubEventLocation()
        {
            string strSQL = "CreateSubEventLocation";
            SaveSubEventLocationCommand.CommandText = strSQL;
            SaveSubEventLocationCommand.CommandType = CommandType.StoredProcedure;
            SaveSubEventLocationCommand.Parameters.AddWithValue("@SubEventStreetAddress1", txtSubStreetAddress1.Text);
            SaveSubEventLocationCommand.Parameters.AddWithValue("@SubEventStreetAddress2", txtSubStreetAddress2.Text);
            SaveSubEventLocationCommand.Parameters.AddWithValue("@SubEventCity", txtSubCity.Text);
            SaveSubEventLocationCommand.Parameters.AddWithValue("@SubEventState", txtSubState.Text);
            SaveSubEventLocationCommand.Parameters.AddWithValue("@SubEventZipCode", txtSubZipCode.Text);
            SaveSubEventLocationCommand.Parameters.AddWithValue("@SubEventBuildingName", txtSubBuildingName.Text);
            SaveSubEventLocationCommand.Parameters.AddWithValue("@SubEventRoomNumber", txtSubRoomNumber.Text);

            objDB.DoUpdateUsingCmdObj(SaveSubEventLocationCommand);
        }



        public void SaveSubEventSponsor()
        {
            string strSQL = "CreateSubEventSponsor";
            SaveSubEventSponserCommand.CommandText = strSQL;
            SaveSubEventSponserCommand.CommandType = CommandType.StoredProcedure;
            SaveSubEventSponserCommand.Parameters.AddWithValue("@SubEventSponserName", txtSubEventSponsorName.Text);
            SaveSubEventSponserCommand.Parameters.AddWithValue("@SubEventCoSponserName", txtSubEventCoSponsorName.Text);
            SaveSubEventSponserCommand.Parameters.AddWithValue("@SubEventUniversityPartnerName", rdbSubEventSponsorUniversityPartner.SelectedIndex);
            SaveSubEventSponserCommand.Parameters.AddWithValue("@SubEventUniversityPartner", rbnSubEventCoSponsorUniversityPartner.SelectedIndex);
            SaveSubEventSponserCommand.Parameters.AddWithValue("@SubEventSponsorEmail", txtSubEventSponsorEmail.Text);
            SaveSubEventSponserCommand.Parameters.AddWithValue("@SubEventCoSponsorEmail", txtSubEventCoSponsorEmail.Text);

            objDB.DoUpdateUsingCmdObj(SaveSubEventSponserCommand);
        }

        public void SaveSubEventPanelist()
        {
            string strSQL = "CreateSubEventPanelist";
            SaveSubEventPanelistCommand.CommandText = strSQL;
            SaveSubEventPanelistCommand.CommandType = CommandType.StoredProcedure;
            SaveSubEventPanelistCommand.Parameters.AddWithValue("@SubEventPanelistFirstName", txtSubEventPanelistFirstName.Text);
            SaveSubEventPanelistCommand.Parameters.AddWithValue("@SubEventPanelistEmail", txtSubEventPanelistEmail.Text);
            SaveSubEventPanelistCommand.Parameters.AddWithValue("@SubEventPanelistPhoneNumber", txtSubEventPanelistPhoneNumber.Text);
            SaveSubEventPanelistCommand.Parameters.AddWithValue("@SubEventPanelistLastName", txtSubEventPanelistLastName.Text);
            SaveSubEventPanelistCommand.Parameters.AddWithValue("@SubEventPanelistRole", txtSubEventPanelistRole.Text);

            objDB.DoUpdateUsingCmdObj(SaveSubEventPanelistCommand);
        }

        public void SaveEventOverview()
        {
            
            string strSQL = "CreateEventOverview";
            objCommand.CommandText = strSQL;
            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.Parameters.AddWithValue("@TargetedAudience", txtTargetedAudience.Text);
            objCommand.Parameters.AddWithValue("@Goal", txtGoal.Text);
            objCommand.Parameters.AddWithValue("@EventURL", txtEventURL.Text);
            objCommand.Parameters.AddWithValue("@Fees", float.Parse(txtFees.Text));
            objCommand.Parameters.AddWithValue("@AttendeeCapacity", int.Parse(txtAttendeeCapacity.Text));
            objCommand.Parameters.AddWithValue("@PreRegNumber", int.Parse(txtPreRegistrationNumber.Text));
            objCommand.Parameters.AddWithValue("@PostRegNumber", int.Parse(txtPostRegistrationNumber.Text));
            objCommand.Parameters.AddWithValue("@PlanningTimeline",txtPlanningTimeline.Text);
            objDB.DoUpdateUsingCmdObj(objCommand);

        }

        public void SaveBudget()
        {
            string strSQL = "CreateBudget";
            objCommand.CommandText = strSQL;
            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.Parameters.AddWithValue("@AnticipatedAttendee", int.Parse(txtAnticipatedAttendee.Text));
            objCommand.Parameters.AddWithValue("@ActualAttendee", int.Parse(txtActualAttendee.Text));
            objCommand.Parameters.AddWithValue("@CostPerAttendee", float.Parse(txtCostPerAttendee.Text));
            objCommand.Parameters.AddWithValue("@Contract",txtContract.Text);
            objCommand.Parameters.AddWithValue("@NetProfit", float.Parse(txtNetProfit.Text));
            objCommand.Parameters.AddWithValue("@NetExpense",float.Parse(txtNetExpense.Text));
            
            objDB.DoUpdateUsingCmdObj(objCommand);

        }

        public void SaveMarketingCommunication()
        {
            string strSQL = "CreateMarketingCommunication";
            objCommand.CommandText = strSQL;
            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.Parameters.AddWithValue("@PreEventCorr", txtPreEventCorr.Text);
            objCommand.Parameters.AddWithValue("@PostEventCorr", txtPostEventCorr.Text);
            objCommand.Parameters.AddWithValue("@EmailBlast", txtEmailBlast.Text);
            objCommand.Parameters.AddWithValue("@EventListing", txtEventListing.Text);
            objCommand.Parameters.AddWithValue("@SocialMedia", txtSocialMedia.Text);
            objCommand.Parameters.AddWithValue("@Flyers", txtFlyers.Text);
            objCommand.Parameters.AddWithValue("@Posters", txtPosters.Text);
            objCommand.Parameters.AddWithValue("@Postcards", txtPostcards.Text);
            objCommand.Parameters.AddWithValue("@ElectronicDisplay", txtElectronicDisplay.Text);
            objCommand.Parameters.AddWithValue("@Signage", txtSignage.Text);
            objDB.DoUpdateUsingCmdObj(objCommand);
        }

        public void SavePreEventLogistics()
        {
            string strSQL = "CreatePreEventLogistics";
            objCommand.CommandText = strSQL;
            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.Parameters.AddWithValue("@TechnologySupport", txtTechnologySupport.Text);
            objCommand.Parameters.AddWithValue("@AudioVideo", txtAudioVideo.Text);
            objCommand.Parameters.AddWithValue("@Decorations", txtDecorations.Text);
            objCommand.Parameters.AddWithValue("@Photography", txtPhotography.Text);
            objCommand.Parameters.AddWithValue("@Technology", txtTechnology.Text);
            objCommand.Parameters.AddWithValue("@Giveaways", txtGiveaway.Text);
            objCommand.Parameters.AddWithValue("@TravelArrangements", txtTravelArrangements.Text);
            objCommand.Parameters.AddWithValue("@Parking", txtParking.Text);
            objCommand.Parameters.AddWithValue("@Security", txtSecurity.Text);
            objCommand.Parameters.AddWithValue("@RegistrationsItems", txtRegistrationItem.Text);
            objCommand.Parameters.AddWithValue("@Supplies", txtSupplies.Text);
            objDB.DoUpdateUsingCmdObj(objCommand);
        }

        public void SavePostEventLogistics()
        {
            string strSQL = "CreatePostEventActivities";
            objCommand.CommandText = strSQL;
            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.Parameters.AddWithValue("@DebriefMeeting", txtDebriefMeeting.Text);
            objCommand.Parameters.AddWithValue("@Notes", txtNotes.Text);
            objCommand.Parameters.AddWithValue("@EnterDataEventManager", txtInputEventManager.Text);
            objCommand.Parameters.AddWithValue("@EnterDataBanner", txtInputBanner.Text);
            objCommand.Parameters.AddWithValue("@ProgramEvaluation", txtProgramEvaluation.Text);

            objDB.DoUpdateUsingCmdObj(objCommand);
        }
    

        protected void btnTest_Click(object sender, EventArgs e)
        {
           
            
        }




        
    }
}