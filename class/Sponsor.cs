using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AEMS
{
    public class Sponsor
    {
        private int sponsorID;

        public int SponsorID
        {
            get { return sponsorID; }
            set { sponsorID = value; }
        }
        private string sponsorName;

        public string SponsorName
        {
            get { return sponsorName; }
            set { sponsorName = value; }
        }
        private string coSponsorName;

        public string CoSponsorName
        {
            get { return coSponsorName; }
            set { coSponsorName = value; }
        }
        private bool universityPartner;

        public bool UniversityPartner
        {
            get { return universityPartner; }
            set { universityPartner = value; }
        }
        private string sponsorEmail;

        public string SponsorEmail
        {
            get { return sponsorEmail; }
            set { sponsorEmail = value; }
        }
        private string coSponsorEmail;

        public string CoSponsorEmail
        {
            get { return coSponsorEmail; }
            set { coSponsorEmail = value; }
        }
    }
}