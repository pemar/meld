meld fil                           	                _init -o node-axioms.  down(MV25) -o (test-nil(MV25) -o up(nil)), OR (X := head(MV25), not(test-nil(MV25)), nil = tail(MV25) -o up(cons(X,nil))), OR (X := head(MV25), MV5 := tail(MV25), Y := head(MV5), X < Y, 
			not(test-nil(MV25)), not(test-nil(MV5)), nil = tail(MV5) -o up(cons(X,cons(Y,nil)))), 
			OR (X := head(MV25), MV8 := tail(MV25), Y := head(MV8), X >= Y, 
			not(test-nil(MV25)), not(test-nil(MV8)), nil = tail(MV8) -o up(cons(Y,cons(X,nil)))), OR (X := head(MV25), L := tail(MV25), not(test-nil(MV25)) -o buildpivot(L, X, nil, nil)).�  buildpivot(MV26, MV27, MV28, MV29) -o (test-nil(MV26) -o exists B, C. (back(host-id)@B, down(MV28)@B, 
			back(host-id)@C, down(MV29)@C, waitpivot(B, C, MV27))), OR (Y := head(MV26), L := tail(MV26), Y <= MV27, not(test-nil(MV26)) -o 
			buildpivot(L, MV27, cons(Y,MV28), MV29)), OR (Y := head(MV26), L := tail(MV26), Y > MV27, not(test-nil(MV26)) -o 
			buildpivot(L, MV27, MV28, cons(Y,MV29))).�   waitpivot(NodeSmaller, NodeGreater, Pivot), sorted(MV17, Smaller), sorted(MV18, Greater), MV17 = NodeSmaller, 
			MV18 = NodeGreater -o append(Smaller, cons(Pivot,Greater)).'   append(L1, L2) -o reverse(L1, L2, nil).�   reverse(MV30, MV31, MV32) -o (test-nil(MV30) -o reverse2(MV32, MV31)), OR (X := head(MV30), L := tail(MV30), not(test-nil(MV30)) -o reverse(L, MV31, cons(X,MV32))).�   reverse2(MV33, MV34) -o (test-nil(MV33) -o up(MV34)), OR (X := head(MV33), L1 := tail(MV33), not(test-nil(MV33)) -o reverse2(L1, cons(X,MV34))).'   up(L), back(B) -o sorted(host-id, L)@B.           �                   _init                                                                setcolor                                                             setedgelabel                                                         write-string                                                         setcolor2                                                             stop-program                                                         set-priority                                                         add-priority                                                          schedule-next                                                        set-default-priority                                                  set-moving                                                            set-static                                                           set-affinity                                                         set-cpu                                                               remove-priority                                                     
  back                                                                 down                                                                 up                                                                   sorted                                                               buildpivot                                                           waitpivot                                                            append                                                               reverse                                                              reverse2                                                         ��������   �                    �    � 
�         @$    _    _    _    _    _    _    _    _    _ 	   _ 
   d w   #         �         6                 0   "  `   @p w� �"  `&   Z  `   T  @$d w� �"  `H   Z  `8   Y`,   ST  >`   @$_ d w� �"  `H   Z  `8   Y`,   ST  ?`   @$_ d w� �"  `$   T  Z  @' &ppw� �        �                  �    "  `G   @( @%  @( @%  @' '! w� �"  `)   T  " B`   Z  '  a  { �"  `)   T  " C`   Z  '  a  { �        h                  b                L                  2     @% g w��� �        1                  +    @%   % pw� �        `                  Z    "  `   @%  % w� �"  `   T  Z  '  a  { �        [                  U    "  `   @%  w� �"  `   T  Z  '  a  { �        I                  C               -    @( %  " �� �        