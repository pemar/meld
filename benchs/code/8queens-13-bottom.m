meld fil       �                                                                                                                                   	       	       
       
                                                                                                                                                                                                                                                                                                                             !       !       "       "       #       #       $       $       %       %       &       &       '       '       (       (       )       )       *       *       +       +       ,       ,       -       -       .       .       /       /       0       0       1       1       2       2       3       3       4       4       5       5       6       6       7       7       8       8       9       9       :       :       ;       ;       <       <       =       =       >       >       ?       ?       @       @       A       A       B       B       C       C       D       D       E       E       F       F       G       G       H       H       I       I       J       J       K       K       L       L       M       M       N       N       O       O       P       P       Q       Q       R       R       S       S       T       T       U       U       V       V       W       W       X       X       Y       Y       Z       Z       [       [       \       \       ]       ]       ^       ^       _       _       `       `       a       a       b       b       c       c       d       d       e       e       f       f       g       g       h       h       i       i       j       j       k       k       l       l       m       m       n       n       o       o       p       p       q       q       r       r       s       s       t       t       u       u       v       v       w       w       x       x       y       y       z       z       {       {       |       |       }       }       ~       ~                     �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �        	                _init -o node-axioms.r   propagate-left(Coords) -o test-and-send-down(Coords), {L | !left(L), 
			L != host-id | propagate-left(Coords)@L}.u   propagate-right(Coords) -o test-and-send-down(Coords), {R | !right(R), 
			R != host-id | propagate-right(Coords)@R}.�    -o (test-and-send-down(Coords), !coord(X, Y), not(queens_violation(Y, Coords)) -o send-down(cons(Y,Coords))), OR (test-and-send-down(Coords), !coord(X, Y) -o 1).E   send-down(Coords), !coord(MV2, MV1), MV2 = 12 -o final-state(Coords).�   send-down(Coords) -o {B | !down-right(B), B != host-id | 
			propagate-right(Coords)@B}, {B | !down-left(B), B != host-id | 
			propagate-left(Coords)@B}.           �                   _init                                                                setcolor                                                             setedgelabel                                                         write-string                                                         setcolor2                                                             stop-program                                                         set-priority                                                         add-priority                                                          schedule-next                                                        set-default-priority                                                  set-moving                                                            set-static                                                           set-affinity                                                         set-cpu                                                               remove-priority                                                       left                                                                  right                                                                 down-right                                                            down-left                                                             coord                                                                propagate-left                                                       propagate-right                                                      test-and-send-down                                                   send-down                                                            final-state                                                      ��������   /                   /   � 
