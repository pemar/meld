meld fil       y                                                                                                                                   	              
                                                                                                                                                   	              
                                                                                                                                                                   !       #       "       $       #       %       $       !       %       &       &       "       '       '       (       (       )       )       *       *       +       +       ,       .       -       /       .       0       /       ,       0       1       1       -       2       2       3       3       4       4       5       5       6       6       7       9       8       :       9       ;       :       7       ;       <       <       8       =       =       >       >       ?       ?       @       @       A       A       B       D       C       E       D       F       E       B       F       G       G       C       H       H       I       I       J       J       K       K       L       L       M       O       N       P       O       Q       P       M       Q       R       R       N       S       S       T       T       U       U       V       V       W       W       X       Z       Y       [       Z       \       [       X       \       ]       ]       Y       ^       ^       _       _       `       `       a       a       b       b       c       e       d       f       e       g       f       c       g       h       h       d       i       i       j       j       k       k       l       l       m       m       n       p       o       q       p       r       q       n       r       s       s       o       t       t       u       u       v       v       w       w       x       x        	                init -o axioms�   propagate-left(Nodes, Coords) -o test-and-send-down(Nodes, Coords), {L | !left(L), 
			L != host-id | propagate-left(Nodes, Coords)@L}.�   propagate-right(Nodes, Coords) -o test-and-send-down(Nodes, Coords), {R | !right(R), 
			R != host-id | propagate-right(Nodes, Coords)@R}.T   test-and-send-down(Nodes, Coords), !coord(X, Y) -o test-y(Y, Coords, Nodes, Coords).x   test-y(Y, MV26, Nodes, Coords), !coord(OX, OY), test-nil(MV26) -o test-diag-left(OX - 1, OY - 1, Coords, Nodes, Coords).~   test-y(Y, MV27, Nodes, Coords), MV28 = tail(MV27), Y1 = head(MV28), Y = Y1, 
			not(test-nil(MV27)), not(test-nil(MV28)) -o 1.�   test-y(Y, MV30, Nodes, Coords), MV31 = tail(MV30), Y1 = head(MV31), RestCoords = tail(MV31), 
			Y != Y1, not(test-nil(MV30)), not(test-nil(MV31)) -o test-y(Y, RestCoords, Nodes, Coords).�   test-diag-left(X, Y, MV24, Nodes, Coords), !coord(OX, OY), (X < 0) || (Y < 0) -o test-diag-right(OX - 1, OY + 1, Coords, Nodes, Coords).�   test-diag-left(X, Y, MV33, Nodes, Coords), X1 = head(MV33), MV34 = tail(MV33), Y1 = head(MV34), 
			X = X1, Y = Y1, not(test-nil(MV33)), not(test-nil(MV34)) -o 1.�   test-diag-left(X, Y, MV36, Nodes, Coords), X1 = head(MV36), MV37 = tail(MV36), Y1 = head(MV37), 
			RestCoords = tail(MV37), (X != X1) || (Y != Y1), not(test-nil(MV36)), not(test-nil(MV37)) -o test-diag-left(X - 1, Y - 1, RestCoords, Nodes, Coords).�   test-diag-right(X, Y, MV39, Nodes, Coords), !coord(OX, OY), (X < 0) || (Y >= 11), test-nil(MV39) -o 
			send-down(cons(host-id,Nodes), cons(OX,cons(OY,Coords))).�   test-diag-right(X, Y, MV40, Nodes, Coords), X1 = head(MV40), MV41 = tail(MV40), Y1 = head(MV41), 
			X = X1, Y = Y1, not(test-nil(MV40)), not(test-nil(MV41)) -o 1.�   test-diag-right(X, Y, MV43, Nodes, Coords), X1 = head(MV43), MV44 = tail(MV43), Y1 = head(MV44), 
			RestCoords = tail(MV44), (X != X1) || (Y != Y1), not(test-nil(MV43)), not(test-nil(MV44)) -o test-diag-right(X - 1, Y + 1, RestCoords, Nodes, Coords).V   send-down(Nodes, Coords), !coord(MV46, MV25), MV46 = 10 -o final-state(Nodes, Coords).�   send-down(Nodes, Coords) -o {B | !down-right(B), B != host-id | 
			propagate-right(Nodes, Coords)@B}, {B | !down-left(B), B != host-id | 
			propagate-left(Nodes, Coords)@B}.           �                  _init                                                               set-priority                                                        setcolor                                                            setedgelabel                                                        write-string                                                        add-priority                                                         schedule-next                                                       setColor2                                                            left                                                                 right                                                                down-right                                                           down-left                                                            coord                                                                propagate-left                                                       propagate-right                                                      test-and-send-down                                                    test-y                                                                test-diag-left                                                        test-diag-right                                                      send-down                                                            final-state                                                              �                                                                                                           8      �          
    2   � 
