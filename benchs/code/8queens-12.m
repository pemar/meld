meld fil       �                                                                                                                                                                                                                                                                                             	       	                     
       
                                                                                                                                                     !       !       "       "       #       #       &       &       '       '       (       (       $       $       )       )       %       %       *       *       +       +       ,       ,       -       -       .       .       /       /       2       2       3       3       4       4       0       0       5       5       1       1       6       6       7       7       8       8       9       9       :       :       ;       ;       >       >       ?       ?       @       @       <       <       A       A       =       =       B       B       C       C       D       D       E       E       F       F       G       G       J       J       K       K       L       L       H       H       M       M       I       I       N       N       O       O       P       P       Q       Q       R       R       S       S       V       V       W       W       X       X       T       T       Y       Y       U       U       Z       Z       [       [       \       \       ]       ]       ^       ^       _       _       b       b       c       c       d       d       `       `       e       e       a       a       f       f       g       g       h       h       i       i       j       j       k       k       n       n       o       o       p       p       l       l       q       q       m       m       r       r       s       s       t       t       u       u       v       v       w       w       z       z       {       {       |       |       x       x       }       }       y       y       ~       ~                     �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �        	                init -o axioms�   propagate-left(Nodes, Coords) -o test-and-send-down(Nodes, Coords), {L | !left(L), 
			L != host-id | propagate-left(Nodes, Coords)@L}.�   propagate-right(Nodes, Coords) -o test-and-send-down(Nodes, Coords), {R | !right(R), 
			R != host-id | propagate-right(Nodes, Coords)@R}.T   test-and-send-down(Nodes, Coords), !coord(X, Y) -o test-y(Y, Coords, Nodes, Coords).v   test-y(Y, MV3, Nodes, Coords), !coord(OX, OY), test-nil(MV3) -o test-diag-left(OX - 1, OY - 1, Coords, Nodes, Coords).�   test-y(MV24, MV25, MV26, MV27), MV29 = head(MV28), MV28 = tail(MV25), not(test-nil(MV25)), 
			not(test-nil(MV28)) -o (MV24 = MV29 -o 1), OR (RestCoords = tail(MV28), MV24 != MV29 -o test-y(MV24, RestCoords, MV26, MV27)).�   test-diag-left(X, Y, MV1, Nodes, Coords), !coord(OX, OY), (X < 0) || (Y < 0) -o test-diag-right(OX - 1, OY + 1, Coords, Nodes, Coords).5  test-diag-left(MV30, MV31, MV32, MV33, MV34), MV37 = head(MV36), MV36 = tail(MV32), MV35 = head(MV32), 
			not(test-nil(MV32)), not(test-nil(MV36)) -o (MV30 = MV35, MV31 = MV37 -o 1), OR (RestCoords = tail(MV36), (MV30 != MV35) || (MV31 != MV37) -o test-diag-left(MV30 - 1, MV31 - 1, RestCoords, MV33, MV34)).�   test-diag-right(X, Y, MV16, Nodes, Coords), !coord(OX, OY), (X < 0) || (Y >= 12), test-nil(MV16) -o 
			send-down(cons(host-id,Nodes), cons(OX,cons(OY,Coords))).7  test-diag-right(MV38, MV39, MV40, MV41, MV42), MV45 = head(MV44), MV44 = tail(MV40), MV43 = head(MV40), 
			not(test-nil(MV40)), not(test-nil(MV44)) -o (MV38 = MV43, MV39 = MV45 -o 1), OR (RestCoords = tail(MV44), (MV38 != MV43) || (MV39 != MV45) -o test-diag-right(MV38 - 1, MV39 + 1, RestCoords, MV41, MV42)).U   send-down(Nodes, Coords), !coord(MV23, MV2), MV23 = 11 -o final-state(Nodes, Coords).�   send-down(Nodes, Coords) -o {B | !down-right(B), B != host-id | 
			propagate-right(Nodes, Coords)@B}, {B | !down-left(B), B != host-id | 
			propagate-left(Nodes, Coords)@B}.           �                  _init                                                               set-priority                                                        setcolor                                                            setedgelabel                                                        write-string                                                        add-priority                                                         schedule-next                                                       setcolor2                                                            stop-program                                                        set-default-priority                                                 set-moving                                                           set-static                                                          set-affinity                                                        set-cpu                                                              remove-priority                                                      left                                                                 right                                                                down-right                                                           down-left                                                            coord                                                                propagate-left                                                       propagate-right                                                      test-and-send-down                                                    test-y                                                                test-diag-left                                                        test-diag-right                                                      send-down                                                            final-state                                                      ���������                                                                                                                                              N;                   H;   � 
