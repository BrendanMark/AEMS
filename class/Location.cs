using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AEMS
{
    public class Location
    {
        private int locationID;

        public int LocationID
        {
            get { return locationID; }
            set { locationID = value; }
        }
        private string locationName;

        public string LocationName
        {
            get { return locationName; }
            set { locationName = value; }
        }
        private string locationRoomNumber;

        public string LocationRoomNumber
        {
            get { return locationRoomNumber; }
            set { locationRoomNumber = value; }
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
        private int zipcode;

        public int Zipcode
        {
            get { return zipcode; }
            set { zipcode = value; }
        }
        private string building;

        public string Building
        {
            get { return building; }
            set { building = value; }
        }
        private int subEventID;

        public int SubEventID
        {
            get { return subEventID; }
            set { subEventID = value; }
        }
        private int eventID;

        public int EventID
        {
            get { return eventID; }
            set { eventID = value; }
        }
        private string country;

        public string Country
        {
            get { return country; }
            set { country = value; }
        }
    }
}