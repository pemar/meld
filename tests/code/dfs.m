meld fil       
           	                                          
                                                                             	              	                init -o axioms�   discover(J), first-time(), A = host-id -o father(J), 
			check-if-only-neighbor(J), setcolor(255, 255, 0), {Q, Flag | !edge(Q), flag(Q, Flag), 
			unvisited(Q), Q != J | unvisited(Q), visited(host-id)@Q, 
			flag(Q, 1)}.G   discover(J), !edge(MV3), MV3 = J, A = host-id -o 
			return(host-id)@J.;   check-if-only-neighbor(J), !unvisited(X), A = host-id -o 1.u   check-if-only-neighbor(Node), !edge(MV4), MV4 = Node, A = host-id -o 
			return(host-id)@Node, setcolor(0, 255, 255).U   return(Q), unvisited(K), !edge(MV5), MV5 = K, 
			A = host-id -o discover(host-id)@K.�   return(Q), !father(Father), !edge(MV6), Father != host-id, 
			MV6 = Father, A = host-id -o return(host-id)@Father, setcolor(0, 255, 255).A   return(Q), father(A), A = host-id -o stop(), 
			father(host-id).\   visited(K), unvisited(MV7), !edge(MV8), MV7 = K, 
			MV8 = K, A = host-id -o ack(host-id)@K.o   ack(J), flag(MV9, MV1), flag(J2, MV10), J != J2, 
			MV9 = J, MV10 = 1, A = host-id -o flag(J, 0), flag(J2, 1).R   ack(J), flag(MV11, MV2), MV11 = J, A = host-id -o 
			flag(J, 0), return(host-id).           �                  _init                                                               set-priority                                                        setcolor                                                             setedgelabel                                                         write-string                                                        add-priority                                                         schedule-next                                                       setcolor2                                                            stop-program                                                        set-default-priority                                                 set-moving                                                           set-static                                                          set-affinity                                                        set-cpu                                                              remove-priority                                                      edge                                                                flag                                                                unvisited                                                           father                                                              discover                                                            visited                                                             return                                                              check-if-only-neighbor                                               stop                                                                ack                                                                  first-time                                                       ���������                                                                                                                                    �                   �   � 
�  
   �  _      �  I       �   R   L   	       	       	                                           	  b                                                                              �  C                            	       	       	           Z  C                            	       	       	             b                                                                              �  b                                                                              D  C                                                        �   C                                                        �   b                                                                              M   C                                                           @ w #         � I   �  �  �  s  j  a  J  A  8  +  "        �  �  �  �  �  �  �  �  �  �  |  s  j  S  J  A  4  +  "        �  �  �  �  �  �  �  �  �  �  |  s  f  ]  T  =  4  +        �   �   �   �   �   �   �   �   �   �   �   |   s   f   ]   T        �                  �               �    @%  w@%  w@�    �       y�              �    " " 8`g               a                 G     @%  z@( " @%     z����� �         F                  @                *      @( "  � �         5                  /                   � �         `                  Z                D      @( "  @     �   �   y� �         ^                  X               B                ,     @( " �� �         �                  �               j    " 78`J               D     @( " @     �   �   y� �         O                  I               3    " 79`   @w( {� �         b                  \                F                  ,      @( "  �� �         ~   	               x                b                 H      "  " 8`    %       {   {� �         O   
               I                3      %       {@( w� �         