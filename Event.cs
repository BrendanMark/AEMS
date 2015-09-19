using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AEMS
{
    public class Event
    {
        public int eventID { get; set; }
        public string eventName { get; set; }
        public DateTime startDate { get; set; }
        public DateTime endDate { get; set; }
        public string eventStatus { get; set; }
        public string notes { get; set; }
        public int finalAttendance { get; set; }
        public TimeSpan startTime { get; set; }
        public TimeSpan endTime { get; set; }
        public string department { get; set; }
        public int finalRegistration { get; set; }
        public string micellaneousField { get; set; }
        public float eventBudget { get; set; }
        public int alumniAttendess { get; set; }
        public int studentAttendees { get; set; }
        public int facultyAttendees { get; set; }
        public int adminID { get; set; }
        public string eventCategory { get; set; }
        public string timeZone1 { get; set; }
        public string timeZone2 { get; set; }
    }
}