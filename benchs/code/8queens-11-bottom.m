meld fil       y                                                                                                                                   	       	       
       
                                                                                                                                                                                                                                                                                                                             !       !       "       "       #       #       $       $       %       %       &       &       '       '       (       (       )       )       *       *       +       +       ,       ,       -       -       .       .       /       /       0       0       1       1       2       2       3       3       4       4       5       5       6       6       7       7       8       8       9       9       :       :       ;       ;       <       <       =       =       >       >       ?       ?       @       @       A       A       B       B       C       C       D       D       E       E       F       F       G       G       H       H       I       I       J       J       K       K       L       L       M       M       N       N       O       O       P       P       Q       Q       R       R       S       S       T       T       U       U       V       V       W       W       X       X       Y       Y       Z       Z       [       [       \       \       ]       ]       ^       ^       _       _       `       `       a       a       b       b       c       c       d       d       e       e       f       f       g       g       h       h       i       i       j       j       k       k       l       l       m       m       n       n       o       o       p       p       q       q       r       r       s       s       t       t       u       u       v       v       w       w       x       x        	                _init -o node-axioms.r   propagate-left(Coords) -o test-and-send-down(Coords), {L | !left(L), 
			L != host-id | propagate-left(Coords)@L}.u   propagate-right(Coords) -o test-and-send-down(Coords), {R | !right(R), 
			R != host-id | propagate-right(Coords)@R}.�    -o (test-and-send-down(Coords), !coord(X, Y), not(queens_violation(Y, Coords)) -o send-down(cons(Y,Coords))), OR (test-and-send-down(Coords), !coord(X, Y) -o 1).E   send-down(Coords), !coord(MV2, MV1), MV2 = 10 -o final-state(Coords).�   send-down(Coords) -o {B | !down-right(B), B != host-id | 
			propagate-right(Coords)@B}, {B | !down-left(B), B != host-id | 
			propagate-left(Coords)@B}.           �                   _init                                                                setcolor                                                             setedgelabel                                                         write-string                                                         setcolor2                                                             stop-program                                                         set-priority                                                         add-priority                                                          schedule-next                                                        set-default-priority                                                  set-moving                                                            set-static                                                           set-affinity                                                         set-cpu                                                               remove-priority                                                       left                                                                  right                                                                 down-right                                                            down-left                                                             coord                                                                propagate-left                                                       propagate-right                                                      test-and-send-down                                                   send-down                                                            final-state                                                      ��������   �!                   �!   � 
