meld fil                                                                     	               _init -o node-axioms.Y   start() -o color(randint(3) + 1), update(), {B | 
			!edge(B) | neighbor-color(B, 0, 0)}.`   new-neighbor-color(B, New), neighbor-color(MV3, Old, MV1), MV3 = B -o neighbor-color(B, New, 1).}   select-best-color() -o [collect => L | B | , neighbor-pick-color(B, L) | 
			invalid-colors(lsort(lremoveduplicates(L)), 1)].e  invalid-colors(MV12, MV13) -o (test-nil(MV12) -o update-neighbors(MV13)), OR (MV7 := head(MV12), Ls := tail(MV12), not(test-nil(MV12)), MV7 = 0 -o 
			invalid-colors(Ls, MV13)), OR (Ls := tail(MV12), not(test-nil(MV12)), MV13 = head(MV12) -o invalid-colors(Ls, MV13 + 1)), 
			OR (Cx := head(MV12), Cx > MV13, not(test-nil(MV12)) -o update-neighbors(MV13)).w  update-neighbors(C), color(MV2) -o color(C), {B | 
			!edge(B) | new-neighbor-color(host-id, C)@B}, {B, NC, Flag | to-select-color(B, NC, Flag), 
			NC != C, Flag = 1 | neighbor-color(B, NC, 0)}, {B, Flag | 
			to-select-color(B, C, Flag), Flag = 1 | neighbor-color(B, 0, 0), update()@B}, 
			{B, NC, Flag | to-select-color(B, NC, Flag), Flag = 0 | neighbor-color(B, NC, 0)}.   !update(), update() -o 1.�   update() -o select-best-color(), {B, NC, Flag | !edge(B), 
			neighbor-color(B, NC, Flag) | neighbor-pick-color(B, NC), to-select-color(B, NC, Flag)}.           �                    _init                                                                 setcolor                                                               setedgelabel                                                          write-string                                                          setcolor2                                                              stop-program                                                          set-priority                                                          add-priority                                                           schedule-next                                                         set-default-priority                                                   set-moving                                                             set-static                                                             set-affinity                                                          set-cpu                                                                remove-priority                                                         edge                                                                   neighbor-color                                                         new-neighbor-color                                                    color                                                                  update                                                                 start                                                                  select-best-color                                                      neighbor-pick-color                                                   invalid-colors                                                         to-select-color                                                       new-color                                                             update-neighbors                                                 ��������   �                    �    � 
�      ^   B   &                                P                    4                                    @ w #         �    �   �   }   j   a   N   E   <       w                  q    5              /    @%          w�@   i   =& w@w� �        L                  F                0      %   !    � {�        a                  [    $@                   f��@ii '    w� �        �                  �    "  `   @!  w� �"  `%   T      ;`   Z  '  { �"  `5   " T  ;`#   Z  '  "    =& { �"  `%   T  " C`   @!  w� �        >                 8              "   /              )    @( !  " �M              G      ""  <`   @%  !    w��K               E        @%          w@" ��;              5       @%  !    w��!   � {�        5                  /                   ��        �                  z    \              V                @     @%  !w@%  !!w��@w� �        