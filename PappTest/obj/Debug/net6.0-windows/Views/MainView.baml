   M S B A M L   `   `   `  ????C  ?PappTest, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:PappTestPappTest  5   	   9!clr-namespace:PappTest.ExtensionsPappTest.Extensions  5
   	   9!clr-namespace:PappTest.ViewModelsPappTest.ViewModels  5   	       PappTest.Views.MainView   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   (localclr-namespace:PappTest     5   	   [ WPrism.DryIoc.Wpf, Version=8.1.97.5141, Culture=neutral, PublicKeyToken=40ee6c3a2184dc59T PPrism.Wpf, Version=8.1.97.5141, Culture=neutral, PublicKeyToken=40ee6c3a2184dc59&prismhttp://prismlibrary.com/   5   	   _ [MaterialDesignThemes.Wpf, Version=4.4.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   _	 [Microsoft.Xaml.Behaviors, Version=1.1.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a3i+http://schemas.microsoft.com/xaml/behaviors 	 5	   	   +ext!clr-namespace:PappTest.Extensions 	 5
   	   2
viewmodels!clr-namespace:PappTest.ViewModels 	 5   	     ? Title$  
MainWindow??5   	   $
??1280??5      $	??768??5       ? AllowsTransparency$
 True??5      $??微软雅黑)?5      $??13(?5      $??Regular"?5         MaterialDesignBody#???   5      &   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=?5         TextRenderingMode$
 Auto=?5       ? WindowStartupLocation$ CenterScreen=?5       ? WindowStyle$
 None=?5      !  Prism.Mvvm.ViewModelLocator   AutoWireViewModel True5        MaterialDesignPaper#???  5      .??5      )  #MaterialDesignThemes.Wpf.DialogHost  -   5          Name$ 
DialogHost??5          DialogTheme$ Inherit=?6	   	   
Identifier$
	 Root??5   	   .??5   
   )  #MaterialDesignThemes.Wpf.DrawerHost  -   5        
  Name$
 
drawerHost??5   $      IsLeftDrawerOpen 68   ??  ?? ElementName$ MenuToggleButton?? ?? Path$ 	IsChecked?   LeftDrawerContent 5       ]? 5!      $	??220??6   .+?5"      ?? -   5         ??Name$ menuBar??5#        MyListBoxItemStyle#??[ 5$      ??5%      ?? *
MenuBars+* 	 $Microsoft.Xaml.Behaviors.Interaction   Triggers 5&      + 	 %Microsoft.Xaml.Behaviors.EventTrigger  5'         	EventName$ SelectionChanged??6-   * 	 $Microsoft.Xaml.Behaviors.TriggerBase   Actions. 5(   "   2 	 ,Microsoft.Xaml.Behaviors.InvokeCommandAction     Command 68   ?? *NavigateCommand+   CommandParameter 5)   8   ?? $ menuBar??$ SelectedItem?5*      ??5,      ?? 5-      .R?5.   "   ?? 
??????  ?? Orientation$ 
Horizontal=?6F   .+?5/   &   '	  !MaterialDesignThemes.Wpf.PackIcon	  $
??15,0q?6>    	  Kind 6L   ?? *Icon+?? 50   &   $
??10,0q?60   ??6>   ?? *Title+51   #   52      54      56      .??58      ?  ? RowDefinitions 59      ?? 5:      $
??auto ?6$   ?? 5;      .+?5>      '
  !MaterialDesignThemes.Wpf.Snackbar
  -   5         
 Name$ Snackbar??5>   *    K? ZIndex$ 1??6<    
  MessageQueue 6M   4  .MaterialDesignThemes.Wpf.MessageQueueExtension  (  "MaterialDesignThemes.Wpf.ColorZone  5?      -   5          Name$ 	ColorZone??5@      $??16q?5A      +  %MaterialDesignThemes.Wpf.ShadowAssist   ShadowDepth$ Depth2=?5B      $	??Top=?5C         Mode$ 
PrimaryMid=?5D      .??5E      ]? $
??True??6    .+?5F      ?? $??Right=?6%   $ 
Horizontal=?6<   .+?5G      ?? -   5         ??Name$ btnMin??5H   !   $	??—??5I   !    ! MaterialDesignFlatMidBgButton#??[ 5J   !    ? Cursor$
 Hand??6X   ?? 5K      -   5        $ btnMax??5L   !   $	??☐??5M   !   #??[ 5N   !   ?? 5O      -   5        $ btnClose??5P   !   $	??✕??5Q   !   #??[ 5R   !   $
 Hand??6X   5S      ?? 5U      $ 
Horizontal=?6%   .+?5V      d? -	   5          d?Name$  MenuToggleButton??5W   !   4  .System.Windows.Automation.AutomationProperties!   Name$! HamburgerToggleButton??5X   !   " d? 	IsChecked$" FalseY?5Y   !    ' #MaterialDesignHamburgerToggleButton#??[ 5Z   !   ?? 5\      $??24,0,0,0q?5]   !     MaterialDesignToolButton#???  5c   !   # ? ToolTip$# Previous Item??5d   !   $
 Hand??69   +  %MaterialDesignThemes.Wpf.RippleAssist$   Feedback$ 5^   !   ?? % ?? RelativeSource% ?? *Self+$ 
Foreground?  BrushRoundConverter& ?? 	Converter#& [ ??5_   !   ?? *GoBackCommand+??5`   !   0  *MaterialDesignThemes.Wpf.PackIconExtension  '   Kind$' 	ArrowLeft=?(   Size( 24??5b   !   ?? % ?? ) ?? AncestorType") ?$ (TextElement.Foreground)?5d   9   ?? 5f      $??16,0,0,0q?5g   !   #???  5m   !   $# 	Next Item??5n   !   $ 5h   !   ?? % ?? *Self+$ 
Foreground?#& [ ??5i   !   ?? *GoForwardCommand+??5j   !     $' 
ArrowRight=?( 24??5l   !   ?? % ?? ") ?$ (TextElement.Foreground)?5n   !   ?? 5p      $
??16,0q?5q   !   $??Center=?5r   !   $??Center=?5s   !   $%! Material Design In XAML Toolkit??5t   !   $??22(?5u   !   $??前后处理??5v   !   5w      5x      5y      ?? 5{      $??1??6"   &    PappTest.Extensions.PrismManager*   MainViewRegionName!  Prism.Regions.RegionManager+   
RegionName#+ Z* 6/   5|      5}      5~      5      