meld fil       	                                                                                                                                    	                init -o axiomsY   start() -o color(randint(3) + 1), update(), {B | 
			!edge(B) | neighbor-color(B, 0, 0)}.c   new-neighbor-color(B, New), neighbor-color(MV86, Old, MV84), MV86 = B -o neighbor-color(B, New, 1).�   select-best-color() -o [ COLLECT => L,  | B | neighbor-pick-color(B, L) | 
			invalid-colors(intlistsort(intlistremoveduplicates(L)), 1)].c  invalid-colors(MV95, MV96) -o (test-nil(MV95) -o update-neighbors(MV96)), OR (MV90 = head(MV95), Ls = tail(MV95), not(test-nil(MV95)), MV90 = 0 -o 
			invalid-colors(Ls, MV96)), OR (Ls = tail(MV95), not(test-nil(MV95)), MV96 = head(MV95) -o invalid-colors(Ls, MV96 + 1)), 
			OR (Cx = head(MV95), Cx > MV96, not(test-nil(MV95)) -o update-neighbors(MV96)).x  update-neighbors(C), color(MV85) -o color(C), {B | 
			!edge(B) | new-neighbor-color(host-id, C)@B}, {B, NC, Flag | to-select-color(B, NC, Flag), 
			NC != C, Flag = 1 | neighbor-color(B, NC, 0)}, {B, Flag | 
			to-select-color(B, C, Flag), Flag = 1 | neighbor-color(B, 0, 0), update()@B}, 
			{B, NC, Flag | to-select-color(B, NC, Flag), Flag = 0 | neighbor-color(B, NC, 0)}.   !update(), update() -o 1.�   update() -o select-best-color(), {B, NC, Flag | !edge(B), 
			neighbor-color(B, NC, Flag) | neighbor-pick-color(B, NC), to-select-color(B, NC, Flag)}.           �                  _init                                                               set-priority                                                        setcolor                                                            setedgelabel                                                        write-string                                                        add-priority                                                         schedule-next                                                       setcolor2                                                            stop-program                                                         edge                                                                neighbor-color                                                      new-neighbor-color                                                  color                                                                update                                                               start                                                                select-best-color                                                   neighbor-pick-color                                                  invalid-colors                                                      to-select-color                                                     new-color                                                           update-neighbors                                                         �                                                                                                           �                   �   � 
_  	     �   �   �   �   ^   B            	       	             	       	       	       �      	       	       �       	       	       	       �       	       	       	       �       	        	       	       k       	       	       	       F       	        	       	       !      	       	          @ w #         �    o  f  S  J  A  .  %    	     �   �   �   �   �   �   �   �   �   ~   u   l   Y   P        v                  p    @   i   =& w@w5           	   /    @
!          w�� �         L                  F            
    0      !   !    {� �         
^                  X    $=                  f ��@i"i!'    w� �         �                  �    "  `   @!  w� �"  `%   T      ;`   Z  '  { �"  `5   " T  ;`#   Z  '  "    =& { �"  `%   T  " C`   @!  w� �         >                 8              "   !   {/           	   )    @( !  " �M              G      ""  <`   @
!  !    w��K               E        @
!          w@" ��;              5       @
!  !    w��� �         5                  /                   ��         �                  z    @w\           	   V            
    @     @!  !w@!  !!w��� �         