�.  �      L   �   �     X  �  �  !  d  �  �  -  p  �  �  9  |  �    E  �  �    Q  �  �    ]  �  �  &  i  �  �  2	  u	  �	  �	  >
  �
  �
    J  �  �    V  �  �    b  �  �  +  n  �  �  7  z  �     C  �  �    O  �  �    [  �  �  $  g  �  �  0  s  �  �  <    �    H  �  �    T  �  �    `  �  �  )  l  �  �  5  x  �  �  A  �  �  
  M  �  �    Y  �  �  "  e  �  �  .  q  �  �  :   }   �   !  F!  �!  �!  "  R"  �"  �"  #  ^#  �#  �#  '$  j$  �$  �$  3%  v%  �%  �%  ?&  �&  �&  '  K'  �'  �'  (  W(  �(  �(   )  c)  �)  �)  ,*  o*  �*  �*  8+  {+  �+  ,  .      �?�@p w2                                         �+  .      �?�2                                       �+  .      �?�2                                      w+  .      �?�2                                      4+  .      �?�2                                      �*  .      �?�2                                      �*  .      �?�2                                      k*  .      �?�2                                      (*  .      �?�2                               	       �)  .      �?�2       	                        
       �)  .      �?�2       
                 	              _)  .      �?�2                        
              )  .      �?�2                                      �(  .       @�2                                      �(  .       @�2                                     S(  .       @�2                                     (  .       @�2                                     �'  .       @�2                                      �'  .       @�2         !                            G'  .       @�2         "                            '  .       @�2         #                            �&  .       @�2         $                             ~&  .       @�2      	   %       !                     ;&  .       @�2      
   &       "                     �%  .       @�2                #                     �%  .       @�2                $                     r%  .      @�2          )                            /%  .      @�2         *                            �$  .      @�2         +       '                     �$  .      @�2         ,       (                     f$  .      @�2         -       )                     #$  .      @�2         .       *                      �#  .      @�2         /       +              !       �#  .      @�2         0       ,               "       Z#  .      @�2         1       -       !       #       #  .      @�2      	   2       .       "       $       �"  .      @�2      
   3       /       #       %       �"  .      @�2         %       0       $       &       N"  .      @�2         &       1       %       &       "  .      @�2          6       '       '       (       �!  .      @�2         7       (       '       )       �!  .      @�2         8       4       (       *       B!  .      @�2         9       5       )       +       �   .      @�2         :       6       *       ,       �   .      @�2         ;       7       +       -       y   .      @�2         <       8       ,       .       6   .      @�2         =       9       -       /       �  .      @�2         >       :       .       0       �  .      @�2      	   ?       ;       /       1       m  .      @�2      
   @       <       0       2       *  .      @�2         2       =       1       3       �  .      @�2         3       >       2       3       �  .      @�2          C       4       4       5       a  .      @�2         D       5       4       6         .      @�2         E       A       5       7       �  .      @�2         F       B       6       8       �  .      @�2         G       C       7       9       U  .      @�2         H       D       8       :         .      @�2         I       E       9       ;       �  .      @�2         J       F       :       <       �  .      @�2         K       G       ;       =       I  .      @�2      	   L       H       <       >         .      @�2      
   M       I       =       ?       �  .      @�2         ?       J       >       @       �  .      @�2         @       K       ?       @       =  .      @�2          P       A       A       B       �  .      @�2         Q       B       A       C       �  .      @�2         R       N       B       D       t  .      @�2         S       O       C       E       1  .      @�2         T       P       D       F       �  .      @�2         U       Q       E       G       �  .      @�2         V       R       F       H       h  .      @�2         W       S       G       I       %  .      @�2         X       T       H       J       �  .      @�2      	   Y       U       I       K       �  .      @�2      
   Z       V       J       L       \  .      @�2         L       W       K       M         .      @�2         M       X       L       M       �  .      @�2          ]       N       N       O       �  .      @�2         ^       O       N       P       P  .      @�2         _       [       O       Q         .      @�2         `       \       P       R       �  .      @�2         a       ]       Q       S       �  .      @�2         b       ^       R       T       D  .      @�2         c       _       S       U         .      @�2         d       `       T       V       �  .      @�2         e       a       U       W       {  .      @�2      	   f       b       V       X       8  .      @�2      
   g       c       W       Y       �  .      @�2         Y       d       X       Z       �  .      @�2         Z       e       Y       Z       o  .       @�2          j       [       [       \       ,  .       @�2         k       \       [       ]       �  .       @�2         l       h       \       ^       �  .       @�2         m       i       ]       _       c  .       @�2         n       j       ^       `          .       @�2         o       k       _       a       �  .       @�2         p       l       `       b       �  .       @�2         q       m       a       c       W  .       @�2         r       n       b       d         .       @�2      	   s       o       c       e       �  .       @�2      
   t       p       d       f       �  .       @�2         f       q       e       g       K  .       @�2         g       r       f       g         .      "@�2          w       h       h       i       �  .      "@�2         x       i       h       j       �  .      "@�2         y       u       i       k       ?  .      "@�2         z       v       j       l       �  .      "@�2         {       w       k       m       �  .      "@�2         |       x       l       n       v  .      "@�2         }       y       m       o       3  .      "@�2         ~       z       n       p       �  .      "@�2                {       o       q       �  .      "@�2      	   �       |       p       r       j  .      "@�2      
   �       }       q       s       '  .      "@�2         s       ~       r       t       �  .      "@�2         t              s       t       �  .      $@�2   	       �       u       u       v       ^  .      $@�2   	      �       v       u       w         .      $@�2   	      �       �       v       x       �  .      $@�2   	      �       �       w       y       �  .      $@�2   	      �       �       x       z       R  .      $@�2   	      �       �       y       {         .      $@�2   	      �       �       z       |       �  .      $@�2   	      �       �       {       }       �  .      $@�2   	      �       �       |       ~       F  .      $@�2   	   	   �       �       }                .      $@�2   	   
   �       �       ~       �       �
  .      $@�2   	      �       �              �       }
  .      $@�2   	      �       �       �       �       :
  .      &@�2   
       �       �       �       �       �	  .      &@�2   
      �       �       �       �       �	  .      &@�2   
      �       �       �       �       q	  .      &@�2   
      �       �       �       �       .	  .      &@�2   
      �       �       �       �       �  .      &@�2   
      �       �       �       �       �  .      &@�2   
      �       �       �       �       e  .      &@�2   
      �       �       �       �       "  .      &@�2   
      �       �       �       �       �  .      &@�2   
   	   �       �       �       �       �  .      &@�2   
   
   �       �       �       �       Y  .      &@�2   
      �       �       �       �         .      &@�2   
      �       �       �       �       �  .      (@�2          �       �       �       �       �  .      (@�2         �       �       �       �       M  .      (@�2         �       �       �       �       
  .      (@�2         �       �       �       �       �  .      (@�2         �       �       �       �       �  .      (@�2         �       �       �       �       A  .      (@�2         �       �       �       �       �  .      (@�2         �       �       �       �       �  .      (@�2         �       �       �       �       x  .      (@�2      	   �       �       �       �       5  .      (@�2      
   �       �       �       �       �  .      (@�2         �       �       �       �       �  .      (@�2         �       �       �       �       l  .      *@�2          �       �       �       �       )  .      *@�2         �       �       �       �       �  .      *@�2         �       �       �       �       �  .      *@�2         �       �       �       �       `  .      *@�2         �       �       �       �         .      *@�2         �       �       �       �       �  .      *@�2         �       �       �       �       �  .      *@�2         �       �       �       �       T  .      *@�2         �       �       �       �         .      *@�2      	   �       �       �       �       �   .      *@�2      
   �       �       �       �       �   .      *@�2         �       �       �       �       H   .      *@�2         �       �       �       �          #         � �   /  �.  �.  �.  �.  �.  �.  �.  z.  q.  h.  _.  7.  ..  %.  .  �-  �-  �-  �-  �-  �-  �-  �-  n-  e-  \-  S-  +-  "-  -  -  �,  �,  �,  �,  �,  �,  �,  �,  b,  Y,  P,  G,  ,  ,  ,  ,  �+  �+  �+  �+  �+  �+  �+  ~+  V+  M+  D+  ;+  +  
