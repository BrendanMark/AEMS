using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AEMS
{
    public class Task
    {
        private int taskID;

        public int TaskID
        {
            get { return taskID; }
            set { taskID = value; }
        }
        private string taskName;

        public string TaskName
        {
            get { return taskName; }
            set { taskName = value; }
        }
        private DateTime dueDate;

        public DateTime DueDate
        {
            get { return dueDate; }
            set { dueDate = value; }
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
        private string contactPhoneNumber;

        public string ContactPhoneNumber
        {
            get { return contactPhoneNumber; }
            set { contactPhoneNumber = value; }
        }
        private string contactEmail;

        public string ContactEmail
        {
            get { return contactEmail; }
            set { contactEmail = value; }
        }
        private DateTime returnDate;

        public DateTime ReturnDate
        {
            get { return returnDate; }
            set { returnDate = value; }
        }
        private string comments;

        public string Comments
        {
            get { return comments; }
            set { comments = value; }
        }
        private DateTime completeDate;

        public DateTime CompleteDate
        {
            get { return completeDate; }
            set { completeDate = value; }
        }
        private int categoryID;

        public int CategoryID
        {
            get { return categoryID; }
            set { categoryID = value; }
        }
        private int vendorID;

        public int VendorID
        {
            get { return vendorID; }
            set { vendorID = value; }
        }
    }
}