meld fil       	                                                                                                                                    	                init -o axiomsY   start() -o color(randint(3) + 1), update(), {B | 
			!edge(B) | neighbor-color(B, 0, 0)}.V   new-neighbor-color(B, New), neighbor-color(B, Old, MV37) -o neighbor-color(B, New, 1).�   select-best-color() -o [ COLLECT => L,  | B | neighbor-pick-color(B, L) | 
			invalid-colors(intlistsort(intlistremoveduplicates(L)), 1)].?   invalid-colors(MV39, C), test-nil(MV39) -o update-neighbors(C).x   invalid-colors(MV40, C), MV42 = head(MV40), Ls = tail(MV40), not(test-nil(MV40)), 
			MV42 = 0 -o invalid-colors(Ls, C).o   invalid-colors(MV43, C), Ls = tail(MV43), not(test-nil(MV43)), C = head(MV43) -o 
			invalid-colors(Ls, C + 1).a   invalid-colors(MV45, C), Cx = head(MV45), Cx > C, not(test-nil(MV45)) -o 
			update-neighbors(C).x  update-neighbors(C), color(MV38) -o color(C), {B | 
			!edge(B) | new-neighbor-color(host-id, C)@B}, {B, NC, Flag | to-select-color(B, NC, Flag), 
			NC != C, Flag = 1 | neighbor-color(B, NC, 0)}, {B, Flag | 
			to-select-color(B, C, Flag), Flag = 1 | neighbor-color(B, 0, 0), update()@B}, 
			{B, NC, Flag | to-select-color(B, NC, Flag), Flag = 0 | neighbor-color(B, NC, 0)}.   !update(), update() -o 1.�   update() -o select-best-color(), {B, NC, Flag | !edge(B), 
			neighbor-color(B, NC, Flag) | neighbor-pick-color(B, NC), to-select-color(B, NC, Flag)}.           �                  _init                                                               set-priority                                                        setcolor                                                            setedgelabel                                                        write-string                                                        add-priority                                                         schedule-next                                                       setColor2                                                            edge                                                                neighbor-color                                                      new-neighbor-color                                                  color                                                                update                                                               start                                                                select-best-color                                                   neighbor-pick-color                                                  invalid-colors                                                      to-select-color                                                     new-color                                                           update-neighbors                                                         �                                                                                                      �      �          
    �   � 
_  	         B   g   �   �   �   �                                                  �                            �                             �                            �                            b                    F                            !                       @ w #         �    p  g  T  K  B  /  &    
    �   �   �   �   �   �   �   �   �      v   m   Z   Q        y      �         
    s    @   i   =& w@w6   �            0    @	!          w�� �         T      �        
 
    N    �        	    7      @	!   !    z�� �         	
a      �         
    [    $>   �        
         f ��@i"i!'    w� �         -      �         
    '    @!  w� �         ;      �         
    5        Z  @' ! z� �         T      �         
    N    " T  ;`)   Z  @' "    =&z� �         ?      �         
    9    T  " C`   @!  w� �         J     �         
    D   �        
    -   @!   z0   �            *    @
( !  " �N   �        
    H      ""  <`   @	!  !    w��L   �             F        @	!          w@" ��<   �        
    6       @	!  !    w���� �         8   	   �             2    �        
        ��         �   
   �         
    ~    @w^   �            X    �        	    A     @!  !w@!  !!w��� �         