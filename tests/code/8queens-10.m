meld fil       d                                 
       
                                   )       )                                   3       3                     (       (       =       =       2       2       G       G       <       <       Q       Q       F       F       [       [       P       P       Z       Z                                     *       *                     4       4                     >       >       H       H       R       R       \       \                     !       !       +       +                     5       5                     ?       ?       I       I       S       S       ]       ]                     "       "       ,       ,                     6       6                     @       @       J       J       T       T       ^       ^                     #       #       -       -                     7       7                     A       A       K       K       U       U       _       _                     $       $       .       .                     8       8                     B       B       L       L       V       V       `       `                     %       %       /       /                     9       9                     C       C       M       M       W       W       a       a                     &       &       0       0                     :       :                     D       D       N       N       X       X       b       b                     '       '       1       1       	       	       ;       ;                     E       E       O       O       Y       Y       c       c        	                init -o axioms�   propagate-left(Nodes, Coords), A = host-id -o test-and-send-down(Nodes, Coords), {L | 
			!left(L), L != host-id | propagate-left(Nodes, Coords)@L}.�   propagate-right(Nodes, Coords), A = host-id -o test-and-send-down(Nodes, Coords), {R | 
			!right(R), R != host-id | propagate-right(Nodes, Coords)@R}.a   test-and-send-down(Nodes, Coords), !coord(X, Y), A = host-id -o test-y(Y, Coords, Nodes, Coords).�   test-y(Y, MV3, Nodes, Coords), !coord(OX, OY), test-nil(MV3), A = host-id -o 
			test-diag-left(OX - 1, OY - 1, Coords, Nodes, Coords).�   test-y(MV24, MV25, MV26, MV27), MV29 = head(MV28), MV28 = tail(MV25), not(test-nil(MV25)), 
			not(test-nil(MV28)), A = host-id -o (MV24 = MV29 -o 1), OR (RestCoords = tail(MV28), MV24 != MV29 -o test-y(MV24, RestCoords, MV26, MV27)).�   test-diag-left(X, Y, MV1, Nodes, Coords), !coord(OX, OY), (X < 0) || (Y < 0), A = host-id -o 
			test-diag-right(OX - 1, OY + 1, Coords, Nodes, Coords).B  test-diag-left(MV30, MV31, MV32, MV33, MV34), MV37 = head(MV36), MV36 = tail(MV32), MV35 = head(MV32), 
			not(test-nil(MV32)), not(test-nil(MV36)), A = host-id -o (MV30 = MV35, MV31 = MV37 -o 1), OR (RestCoords = tail(MV36), (MV30 != MV35) || (MV31 != MV37) -o test-diag-left(MV30 - 1, MV31 - 1, RestCoords, MV33, MV34)).�   test-diag-right(X, Y, MV16, Nodes, Coords), !coord(OX, OY), (X < 0) || (Y >= 10), test-nil(MV16), 
			A = host-id -o send-down(cons(host-id,Nodes), cons(OX,cons(OY,Coords))).D  test-diag-right(MV38, MV39, MV40, MV41, MV42), MV45 = head(MV44), MV44 = tail(MV40), MV43 = head(MV40), 
			not(test-nil(MV40)), not(test-nil(MV44)), A = host-id -o (MV38 = MV43, MV39 = MV45 -o 1), OR (RestCoords = tail(MV44), (MV38 != MV43) || (MV39 != MV45) -o test-diag-right(MV38 - 1, MV39 + 1, RestCoords, MV41, MV42)).e   send-down(Nodes, Coords), !coord(MV23, MV2), MV23 = 9, A = host-id -o 
			final-state(Nodes, Coords).�   send-down(Nodes, Coords), A = host-id -o {B | !down-right(B), 
			B != host-id | propagate-right(Nodes, Coords)@B}, {B | !down-left(B), 
			B != host-id | propagate-left(Nodes, Coords)@B}.           �                  _init                                                               set-priority                                                        setcolor                                                            setedgelabel                                                        write-string                                                        add-priority                                                         schedule-next                                                       setcolor2                                                            stop-program                                                        set-default-priority                                                 set-moving                                                           set-static                                                          set-affinity                                                        set-cpu                                                              remove-priority                                                      left                                                                 right                                                                down-right                                                           down-left                                                            coord                                                                propagate-left                                                       propagate-right                                                      test-and-send-down                                                    test-y                                                                test-diag-left                                                        test-diag-right                                                      send-down                                                            final-state                                                      ���������                                                                                                                                              J                   D   � 
   d      2  X  ~  �  �
  �    <  b  C   i  �  �  �    '  M  s  �  z   �  �  �  	  8  ^  �  �  �  �   �  �  #  I	  o  �  �  �    �     4  Z  �	  �  �  �    >    E  k  �  �	  �    )  O  u  V  |  �  �  �	    :  `  �  �  �  �  �  �  %
  K  q  �  �  �  �  �    6  \
  �  �  �  �    �  !  G  m  �
  �  �    +  Q  @p pw2                                  
       J  2                 
                        2          )              
              �  2          3                     (       �  2          =                     2       n  2          G              (       <       7  2          Q       )       2       F          2          [       3       <       P       �  2          P       =       F       Z       �  2       	   Z       G       P       Z       [  2                                      $  2                                      �  2         *                            �  2         4                     )         2         >                     3       H  2         H               )       =         2         R       *       3       G       �  2         \       4       =       Q       �  2         Q       >       G       [       l  2      	   [       H       Q       [       5  2                                      �  2         !                            �  2         +                             �  2         5                     *       Y  2         ?                      4       "  2         I       !       *       >       �  2         S       +       4       H       �  2         ]       5       >       R       }  2         R       ?       H       \       F  2      	   \       I       R       \         2                                      �  2         "                            �  2         ,                     !       j  2         6                     +       3  2         @              !       5       �  2         J       "       +       ?       �  2         T       ,       5       I       �  2         ^       6       ?       S       W  2         S       @       I       ]          2      	   ]       J       S       ]       �  2                                      �  2         #                            {  2         -                     "       D  2         7                     ,         2         A              "       6       �  2         K       #       ,       @       �  2         U       -       6       J       h  2         _       7       @       T       1  2         T       A       J       ^       �
  2      	   ^       K       T       ^       �
  2                                      �
  2         $                            U
  2         .                     #       
  2         8                     -       �	  2         B              #       7       �	  2         L       $       -       A       y	  2         V       .       7       K       B	  2         `       8       A       U       	  2         U       B       K       _       �  2      	   _       L       U       _       �  2                                      f  2         %                            /  2         /                     $       �  2         9                     .       �  2         C              $       8       �  2         M       %       .       B       S  2         W       /       8       L         2         a       9       B       V       �  2         V       C       L       `       �  2      	   `       M       V       `       w  2                                      @  2         &                            	  2         0                     %       �  2         :                     /       �  2         D              %       9       d  2         N       &       /       C       -  2         X       0       9       M       �  2         b       :       C       W       �  2         W       D       M       a       �  2      	   a       N       W       a       Q  2                                        2         '                            �  2         1       	              &       �  2         ;                     0       u  2         E              &       :       >  2         O       '       0       D         2         Y       1       :       N       �  2         c       ;       D       X       �  2         X       E       N       b       b  2      	   b       O       X       b       +  2   	       	       	       	              �  2   	                    	              �  2   	                           '       �  2   	      '       '              1       O  2   	      1       1       '       ;         2   	      ;       ;       1       E       �   2   	      E       E       ;       O       �   2   	      O       O       E       Y       s   2   	      Y       Y       O       c       <   2   	   	   c       c       Y       c          #         � �  0  '      �  �  �  �  �  �  �  �  �  �  y  p  T  K  B  9          �  �  �  �  �  �  �  �  x  o  f  ]  A  8  /  &  
    �  �  �  �  �  �  �  �  �  �  e  \  S  J  .  %      �  �  �  �  �  �  �  �  �  �  w  n  R  I  @  7      	     �  �  �  �  �  �  �  �  v  m  d  [  ?  6  -  $    �  �  �  �  �  �  �  �  �  �    c  Z  Q  H  ,  #      �  �  �  �  �  �  �  �  �  ~  u  l  P  G  >  5        �  �  �  �  �  �  �  �  �  t  k  b  Y  =  4  +  "    �  �  �  �  �  �  �  �  �  �  }  a  X  O  F  *  !      �  �  �  �  �  �  �  �  �  |  s  j  N  E  <  3        �  �  �  �  �  �  �  �  �  r  i  `  W  ;  2  )       �  �  �  �  �  �  �  �  �  �  {  _  V  M  D  (        �
  �
  �
  �
  �
  �
  �
  �
  �
  z
  q
  h
  L
  C
  :
  1
  
  
  
  �	  �	  �	  �	  �	  �	  �	  �	  �	  p	  g	  ^	  U	  9	  0	  '	  	  	  �  �  �  �  �  �  �  �  �  �  y  ]  T  K  B  &        �  �  �  �  �  �  �  �  �  x  o  f  J  A  8  /    
    �  �  �  �  �  �  �  �  �  n  e  \  S  7  .  %       �  �  �  �  �  �  �  �  �  �  w  [  R  I  @  $      	  �  �  �  �  �  �  �  �    v  m  d  H  ?  6  -      �  �  �  �  �  �  �  �  �  �  l  c  Z  Q  5  ,  #    �  �  �  �  �  �  �  �  �  �  ~  u  Y  P  G  >  "        �  �  �  �       o                  i    @%   % wA              ;    " 78`   @%   % " �� �         o                  i    @%   % wA              ;    " 78`   @%   % " �� �         N                  H               2    @! % %  % w� �         o                  i              Q    @"    :& "   :&% % % w� �         P                  J   Z S"  ;`	   � �"  <`   Y' { �         �                  �    "      >`   "     >`W              Q    @"    :& "   =&% % % w� �         �                  �   Z ST "  ;`   " ;`	   � �"  <`   " <`4   Y"     :&  "    :& ' { �         �                  �   "      >`   " 
   ?`M              G    @" 7_' " "_ " _ 'w� �         �   	               �   Z ST "  ;`   " ;`	   � �"  <`   " <`4   Y"     :&  "    =& ' { �         J   
               D               .    	   @%   % w� �         �                  �    A              ;    " 78`   @%   % " �A              ;    " 78`   @%   % " �� �         