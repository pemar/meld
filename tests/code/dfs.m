meld fil       
           	                                          
                                                                             	               	               _init -o node-axioms.�   discover(J), first-time() -o father(J), check-if-only-neighbor(J), 
			setcolor(255, 255, 0), {Q, Flag | !edge(Q), flag(Q, Flag), !unvisited(Q), 
			Q != J | visited(host-id)@Q, flag(Q, 1)}.6   discover(J), !edge(MV3), MV3 = J -o return(host-id)@J..   check-if-only-neighbor(J), !unvisited(X) -o 1.h   check-if-only-neighbor(Node), !edge(MV4), MV4 = Node -o return(host-id)@Node, 
			setcolor(0, 255, 255).H   return(Q), unvisited(K), !edge(MV5), MV5 = K -o 
			discover(host-id)@K.}   return(Q), !father(Father), !edge(MV6), Father != host-id, 
			MV6 = Father -o return(host-id)@Father, setcolor(0, 255, 255).A   return(Q), father(A), A = host-id -o stop(), 
			father(host-id).O   visited(K), unvisited(MV7), !edge(MV8), MV7 = K, 
			MV8 = K -o ack(host-id)@K.b   ack(J), flag(MV9, MV1), flag(J2, MV10), J != J2, 
			MV9 = J, MV10 = 1 -o flag(J, 0), flag(J2, 1).E   ack(J), flag(MV11, MV2), MV11 = J -o flag(J, 0), 
			return(host-id).           �                    _init                                                                 setcolor                                                               setedgelabel                                                          write-string                                                          setcolor2                                                              stop-program                                                          set-priority                                                          add-priority                                                           schedule-next                                                         set-default-priority                                                   set-moving                                                             set-static                                                             set-affinity                                                          set-cpu                                                                remove-priority                                                         edge                                                                   flag                                                                   unvisited                                                              father                                                                 discover                                                               visited                                                                return                                                                 check-if-only-neighbor                                                 stop                                                                   ack                                                                    first-time                                                       ��������   �                   �   � 
�  
   �  _      �  I       �   R   L   	       	       	                                           	  b                                                                              �  C                            	       	       	           Z  C                            	       	       	             b                                                                              �  b                                                                              D  C                                                        �   C                                                        �   b                                                                              M   C                                                           @ w #         � I   �  �  �  s  j  a  J  A  8  +  "        �  �  �  �  �  �  �  �  �  �  |  s  j  S  J  A  4  +  "        �  �  �  �  �  �  �  �  �  �  |  s  f  ]  T  =  4  +        �   �   �   �   �   �   �   �   �   �   �   |   s   f   ]   T       �                  �               �    �              }    " " 8`[               U                 ;     @( " @%     z��@%  w@%  w@�    �       y�� �        F                  @                *      @( "  � �        5                  /                   � �        `                  Z                D      @( "  @     �   �   y� �        ^                  X               B                ,     @( " �� �        �                  �               j    " 78`J               D     @( " @     �   �   y� �        O                  I               3    " 79`   @w( {� �        b                  \                F                  ,      @( "  �� �        ~   	               x                b                 H      "  " 8`    %       {   {� �        O   
               I                3      @( w%       {� �        