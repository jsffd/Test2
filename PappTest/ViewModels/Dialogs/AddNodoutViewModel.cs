using MaterialDesignThemes.Wpf;
using PappTest.Common;
using PappTest.Common.Models;
using PappTest.Dtos;
using Prism.Commands;
using Prism.Mvvm;
using Prism.Services.Dialogs;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PappTest.ViewModels.Dialogs
{
    public class AddNodoutViewModel : BindableBase, IDialogHostAware
    {
        public AddNodoutViewModel()
        {
            // 实例化，从Model中获取component列表
            Com _Com = new Com();
            ComList = _Com.getComs();
            //将保存和取消实例化
            SaveCommand = new DelegateCommand(Save);
            CancelCommand = new DelegateCommand(Cancel);
        }

        private NodoutDto model;

        public NodoutDto Model
        {
            get { return model; }
            set { model = value; RaisePropertyChanged(); }
        }

        private void Cancel()
        {
            if (DialogHost.IsDialogOpen(DialogHostName))
                DialogHost.Close(DialogHostName, new DialogResult(ButtonResult.No));

        }

        private void Save()
        {
            if (string.IsNullOrWhiteSpace(Model.Name) ||
                 string.IsNullOrWhiteSpace(model.ID)) return;

            if (DialogHost.IsDialogOpen(DialogHostName))
            {
                //确定时,把编辑的实体返回并且返回OK
                DialogParameters param = new DialogParameters();
                param.Add("Value", Model);
                DialogHost.Close(DialogHostName, new DialogResult(ButtonResult.OK, param));
            }
        }

        public string DialogHostName { get; set; }
        public DelegateCommand CancelCommand { get; set; }
        public DelegateCommand SaveCommand { get; set; }

        public void OnDialogOpend(IDialogParameters parameters)
        {
            if (parameters.ContainsKey("Value"))
            {
                Model = parameters.GetValue<NodoutDto>("Value");
            }
            else
                Model = new NodoutDto();
        }

        #region ComboBox的Direction和Com级联

        #region Private Fields
        private List<Com> _ComList;
        private string _SelectedComCode;
        private List<Direction> _DirectionList;
        private string _SelectedDirection;
        #endregion

        #region Public Properties
        /// <summary>
        /// 获取或设置component列表
        /// </summary>
        public List<Com> ComList
        {
            get { return _ComList; }
            set
            {
                _ComList = value;
                RaisePropertyChanged("ComList");
            }
        }

        /// <summary>
        /// 获取或设置所选component的ID代码
        /// </summary>
        public string SelectedComCode
        {
            get { return _SelectedComCode; }
            set
            {
                _SelectedComCode = value;
                RaisePropertyChanged("SelectedComCode");

                // 选择特定component时触发启用/禁用 UI 元素
                RaisePropertyChanged("AllowDirectionSelection");

                // 根据所选component生成新的Direction列表（ID代码）
                getDirectionList();
            }
        }

        /// <summary>
        /// 获取或设置选定Direction列表
        /// </summary>
        public List<Direction> DirectionList
        {
            get { return _DirectionList; }
            set
            {
                _DirectionList = value;
                RaisePropertyChanged("DirectionList");
            }
        }

        /// <summary>
        /// 获取或设置选定Direction
        /// </summary>
        public string SelectedDirection
        {
            get { return _SelectedDirection; }
            set
            {
                _SelectedDirection = value;
                RaisePropertyChanged("SelectedDirection");
            }
        }

        /// <summary>
        ///当用户选择特定component时返回 TRUE
        /// </summary>
        public bool AllowDirectionSelection
        {
            get { return (SelectedComCode != null); }
        }
        #endregion

        #region Private Methods
        /// <summary>
        /// 根据所选component填充Direction列表
        /// </summary>
        private void getDirectionList()
        {
            // 实例化，根据Model中选定的componentID代码获取Direction列表
            Direction _Direction = new Direction();
            DirectionList = _Direction.getDirectionByComCode(SelectedComCode);
        }
        #endregion


        #endregion
    }
}
