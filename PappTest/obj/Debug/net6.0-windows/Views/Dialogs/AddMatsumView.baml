   M S B A M L   `   `   `  ????  PappTest*    $PappTest.Views.Dialogs.AddMatsumView   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      _ [MaterialDesignThemes.Wpf, Version=4.4.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962a:md1http://materialdesigninxaml.net/winfx/xaml/themes  5      $	??300??5       $	??320??6,   .??5      ?   ? RowDefinitions  5	   
   ?? 5
      $
??auto ?6   ?? 5      ?? 5      $
??auto ?6   .+?5   
   ??  ?? Padding$ 20,10q?5      $??Matsum??5      $
??Bold"?6   $??20(?6-   ]? 5   
   $??1??6   $??False??6!   .+?5      ?? $??20,10q?6   $	??Top=?5       ?? Orientation$ 
Horizontal=?6&   .+?5      ?? $	??0,0q?6   $
??Name??6*   $??Center=?67   ?? 5      $
??20,0q?5      )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Matsum??6   $	??Top=?6;   ??5      ?? *Model.Title+5   ;   5      ?? 5      $??20,10q?6   $	??Top=?5      $ 
Horizontal=?6&   .+?5       ?? $	??0,5q?6   $??Part ID??6*   $	??Top=?69   ?? 5!      $
??20,0q?5#      $ ID??6$   $	??Top=?6<   ??5"      ?? *Model.Content+5#   <   5$      ?? 5*      $??20,10q?5+      $	??Top=?5,      $ 
Horizontal=?6&   .+?5-      ?? $??	Component??6   $??Center=?6-   ?? 5.      $??10,0,0,0q?6B    ?? SelectedIndex 6   ?? *Model.Status+.@?5/      ?? .??6#   
X momentum6/   ?? 50      .??6#   
Y momentum6/   ?? 51      .??6#   
Z momentum6/   ?? 52      .??6#   X rigid body velocity6:   ?? 53      .??6#   Y rigid body velocity6:   ?? 54      .??6#   Z rigid body velocity6:   ?? 55      .??6#   Kinetic energy63   ?? 56      .??6#   Internal energy64   57      58      ?? 5:      $??20,10q?5;      $	??Top=?5<      $ 
Horizontal=?6&   .+?5=      ?? $??	Filtering??6   $??Center=?6-   ?? 5>      $??10,0,0,0q?6B    6   ?? *Model.Status+.@?5?      ?? .??6#   None6)   ?? 5@      .??6#   
SAE Filter6/   5A      5B      5E      ?? 5G   
   $??10q?6   $ 
Horizontal=?6!   $??2??6:   $??Right=?6G   .+?5H      ?? $??取消??6   $??0,0,10,0q?6"       MaterialDesignOutlinedButton#??[  5I      ??5H   4   ?? *CancelCommand+5I      ?? 5J      $??确定??6   ??6$   ?? *SaveCommand+5K      5L      5M      