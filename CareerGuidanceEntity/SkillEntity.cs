using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CareerGuidanceEntity
{
    public class SkillEntity
    {

        private string _Rating;

        private string _SkillName;

        public string Rating
        {
            get { return _Rating; }
            set { _Rating = value; }
        }

        public string SkillName
        {
            get { return _SkillName; }
            set { _SkillName = value; }
        }
    }
}
