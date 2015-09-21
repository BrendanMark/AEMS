using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AEMS
{
    public class SubEvent
    {
        private int subEventID;

        public int SubEventID
        {
            get { return subEventID; }
            set { subEventID = value; }
        }
        private string subEventName;

        public string SubEventName
        {
            get { return subEventName; }
            set { subEventName = value; }
        }
        private DateTime startDate;

        public DateTime StartDate
        {
            get { return startDate; }
            set { startDate = value; }
        }
        private DateTime endDate;

        public DateTime EndDate
        {
            get { return endDate; }
            set { endDate = value; }
        }
        private string registrationURL;

        public string RegistrationURL
        {
            get { return registrationURL; }
            set { registrationURL = value; }
        }
        private string eventStatus;

        public string EventStatus
        {
            get { return eventStatus; }
            set { eventStatus = value; }
        }
        private string department;

        public string Department
        {
            get { return department; }
            set { department = value; }
        }
        private string notes;

        public string Notes
        {
            get { return notes; }
            set { notes = value; }
        }
        private int finalRegistration;

        public int FinalRegistration
        {
            get { return finalRegistration; }
            set { finalRegistration = value; }
        }
        private int finalAttendence;

        public int FinalAttendence
        {
            get { return finalAttendence; }
            set { finalAttendence = value; }
        }
        private string miscellaneous;

        public string Miscellaneous
        {
            get { return miscellaneous; }
            set { miscellaneous = value; }
        }
        private float subEventBudget;

        public float SubEventBudget
        {
            get { return subEventBudget; }
            set { subEventBudget = value; }
        }
        private TimeSpan startTime;

        public TimeSpan StartTime
        {
            get { return startTime; }
            set { startTime = value; }
        }
        private TimeSpan endTime;

        public TimeSpan EndTime
        {
            get { return endTime; }
            set { endTime = value; }
        }
        private int alumniAttendees;

        public int AlumniAttendees
        {
            get { return alumniAttendees; }
            set { alumniAttendees = value; }
        }
        private int studentAttendees;

        public int StudentAttendees
        {
            get { return studentAttendees; }
            set { studentAttendees = value; }
        }
        private int facultyAttendees;

        public int FacultyAttendees
        {
            get { return facultyAttendees; }
            set { facultyAttendees = value; }
        }
        private int eventID;

        public int EventID
        {
            get { return eventID; }
            set { eventID = value; }
        }
    }
}