+  +  �*  �*  �*  �*  �*  �*  �*  {*  r*  J*  A*  8*  /*  *  �)  �)  �)  �)  �)  �)  �)  �)  x)  o)  f)  >)  5)  ,)  #)  �(  �(  �(  �(  �(  �(  �(  �(  u(  l(  c(  Z(  2(  )(   (  (  �'  �'  �'  �'  �'  �'  �'  �'  i'  `'  W'  N'  &'  '  '  '  �&  �&  �&  �&  �&  �&  �&  �&  ]&  T&  K&  B&  &  &  &  �%  �%  �%  �%  �%  �%  �%  �%  y%  Q%  H%  ?%  6%  %  %  �$  �$  �$  �$  �$  �$  �$  $  v$  m$  E$  <$  3$  *$  $  �#  �#  �#  �#  �#  �#  �#  |#  s#  j#  a#  9#  0#  '#  #  �"  �"  �"  �"  �"  �"  �"  �"  p"  g"  ^"  U"  -"  $"  "  "  �!  �!  �!  �!  �!  �!  �!  �!  d!  [!  R!  I!  !!  !  !  !  �   �   �   �   �   �   �   �   X   O   F   =            �  �  �  �  �  �  �  }  t  L  C  :  1  	     �  �  �  �  �  �  �  z  q  h  @  7  .  %  �  �  �  �  �  �  �  �  w  n  e  \  4  +  "    �  �  �  �  �  �  �  �  k  b  Y  P  (        �  �  �  �  �  �  �  �  _  V  M  D      
    �  �  �  �  �  �  �  {  S  J  A  8      �  �  �  �  �  �  �  �  x  o  G  >  5  ,    �  �  �  �  �  �  �  ~  u  l  c  ;  2  )     �  �  �  �  �  �  �  �  r  i  `  W  /  &      �  �  �  �  �  �  �  �  f  ]  T  K  #        �  �  �  �  �  �  �  �  Z  Q  H  ?        �  �  �  �  �  �  �    v  N  E  <  3      �  �  �  �  �  �  �  |  s  j  B  9  0  '  �  �  �  �  �  �  �  �  y  p  g  ^  6  -  $    �  �  �  �  �  �  �  �  m  d  [  R  *  !      �  �  �  �  �  �  �  �  a  X  O  F          �  �  �  �  �  �  �  }  U  L  C  :    	     �  �  �  �  �  �  �  z  q  I  @  7  .    �  �  �  �  �  �  �  �  w  n  e  =  4  +  "  �  �  �  �  �  �  �  �  t  k  b  Y  1  (      �  �  �  �  �  �  �  �  h  _  V  M  %      
  �
  �
  �
  �
  �
  �
  �
  �
  \
  S
  J
  A
  
  
  
  �	  �	  �	  �	  �	  �	  �	  �	  x	  P	  G	  >	  5	  	  	  �  �  �  �  �  �  �  ~  u  l  D  ;  2  )    �  �  �  �  �  �  �  {  r  i  `  8  /  &    �  �  �  �  �  �  �  �  o  f  ]  T  ,  #      �  �  �  �  �  �  �  �  c  Z  Q  H           �  �  �  �  �  �  �    W  N  E  <        �  �  �  �  �  �  �  |  s  K  B  9  0    �  �  �      e                  _    <              6    " 78`   @%   " �@%   w� �        e                  _    <              6    " 78`   @%   " �@%   w� �        �                  R               <    ""  j5`   @g   w� �            /                   � �        E                  ?               )       @%   w� �        �                  �    <              6    " 78`   @%   " �<              6    " 78`   @%   " �� �        