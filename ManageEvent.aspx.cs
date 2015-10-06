using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//using ClassLibrary;

using System.Data;
using System.Data.SqlClient;
namespace AEMS
{
    public partial class ManageEvent : System.Web.UI.Page
    {
        Connection connection = new Connection();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int eventID = (int)Session["EventID"];
                //int ownerID = 6;
                //int sponsorID = 1;
                //int panelistID = 1;
                DataSet subIDs = new DataSet();
                getEventName(eventID);
                getEventLocation(eventID);
                getEventOwner(eventID);
                getEventSponsors(eventID);
                getEvenPanelist(eventID);
                subIDs = getSubEventIDs(eventID);
                if (subIDs.Tables[0].Rows.Count > 0)
                {
                    for (int i = 0; i > subIDs.Tables[0].Rows.Count; i++)
                    {
                        getSubEventDetails(i);
                        getSubEventLocation(i);
                        getSubEventOwner(i);
                        //Event panelist is being saved to SubEvent panelist right now have to fix
                    }
                }
                else
                {
                    txtSubEventName.Text = "There are no sub events for this event";
                }
                
                
                
                

               
            }
        }

        //Gets the Event Owner that and fills in the event owner text box
        public void getEventOwner(int eventID)
        {
            string firstName;
            string lastName;
            string fullName;
            SqlCommand getEventOwner = new SqlCommand();
            getEventOwner.CommandType = CommandType.StoredProcedure;
            getEventOwner.CommandText = "GetEventOwner";
            getEventOwner.Parameters.AddWithValue("@EventID", eventID);
            //getEventOwner.Parameters.AddWithValue("@OwnerID", ownerID);
            DataSet dsOwner = connection.GetDataSetUsingCmdObj(getEventOwner);
            if (dsOwner.Tables[0].Rows.Count > 0)
            {
                firstName = dsOwner.Tables[0].Rows[0]["OwnerFirstName"].ToString();
                lastName = dsOwner.Tables[0].Rows[0]["OwnerLastName"].ToString();
                fullName = firstName + " " + lastName;
                txtEventOwner.Text = fullName;
            }
            else
            {
                txtEventOwner.Text = "There is no Event Owner";
            }
            
        }

        //Gets the event name from the eventID and fills in the corresponding text boxes
        public void getEventName(int eventID)
        {
            
            SqlCommand objCommand = new SqlCommand();
            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandText = "GetEventInfo";
            objCommand.Parameters.AddWithValue("@EventID", eventID);
            DataSet ds = connection.GetDataSetUsingCmdObj(objCommand);
            txtEventName.Text = ds.Tables[0].Rows[0]["EventName"].ToString();
        }

        //Gets the event location from the eventID and fills in the corresponding text boxes
        public void getEventLocation(int eventID)
        {
            
            SqlCommand getLocationCommand = new SqlCommand();
            getLocationCommand.CommandType = CommandType.StoredProcedure;
            getLocationCommand.CommandText = "GetEventLocation";
            getLocationCommand.Parameters.AddWithValue("@EventID", eventID);
            DataSet dsLocation = connection.GetDataSetUsingCmdObj(getLocationCommand);
            if (dsLocation.Tables[0].Rows.Count > 0)
            {
                txtStreetAddress1.Text = dsLocation.Tables[0].Rows[0]["StreetAddress1"].ToString();
                txtStreetAddress2.Text = dsLocation.Tables[0].Rows[0]["StreetAddress2"].ToString();
                txtBuildingName.Text = dsLocation.Tables[0].Rows[0]["BuildingName"].ToString();
                txtCity.Text = dsLocation.Tables[0].Rows[0]["City"].ToString();
                txtRoomNumber.Text = dsLocation.Tables[0].Rows[0]["RoomNumber"].ToString();
                txtZipCode.Text = dsLocation.Tables[0].Rows[0]["ZipCode"].ToString();
            }
            else
            {
                txtStreetAddress1.Text = "there is no location for this event";
            }
        }

        //Gets the event Sponsors from event id and populates the corresponding text boxes
        public void getEventSponsors(int eventID)
        {
            SqlCommand objCommand = new SqlCommand();
            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandText = "GetEventSponsor";
            objCommand.Parameters.AddWithValue("@EventID", eventID);
            //objCommand.Parameters.AddWithValue("@SponsorID", sponsorID);
            DataSet ds = connection.GetDataSetUsingCmdObj(objCommand);
            if (ds.Tables[0].Rows.Count != 0)
            {
                txtSponsorName.Text = ds.Tables[0].Rows[0]["SponserName"].ToString();
                txtSponsorEmail.Text = ds.Tables[0].Rows[0]["SponsorEmail"].ToString();
                txtEventCoSponsorName.Text = ds.Tables[0].Rows[0]["CoSponserName"].ToString();
                txtEventCoSponsorEmail.Text = ds.Tables[0].Rows[0]["CoSponsorEmail"].ToString();
                if (ds.Tables[0].Rows[0]["UniversityPartner"].ToString() == "true")
                {
                    rblSponsorUniversityPartner.SelectedValue = "yes";
                }
                else {
                    rblSponsorUniversityPartner.SelectedValue = "no";
                }
                if (ds.Tables[0].Rows[0]["CoUniversityPartner"].ToString() == "true")
                {
                    rblCoSponsorUniversityPartner.SelectedValue = "yes";
                }
                else
                {
                    rblCoSponsorUniversityPartner.SelectedValue = "no";
                }
            }
            else
            {
                txtSponsorName.Text = "There are no Sponsors";
            }
        }

        //Gets the panelist for the event from eventID and populates the corresponding text boxes
        public void getEvenPanelist(int eventID)
        {
            SqlCommand objCommand = new SqlCommand();
            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandText = "GetEventPanelist";
            objCommand.Parameters.AddWithValue("@EventID", eventID);
            //objCommand.Parameters.AddWithValue("@PanelistID", panelistID);
            DataSet ds = connection.GetDataSetUsingCmdObj(objCommand);
            if (ds.Tables[0].Rows.Count > 0)
            {
                txtPanelistFirstName.Text = ds.Tables[0].Rows[0]["PanelistFirstName"].ToString();
                txtPanelistLastName.Text = ds.Tables[0].Rows[0]["PanelistLastName"].ToString();
                txtPanelistEmail.Text = ds.Tables[0].Rows[0]["PanelistEmail"].ToString();
                txtPanelistRole.Text = ds.Tables[0].Rows[0]["PanelistRole"].ToString();
                txtPanelistPhoneNumber.Text = ds.Tables[0].Rows[0]["PanelistPhoneNumber"].ToString();
            }
            else
            {
                txtPanelistFirstName.Text = "There are no panelist";
            }
        }

        //Gets the All the SubEventIDs that are associated with one event
        public DataSet getSubEventIDs(int eventID)
        {
            
            SqlCommand objCommand = new SqlCommand();
            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandText = "GetSubEventIDs";
            objCommand.Parameters.AddWithValue("@EventID", eventID);
            DataSet ds = connection.GetDataSetUsingCmdObj(objCommand);
            return ds;
        }

        //Gets the subEvent details from the subevent ID and fills in the text boxes
        public void getSubEventDetails(int subeventID)
        {
            SqlCommand objCommand = new SqlCommand();
            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandText = "GetSubEventInfo";
            objCommand.Parameters.AddWithValue("@SubEventID", subeventID);
            DataSet ds = connection.GetDataSetUsingCmdObj(objCommand);
            if (ds.Tables[0].Rows.Count > 0)
            {
                txtSubEventName.Text = ds.Tables[0].Rows[0]["SubEventName"].ToString();
                txtRegistrationUrl.Text = ds.Tables[0].Rows[0]["RegistratioinURL"].ToString();
            }
            else
            {
                txtSubEventName.Text = "There is no sub event";
            }
        }

        //Gets the sub Event location from the subEventID and fills in the text boxes
        public void getSubEventLocation(int subEventID)
        {
            SqlCommand objCommand = new SqlCommand();
            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandText = "GetSubEventLocation";
            objCommand.Parameters.AddWithValue("@SubEventID", subEventID);
            DataSet ds = connection.GetDataSetUsingCmdObj(objCommand);
            if (ds.Tables[0].Rows.Count > 0)
            {
                txtSubBuildingName.Text = ds.Tables[0].Rows[0]["SubEventBuildingName"].ToString();
                txtSubCity.Text = ds.Tables[0].Rows[0]["SubEventCity"].ToString();
                txtSubRoomNumber.Text = ds.Tables[0].Rows[0]["SubEventRoomNumber"].ToString();
                txtSubState.Text = ds.Tables[0].Rows[0]["SubEventState"].ToString();
                txtSubStreetAddress1.Text = ds.Tables[0].Rows[0]["SubEventStreetAddress1"].ToString();
                txtSubStreetAddress2.Text = ds.Tables[0].Rows[0]["SubEventStreetAddress2"].ToString();
                txtSubZipCode.Text = ds.Tables[0].Rows[0]["SubEventZipCode"].ToString();
            }
            else
            {
                txtSubBuildingName.Text = "There is no location for sub event";
            }

        }

        //Gets the subEventOwners and fills in the text boxes
        public void getSubEventOwner(int subEventID)
        {
            SqlCommand objCommand = new SqlCommand();
            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandText = "GetSubEventOwner";
            objCommand.Parameters.AddWithValue("@SubEventID", subEventID);
            DataSet ds = connection.GetDataSetUsingCmdObj(objCommand);
            txtSubEventOwnerEmail.Text = ds.Tables[0].Rows[0]["OwnerEmail"].ToString();
            txtSubEventOwnerFirstName.Text = ds.Tables[0].Rows[0]["OwnerFirstName"].ToString();
            txtSubEventOwnerLastName.Text = ds.Tables[0].Rows[0]["OwnerLastName"].ToString();
            txtSubEventOwnerPhoneNumber.Text = ds.Tables[0].Rows[0]["OwnerPhoneNumber"].ToString();
        }


        protected void btnEdit_Click(object sender, EventArgs e)
        {
  
            // making all the textboxes editable
            txtActualAttendee.Enabled = true;
            txtAlumniSpeaker.Enabled = true;
            txtAnticipatedAttendee.Enabled = true;
            txtAttendeeCapacity.Enabled = true;
            txtAudioVideo.Enabled = true;
            txtBuildingName.Enabled = true;
            txtCity.Enabled = true;
            txtContract.Enabled = true;
            txtCoSponsor.Enabled = true;
            txtCoSponsorEmail.Enabled = true;
            txtCoSponsorName.Enabled = true;
            txtCostPerAttendee.Enabled = true;
            txtDebriefMeeting.Enabled = true;
            txtDecorations.Enabled = true;
            txtElectronicDisplay.Enabled = true;
            txtEventSponsorName.Enabled = true;
            txtEventSponsorEmail.Enabled = true;
            txtSubEventOwnerEmail.Enabled = true;
            txtEmailBlast.Enabled = true;
            txtEventListing.Enabled = true;
            txtEventName.Enabled = true;
            txtEventOwner.Enabled = true;
            txtEventStaff.Enabled = true;
            txtEventURL.Enabled = true;
            txtFacultySpeaker.Enabled = true;
            txtFees.Enabled = true;
            txtFlyers.Enabled = true;
            txtGiveaway.Enabled = true;
            txtGoal.Enabled = true;
            txtInputBanner.Enabled = true;
            txtInputManager.Enabled = true;
            txtNetExpense.Enabled = true;
            txtNetProfit.Enabled = true;
            txtNotes.Enabled = true;
            txtSubEventOwnerFirstName.Enabled = true;
            txtSubEventOwnerLastName.Enabled = true;
            txtPanelistEmail.Enabled = true;
            txtPanelistFirstName.Enabled = true;
            txtPanelistLastName.Enabled = true;
            txtPanelistPhoneNumber.Enabled = true;
            txtPanelistRole.Enabled = true;
            txtPanelMember.Enabled = true;
            txtParking.Enabled = true;
            txtSubEventOwnerPhoneNumber.Enabled = true;
            txtPhotography.Enabled = true;
            txtPlanningTimeline.Enabled = true;
            txtPostcards.Enabled = true;
            txtPosters.Enabled = true;
            txtPostEventCorr.Enabled = true;
            txtPostRegistrationNumber.Enabled = true;
            txtPreEventCorr.Enabled = true;
            txtPreRegistrationNumber.Enabled = true;
            txtProgramEvaluation.Enabled = true;
            txtProgramParticipant.Enabled = true;
            txtRegistrationItem.Enabled = true;
            txtRegistrationUrl.Enabled = true;
            txtRoomNumber.Enabled = true;
            txtSecurity.Enabled = true;
            txtSignage.Enabled = true;
            txtSocialMedia.Enabled = true;
            txtSponsor.Enabled = true;
            txtSponsorEmail.Enabled = true;
            txtSponsorName.Enabled = true;
            txtStreetAddress1.Enabled = true;
            txtStreetAddress2.Enabled = true;
            txtSubBuildingName.Enabled = true;
            txtSubCity.Enabled = true;
            txtSubEventName.Enabled = true;
            txtSubRoomNumber.Enabled = true;
            txtSubState.Enabled = true;
            txtSubStreetAddress1.Enabled = true;
            txtSubStreetAddress2.Enabled = true;
            txtSubZipCode.Enabled = true;
            txtSupplies.Enabled = true;
            txtTargetAudience.Enabled = true;
            txtTechnology.Enabled = true;
            txtTechnologySupport.Enabled = true;
            txtTourOperator.Enabled = true;
            txtTravelArrangements.Enabled = true;
            txtVenue.Enabled = true;
            txtZipCode.Enabled = true;
            txtEventCoSponsorName.Enabled = true;
            txtEventCoSponsorEmail.Enabled = true;

            // making all the check boxes checkable
            chkActualAttendee.Enabled = true;
            chkAlumniSociety.Enabled = true;
            chkAlumniSpeaker.Enabled = true;
            chkAnticipatedAttendee.Enabled = true;
            chkAthletics.Enabled = true;
            chkAttendeeCapacity.Enabled = true;
            chkAudioVideo.Enabled = true;
            chkCareer.Enabled = true;
            chkContract.Enabled = true;
            chkCoSponsor.Enabled = true;
            chkCostPerAttendee.Enabled = true;
            chkCultural.Enabled = true;
            chkDebriefMeeting.Enabled = true;
            chkDecorations.Enabled = true;
            chkDrinks.Enabled = true;
            chkEducational.Enabled = true;
            chkElectronicDisplay.Enabled = true;
            chkEmailBlast.Enabled = true;
            chkEventListing.Enabled = true;
            chkEventStaff.Enabled = true;
            chkEventURL.Enabled = true;
            chkFacultySpeaker.Enabled = true;
            chkFees.Enabled = true;
            chkFlyers.Enabled = true;
            chkGiveaway.Enabled = true;
            chkGoal.Enabled = true;
            chkInputBanner.Enabled = true;
            chkInputManager.Enabled = true;
            chkNetExpense.Enabled = true;
            chkNetProfit.Enabled = true;
            chkNetworking.Enabled = true;
            chkNotes.Enabled = true;
            chkPanelMember.Enabled = true;
            chkParking.Enabled = true;
            chkPhotography.Enabled = true;
            chkPizza.Enabled = true;
            chkPlanningTimeline.Enabled = true;
            chkPostcards.Enabled = true;
            chkPosters.Enabled = true;
            chkPostEventCorr.Enabled = true;
            chkPostRegistrationNumber.Enabled = true;
            chkPreEventCorr.Enabled = true;
            chkPreRegistrationNumber.Enabled = true;
            chkProgramEvaluation.Enabled = true;
            chkProgramParticipant.Enabled = true;
            chkRegionalChapter.Enabled = true;
            chkRegistrationItem.Enabled = true;
            chkReunion.Enabled = true;
            chkSchoolandCollege.Enabled = true;
            chkSecurity.Enabled = true;
            chkSignage.Enabled = true;
            chkSocialMedia.Enabled = true;
            chkSponsor.Enabled = true;
            chkStudent.Enabled = true;
            chkSupplies.Enabled = true;
            chkTables.Enabled = true;
            chkTargetAudience.Enabled = true;
            chkTechnology.Enabled = true;
            chkTechnologySupport.Enabled = true;
            chkTourOperator.Enabled = true;
            chkTravelArrangements.Enabled = true;
            chkVenue.Enabled = true;
            chkVolunteer.Enabled = true;
            chkWebinar.Enabled = true;
            chkGetMusic.Enabled = true;
            chkContactGuestSpeaker.Enabled = true;
            chkGetMicrophones.Enabled = true;

            rblSponsorUniversityPartner.Enabled = true;
            rblCoSponsorUniversityPartner.Enabled = true;
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            //try
            //{
            //    updateEvent.ActualAttendance = int.Parse(txtActualAttendee.Text);
            //}
            //catch (Exception ex)
            //{

            //}
            //updateEvent.eventName = txtEventName.Text;
            //owner.FirstName = txtEventOwner.Text;
            //eventLocation.StreetAddress1 = txtStreetAddress1.Text;
            //eventLocation.StreetAddress2 = txtStreetAddress2.Text;
            //eventLocation.Building = txtBuildingName.Text;
            //eventLocation.LocationRoomNumber = txtRoomNumber.Text;
            //eventLocation.City = txtCity.Text;
            //eventLocation.Zipcode =int.Parse( txtZipCode.Text);
        }
        }
    }
