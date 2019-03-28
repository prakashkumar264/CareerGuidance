using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CareerGuidanceEntity
{
    public class UserMasterEntity
    {

        private string _Name;
        private string _Password;
        private string _Email;

        public string Name
        {
            get { return _Name; }
            set { _Name = value; }
        }
        public string Password
        {
            get { return _Password; }
            set { _Password = value; }
        }

        public string Email
        {
            get { return _Email; }
            set { _Email = value; }
        }

    }

}
