meld fil       ©                                               (       (                     5       5                     '       '       B       B                     4       4       O       O       A       A       \       \       N       N       i       i       [       [       v       v       h       h                     u       u                                                                                           )       )       6       6                     C       C                     P       P       ]       ]       j       j       w       w                                                               *       *       7       7                     D       D                     Q       Q       ^       ^       k       k       x       x                                                               +       +       8       8                     E       E                     R       R       _       _       l       l       y       y                                                                 ,       ,       9       9                     F       F                     S       S       `       `       m       m       z       z                                   ¡       ¡                       -       -       :       :                     G       G                     T       T       a       a       n       n       {       {                                   ¢       ¢       !       !       .       .       ;       ;                     H       H                     U       U       b       b       o       o       |       |                                   £       £       "       "       /       /       <       <                     I       I                     V       V       c       c       p       p       }       }                                   ¤       ¤       #       #       0       0       =       =       	       	       J       J                     W       W       d       d       q       q       ~       ~                                   ¥       ¥       $       $       1       1       >       >       
       
       K       K                     X       X       e       e       r       r                                                 ¦       ¦       %       %       2       2       ?       ?                     L       L                     Y       Y       f       f       s       s                                                 §       §       &       &       3       3       @       @                     M       M                     Z       Z       g       g       t       t                                                 ¨       ¨        	                init -o axioms   propagate-left(Nodes, Coords) -o test-and-send-down(Nodes, Coords), {L | !left(L), 
			L != host-id | propagate-left(Nodes, Coords)@L}.   propagate-right(Nodes, Coords) -o test-and-send-down(Nodes, Coords), {R | !right(R), 
			R != host-id | propagate-right(Nodes, Coords)@R}.T   test-and-send-down(Nodes, Coords), !coord(X, Y) -o test-y(Y, Coords, Nodes, Coords).z   test-y(Y, MV138, Nodes, Coords), !coord(OX, OY), test-nil(MV138) -o test-diag-left(OX - 1, OY - 1, Coords, Nodes, Coords).ï   test-y(MV159, MV160, MV161, MV162), MV164 = head(MV163), MV163 = tail(MV160), not(test-nil(MV160)), 
			not(test-nil(MV163)) -o (MV159 = MV164 -o 1), OR (RestCoords = tail(MV163), MV159 != MV164 -o test-y(MV159, RestCoords, MV161, MV162)).   test-diag-left(X, Y, MV136, Nodes, Coords), !coord(OX, OY), (X < 0) || (Y < 0) -o test-diag-right(OX - 1, OY + 1, Coords, Nodes, Coords).O  test-diag-left(MV165, MV166, MV167, MV168, MV169), MV172 = head(MV171), MV171 = tail(MV167), MV170 = head(MV167), 
			not(test-nil(MV167)), not(test-nil(MV171)) -o (MV165 = MV170, MV166 = MV172 -o 1), OR (RestCoords = tail(MV171), (MV165 != MV170) || (MV166 != MV172) -o test-diag-left(MV165 - 1, MV166 - 1, RestCoords, MV168, MV169)).£   test-diag-right(X, Y, MV151, Nodes, Coords), !coord(OX, OY), (X < 0) || (Y >= 13), test-nil(MV151) -o 
			send-down(cons(host-id,Nodes), cons(OX,cons(OY,Coords))).Q  test-diag-right(MV173, MV174, MV175, MV176, MV177), MV180 = head(MV179), MV179 = tail(MV175), MV178 = head(MV175), 
			not(test-nil(MV175)), not(test-nil(MV179)) -o (MV173 = MV178, MV174 = MV180 -o 1), OR (RestCoords = tail(MV179), (MV173 != MV178) || (MV174 != MV180) -o test-diag-right(MV173 - 1, MV174 + 1, RestCoords, MV176, MV177)).Y   send-down(Nodes, Coords), !coord(MV158, MV137), MV158 = 12 -o final-state(Nodes, Coords).¯   send-down(Nodes, Coords) -o {B | !down-right(B), B != host-id | 
			propagate-right(Nodes, Coords)@B}, {B | !down-left(B), B != host-id | 
			propagate-left(Nodes, Coords)@B}.           ð                  _init                                                               set-priority                                                        setcolor                                                            setedgelabel                                                        write-string                                                        add-priority                                                         schedule-next                                                       setcolor2                                                            stop-program                                                         left                                                                 right                                                                down-right                                                           down-left                                                            coord                                                                propagate-left                                                       propagate-right                                                      test-and-send-down                                                    test-y                                                                test-diag-left                                                        test-diag-right                                                      send-down                                                            final-state                                                              Ð                                                                                                                G'                   A'    
