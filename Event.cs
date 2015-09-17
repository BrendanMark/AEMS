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
    }
}