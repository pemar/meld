meld fil       Q                                                                                         	       	                                   
       
                                                                                                                                                                                                                                                                                                                                           !       !       "       "       #       #       &       &       '       '       (       (       $       $       )       )       %       %       *       *       +       +       ,       ,       /       /       0       0       1       1       -       -       2       2       .       .       3       3       4       4       5       5       8       8       9       9       :       :       6       6       ;       ;       7       7       <       <       =       =       >       >       A       A       B       B       C       C       ?       ?       D       D       @       @       E       E       F       F       G       G       J       J       K       K       L       L       H       H       M       M       I       I       N       N       O       O       P       P        	                _init -o node-axioms.r   propagate-left(Coords) -o test-and-send-down(Coords), {L | !left(L), 
			L != host-id | propagate-left(Coords)@L}.u   propagate-right(Coords) -o test-and-send-down(Coords), {R | !right(R), 
			R != host-id | propagate-right(Coords)@R}.�    -o (test-and-send-down(Coords), !coord(X, Y), not(queens_violation(Y, Coords)) -o send-down(cons(Y,Coords))), OR (test-and-send-down(Coords), !coord(X, Y) -o 1).D   send-down(Coords), !coord(MV2, MV1), MV2 = 8 -o final-state(Coords).�   send-down(Coords) -o {B | !down-right(B), B != host-id | 
			propagate-right(Coords)@B}, {B | !down-left(B), B != host-id | 
			propagate-left(Coords)@B}.           �                   _init                                                                setcolor                                                             setedgelabel                                                         write-string                                                         setcolor2                                                             stop-program                                                         set-priority                                                         add-priority                                                          schedule-next                                                        set-default-priority                                                  set-moving                                                            set-static                                                           set-affinity                                                         set-cpu                                                               remove-priority                                                       left                                                                  right                                                                 down-right                                                            down-left                                                             coord                                                                propagate-left                                                       propagate-right                                                      test-and-send-down                                                   send-down                                                            final-state                                                      ��������   �                   �   � 
�  Q      L   �   �     X  �  �  !  d  �  �  -  p  �  �  9  |  �    E  �  �    Q  �  �    ]  �  �  &  i  �  �  2	  u	  �	  �	  >
  �
  �
    J  �  �    V  �  �    b  �  �  +  n  �  �  7  z  �     C  �  �    O  �  �    [  �  �  $  g  �  �  0  s  �  �  .      "@�@p w2                                         �  .      "@�2                                       �  .      "@�2                 	                     o  .      "@�2                 
                     ,  .      "@�2                                      �  .      "@�2                                      �  .      "@�2                                      c  .      "@�2                                         .      "@�2                                      �  .       @�2                 	       	       
       �  .       @�2                
       	              W  .       @�2                       
                .       @�2                                     �  .       @�2                                     �  .       @�2                                     K  .       @�2                                       .       @�2                                     �  .       @�2                                     �  .      @�2                                      ?  .      @�2                                     �  .      @�2                                     �  .      @�2                                      v  .      @�2         !                            3  .      @�2         "                            �  .      @�2         #                            �  .      @�2                                      j  .      @�2                !                     '  .      @�2          &                            �  .      @�2         '                            �  .      @�2         (       $                     ^  .      @�2         )       %                       .      @�2         *       &                      �  .      @�2         +       '              !       �  .      @�2         ,       (               "       R  .      @�2         "       )       !       #         .      @�2         #       *       "       #       �  .      @�2          /       $       $       %       �  .      @�2         0       %       $       &       F  .      @�2         1       -       %       '         .      @�2         2       .       &       (       �
  .      @�2         3       /       '       )       }
  .      @�2         4       0       (       *       :
  .      @�2         5       1       )       +       �	  .      @�2         +       2       *       ,       �	  .      @�2         ,       3       +       ,       q	  .      @�2          8       -       -       .       .	  .      @�2         9       .       -       /       �  .      @�2         :       6       .       0       �  .      @�2         ;       7       /       1       e  .      @�2         <       8       0       2       "  .      @�2         =       9       1       3       �  .      @�2         >       :       2       4       �  .      @�2         4       ;       3       5       Y  .      @�2         5       <       4       5         .      @�2          A       6       6       7       �  .      @�2         B       7       6       8       �  .      @�2         C       ?       7       9       M  .      @�2         D       @       8       :       
  .      @�2         E       A       9       ;       �  .      @�2         F       B       :       <       �  .      @�2         G       C       ;       =       A  .      @�2         =       D       <       >       �  .      @�2         >       E       =       >       �  .       @�2          J       ?       ?       @       x  .       @�2         K       @       ?       A       5  .       @�2         L       H       @       B       �  .       @�2         M       I       A       C       �  .       @�2         N       J       B       D       l  .       @�2         O       K       C       E       )  .       @�2         P       L       D       F       �  .       @�2         F       M       E       G       �  .       @�2         G       N       F       G       `  .      �?�2          H       H       H       I         .      �?�2         I       I       H       J       �  .      �?�2         J       J       I       K       �  .      �?�2         K       K       J       L       T  .      �?�2         L       L       K       M         .      �?�2         M       M       L       N       �   .      �?�2         N       N       M       O       �   .      �?�2         O       O       N       P       H   .      �?�2         P       P       O       P          #         � D  �  �  �  }  U  L  C  :    	     �  �  �  �  �  �  �  z  q  I  @  7  .    �  �  �  �  �  �  �  �  w  n  e  =  4  +  "  �  �  �  �  �  �  �  �  t  k  b  Y  1  (      �  �  �  �  �  �  �  �  h  _  V  M  %      
  �  �  �  �  �  �  �  �  \  S  J  A        �  �  �  �  �  �  �  �  x  P  G  >  5      �  �  �  �  �  �  �  ~  u  l  D  ;  2  )    �  �  �  �  �  �  �  {  r  i  `  8  /  &    �  �  �  �  �  �  �  �  o  f  ]  T  ,  #      �  �  �  �  �  �  �  �  c  Z  Q  H           �  �  �  �  �  �  �    W  N  E  <        �
  �
  �
  �
  �
  �
  �
  |
  s
  K
  B
  9
  0
  
  �	  �	  �	  �	  �	  �	  �	  �	  y	  p	  g	  ?	  6	  -	  $	  �  �  �  �  �  �  �  �  v  m  d  [  3  *  !    �  �  �  �  �  �  �  �  j  a  X  O  '        �  �  �  �  �  �  �  �  ^  U  L  C      	     �  �  �  �  �  �  �  z  R  I  @  7      �  �  �  �  �  �  �  �  w  n  F  =  4  +    �  �  �  �  �  �  �  }  t  k  b  :  1  (    �  �  �  �  �  �  �  �  q  h  _  V  .  %      �  �  �  �  �  �  �  �      e                  _    <              6    " 78`   @%   " �@%   w� �        e                  _    <              6    " 78`   @%   " �@%   w� �        �                  R               <    ""  j5`   @g   w� �            /                   � �        E                  ?               )       @%   w� �        �                  �    <              6    " 78`   @%   " �<              6    " 78`   @%   " �� �        