ü&  ©      Ì    b  -  ø  Ã    Y  $  ï  º  !  8     Î    d  /  ú  Å    [  &  ñ  ¼!  o   :    Ð    f  1  ü  Ç    ]  (  ó!  ¦   q  <  	  Ò    h  3  þ  É    _  *"  Ý   ¨  s  >	  	  Ô    j  5     Ë    a"    ß  ª  u	  @    Ö  ¡  l  7    Í  "  K    á  ¬	  w  B    Ø  £  n  9     Ï"    M    ã	  ®  y  D    Ú  ¥  p  ;   #  ¹    O  
  å  °  {  F    Ü  §  r   =#  ð  »    Q
    ç  ²  }  H    Þ  ©   t#  '  ò  ½  
  S    é  ´    J    à   «#  ^  )  ô  ¿
    U     ë  ¶    L  !  â#    `  +  ö
  Á    W  "  í  ¸    N!  $  2   
       	                               $  2   
       	               (              æ#  2   
'       	              5              ¯#  2   
4       	              B              x#  2   
A       	'              O              A#  2   
N       	4       (       \              
#  2   
[       	A       5       i              Ó"  2   
h       	N       B       v              "  2   
u       	[       O                     e"  2   
       	h       \                  	   ."  2   
       	u       i                  
   ÷!  2   
       	       v                     À!  2   
       	                            !  2   
       	                            R!  2   
       	              )             !  2   
(       	              6             ä   2   
5       	              C             ­   2   
B       	(              P             v   2   
O       	5       )       ]             ?   2   
\       	B       6       j                2   
i       	O       C       w             Ñ  2   
v       	\       P                      2   
       	i       ]                 	   c  2   
       	v       j                 
   ,  2   
       	       w                    õ  2   
       	                           ¾  2   
       	                              2   
       	              *             P  2   
)       	              7               2   
6       	              D             â  2   
C       	)              Q             «  2   
P       	6       *       ^             t  2   
]       	C       7       k             =  2   
j       	P       D       x               2   
w       	]       Q                    Ï  2   
       	j       ^                 	     2   
       	w       k                 
   a  2   
       	       x                    *  2   
       	                           ó  2   
       	                            ¼  2   
       	              +               2   
*       	              8             N  2   
7       	              E               2   
D       	*              R             à  2   
Q       	7       +       _             ©  2   
^       	D       8       l             r  2   
k       	Q       E       y             ;  2   
x       	^       R                      2   
       	k       _                 	   Í  2   
       	x       l                  
     2   
       	       y                    _  2   
       	                           (  2   
       	                            ñ  2   
       	              ,             º  2   
+       	              9               2   
8       	              F             L  2   
E       	+              S               2   
R       	8       ,       `             Þ  2   
_       	E       9       m             §  2   
l       	R       F       z             p  2   
y       	_       S                    9  2   
       	l       `                 	     2   
       	y       m       ¡          
   Ë  2   
        	       z                      2   
        	                            ]  2   
       	                             &  2   
       	              -             ï  2   
,       	              :             ¸  2   
9       	              G               2   
F       	,               T             J  2   
S       	9       -       a               2   
`       	F       :       n             Ü  2   
m       	S       G       {             ¥  2   
z       	`       T                    n  2   
       	m       a                 	   7  2   
       	z       n       ¢          
      2   
