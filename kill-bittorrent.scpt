FasdUAS 1.101.10   ��   ��    k             l      ��  ��   (" Jason Campisi
   name: kill-bittorrent
   version: v1.1
   date: 10.18.13
   Released under the GPL 3
   Purpose: Mac build of bittorrent does not always close, and sort of hangs infinitely instead of shutting off when you tell it. 
   So this program is meant to kill the zombie program.
     � 	 	D   J a s o n   C a m p i s i 
       n a m e :   k i l l - b i t t o r r e n t 
       v e r s i o n :   v 1 . 1 
       d a t e :   1 0 . 1 8 . 1 3 
       R e l e a s e d   u n d e r   t h e   G P L   3 
       P u r p o s e :   M a c   b u i l d   o f   b i t t o r r e n t   d o e s   n o t   a l w a y s   c l o s e ,   a n d   s o r t   o f   h a n g s   i n f i n i t e l y   i n s t e a d   o f   s h u t t i n g   o f f   w h e n   y o u   t e l l   i t .   
       S o   t h i s   p r o g r a m   i s   m e a n t   t o   k i l l   t h e   z o m b i e   p r o g r a m . 
   
  
 l          j     �� �� 0 program    m        �    b i t t o r r e n t  C =search for this keyword and tell the program to shutdown now!     �   z s e a r c h   f o r   t h i s   k e y w o r d   a n d   t e l l   t h e   p r o g r a m   t o   s h u t d o w n   n o w !      l     ��������  ��  ��        i        I     �� ��
�� .aevtodocnull  �    alis  o      ���� 0 these_items  ��    k     <       l      ��  ��   �� these_items holds a alias list that looks like this: "hostname:Applications:ProgName.app:"
	NOTE: global variables store whatever you put in them, even after the program restarts 
	it will contain what was last placed in it, there by ignoring whatever the 
	hardcoded preset value is. By using bug/feature, reprogramming the default launch 
	program is easy using the below droplet code      �     t h e s e _ i t e m s   h o l d s   a   a l i a s   l i s t   t h a t   l o o k s   l i k e   t h i s :   " h o s t n a m e : A p p l i c a t i o n s : P r o g N a m e . a p p : " 
 	 N O T E :   g l o b a l   v a r i a b l e s   s t o r e   w h a t e v e r   y o u   p u t   i n   t h e m ,   e v e n   a f t e r   t h e   p r o g r a m   r e s t a r t s   
 	 i t   w i l l   c o n t a i n   w h a t   w a s   l a s t   p l a c e d   i n   i t ,   t h e r e   b y   i g n o r i n g   w h a t e v e r   t h e   
 	 h a r d c o d e d   p r e s e t   v a l u e   i s .   B y   u s i n g   b u g / f e a t u r e ,   r e p r o g r a m m i n g   t h e   d e f a u l t   l a u n c h   
 	 p r o g r a m   i s   e a s y   u s i n g   t h e   b e l o w   d r o p l e t   c o d e       !   l     ��������  ��  ��   !  " # " r      $ % $ m      & & � ' '   % o      ���� 0 prog   #  ( ) ( r    	 * + * c     , - , o    ���� 0 these_items   - m    ��
�� 
TEXT + o      ���� 0 prog   )  . / . l  
 
��������  ��  ��   /  0 1 0 l  
 
�� 2 3��   2 d ^isolate only the program-name, then strip out ".app" & set it to the global 'program' variable    3 � 4 4 � i s o l a t e   o n l y   t h e   p r o g r a m - n a m e ,   t h e n   s t r i p   o u t   " . a p p "   &   s e t   i t   t o   t h e   g l o b a l   ' p r o g r a m '   v a r i a b l e 1  5 6 5 r   
  7 8 7 m   
  9 9 � : :  : 8 1    ��
