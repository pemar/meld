meld fil                                                                                                                                  	       	              
                     
                                                                               	               _init -o node-axioms.W   cons(Child, N, Parent), change-parent(NewParent) -o token(), cons(Child, N, NewParent).C   xnil(Parent), change-parent(NewParent) -o token(), xnil(NewParent).F   !xnil(Parent), token(), Parent != host-id -o childnil(host-id)@Parent.�    -o (merge(Child1, Child2, Parent), token(), Parent != host-id -o childmerge(host-id, Child1, Child2)@Parent, 
			merge(Child1, Child2, Parent)), OR (merge(Child1, Child2, Parent), token(), Parent = host-id -o merge(Child1, Child2, Parent)).�    -o (cons(N, Child, Parent), token(), Parent != host-id -o childcons(host-id, N, Child)@Parent, 
			cons(N, Child, Parent)), OR (cons(N, Child, Parent), token(), Parent = host-id -o cons(N, Child, Parent)).;   !cons(N, Child, Parent), childnil(MV14), MV14 = Child -o 1.7   !cons(N, Child, Parent), childcons(MV1, MV2, MV3) -o 1.8   !cons(N, Child, Parent), childmerge(MV4, MV5, MV6) -o 1.�   merge(Child1, Child2, Parent), childnil(MV15), childnil(MV16), MV15 = Child1, 
			MV16 = Child2 -o xnil(Parent), deletenil()@Child1, deletenil()@Child2.�   -o (merge(Child1, Child2, Parent), childnil(MV17), childcons(MV18, N, Child22), MV17 = Child1, 
			MV18 = Child2 -o cons(N, Child22, Parent), token(), deletecons()@Child2, deletenil()@Child1), OR (merge(Child1, Child2, Parent), childcons(MV19, N, Child12), childnil(MV20), MV19 = Child1, 
			MV20 = Child2 -o cons(N, Child12, Parent), token(), deletecons()@Child1, deletenil()@Child2).   -o (merge(Child1, Child2, Parent), childmerge(MV21, Child11, Child12), childnil(MV22), MV21 = Child1, 
			MV22 = Child2 -o merge(Child11, Child12, Parent), deletenil()@Child2, deletemerge()@Child1, change-parent(host-id)@Child11, 
			change-parent(host-id)@Child12), OR (merge(Child1, Child2, Parent), childnil(MV23), childmerge(MV24, Child21, Child22), MV23 = Child1, 
			MV24 = Child2 -o merge(Child21, Child22, Parent), change-parent(host-id)@Child21, change-parent(host-id)@Child21, deletemerge()@Child2, 
			deletenil()@Child1).C   -o (merge(Child1, Child2, Parent), childcons(MV25, M, Child11), childcons(MV26, N, Child21), M <= N, 
			MV25 = Child1, MV26 = Child2 -o exists D. (cons(M, D, Parent), token(), 
			merge(Child11, Child2, host-id)@D, change-parent(D)@Child2, change-parent(D)@Child11, deletecons()@Child1)), OR (merge(Child1, Child2, Parent), childcons(MV27, M, Child11), childcons(MV28, N, Child21), M > N, 
			MV27 = Child1, MV28 = Child2 -o exists D. (cons(N, D, Parent), token(), 
			merge(Child1, Child21, host-id)@D, change-parent(D)@Child1, change-parent(D)@Child21, deletecons()@Child2)).   xnil(MV7), deletenil() -o 1.(   cons(MV8, MV9, MV10), deletecons() -o 1.,   merge(MV11, MV12, MV13), deletemerge() -o 1.           �                    _init                                                                 setcolor                                                               setedgelabel                                                          write-string                                                          setcolor2                                                              stop-program                                                          set-priority                                                          add-priority                                                           schedule-next                                                         set-default-priority                                                   set-moving                                                             set-static                                                             set-affinity                                                          set-cpu                                                                remove-priority                                                     
     cons                                                                
    xnil                                                                
      merge                                                                  childnil                                                            
     childcons                                                           
      childmerge                                                             token                                                                  deletenil                                                              deletecons                                                             deletemerge                                                           result                                                                 change-parent                                                    ��������   W                   Q   � 
(     w  d  �  E  2  �  �   �   �   �   �     F   3   e                   �                      �            �                      |                          Y     	       F        
              '                 
                 �      	                     �                           �             �                       }              j                       K                            (                              @ w #         � !   8  0  (        �  �  �  �  �  �  �  �  ~  k  c  [  H  @  )      �   �   �   �   �   �   �   �   �   p       A                  ;               %    @w%  { ��        A                  ;               %    @w%   { ��        R                  L               6    " 78`   @( " � �        �                  X               B    "78`"   @( % %"{� �            A               +    "79`   {� �        �                  X               B    "78`"   @( ! %"{� �            A               +    "79`   {� �        9                  3                     ��        5                  /                   ��        5                  /                   ��        u   	               o                Y                  ?     @%  w@"  @" ��� �          
               ~                h                  N     @! %% w@w@" @"  ��� �            ~                h                  N     @! %% w@w@"  @" ��� �                         �                s                  Y     @" @"  @( "@( "%  % { ���            �                s                  Y     @( "@( "@" @"  %  % { ���        r                 �                �                  �     ""B``   @! '% w@w@% % (@' " @' "@"  ��� �            �                �                  �     ""C``   @! '% w@w@%   %(@' "  @' "@" ��� �        7                  1                   �� �        7                  1                   �� �        7                  1                   �� �        