¡       	       {                    É  2   
¡       	              ¡               2   
       	              !              [  2   
        	              .             $  2   
-       	              ;             í  2   
:       	               H             ¶  2   
G       	-       !       U               2   
T       	:       .       b             H  2   
a       	G       ;       o               2   
n       	T       H       |             Ú  2   
{       	a       U                    £  2   
       	n       b                 	   l  2   
       	{       o       £          
   5  2   
¢       	       |                    þ  2   
¢       	              ¢             Ç  2   
       	              "                2   
!       	              /             Y  2   
.       	              <             "  2   
;       	!              I             ë  2   
H       	.       "       V             ´  2   
U       	;       /       c             }  2   
b       	H       <       p             F  2   
o       	U       I       }               2   
|       	b       V                    Ø  2   
       	o       c                 	   ¡  2   
       	|       p       ¤          
   j  2   
£       	       }                    3  2   
£       	              £             ü  2   
       	              #              Å  2   
"       	              0               2   
/       	       	       =             W  2   
<       	"              J                2   
I       	/       #       W             é  2   
V       	<       0       d             ²  2   
c       	I       =       q             {  2   
p       	V       J       ~             D  2   
}       	c       W                      2   
       	p       d                 	   Ö  2   
       	}       q       ¥          
     2   
¤       	       ~                    h  2   
¤       	              ¤             1  2   
       		       	       $       	       ú
  2   
#       		              1       	      Ã
  2   
0       	       
       >       	      
  2   
=       	#              K       	      U
  2   
J       	0       $       X       	      
  2   
W       	=       1       e       	      ç	  2   
d       	J       >       r       	      °	  2   
q       	W       K              	      y	  2   
~       	d       X              	      B	  2   
       	q       e              	   	   	  2   
       	~       r       ¦       	   
   Ô  2   
¥       	                     	        2   
¥       	              ¥       	      f  2   
       	
       
       %       
       /  2   
$       	
              2       
      ø  2   
1       	              ?       
      Á  2   
>       	$              L       
        2   
K       	1       %       Y       
      S  2   
X       	>       2       f       
        2   
e       	K       ?       s       
      å  2   
r       	X       L              
      ®  2   
       	e       Y              
      w  2   
       	r       f              
   	   @  2   
       	       s       §       
   
   	  2   
¦       	                     
      Ò  2   
¦       	              ¦       
        2   
       	              &              d  2   
%       	              3             -  2   
2       	              @             ö  2   
?       	%              M             ¿  2   
L       	2       &       Z               2   
Y       	?       3       g             Q  2   
f       	L       @       t               2   
s       	Y       M                    ã  2   
       	f       Z                    ¬  2   
       	s       g                 	   u  2   
       	       t       ¨          
   >  2   
§       	                             2   
§       	              §             Ð  2   
       	                              2   
&       	                           b  2   
3       	       &       &             +  2   
@       	&       3       3             ô  2   
M       	3       @       @             ½  2   
Z       	@       M       M               2   
g       	M       Z       Z             O  2   
t       	Z       g       g               2   
       	g       t       t             á   2   
       	t                        	   ª   2   
       	                        
   s   2   
