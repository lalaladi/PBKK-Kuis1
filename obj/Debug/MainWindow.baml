   M S B A M L   `   `   `  ����D  @MusicList, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:MusicList	MusicList  5   	       MusicList.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   )localclr-namespace:MusicList     5   	   _ [MaterialDesignThemes.Wpf, Version=5.0.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   $	��600��5	   	   $	��350��6     � WindowStartupLocation$  CenterScreen=�6"    � WindowStyle$
 None=�6G    � 
ResizeMode$ NoResize=�6Z    � AllowsTransparency . ��6�   Z� .��5
      � ��6   Z� .+�5   
   #  MaterialDesignThemes.Wpf.Card  -   5        $��10q�5         UniformCornerRadius$ 25Q�6*   ��6C   Z� .��5      �� ��5      �� 5       �� 
StartPoint$ 0.1,0&�6*    �� EndPoint$ 0.3,1&�6=   .��5      �  � Color$ 	#FF373737��6'    � Offset$ 1Q�69   � 5      $ 	#FF0B0B48��6'   $ 0Q�69   5      .+�5      � $��70��6   .+�5      ��    ActionButtons#��[  6   $
��Left=�6D   $
��20 0q�6_   	 � ToolTip$	 	Open File��6m   .��5      �� $��-5q�6%   .+�5      '  !MaterialDesignThemes.Wpf.PackIcon  
   Kind$
 Folder=�66   $��20��6D   $��20��6O   5      5      �� 5      -   5        #��[  5      $��Right=�6D   $
��20 0q�6`   $	 Close��6n   .��5      �� $��-5q�6%   .+�5        $
 Close=�66   $��20��6C   $��20��6N   5      5      5      �� 5      -   5         ��Name$ MusicPic��5   r   $��25q�6   $	��200��6$   $��Uniform=�61   $+��%/3ef4d4573176aff039eb393e257fbfe7.jpg��6C   6�   �� 5       -   5         ��Name$ lblSongName��5    �   $��10q�6   $��23(�6(   $��That's What I Like��66   
������� �� TextAlignment$ Center=�6d   $��DemiBold"�6{   6�   �� 5!      -   5        $ lblSongArtist��5!   �   $��10q�6   $��20(�6(   $��	Blackpink��66   
�������$ Center=�6[   $��
ExtraLight"�6r   6�   � 5"      $��0 30 0 0q�6   .+�5#      �� -   5        $ lblCurrentTime��5#   �   $��11(�6    $
��0:00��6.   $
��20 0q�6:   
�������$��
ExtraLight"�6[   $ Center=�6s   $
��Left=�6�   6�   �� 5$      -   5        $ lblMusicLenght��5$   �   $��11(�6    $
��0:00��6.   $
��20 0q�6:   
�������$��
ExtraLight"�6[   $ Center=�6s   $��Right=�6�   6�   5%      �� 5&      -   5         ��Name$ 
TimeSlider��5&   f    � Value$ 0Q�6    � Minimum$ 1Q�6#    � Maximum$ 60Q�6/   $
��20 0q�6<   
�������6{   � 5'      $��Center=�6   $
��0 30q�69   .+�5(      �� -	   5         ��Name$ btnPBack��5(   u   #��[  6   $��Center=�6D   $	 	Play Back��6a   .��5)      �� $��-5q�6%   .+�5*        $
 
FastRewind=�66   $��20��6H   $��20��6S   5+      5,      �� 5-      -
   5        $ btnPlay��5-   }   #��[  6   $��Right=�6D   $
��10 0q�6`   $
	 Play��6n   .��5.      �� $��-5q�6%   .+�5/        $

 Play=�66   $��20��6B   $��20��6M   50      51      �� 52      -   5        $ btnPNext��52   u   #��[  6   $��Center=�6D   $	 	Play Next��6a   .��53      �� $��-5q�6%   .+�54        $
 FastForward=�66   $��20��6I   $��20��6T   55      56      57      58      59      5:      5;      