$;  �      q   �   ;  �    j  �  4  �  �  c  �  -  �  �  \  �  &  �  �  U  �  	  �	  �	  N
  �
    }  �  G  �    v  �  @  �  
  o  �  9  �    h  �  2  �  �  a  �  +  �  �  Z  �  $  �  �  S  �    �  �  L  �    {  �  E  �    t  �  >  �    m  �  7  �     f   �   0!  �!  �!  _"  �"  )#  �#  �#  X$  �$  "%  �%  �%  Q&  �&  '  �'  �'  J(  �(  )  y)  �)  C*  �*  +  r+  �+  <,  �,  -  k-  �-  5.  �.  �.  d/  �/  .0  �0  �0  ]1  �1  '2  �2  �2  V3  �3   4  �4  �4  O5  �5  6  ~6  �6  H7  �7  8  w8  .      �?�               /�@p pw2                                         p8  .      �?�              /�2                                       8  .      �?�              /�2                                      �7  .      �?�              /�2                                      A7  .      �?�              /�2                                      �6  .      �?�              /�2                                      w6  .      �?�              /�2                                      6  .      �?�              /�2                                      �5  .      �?�              /�2                               	       H5  .      �?�    	          /�2       	                        
       �4  .      �?�    
          /�2       
   
              	              ~4  .      �?�              /�2                        
              4  .       @�              /�2                                      �3  .       @�             /�2                                     O3  .       @�             /�2                                     �2  .       @�             /�2                                     �2  .       @�             /�2                                      2  .       @�             /�2                                     �1  .       @�             /�2                                      V1  .       @�             /�2         !                            �0  .       @�             /�2         "                            �0  .       @�   	          /�2      	   #                            '0  .       @�   
          /�2      
                                �/  .       @�             /�2                !                     ]/  .      @�              /�2          &                            �.  .      @�             /�2         '                            �.  .      @�             /�2         (       $                     ..  .      @�             /�2         )       %                     �-  .      @�             /�2         *       &                     d-  .      @�             /�2         +       '                     �,  .      @�             /�2         ,       (                     �,  .      @�             /�2         -       )                      5,  .      @�             /�2         .       *              !       �+  .      @�   	          /�2      	   /       +               "       k+  .      @�   
          /�2      
   "       ,       !       #       +  .      @�             /�2         #       -       "       #       �*  .      @�              /�2          2       $       $       %       <*  .      @�             /�2         3       %       $       &       �)  .      @�             /�2         4       0       %       '       r)  .      @�             /�2         5       1       &       (       )  .      @�             /�2         6       2       '       )       �(  .      @�             /�2         7       3       (       *       C(  .      @�             /�2         8       4       )       +       �'  .      @�             /�2         9       5       *       ,       y'  .      @�             /�2         :       6       +       -       '  .      @�   	          /�2      	   ;       7       ,       .       �&  .      @�   
          /�2      
   .       8       -       /       J&  .      @�             /�2         /       9       .       /       �%  .      @�              /�2          >       0       0       1       �%  .      @�             /�2         ?       1       0       2       %  .      @�             /�2         @       <       1       3       �$  .      @�             /�2         A       =       2       4       Q$  .      @�             /�2         B       >       3       5       �#  .      @�             /�2         C       ?       4       6       �#  .      @�             /�2         D       @       5       7       "#  .      @�             /�2         E       A       6       8       �"  .      @�             /�2         F       B       7       9       X"  .      @�   	          /�2      	   G       C       8       :       �!  .      @�   
          /�2      
   :       D       9       ;       �!  .      @�             /�2         ;       E       :       ;       )!  .      @�              /�2          J       <       <       =       �   .      @�             /�2         K       =       <       >       _   .      @�             /�2         L       H       =       ?       �  .      @�             /�2         M       I       >       @       �  .      @�             /�2         N       J       ?       A       0  .      @�             /�2         O       K       @       B       �  .      @�             /�2         P       L       A       C       f  .      @�             /�2         Q       M       B       D         .      @�             /�2         R       N       C       E       �  .      @�   	          /�2      	   S       O       D       F       7  .      @�   
          /�2      
   F       P       E       G       �  .      @�             /�2         G       Q       F       G       m  .      @�              /�2          V       H       H       I         .      @�             /�2         W       I       H       J       �  .      @�             /�2         X       T       I       K       >  .      @�             /�2         Y       U       J       L       �  .      @�             /�2         Z       V       K       M       t  .      @�             /�2         [       W       L       N         .      @�             /�2         \       X       M       O       �  .      @�             /�2         ]       Y       N       P       E  .      @�             /�2         ^       Z       O       Q       �  .      @�   	          /�2      	   _       [       P       R       {  .      @�   
          /�2      
   R       \       Q       S         .      @�             /�2         S       ]       R       S       �  .       @�              /�2          b       T       T       U       L  .       @�             /�2         c       U       T       V       �  .       @�             /�2         d       `       U       W       �  .       @�             /�2         e       a       V       X         .       @�             /�2         f       b       W       Y       �  .       @�             /�2         g       c       X       Z       S  .       @�             /�2         h       d       Y       [       �  .       @�             /�2         i       e       Z       \       �  .       @�             /�2         j       f       [       ]       $  .       @�   	          /�2      	   k       g       \       ^       �  .       @�   
          /�2      
   ^       h       ]       _       Z  .       @�             /�2         _       i       ^       _       �  .      "@�              /�2          n       `       `       a       �  .      "@�             /�2         o       a       `       b       +  .      "@�             /�2         p       l       a       c       �  .      "@�             /�2         q       m       b       d       a  .      "@�             /�2         r       n       c       e       �  .      "@�             /�2         s       o       d       f       �  .      "@�             /�2         t       p       e       g       2  .      "@�             /�2         u       q       f       h       �  .      "@�             /�2         v       r       g       i       h  .      "@�   	          /�2      	   w       s       h       j         .      "@�   
          /�2      
   j       t       i       k       �  .      "@�             /�2         k       u       j       k       9  .      $@�	              /�2   	       z       l       l       m       �  .      $@�	             /�2   	      {       m       l       n       o  .      $@�	             /�2   	      |       x       m       o       
  .      $@�	             /�2   	      }       y       n       p       �  .      $@�	             /�2   	      ~       z       o       q       @  .      $@�	             /�2   	             {       p       r       �  .      $@�	             /�2   	      �       |       q       s       v  .      $@�	             /�2   	      �       }       r       t         .      $@�	             /�2   	      �       ~       s       u       �
  .      $@�	   	          /�2   	   	   �              t       v       G
  .      $@�	   
          /�2   	   
   v       �       u       w       �	  .      $@�	             /�2   	      w       �       v       w       }	  .      &@�
              /�2   
       �       x       x       y       	  .      &@�
             /�2   
      �       y       x       z       �  .      &@�
             /�2   
      �       �       y       {       N  .      &@�
             /�2   
      �       �       z       |       �  .      &@�
             /�2   
      �       �       {       }       �  .      &@�
             /�2   
      �       �       |       ~         .      &@�
             /�2   
      �       �       }              �  .      &@�
             /�2   
      �       �       ~       �       U  .      &@�
             /�2   
      �       �              �       �  .      &@�
   	          /�2   
   	   �       �       �       �       �  .      &@�
   
          /�2   
   
   �       �       �       �       &  .      &@�
             /�2   
      �       �       �       �       �  .      (@�              /�2          �       �       �       �       \  .      (@�             /�2         �       �       �       �       �  .      (@�             /�2         �       �       �       �       �  .      (@�             /�2         �       �       �       �       -  .      (@�             /�2         �       �       �       �       �  .      (@�             /�2         �       �       �       �       c  .      (@�             /�2         �       �       �       �       �  .      (@�             /�2         �       �       �       �       �  .      (@�             /�2         �       �       �       �       4  .      (@�   	          /�2      	   �       �       �       �       �   .      (@�   
          /�2      
   �       �       �       �       j   .      (@�             /�2         �       �       �       �          #         � @  4;  +;  ";  ;  �:  �:  �:  �:  j:  a:  X:  O:  :  �9  �9  �9  �9  �9  �9  �9  ;9  29  )9   9  �8  �8  �8  �8  q8  h8  _8  V8  8  8  �7  �7  �7  �7  �7  �7  B7  97  07  '7  �6  �6  �6  �6  x6  o6  f6  ]6  6  
6  6  �5  �5  �5  �5  �5  I5  @5  75  .5  �4  �4  �4  �4  4  v4  m4  d4  4  4  4  �3  �3  �3  �3  �3  P3  G3  >3  53  �2  �2  �2  �2  �2  }2  t2  k2  !2  2  2  2  �1  �1  �1  �1  W1  N1  E1  <1  �0  �0  �0  �0  �0  �0  {0  r0  (0  0  0  0  �/  �/  �/  �/  ^/  U/  L/  C/  �.  �.  �.  �.  �.  �.  �.  y.  /.  &.  .  .  �-  �-  �-  �-  e-  \-  S-  J-   -  �,  �,  �,  �,  �,  �,  �,  6,  -,  $,  ,  �+  �+  �+  �+  l+  c+  Z+  Q+  +  �*  �*  �*  �*  �*  �*  �*  =*  4*  +*  "*  �)  �)  �)  �)  s)  j)  a)  X)  )  )  �(  �(  �(  �(  �(  �(  D(  ;(  2(  )(  �'  �'  �'  �'  z'  q'  h'  _'  '  '  '  �&  �&  �&  �&  �&  K&  B&  9&  0&  �%  �%  �%  �%  �%  x%  o%  f%  %  %  
%  %  �$  �$  �$  �$  R$  I$  @$  7$  �#  �#  �#  �#  �#  #  v#  m#  ##  #  #  #  �"  �"  �"  �"  Y"  P"  G"  >"  �!  �!  �!  �!  �!  �!  }!  t!  *!  !!  !  !  �   �   �   �   `   W   N   E   �  �  �  �  �  �  �  {  1  (      �  �  �  �  g  ^  U  L    �  �  �  �  �  �  �  8  /  &    �  �  �  �  n  e  \  S  	     �  �  �  �  �  �  ?  6  -  $  �  �  �  �  u  l  c  Z      �  �  �  �  �  �  F  =  4  +  �  �  �  �  |  s  j  a        �  �  �  �  �  M  D  ;  2  �  �  �  �  �  z  q  h          �  �  �  �  T  K  B  9  �  �  �  �  �  �  x  o  %      
  �  �  �  �  [  R  I  @  �  �  �  �  �  �    v  ,  #      �  �  �  �  b  Y  P  G  �  �  �  �  �  �  �  }  3  *  !    �  �  �  �  i  `  W  N    �  �  �  �  �  �  �  :  1  (    �  �  �  �  p  g  ^  U      �  �  �  �  �  �  A  8  /  &  �  �  �  �  w  n  e  \    	     �
  �
  �
  �
  �
  H
  ?
  6
  -
  �	  �	  �	  �	  ~	  u	  l	  c	  	  	  	  �  �  �  �  �  O  F  =  4  �  �  �  �  �  |  s  j           �  �  �  �  V  M  D  ;  �  �  �  �  �  �  z  q  '        �  �  �  �  ]  T  K  B  �  �  �  �  �  �  �  x  .  %      �  �  �  �       o                  i    @%   % wA              ;    " 78`   @%   % " �� �         o                  i    @%   % wA              ;    " 78`   @%   % " �� �         N                  H               2    @! % %  % w� �         o                  i              Q    @"    :& "   :&% % % w� �         P                  J   Z S"  ;`	   � �"  <`   Y' { �         �                  �    "      >"     >A`W              Q    @"    :& "   =&% % % w� �         �                  �   Z ST "  ;`   " ;`	   � �"  <" <A`4   Y"     :&  "    :& ' { �         �                  �   "      >"    ?A`M              G    @" 7_' " "_ " _ 'w� �         �   	               �   Z ST "  ;`   " ;`	   � �"  <" <A`4   Y"     :&  "    =& ' { �         J   
               D               .       @%   % w� �         �                  �    A              ;    " 78`   @%   % " �A              ;    " 78`   @%   % " �� �         