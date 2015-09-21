using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AEMS
{
    public class Event
    {
        private int eventID { get; set; }
        private string eventName { get; set; }
        private DateTime startDate { get; set; }
        private DateTime endDate { get; set; }
        private string eventStatus { get; set; }
        private string notes { get; set; }
        private int finalAttendance { get; set; }
        private TimeSpan startTime { get; set; }
        private TimeSpan endTime { get; set; }
        private string department { get; set; }
        private int finalRegistration { get; set; }
        private string micellaneousField { get; set; }
        private float eventBudget { get; set; }
        private int alumniAttendess { get; set; }
        private int studentAttendees { get; set; }
        private int facultyAttendees { get; set; }
        private int adminID { get; set; }
        private string eventCategory { get; set; }
        private string timeZone1 { get; set; }
        private string timeZone2 { get; set; }
        private int actualAttendance;

        public int EventID
        {
            get { return eventID; }
            set { eventID = value; }
        }

        public string EventName
        {
            get { return eventName; }
            set { eventName = value; }
        }

        public DateTime StartDate
        {
            get { return startDate; }
            set { startDate = value; }
        }

        public DateTime EndDate
        {
            get { return endDate ; }
            set { endDate  = value; }
        }

        public string Notes
        {
            get { return notes ; }
            set { notes  = value; }
        }

        public string EventStatus
        {
            get { return eventStatus ; }
            set { eventStatus = value; }
        }

        public int FinalAttendance
        {
            get { return finalAttendance; }
            set { finalAttendance = value; }
        }

        public TimeSpan StartTime
        {
            get { return startTime; }
            set { startTime = value; }
        }

        public TimeSpan EndTime
        {
            get { return endTime; }
            set { endTime = value; }
        }

        public string Department
        {
            get { return department; }
            set { department = value; }
        }

        public int FinalRegistration
        {
            get { return finalRegistration; }
            set { finalRegistration = value; }
        }

        public string Miscellaneous
        {
            get { return micellaneousField; }
            set { micellaneousField = value; }
        }

        public float EventBudget
        {
            get { return eventBudget; }
            set { eventBudget = value; }
        }

        public int AlumniAttendees
        {
            get { return alumniAttendess; }
            set { alumniAttendess = value; }
        }

        public int StudentAttendees
        {
            get { return studentAttendees; }
            set { studentAttendees = value; }
        }

        public int FacultyAttendees
        {
            get { return facultyAttendees; }
            set { facultyAttendees = value; }
        }

        public int AdminID
        {
            get { return adminID; }
            set { adminID = value; }
        }

        public string EventCategory
        {
            get { return eventCategory; }
            set { eventCategory = value; }
        }

        public string TimeZone1
        {
            get { return timeZone1; }
            set { timeZone1 = value; }
        }

        public string TimeZone2
        {
            get { return timeZone2; }
            set { timeZone2 = value; }
        }

        public int ActualAttendance
        {
            get { return actualAttendance; }
            set { actualAttendance = value; }
        }
    }
}