�!  y      L   �   �     X  �  �  !  d  �  �  -  p  �  �  9  |  �    E  �  �    Q  �  �    ]  �  �  &  i  �  �  2	  u	  �	  �	  >
  �
  �
    J  �  �    V  �  �    b  �  �  +  n  �  �  7  z  �     C  �  �    O  �  �    [  �  �  $  g  �  �  0  s  �  �  <    �    H  �  �    T  �  �    `  �  �  )  l  �  �  5  x  �  �  A  �  �  
  M  �  �    Y  �  �  "  e  �  �  .  q  .      �?�@p w2                                         m  .      �?�2                                       *  .      �?�2                                      �  .      �?�2                                      �  .      �?�2                                      a  .      �?�2                                        .      �?�2                                      �  .      �?�2                                      �  .      �?�2                               	       U  .      �?�2       	   	                     
         .      �?�2       
   
              	       
       �  .       @�2                                      �  .       @�2                                     I  .       @�2                                       .       @�2                                     �  .       @�2                                     �  .       @�2                                     =  .       @�2                                     �  .       @�2                                     �  .       @�2                                      t  .       @�2      	                               1  .       @�2      
                               �  .      @�2          #                            �  .      @�2         $                            h  .      @�2         %       !                     %  .      @�2         &       "                     �  .      @�2         '       #                     �  .      @�2         (       $                     \  .      @�2         )       %                       .      @�2         *       &                     �  .      @�2         +       '                     �  .      @�2      	          (                      P  .      @�2      
           )                        .      @�2          .       !       !       "       �  .      @�2         /       "       !       #       �  .      @�2         0       ,       "       $       D  .      @�2         1       -       #       %         .      @�2         2       .       $       &       �  .      @�2         3       /       %       '       {  .      @�2         4       0       &       (       8  .      @�2         5       1       '       )       �  .      @�2         6       2       (       *       �  .      @�2      	   *       3       )       +       o  .      @�2      
   +       4       *       +       ,  .      @�2          9       ,       ,       -       �  .      @�2         :       -       ,       .       �  .      @�2         ;       7       -       /       c  .      @�2         <       8       .       0          .      @�2         =       9       /       1       �  .      @�2         >       :       0       2       �  .      @�2         ?       ;       1       3       W  .      @�2         @       <       2       4         .      @�2         A       =       3       5       �  .      @�2      	   5       >       4       6       �  .      @�2      
   6       ?       5       6       K  .      @�2          D       7       7       8         .      @�2         E       8       7       9       �  .      @�2         F       B       8       :       �  .      @�2         G       C       9       ;       ?  .      @�2         H       D       :       <       �  .      @�2         I       E       ;       =       �  .      @�2         J       F       <       >       v  .      @�2         K       G       =       ?       3  .      @�2         L       H       >       @       �  .      @�2      	   @       I       ?       A       �  .      @�2      
   A       J       @       A       j  .      @�2          O       B       B       C       '  .      @�2         P       C       B       D       �  .      @�2         Q       M       C       E       �  .      @�2         R       N       D       F       ^  .      @�2         S       O       E       G         .      @�2         T       P       F       H       �  .      @�2         U       Q       G       I       �  .      @�2         V       R       H       J       R  .      @�2         W       S       I       K         .      @�2      	   K       T       J       L       �  .      @�2      
   L       U       K       L       �  .       @�2          Z       M       M       N       F  .       @�2         [       N       M       O         .       @�2         \       X       N       P       �
  .       @�2         ]       Y       O       Q       }
  .       @�2         ^       Z       P       R       :
  .       @�2         _       [       Q       S       �	  .       @�2         `       \       R       T       �	  .       @�2         a       ]       S       U       q	  .       @�2         b       ^       T       V       .	  .       @�2      	   V       _       U       W       �  .       @�2      
   W       `       V       W       �  .      "@�2          e       X       X       Y       e  .      "@�2         f       Y       X       Z       "  .      "@�2         g       c       Y       [       �  .      "@�2         h       d       Z       \       �  .      "@�2         i       e       [       ]       Y  .      "@�2         j       f       \       ^         .      "@�2         k       g       ]       _       �  .      "@�2         l       h       ^       `       �  .      "@�2         m       i       _       a       M  .      "@�2      	   a       j       `       b       
  .      "@�2      
   b       k       a       b       �  .      $@�2   	       p       c       c       d       �  .      $@�2   	      q       d       c       e       A  .      $@�2   	      r       n       d       f       �  .      $@�2   	      s       o       e       g       �  .      $@�2   	      t       p       f       h       x  .      $@�2   	      u       q       g       i       5  .      $@�2   	      v       r       h       j       �  .      $@�2   	      w       s       i       k       �  .      $@�2   	      x       t       j       l       l  .      $@�2   	   	   l       u       k       m       )  .      $@�2   	   
   m       v       l       m       �  .      &@�2   
       n       n       n       o       �  .      &@�2   
      o       o       n       p       `  .      &@�2   
      p       p       o       q         .      &@�2   
      q       q       p       r       �  .      &@�2   
      r       r       q       s       �  .      &@�2   
      s       s       r       t       T  .      &@�2   
      t       t       s       u         .      &@�2   
      u       u       t       v       �   .      &@�2   
      v       v       u       w       �   .      &@�2   
   	   w       w       v       x       H   .      &@�2   
   
   x       x       w       x          #         � �  �!  �!  �!  �!  m!  d!  [!  R!  *!  !!  !  !  �   �   �   �   �   �   �   �   a   X   O   F               �  �  �  �  �  �  �  }  U  L  C  :    	     �  �  �  �  �  �  �  z  q  I  @  7  .    �  �  �  �  �  �  �  �  w  n  e  =  4  +  "  �  �  �  �  �  �  �  �  t  k  b  Y  1  (      �  �  �  �  �  �  �  �  h  _  V  M  %      
  �  �  �  �  �  �  �  �  \  S  J  A        �  �  �  �  �  �  �  �  x  P  G  >  5      �  �  �  �  �  �  �  ~  u  l  D  ;  2  )    �  �  �  �  �  �  �  {  r  i  `  8  /  &    �  �  �  �  �  �  �  �  o  f  ]  T  ,  #      �  �  �  �  �  �  �  �  c  Z  Q  H           �  �  �  �  �  �  �    W  N  E  <        �  �  �  �  �  �  �  |  s  K  B  9  0    �  �  �  �  �  �  �  �  y  p  g  ?  6  -  $  �  �  �  �  �  �  �  �  v  m  d  [  3  *  !    �  �  �  �  �  �  �  �  j  a  X  O  '        �  �  �  �  �  �  �  �  ^  U  L  C      	     �  �  �  �  �  �  �  z  R  I  @  7      �  �  �  �  �  �  �  �  w  n  F  =  4  +    �  �  �  �  �  �  �  }  t  k  b  :  1  (    �  �  �  �  �  �  �  �  q  h  _  V  .  %      �
  �
  �
  �
  �
  �
  �
  �
  e
  \
  S
  J
  "
  
  
  
  �	  �	  �	  �	  �	  �	  �	  �	  Y	  P	  G	  >	  	  	  	  �  �  �  �  �  �  �  ~  u  M  D  ;  2  
    �  �  �  �  �  �  �  {  r  i  A  8  /  &  �  �  �  �  �  �  �  �  x  o  f  ]  5  ,  #    �  �  �  �  �  �  �  �  l  c  Z  Q  )         �  �  �  �  �  �  �  �  `  W  N  E          �  �  �  �  �  �  �  |  T  K  B  9      �  �  �  �  �  �  �  �  y  p  H  ?  6  -      e                  _    <              6    " 78`   @%   " �@%   w� �        e                  _    <              6    " 78`   @%   " �@%   w� �        �                  R               <    ""  j5`   @g   w� �            /                   � �        E                  ?               )    
   @%   w� �        �                  �    <              6    " 78`   @%   " �<              6    " 78`   @%   " �� �        