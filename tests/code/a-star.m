meld fil                                                                                         
                                                 	              
                                                                             	                                                                                                                                     	                init -o axioms;   !new-distance(X1, P1), new-distance(X2, P2), X1 <= X2 -o 1.�    -o (new-distance(X1, P1), distance(X2, P2), X1 < X2 -o new-distance(X1, P1)), OR (new-distance(X1, P1), distance(X2, P2), X1 >= X2 -o distance(X2, P2)).    -o (new-distance(T, P), !coord(MV136, MV137), MV136 = 99, MV137 = 99 -o 
			stop-program(), distance(T, P)), OR (new-distance(D, P), !coord(X, Y) -o distance(X, P), {B, W | 
			!edge(B, W) | new-distance(D + W, cons(B,P))@B, set-priority(float(abs((99 - X))) + float(abs((99 - Y))))@B}).           �       +       ? �      5  �       : 5 2!              _init                                                               set-priority                                                        setcolor                                                            setedgelabel                                                        write-string                                                        add-priority                                                         schedule-next                                                       setcolor2                                                            stop-program                                                        set-default-priority                                                 set-moving                                                           set-static                                                          set-affinity                                                        set-cpu                                                              edge                                                                 coord                                                                new-distance                                                         distance                                                                �                                                                                            �                   �   � 
w        �   M     �   q  �  B  �  �  
  �  �  �    7  9  ;  0  �  �  j  �  �  �  @     $,        bw(                               �  5                                         �  5                                         O  B                                                   5                                        �  B                                                 �  5                              
          M  B                                                   (                              �  5   
                                    �  5                    	                    e  B                                                   B                                                 �  B                                                 �  5                                       V  5                                          B             	                                    �  B                                                 �  B                                                 G  5                                         (   	                           �   5                                       �   5                                       l   5                                       2   (                                #         � Q   z  m  V  @  3      �  �  �  �  �  �  {  e  X  A  4      �  �  �  �  �  �  �  �  l  _  I  2      �  �  �  �  �  �  �  �  j  ]  G  :  #       �  �  �  �  �  �  u  _  R  ;  .      �  �  �  �  �  �  �  s  ]  P  9  ,    �   �   �   �   �   �        G                  A               +    "  " B`	   ��         �                  C               -    "  " >`   { ��            C               -    "  " ?`   {� �                          K            !   5    c   c   �@!   % w� �            �               �    @!  % w�              �    @"  "=& " ! b" c   " : 3! 4 	c   ": 3! 4 	F" �� �         