�  y   �  �  �  �  [  �  l  $  Y  5  �  "  �  �    �  H  }    F  �  �  �  j  3    �  �  �  �  W     �  D    �  �  �  {  h  1  �  �  �  �  �  y  U  B      �  �  f  /  �  S    �  �  �  �  w  @  	  �  -  �
  �
  �  �
  d  Q
  
  �	  �	  u	  �  �  b  >	  +  	  �  �  �  O    s  <    �  �  �  �  `  )  �  �    �  �  �  q  M  :    �  �  ^  �  �  K  '    �  �   �   o   8      2   	x       w       x       
x       
   
   �  2   	x       v       w       
w       
   	   �  2   	w       u       v       
v       
      _  2   	v       t       u       
u       
      (  2   	u       r       t       
t       
      �  2   	t       p       r       
r       
      �  2   	r       o       p       
p       
      �  2   	p       n       o       
o       
      L  2   	o       s       n       
n       
        2   	n       q       s       
s       
      �  2   	s       q       q       
q       
       �  2   	m       l       v       
m       	   
   p  2   	m       k       u       
l       	   	   9  2   	l       j       t       
x       	        2   	k       i       r       
w       	      �  2   	j       g       p       
v       	      �  2   	i       e       o       
u       	      ]  2   	g       d       n       
t       	      &  2   	e       c       s       
r       	      �  2   	d       h       q       
p       	      �  2   	c       f       h       
o       	      �  2   	h       f       f       
n       	       J  2   	b       a       k       
b          
     2   	b       `       j       
a          	   �  2   	a       _       i       
m             �  2   	`       ^       g       
l             n  2   	_       \       e       
k             7  2   	^       Z       d       
j                2   	\       Y       c       
i             �  2   	Z       X       h       
g             �  2   	Y       ]       f       
e             [  2   	X       [       ]       
d             $  2   	]       [       [       
c              �  2   	W       V       `       
W          
   �  2   	W       U       _       
V          	     2   	V       T       ^       
b             H  2   	U       S       \       
a               2   	T       Q       Z       
`             �  2   	S       O       Y       
_             �  2   	Q       N       X       
^             l  2   	O       M       ]       
\             5  2   	N       R       [       
Z             �  2   	M       P       R       
Y             �  2   	R       P       P       
X              �  2   	L       K       U       
L          
   Y  2   	L       J       T       
K          	   "  2   	K       I       S       
W             �  2   	J       H       Q       
V             �  2   	I       F       O       
U             }  2   	H       D       N       
T             F  2   	F       C       M       
S               2   	D       B       R       
Q             �  2   	C       G       P       
O             �  2   	B       E       G       
N             j  2   	G       E       E       
M              3  2   	A       @       J       
A          
   �  2   	A       ?       I       
@          	   �  2   	@       >       H       
L             �  2   	?       =       F       
K             W  2   	>       ;       D       
J                2   	=       9       C       
I             �  2   	;       8       B       
H             �  2   	9       7       G       
F             {  2   	8       <       E       
D             D  2   	7       :       <       
C               2   	<       :       :       
B              �  2   	6       5       ?       
6          
   �  2   	6       4       >       
5          	   h  2   	5       3       =       
A             1  2   	4       2       ;       
@             �
  2   	3       0       9       
?             �
  2   	2       .       8       
>             �
  2   	0       -       7       
=             U
  2   	.       ,       <       
;             
  2   	-       1       :       
9             �	  2   	,       /       1       
8             �	  2   	1       /       /       
7              y	  2   	+       *       4       
+          
   B	  2   	+       )       3       
*          	   	  2   	*       (       2       
6             �  2   	)       '       0       
5             �  2   	(       %       .       
4             f  2   	'       #       -       
3             /  2   	%       "       ,       
2             �  2   	#       !       1       
0             �  2   	"       &       /       
.             �  2   	!       $       &       
-             S  2   	&       $       $       
,                2   	               )       
           
   �  2   	               (       
          	   �  2   	              '       
+             w  2   	              %       
*             @  2   	              #       
)             	  2   	              "       
(             �  2   	              !       
'             �  2   	              &       
%             d  2   	              $       
#             -  2   	                     
"             �  2   	                     
!              �  2   	                     
          
   �  2   	                     
          	   Q  2   	                     
                2   	                     
             �  2   	                     
             �  2   	                     
             u  2   	                     
             >  2   	                     
               2   	       	              
             �  2   	              	       
             �  2   		                     
              b  2   	                     
           
   +  2   	                     
           	   �  2   	                     
              �  2   	                     
              �  2   	                     
              O  2   	       
              
                2   	                     
              �   2   	
              	       
              �   2   	                     
              s   2   	                      
              <   2   	                       
                  7 6        9 `   @ p  p w #         � �    �  �  �  �  �  �  �  �  �  }  t  k  O  F  =  4        �  �  �  �  �  �  �  �  �  s  j  a  X  <  3  *  !    �  �  �  �  �  �  �  �  �  �  |  `  W  N  E  )         �  �  �  �  �  �  �  �  �  {  r  i  M  D  ;  2        �  �  �  �  �  �  �  �  �  q  h  _  V  :  1  (      �  �  �  �  �  �  �  �  �  �  z  ^  U  L  C  '        �  �  �  �  �  �  �  �  �  y  p  g  K  B  9  0        �  �  �  �  �  �  �  �  �  o  f  ]  T  8  /  &      �  �  �  �  �  �  �  �  �  �  x  \  S  J  A  %      
  �  �  �  �  �  �  �  �  �  w  n  e  I  @  7  .    	     �  �  �  �  �  �  �  �  �  m  d  [  R  6  -  $    �  �  �  �  �  �  �  �  �  �    v  Z  Q  H  ?  #        �  �  �  �  �  �  �  �  ~  u  l  c  G  >  5  ,      �  �  �  �  �  �  �  �  �  �  k  b  Y  P  4  +  "    �  �  �  �  �  �  �  �  �  �  }  t  X  O  F  =  !        �  �  �  �  �  �  �  �  |  s  j  a  E  <  3  *      �  �  �  �  �  �  �  �  �  �  i  `  W  N  2  )       �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  {
  r
  V
  M
  D
  ;
  
  
  
  
  �	  �	  �	  �	  �	  �	  �	  �	  z	  q	  h	  _	  C	  :	  1	  (	  	  	  �  �  �  �  �  �  �  �  �  �  g  ^  U  L  0  '      �  �  �  �  �  �  �  �  �  �  y  p  T  K  B  9          �  �  �  �  �  �  �  �  x  o  f  ]  A  8  /  &  
    �  �  �  �  �  �  �  �  �  �  e  \  S  J  .  %      �  �  �  �  �  �  �  �  �  �  w  n  R  I  @  7      	     �  �  �  �  �  �  �  �  v  m  d  [  ?  6  -  $    �  �  �  �  �  �  �  �  �  �    c  Z  Q  H  ,  #           r      �         
    l    @%   % wB   �            <    " 78`   @%   % " �� �         r      �         
    l    @%   % wB   �        	    <    " 78`   @%   % " �� �         Q      �         
    K    �            4    @! % %  % w� �         r      �         
    l   �            S    @"    :& "   :&% % % w� �         :      �         
    4   Z S"  ;`
   � �         Y      �         
    S   Z S"  <`)   Z Y@!   '% % z� �         �      �         
    �    "      >"     >A`Y   �            S    @"    :& "   =&% % % w� �         L      �         
    F   Z S" ;`   T "  ;`
   � �         �   	   �         
    �   Z ST "  <" <A`H   Z Y@"     :& "    :&'% % z� �         y   
   �         
    s   "      >"    ?A`:   �            4    @7a  c b w� �         L      �         
    F   Z S" ;`   T "  ;`
   � �         �      �         
    �   Z ST "  <" <A`H   Z Y@"     :& "    =&'% % z� �         M      �         
    G    �            0    
   @%   % w� �         �      �         
    �    B   �        
    <    " 78`   @%   % " �B   �            <    " 78`   @%   % " �� �         