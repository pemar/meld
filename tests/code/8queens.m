meld fil       @                          ?              >              9              =              8              <              ;              :       	       7       
       6              1              5              0              4              3              2              /              .              )              -              (              ,              +              *              '              &              !              %                             $              #               "       !              "              #              $              %              &              '              (              )              *              +              ,              -              .              /              0              1              2              3              4              5              6              7       	       8              9              :              ;              <              =              >              ?       
        	                init -o axioms�   propagate-left(Nodes, Coords) -o test-and-send-down(Nodes, Coords), {L | !left(L), 
			L != host-id | propagate-left(Nodes, Coords)@L}.�   propagate-right(Nodes, Coords) -o test-and-send-down(Nodes, Coords), {R | !right(R), 
			R != host-id | propagate-right(Nodes, Coords)@R}.T   test-and-send-down(Nodes, Coords), !coord(X, Y) -o test-y(Y, Coords, Nodes, Coords).x   test-y(Y, MV93, Nodes, Coords), !coord(OX, OY), test-nil(MV93) -o test-diag-left(OX - 1, OY - 1, Coords, Nodes, Coords).�   test-y(MV114, MV115, MV116, MV117), MV119 = head(MV118), MV118 = tail(MV115), not(test-nil(MV115)), 
			not(test-nil(MV118)) -o (MV114 = MV119 -o 1), OR (RestCoords = tail(MV118), MV114 != MV119 -o test-y(MV114, RestCoords, MV116, MV117)).�   test-diag-left(X, Y, MV91, Nodes, Coords), !coord(OX, OY), (X < 0) || (Y < 0) -o test-diag-right(OX - 1, OY + 1, Coords, Nodes, Coords).O  test-diag-left(MV120, MV121, MV122, MV123, MV124), MV127 = head(MV126), MV126 = tail(MV122), MV125 = head(MV122), 
			not(test-nil(MV122)), not(test-nil(MV126)) -o (MV120 = MV125, MV121 = MV127 -o 1), OR (RestCoords = tail(MV126), (MV120 != MV125) || (MV121 != MV127) -o test-diag-left(MV120 - 1, MV121 - 1, RestCoords, MV123, MV124)).�   test-diag-right(X, Y, MV106, Nodes, Coords), !coord(OX, OY), (X < 0) || (Y >= 8), test-nil(MV106) -o 
			send-down(cons(host-id,Nodes), cons(OX,cons(OY,Coords))).Q  test-diag-right(MV128, MV129, MV130, MV131, MV132), MV135 = head(MV134), MV134 = tail(MV130), MV133 = head(MV130), 
			not(test-nil(MV130)), not(test-nil(MV134)) -o (MV128 = MV133, MV129 = MV135 -o 1), OR (RestCoords = tail(MV134), (MV128 != MV133) || (MV129 != MV135) -o test-diag-right(MV128 - 1, MV129 + 1, RestCoords, MV131, MV132)).W   send-down(Nodes, Coords), !coord(MV113, MV92), MV113 = 7 -o final-state(Nodes, Coords).�   send-down(Nodes, Coords) -o {B | !down-right(B), B != host-id | 
			propagate-right(Nodes, Coords)@B}, {B | !down-left(B), B != host-id | 
			propagate-left(Nodes, Coords)@B}.           �                  _init                                                               set-priority                                                        setcolor                                                            setedgelabel                                                        write-string                                                        add-priority                                                         schedule-next                                                       setcolor2                                                            stop-program                                                        set-default-priority                                                 set-moving                                                           set-static                                                          set-affinity                                                        set-cpu                                                              left                                                                 right                                                                down-right                                                           down-left                                                            coord                                                                propagate-left                                                       propagate-right                                                      test-and-send-down                                                    test-y                                                                test-diag-left                                                        test-diag-right                                                      send-down                                                            final-state                                                              �                                                                                                                                         �                   �   � 
�  @      �  ^  K  '    �  �  �  �  �  �
  o  \
  8    �
  %
  �	  �  �	  �  �	  I	  	  m  6  #  �  �  �  �  Z  �  ~  k  G  4    �  �  �  �  �  �  |  X  !  �  �  V  E      �   �  �  �   �  �  z   i  C   2  @p pw2           ?                       >       �  2          =       >               <       W  2          ;       :       >       9          2          8       7       <       6       �  2          5       ?       9       4       �  2          3       =       6       2       {  2          2       ;       4       1       D  2          1       8       2       1         2          0       :       :       7       �  2         /       7       :       ?       �  2         .       -       7       =       h  2         ,       +       ?       ;       1  2         *       0       =       8       �
  2         )       /       ;       5       �
  2         5       .       8       3       �
  2         3       ,       5       3       U
  2          (       -       -       +       
  2         '       +       -       0       �	  2         &       %       +       /       �	  2         $       #       0       .       y	  2         "       (       /       ,       B	  2         !       '       .       *       	  2         *       &       ,       )       �  2         )       $       *       )       �  2                  %       %       #       f  2                #       %       (       /  2                       #       '       �  2                       (       &       �  2                        '       $       �  2                       &       "       S  2         "              $       !         2         !              "       !       �  2                                      �  2                                      w  2                                     @  2                                      	  2                                     �  2                                     �  2                                     d  2                                     -  2                                      �  2                                     �  2                                     �  2                                     Q  2         
                              2         	                            �  2                                     �  2                                     u  2                                      >  2                                       2                                     �  2                                     �  2                                     b  2                              
       +  2         
                     	       �  2         	              
       	       �  2                                      �  2                                     O  2                                       2                                     �   2                                     �   2                                     s   2                                     <   2                                        #         �    �  �  �  �  �  �  �  �  v  m  d  [  ?  6  -  $    �  �  �  �  �  �  �  �  �  �    c  Z  Q  H  ,  #      �  �  �  �  �  �  �  �  �  ~  u  l  P  G  >  5        �  �  �  �  �  �  �  �  �  t  k  b  Y  =  4  +  "    �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  }
  a
  X
  O
  F
  *
  !
  
  
  �	  �	  �	  �	  �	  �	  �	  �	  �	  |	  s	  j	  N	  E	  <	  3	  	  	  	  �  �  �  �  �  �  �  �  �  r  i  `  W  ;  2  )       �  �  �  �  �  �  �  �  �  �  {  _  V  M  D  (        �  �  �  �  �  �  �  �  �  z  q  h  L  C  :  1        �  �  �  �  �  �  �  �  �  p  g  ^  U  9  0  '      �  �  �  �  �  �  �  �  �  �  y  ]  T  K  B  &        �  �  �  �  �  �  �  �  �  x  o  f  J  A  8  /    
    �  �  �  �  �  �  �  �  �  n  e  \  S  7  .  %       �  �  �  �  �  �  �  �  �  �  w  [  R  I  @       o                  i    @%   % wA              ;    " 78`   @%   % " �� �         o                  i    @%   % wA              ;    " 78`   @%   % " �� �         N                  H               2    @! % %  % w� �         o                  i              Q    @"    :& "   :&% % % w� �         P                  J   Z S"  ;`	   � �"  <`   Y' { �         �                  �    "      >"     >A`W              Q    @"    :& "   =&% % % w� �         �                  �   Z ST "  ;`   " ;`	   � �"  <" <A`4   Y"     :&  "    :& ' { �         �                  �   "      >"    ?A`I              C    @" ( b  " "_ ! bw� �         �   	               �   Z ST "  ;`   " ;`	   � �"  <" <A`4   Y"     :&  "    =& ' { �         J   
               D               .       @%   % w� �         �                  �    A              ;    " 78`   @%   % " �A              ;    " 78`   @%   % " �� �         