using Prism.Commands;
using Prism.Mvvm;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Prism.Ioc;
using Prism.Regions;
using Prism.Services.Dialogs;
using System.Collections.ObjectModel;
using PappTest.Common;
using PappTest.Dtos;

namespace PappTest.ViewModels
{
    public class StageViewModel:BindableBase
    {
        public StageViewModel(IDialogHostService dialog)
        {

            ExecuteCommand = new DelegateCommand<string>(Execute);
            this.dialog = dialog;
        }

        private SummaryDto summary;

        /// <summary>
        /// 首页统计
        /// </summary>
        public SummaryDto Summary
        {
            get { return summary; }
            set { summary = value; RaisePropertyChanged(); }
        }
        private string title;

        public string Title
        {
            get { return title; }
            set { title = value; RaisePropertyChanged(); }
        }

        public DelegateCommand<NodoutDto> NodoutCompltedCommand { get; private set; }
        public DelegateCommand<string> ExecuteCommand { get; private set; }
        private readonly IDialogHostService dialog;
        private void Execute(string obj)
        {
            switch (obj)
            {
                case "Nodout": AddNodout(null); break;
                case "Matsum": AddMatsum(); break;
            }
        }


        async void AddNodout(NodoutDto model)
        {
            DialogParameters param = new DialogParameters();
            if (model != null)
                param.Add("Value", model);

            var dialogResult = await dialog.ShowDialog("AddNodoutView", param);
            if (dialogResult.Result == ButtonResult.OK)
            {
               var nodout = dialogResult.Parameters.GetValue<NodoutDto>("Value");
                    if (nodout.State > 0) 
                    {
                        var nodoutModel = summary.NodoutList.FirstOrDefault(t => t.State.Equals(nodout.State));
                        if (nodoutModel != null)
                        {
                            nodoutModel.Name = nodout.Name;
                            nodoutModel.ID = nodout.ID;
                        }
                    }
                else
                {
                    summary.NodoutList.Add(nodout);
                }
               
            }
        }
        void AddMatsum()
        {
            dialog.ShowDialog("AddMatsumView",null);
        }
    }
}
