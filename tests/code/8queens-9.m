meld fil       Q                                 	       	                                   %       %                                   .       .       
       
       $       $       7       7       -       -       @       @       6       6       I       I       ?       ?       H       H                                   &       &                     /       /                     8       8       A       A       J       J                                   '       '                     0       0                     9       9       B       B       K       K                                   (       (                     1       1                     :       :       C       C       L       L                                     )       )                     2       2                     ;       ;       D       D       M       M                     !       !       *       *                     3       3                     <       <       E       E       N       N                     "       "       +       +                     4       4                     =       =       F       F       O       O                     #       #       ,       ,                     5       5                     >       >       G       G       P       P        	                init -o axioms�   propagate-left(Nodes, Coords), A = host-id -o test-and-send-down(Nodes, Coords), {L | 
			!left(L), L != host-id | propagate-left(Nodes, Coords)@L}.�   propagate-right(Nodes, Coords), A = host-id -o test-and-send-down(Nodes, Coords), {R | 
			!right(R), R != host-id | propagate-right(Nodes, Coords)@R}.a   test-and-send-down(Nodes, Coords), !coord(X, Y), A = host-id -o test-y(Y, Coords, Nodes, Coords).�   test-y(Y, MV3, Nodes, Coords), !coord(OX, OY), test-nil(MV3), A = host-id -o 
			test-diag-left(OX - 1, OY - 1, Coords, Nodes, Coords).�   test-y(MV24, MV25, MV26, MV27), MV29 = head(MV28), MV28 = tail(MV25), not(test-nil(MV25)), 
			not(test-nil(MV28)), A = host-id -o (MV24 = MV29 -o 1), OR (RestCoords = tail(MV28), MV24 != MV29 -o test-y(MV24, RestCoords, MV26, MV27)).�   test-diag-left(X, Y, MV1, Nodes, Coords), !coord(OX, OY), (X < 0) || (Y < 0), A = host-id -o 
			test-diag-right(OX - 1, OY + 1, Coords, Nodes, Coords).B  test-diag-left(MV30, MV31, MV32, MV33, MV34), MV37 = head(MV36), MV36 = tail(MV32), MV35 = head(MV32), 
			not(test-nil(MV32)), not(test-nil(MV36)), A = host-id -o (MV30 = MV35, MV31 = MV37 -o 1), OR (RestCoords = tail(MV36), (MV30 != MV35) || (MV31 != MV37) -o test-diag-left(MV30 - 1, MV31 - 1, RestCoords, MV33, MV34)).�   test-diag-right(X, Y, MV16, Nodes, Coords), !coord(OX, OY), (X < 0) || (Y >= 9), test-nil(MV16), 
			A = host-id -o send-down(cons(host-id,Nodes), cons(OX,cons(OY,Coords))).D  test-diag-right(MV38, MV39, MV40, MV41, MV42), MV45 = head(MV44), MV44 = tail(MV40), MV43 = head(MV40), 
			not(test-nil(MV40)), not(test-nil(MV44)), A = host-id -o (MV38 = MV43, MV39 = MV45 -o 1), OR (RestCoords = tail(MV44), (MV38 != MV43) || (MV39 != MV45) -o test-diag-right(MV38 - 1, MV39 + 1, RestCoords, MV41, MV42)).e   send-down(Nodes, Coords), !coord(MV23, MV2), MV23 = 8, A = host-id -o 
			final-state(Nodes, Coords).�   send-down(Nodes, Coords), A = host-id -o {B | !down-right(B), 
			B != host-id | propagate-right(Nodes, Coords)@B}, {B | !down-left(B), 
			B != host-id | propagate-left(Nodes, Coords)@B}.           �                  _init                                                               set-priority                                                        setcolor                                                            setedgelabel                                                        write-string                                                        add-priority                                                         schedule-next                                                       setcolor2                                                            stop-program                                                        set-default-priority                                                 set-moving                                                           set-static                                                          set-affinity                                                        set-cpu                                                              remove-priority                                                      left                                                                 right                                                                down-right                                                           down-left                                                            coord                                                                propagate-left                                                       propagate-right                                                      test-and-send-down                                                    test-y                                                                test-diag-left                                                        test-diag-right                                                      send-down                                                            final-state                                                      ���������                                                                                                                                              �                   �   � 
