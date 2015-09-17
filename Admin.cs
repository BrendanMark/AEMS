using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AEMS
{
    public class Admin
    {
        private int adminID;
        private string adminFirstName;
        private string adminLastName;
        private string email;
        private string phoneNumb;
        private bool superAdmin;

        public string AdminFirstName
        {
            get { return adminFirstName; }
            set { adminFirstName = value; }
        }

        public int AdminID
        {
            get { return adminID; }
            set { adminID = value; }
        }

        public string AdminLastName
        {
            get { return adminLastName; }
            set {adminLastName = value }
        }
        
    }

 
}