using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PappTest.Dtos
{
    public class SummaryDto : BaseDto
    {
        private ObservableCollection<NodoutDto> nodoutList;


        /// <summary>
        /// Nodout列表
        /// </summary>
        public ObservableCollection<NodoutDto> NodoutList
        {
            get { return nodoutList; }
            set { nodoutList = value; OnPropertyChanged(); }
        }

       
    }
}