�� 
txdl 6  ; < ; r     = > = n     ? @ ? 4    �� A
�� 
citm A m    ����  @ o    ���� 0 prog   > o      ���� 0 prog   <  B C B r     D E D m     F F � G G  . E 1    ��
�� 
txdl C  H I H r    # J K J n    ! L M L 4    !�� N
�� 
citm N m     ����  M o    ���� 0 prog   K o      ���� 0 prog   I  O P O Z   $ 6 Q R���� Q >  $ ' S T S o   $ %���� 0 prog   T m   % & U U � V V   R s   * 2 W X W o   * +���� 0 prog   X o      ���� 0 program  ��  ��   P  Y�� Y I  7 <������
�� .aevtoappnull  �   � ****��  ��  ��     Z [ Z l     ��������  ��  ��   [  \ ] \ i    
 ^ _ ^ I     ������
�� .aevtoappnull  �   � ****��  ��   _ Q     � ` a b ` O      c d c l    e f g e Z     h i���� h =    j k j n     l m l 1    ��
�� 
prun m  g     k m    ��
�� boovtrue i I   ������
�� .aevtquitnull��� ��� null��  ��  ��  ��   f   doesn't launch app    g � n n &   d o e s n ' t   l a u n c h   a p p d 4    �� o
�� 
capp o o    
���� 0 program   a R      ������
�� .ascrerr ****      � ****��  ��   b k   ( � p p  q r q l  ( (�� s t��   s  try a 2nd approach     t � u u & t r y   a   2 n d   a p p r o a c h   r  v w v r   ( + x y x m   ( ) z z � { {  / b i n / b a s h ; y o      ���� 0 env   w  | } | r   , / ~  ~ m   , - � � � � �  p s   x   |  o      ���� 0 ps   }  � � � r   0 ; � � � b   0 9 � � � b   0 7 � � � m   0 1 � � � � �  g r e p   - i   � o   1 6���� 0 program   � m   7 8 � � � � �    | � o      ���� 0 grep   �  � � � r   < ? � � � m   < = � � � � �   g r e p   - v   " g r e p "   | � o      ���� 0 grepomit grepOmit �  � � � r   @ C � � � m   @ A � � � � � ( a w k   ' {   p r i n t   $ 1   } '   | � o      ���� 0 awk   �  � � � r   D K � � � m   D G � � � � �  x a r g s   k i l l   - 9 � o      ���� 	0 xargs   �  � � � r   L S � � � m   L O � � � � � " > / d e v / n u l l   2 > & 1   & � o      ���� 0 ignoreerrors ignoreErrors �  � � � r   T � � � � b   T } � � � b   T y � � � b   T u � � � b   T q � � � b   T m � � � b   T k � � � b   T g � � � b   T e � � � b   T a � � � b   T _ � � � b   T [ � � � b   T Y � � � o   T U���� 0 env   � 1   U X��
�� 
spac � o   Y Z���� 0 ps   � 1   [ ^��
�� 
spac � o   _ `���� 0 grep   � 1   a d��
�� 
spac � o   e f���� 0 grepomit grepOmit � 1   g j��
�� 
spac � o   k l���� 0 awk   � 1   m p��
�� 
spac � o   q t���� 	0 xargs   � 1   u x��
�� 
spac � o   y |���� 0 ignoreerrors ignoreErrors � o      ���� 0 cmd   �  ��� � I  � ��� ���
�� .sysoexecTEXT���     TEXT � o   � ����� 0 cmd  ��  ��   ]  ��� � l     ��������  ��  ��  ��       �� �  � ���   � �������� 0 program  
�� .aevtodocnull  �    alis
�� .aevtoappnull  �   � **** � �� ���� � ���
�� .aevtodocnull  �    alis�� 0 these_items  ��   � ������ 0 these_items  �� 0 prog   �  &�� 9���� F U��
�� 
TEXT
�� 
txdl
�� 
citm
�� .aevtoappnull  �   � ****�� =�E�O��&E�O�*�,FO��m/E�O�*�,FO��k/E�O�� �EQc   Y hO*j  � �� _���� � ���
�� .aevtoappnull  �   � ****��  ��   �   � ���������� z�� ��� � ��� ��� ��� ��� ���������
�� 
capp
�� 
prun
�� .aevtquitnull��� ��� null��  ��  �� 0 env  �� 0 ps  �� 0 grep  �� 0 grepomit grepOmit�� 0 awk  �� 	0 xargs  �� 0 ignoreerrors ignoreErrors
�� 
spac�� 0 cmd  
�� .sysoexecTEXT���     TEXT�� � "*�b   / *�,e  
*j Y hUW hX  �E�O�E�O�b   %�%E�O�E�O�E�Oa E` Oa E` O�_ %�%_ %�%_ %�%_ %�%_ %_ %_ %_ %E` O_ j ascr  ��ޭ