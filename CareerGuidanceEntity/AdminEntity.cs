using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CareerGuidanceEntity
{
    public class AdminEntity
    {
        private string _Name;
        private string _Password;


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

 
    }
}
