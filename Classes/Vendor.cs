using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AEMS
{
    public class Vendor
    {
        private int vendorID;

        public int VendorID
        {
            get { return vendorID; }
            set { vendorID = value; }
        }
        private string vendorName;

        public string VendorName
        {
            get { return vendorName; }
            set { vendorName = value; }
        }
        private string vendorEmail;

        public string VendorEmail
        {
            get { return vendorEmail; }
            set { vendorEmail = value; }
        }
        private string vendorPhoneNumber;

        public string VendorPhoneNumber
        {
            get { return vendorPhoneNumber; }
            set { vendorPhoneNumber = value; }
        }
        private string streetAddress1;

        public string StreetAddress1
        {
            get { return streetAddress1; }
            set { streetAddress1 = value; }
        }
        private string streetAddress2;

        public string StreetAddress2
        {
            get { return streetAddress2; }
            set { streetAddress2 = value; }
        }
        private string contactFirstName;

        public string ContactFirstName
        {
            get { return contactFirstName; }
            set { contactFirstName = value; }
        }
        private string contactLastName;

        public string ContactLastName
        {
            get { return contactLastName; }
            set { contactLastName = value; }
        }
        private string city;

        public string City
        {
            get { return city; }
            set { city = value; }
        }
        private string state;

        public string State
        {
            get { return state; }
            set { state = value; }
        }
        private string zipcode;

        public string Zipcode
        {
            get { return zipcode; }
            set { zipcode = value; }
        }
    }
}