¨       	                           <   2   
¨       	       ¨       ¨                7 6        9  `    @ p  p w #         ð ¥  '  '  ú&  ñ&  è&  Ì&  Ã&  º&  ±&  &  &  &  z&  ^&  U&  L&  C&  '&  &  &  &  ð%  ç%  Þ%  Õ%  ¹%  °%  §%  %  %  y%  p%  g%  K%  B%  9%  0%  %  %  %  ù$  Ý$  Ô$  Ë$  Â$  ¦$  $  $  $  o$  f$  ]$  T$  8$  /$  &$  $  $  ø#  ï#  æ#  Ê#  Á#  ¸#  ¯#  #  #  #  x#  \#  S#  J#  A#  %#  #  #  
#  î"  å"  Ü"  Ó"  ·"  ®"  ¥"  "  "  w"  n"  e"  I"  @"  7"  ."  "  	"   "  ÷!  Û!  Ò!  É!  À!  ¤!  !  !  !  m!  d!  [!  R!  6!  -!  $!  !  ÿ   ö   í   ä   È   ¿   ¶   ­            v   Z   Q   H   ?   #            ì  ã  Ú  Ñ  µ  ¬  £    ~  u  l  c  G  >  5  ,      þ  õ  Ù  Ð  Ç  ¾  ¢        k  b  Y  P  4  +  "    ý  ô  ë  â  Æ  ½  ´  «      }  t  X  O  F  =  !        ê  á  Ø  Ï  ³  ª  ¡    |  s  j  a  E  <  3  *      ü  ó  ×  Î  Å  ¼           i  `  W  N  2  )       û  ò  é  à  Ä  »  ²  ©      {  r  V  M  D  ;          è  ß  Ö  Í  ±  ¨      z  q  h  _  C  :  1  (      ú  ñ  Õ  Ì  Ã  º          g  ^  U  L  0  '      ù  ð  ç  Þ  Â  ¹  °  §      y  p  T  K  B  9          æ  Ý  Ô  Ë  ¯  ¦      x  o  f  ]  A  8  /  &  
    ø  ï  Ó  Ê  Á  ¸          e  \  S  J  .  %      ÷  î  å  Ü  À  ·  ®  ¥      w  n  R  I  @  7      	     ä  Û  Ò  É  ­  ¤      v  m  d  [  ?  6  -  $    ÿ  ö  í  Ñ  È  ¿  ¶          c  Z  Q  H  ,  #      õ  ì  ã  Ú  ¾  µ  ¬  £    ~  u  l  P  G  >  5        þ  â  Ù  Ð  Ç  «  ¢      t  k  b  Y  =  4  +  "    ý  ô  ë  Ï  Æ  ½  ´        }  a  X  O  F  *  !      ó  ê  á  Ø  ¼  ³  ª  ¡    |  s  j  N  E  <  3        ü  à  ×  Î  Å  ©         r  i  `  W  ;  2  )       û  ò  é  Í  Ä  »  ²        {  _  V  M  D  (        ñ  è  ß  Ö  º  ±  ¨      z  q  h  L  C  :  1        ú
  Þ
  Õ
  Ì
  Ã
  §
  
  
  
  p
  g
  ^
  U
  9
  0
  '
  
  
  ù	  ð	  ç	  Ë	  Â	  ¹	  °	  	  	  	  y	  ]	  T	  K	  B	  &	  	  	  	  ï  æ  Ý  Ô  ¸  ¯  ¦      x  o  f  J  A  8  /    
    ø  Ü  Ó  Ê  Á  ¥        n  e  \  S  7  .  %       ÷  î  å  É  À  ·  ®        w  [  R  I  @  $      	  í  ä  Û  Ò  ¶  ­  ¤      v  m  d  H  ?  6  -      ÿ  ö  Ú  Ñ  È  ¿  £        l  c  Z  Q  5  ,  #    þ  õ  ì  ã  Ç  ¾  µ  ¬      ~  u  Y  P  G  >  "        ë  â  Ù  Ð       o                  i    @%   % wA           	   ;    " 78`   @%   % " ð ð         o                  i    @%   % wA           
   ;    " 78`   @%   % " ð ð         N                  H               2    @! % %  % w ð         o                  i              Q    @"    :& "   :&% % % w ð         P                  J   Z S"  ;`	    ð"  <`   Y' { ð                               "      >"     >A`W              Q    @"    :& "   =&% % % w ð                              Z ST "  ;`   " ;`	    ð"  <" <A`4   Y"     :&  "    :& ' { ð         v                  p   "      >"    ?A`8              2    @7a  c b w ð            	                  Z ST "  ;`   " ;`	    ð"  <" <A`4   Y"     :&  "    =& ' { ð         J   
               D               .       @%   % w ð         ¡                      A              ;    " 78`   @%   % " ðA              ;    " 78`   @%   % " ð ð         