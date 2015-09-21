using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AEMS
{
    public class TaskCategory
    {
        private int categoryID;

        public int CategoryID
        {
            get { return categoryID; }
            set { categoryID = value; }
        }
        private string categoryName;

        public string CategoryName
        {
            get { return categoryName; }
            set { categoryName = value; }
        }
        private string categoryColor;

        public string CategoryColor
        {
            get { return categoryColor; }
            set { categoryColor = value; }
        }
    }
}