   M S B A M L   `   `   `  ????C  ?PappTest, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:PappTestPappTest  5   	   9!clr-namespace:PappTest.ExtensionsPappTest.Extensions  5
   	   9!clr-namespace:PappTest.ViewModelsPappTest.ViewModels  5   K   I)clr-namespace:PappTest.ViewModels.DialogsPappTest.ViewModels.Dialogs  6?   *    $PappTest.Views.Dialogs.AddNodoutView   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   (localclr-namespace:PappTest     5   	   [ WPrism.DryIoc.Wpf, Version=8.1.97.5141, Culture=neutral, PublicKeyToken=40ee6c3a2184dc59T PPrism.Wpf, Version=8.1.97.5141, Culture=neutral, PublicKeyToken=40ee6c3a2184dc59&prismhttp://prismlibrary.com/   5   	   _ [MaterialDesignThemes.Wpf, Version=4.4.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   _	 [Microsoft.Xaml.Behaviors, Version=1.1.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a3i+http://schemas.microsoft.com/xaml/behaviors 	 5	   	   +ext!clr-namespace:PappTest.Extensions 	 5
   	   :md1http://materialdesigninxaml.net/winfx/xaml/themes  5      2
viewmodels!clr-namespace:PappTest.ViewModels  6K   7dialogs)clr-namespace:PappTest.ViewModels.Dialogs  6?   $	??300??5       $	??320??6,   .??5      ?   ? RowDefinitions  5   
   ?? 5      $
??auto ?6   ?? 5      ?? 5      $
??auto ?6   .+?5   
   ??  ?? Padding$ 20,10q?5      $??Nodout??5      $
??Bold"?6   $??20(?6-   ]? 5   
   $??1??6   $??False??6!   .+?5      ?? $??20,10q?6   $	??Top=?5       ?? Orientation$ 
Horizontal=?6&   .+?5      ?? $	??0,0q?6   $
??Name??6*   $??Center=?67   ?? 5      $
??20,0q?5      )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Nodout??6   $	??Top=?6;   ??5      ?? *
Model.Name+5   ;   5       ?? 5#      $??20,10q?5$      $	??Top=?5%      $ 
Horizontal=?6&   .+?5&      ?? $??	Component??6   $??Center=?6-   ?? 5'      $??10,0,0,0q?6E    ?? DisplayMemberPath$ ComName??5(   ;    ?? SelectedValuePath$ ComID??6?    ?? SelectedIndex 5'      ?? *Model.Component+??5(      ?? *	ComList+ ?? SelectedValue 6W   ?? *SelectedComCode+6?   5*      ?? 5,      $??20,10q?5-      $	??Top=?5.      $ 
Horizontal=?6&   .+?5/      ?? $??Dirction??6   $??Center=?6,   ?? 50      $??10,0,0,0q?6E   $ DirectionName??51   A   $ DirectionName??6?    50      ?? *Model.Direction+??51      ?? *DirectionList+ 6c   ?? *SelectedDirection+{?6?   ?? *AllowDirectionSelection+53      ?? 55      $??20,10q?6   $	??Top=?56      $ 
Horizontal=?6&   .+?57      ?? $	??0,5q?6   $??ID??6*   $	??Top=?64   ?? 58      $
??20,0q?5:      $ ID??6$   $	??Top=?6<   ??59      ?? *
Model.ID+5:   <   5;      5<      ?? 5>   
   $??10q?6   $ 
Horizontal=?6!   $??2??6:   $??Right=?6G   .+?5?      ?? $??取消??6   $??0,0,10,0q?6"       MaterialDesignOutlinedButton#??[  5@       ? Cursor$
 Hand??6J   ??5?   4   ?? *CancelCommand+5@   J   ?? 5A      $??确定??6   ??6$   ?? *SaveCommand+5B      5C      5D      