meld fil                                                                                         
                                                 	              
                                                                             	                                                                                                                                      	                _init -o node-axioms.;   !new-distance(X1, P1), new-distance(X2, P2), X1 <= X2 -o 1.�    -o (new-distance(X1, P1), distance(X2, P2), X1 < X2 -o new-distance(X1, P1)), OR (new-distance(X1, P1), distance(X2, P2), X1 >= X2 -o distance(X2, P2)).   -o (new-distance(T, P), !coord(MV1, MV2), MV1 = 99, MV2 = 99 -o 
			stop-program(), distance(T, P)), OR (new-distance(D, P), !coord(X, Y) -o distance(X, P), {B, W | 
			!edge(B, W) | new-distance(D + W, cons(B,P))@B, set-priority(float(abs((99 - X))) + float(abs((99 - Y))))@B}).           �       +       ? �      5  �       : 5 2!                _init                                                                 setcolor                                                               setedgelabel                                                          write-string                                                          setcolor2                                                              stop-program                                                          set-priority                                                          add-priority                                                           schedule-next                                                         set-default-priority                                                   set-moving                                                             set-static                                                             set-affinity                                                          set-cpu                                                                remove-priority                                                         edge                                                                   coord                                                                 new-distance                                                          distance                                                        �������   �                   �   � 
u        �   K     �   o  �  @  �  �    �  �  �    5  7  9  .  ~  �  h  �  �  �  @     $6        dw(                               �  5                                         �  5                                         O  B                                                   5                                        �  B                                                 �  5                              
          M  B                                                   (                              �  5   
                                    �  5                    	                    e  B                                                   B                                                 �  B                                                 �  5                                       V  5                                          B             	                                    �  B                                                 �  B                                                 G  5                                         (   	                           �   5                                       �   5                                       l   5                                       2   (                                #         � Q   x  k  T  >  1      �  �  �  �  �  �  y  c  V  ?  2      �  �  �  �  �  �  �  �  j  ]  G  0      �  �  �  �  �  �  �    h  [  E  8  !    �  �  �  �  �  �  �  s  ]  P  9  ,    �  �  �  �  �  �  �  ~  q  [  N  7  *    �   �   �   �   �   �       G                  A               +    "  " B`	   ��        �                  C               -    "  " >`   { ��            C               -    "  " ?`   {� �                         K            !   5    c   c   �@!   % w� �            �               �    �                  @"  "=& g  " c   " : 3! 4 	c   ": 3! 4 	F" �@!  % w� �        