�  Q      �  �  �  �  �	  �  �  �  C   2  !    �  �	  �  �  �  z   i  X  G  6  %
      �  �   �  �  ~  m  \
  K  :  )  �   �  �  �  �  �
  �  q  `      �  �  �  �
  �  �  �  V  E  4  #  	    �  �  �  �  |  k  Z  I	  8  '      �  �  �  �  �	  o  ^  M  <  @p pw2                                  	       5  2                 	                      �  2          %              	              �  2          .       
              $       �  2          7                     -       Y  2          @              $       6       "  2          I       %       -       ?       �  2          ?       .       6       H       �  2          H       7       ?       H       }  2                               
       F  2                
                       2         &              
              �  2         /                     %       �  2         8                     .       j  2         A              %       7       3  2         J       &       .       @       �  2         @       /       7       I       �  2         I       8       @       I       �  2                                      W  2                                        2         '                            �  2         0                     &       �  2         9                     /       {  2         B              &       8       D  2         K       '       /       A         2         A       0       8       J       �  2         J       9       A       J       �  2                                      h  2                                     1  2         (                            �
  2         1                     '       �
  2         :                     0       �
  2         C              '       9       U
  2         L       (       0       B       
  2         B       1       9       K       �	  2         K       :       B       K       �	  2                                      y	  2                                      B	  2         )                            	  2         2                     (       �  2         ;                     1       �  2         D               (       :       f  2         M       )       1       C       /  2         C       2       :       L       �  2         L       ;       C       L       �  2                                      �  2         !                            S  2         *                               2         3                     )       �  2         <                      2       �  2         E       !       )       ;       w  2         N       *       2       D       @  2         D       3       ;       M       	  2         M       <       D       M       �  2                                      �  2         "                            d  2         +                     !       -  2         4                     *       �  2         =              !       3       �  2         F       "       *       <       �  2         O       +       3       E       Q  2         E       4       <       N         2         N       =       E       N       �  2                                      �  2         #                            u  2         ,                     "       >  2         5                     +         2         >              "       4       �  2         G       #       +       =       �  2         P       ,       4       F       b  2         F       5       =       O       +  2         O       >       F       O       �  2                                      �  2                                     �  2                              #       O  2         #       #              ,         2         ,       ,       #       5       �   2         5       5       ,       >       �   2         >       >       5       G       s   2         G       G       >       P       <   2         P       P       G       P          #         � D  �  �  �  �  �  �  �  }  a  X  O  F  *  !      �  �  �  �  �  �  �  �  �  |  s  j  N  E  <  3        �  �  �  �  �  �  �  �  �  r  i  `  W  ;  2  )       �  �  �  �  �  �  �  �  �  �  {  _  V  M  D  (        �  �  �  �  �  �  �  �  �  z  q  h  L  C  :  1        �  �  �  �  �  �  �  �  �  p  g  ^  U  9  0  '      �  �  �  �  �  �  �  �  �  �  y  ]  T  K  B  &        �  �  �  �  �  �  �  �  �  x  o  f  J  A  8  /    
    �
  �
  �
  �
  �
  �
  �
  �
  �
  n
  e
  \
  S
  7
  .
  %
  
   
  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  w	  [	  R	  I	  @	  $	  	  	  		  �  �  �  �  �  �  �  �    v  m  d  H  ?  6  -      �  �  �  �  �  �  �  �  �  �  l  c  Z  Q  5  ,  #    �  �  �  �  �  �  �  �  �  �  ~  u  Y  P  G  >  "        �  �  �  �  �  �  �  �  }  t  k  b  F  =  4  +      �  �  �  �  �  �  �  �  �  �  j  a  X  O  3  *  !    �  �  �  �  �  �  �  �  �  �  |  s  W  N  E  <           �  �  �  �  �  �  �  �  {  r  i  `  D  ;  2  )      �  �  �  �  �  �  �  �  �  �       o                  i    @%   % wA              ;    " 78`   @%   % " �� �         o                  i    @%   % wA              ;    " 78`   @%   % " �� �         N                  H               2    @! % %  % w� �         o                  i              Q    @"    :& "   :&% % % w� �         P                  J   Z S"  ;`	   � �"  <`   Y' { �         �                  �    "      >`   "     >`W              Q    @"    :& "   =&% % % w� �         �                  �   Z ST "  ;`   " ;`	   � �"  <`   " <`4   Y"     :&  "    :& ' { �         �                  �   "      >`   " 	   ?`M              G    @" 7_' " "_ " _ 'w� �         �   	               �   Z ST "  ;`   " ;`	   � �"  <`   " <`4   Y"     :&  "    =& ' { �         J   
               D               .       @%   % w� �         �                  �    A              ;    " 78`   @%   % " �A              ;    " 78`   @%   % " �� �         