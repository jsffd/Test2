using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Threading.Tasks;
using System.Windows;
using Prism.DryIoc;
using Prism.Ioc;
using PappTest.Views;
using PappTest.ViewModels;
using PappTest.Views.Dialogs;
using PappTest.ViewModels.Dialogs;
using PappTest.Common;

namespace PappTest
{
    /// <summary>
    /// Interaction logic for App.xaml
    /// </summary>
    public partial class App : PrismApplication
    {
        protected override Window CreateShell()
        {
            return Container.Resolve<MainView>();
        }
        protected override void RegisterTypes(IContainerRegistry containerRegistry)
        {
            containerRegistry.RegisterForNavigation<AddNodoutView, AddNodoutViewModel>();
            containerRegistry.RegisterForNavigation<AddMatsumView, AddMatsumViewModel>();
            containerRegistry.RegisterForNavigation<SetupView, SetupViewModel>();
            containerRegistry.RegisterForNavigation<StageView, StageViewModel>();
            containerRegistry.RegisterForNavigation<OptimizationView, OptimizationViewModel>();


             containerRegistry.Register<IDialogHostService, DialogHostService>();
        }
    }
}
