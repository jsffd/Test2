using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PappTest.Dtos
{
    public class NodoutDto : BaseDto
    {
        private string name;
        private string component;
        private string direction;
        private string id;


        public string Name
        {
            get { return name; }
            set { name = value; OnPropertyChanged(); }
        }

        public string Component
        {
            get { return component; }
            set { component = value; OnPropertyChanged(); }
        }

        public string Direction
        {
            get { return direction; }
            set { direction = value; OnPropertyChanged(); }
        }

        public string ID
        {
            get { return id; }
            set { id = value; OnPropertyChanged(); }
        }
    }
}
