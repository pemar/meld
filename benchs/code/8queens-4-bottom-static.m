meld fil                                                                                                                                          	       	       
       
                                                                              	                _init -o node-axioms.r   propagate-left(Coords) -o test-and-send-down(Coords), {L | !left(L), 
			L != host-id | propagate-left(Coords)@L}.u   propagate-right(Coords) -o test-and-send-down(Coords), {R | !right(R), 
			R != host-id | propagate-right(Coords)@R}.�    -o (test-and-send-down(Coords), !coord(X, Y), not(queens_violation(Y, Coords)) -o send-down(cons(Y,Coords))), OR (test-and-send-down(Coords), !coord(X, Y) -o 1).D   send-down(Coords), !coord(MV2, MV1), MV2 = 3 -o final-state(Coords).�   send-down(Coords) -o {B | !down-right(B), B != host-id | 
			propagate-right(Coords)@B}, {B | !down-left(B), B != host-id | 
			propagate-left(Coords)@B}.           �                   _init                                                                setcolor                                                             setedgelabel                                                         write-string                                                         setcolor2                                                             stop-program                                                         set-priority                                                         add-priority                                                          schedule-next                                                        set-default-priority                                                  set-moving                                                            set-static                                                           set-affinity                                                         set-cpu                                                               remove-priority                                                       left                                                                  right                                                                 down-right                                                            down-left                                                             coord                                                                propagate-left                                                       propagate-right                                                      test-and-send-down                                                   send-down                                                            final-state                                                      ��������   �                   �   � 
�        o   �   ;  �    m  �  9  �    k  �  7  �                   ,�.      �?�@p w2                                         �                ,�.      �?�2                                       �                ,�.      �?�2                                      3                ,�.      �?�2                                      �                ,�.       @�2          
                            g               ,�.       @�2                                                    ,�.       @�2                                     �               ,�.       @�2                	                     5                ,�.      @�2                               	       �               ,�.      @�2                	              
       i               ,�.      @�2         
              	                             ,�.      @�2                       
              �                ,�.      @�2                                      7               ,�.      @�2                                     �                ,�.      @�2                                     k                ,�.      @�2                                        #         � @   �  �  �  �  [  R  I  @  �  �  �  �  �  �  }  t  )         �  �  �  �  ]  T  K  B  �  �  �  �  �  �    v  +  "      �  �  �  �  _  V  M  D  �  �  �  �  �  �  �  x  -  $      �   �   �   �       e                  _    <              6    " 78`   @%   " �@%   w� �        e                  _    <              6    " 78`   @%   " �@%   w� �        �                  R               <    ""  j5`   @g   w� �            /                   � �        E                  ?               )       @%   w� �        �                  �    <              6    " 78`   @%   " �<              6    " 78`   @%   " �� �        