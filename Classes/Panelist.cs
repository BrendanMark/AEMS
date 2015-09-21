using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AEMS
{
    public class Panelist
    {
        private int panelistID;

        public int PanelistID
        {
            get { return panelistID; }
            set { panelistID = value; }
        }
        private string firstName;

        public string FirstName
        {
            get { return firstName; }
            set { firstName = value; }
        }
        private string email;

        public string Email
        {
            get { return email; }
            set { email = value; }
        }
        private string phoneNumber;

        public string PhoneNumber
        {
            get { return phoneNumber; }
            set { phoneNumber = value; }
        }
        private string lastName;

        public string LastName
        {
            get { return lastName; }
            set { lastName = value; }
        }
        private string roles;

        public string Roles
        {
            get { return roles; }
            set { roles = value; }
        }
    }
}