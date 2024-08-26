using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FlowersShop.Objects
{
    public class User
    {
        private string iNumber;
        private string sPassword;
        private string iUserName;

        public User()
        {

        }
        public User(string iNumber, string sPassword,string iUserName)
        {
            this.iNumber = iNumber;
            this.sPassword = sPassword;
            this.iUserName= iUserName;
        }
        public string UserName { 
            get { return iUserName; } 
            set{this.iUserName = value;}
        }
        public string Number
        {
            get
            {
                return this.iNumber;
            }
            set
            {
                this.iNumber = value;
            }
        }
        public string Password
        {
            get
            {
                return this.sPassword;
            }
            set
            {
                this.sPassword = value;
            }
        }
    }
}