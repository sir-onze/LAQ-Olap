operation successful
+------------------------------------------+
| revenue                                  |
+==========================================+
|                             3083843.0578 |
+------------------------------------------+
1 tuple
+-------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| usec  | statement                                                                                                                                                                                    |
+=======+==============================================================================================================================================================================================+
|     3 | X_69=0@0:void := querylog.define("trace select sum(l_extendedprice* (1 - l_discount)) as revenue\nfrom lineitem, part\nwhere ( p_partkey = l_partkey\n and p_brand = \\'Brand#12\\'\n and p_ |
:       : container in (\\'SM CASE\\', \\'SM BOX\\', \\'SM PACK\\', \\'SM PKG\\')\n and l_quantity >= 1 and l_quantity <= 1 + 10\n and p_size between 1 and 5\n and l_shipmode in (\\'AIR\\', \\'AIR R :
:       : EG\\')\n and l_shipinstruct = \\'DELIVER IN PERSON\\'\n ) or ( p_partkey = l_partkey\n and p_brand = \\'Brand#23\\'\n and p_container in (\\'MED BAG\\', \\'MED BOX\\', \\'MED PKG\\', \\'ME :
:       : D PACK\\')\n and l_quantity >= 10 and l_quantity <= 10 + 10\n and p_size between 1 and 10\n and l_shipmode in (\\'AIR\\', \\'AIR REG\\')\n and l_shipinstruct = \\'DELIVER IN PERSON\\'\n )  :
:       : or ( p_partkey = l_partkey\n and p_brand = \\'Brand#34\\'\n and p_container in (\\'LG CASE\\', \\'LG BOX\\', \\'LG PACK\\', \\'LG PKG\\')\n and l_quantity >= 20 and l_quantity <= 20 + 10\n :
:       :  and p_size between 1 and 15\n and l_shipmode in (\\'AIR\\', \\'AIR REG\\')\n a                                                                                                              :
|     3 | X_72=0:int := sql.mvc(); #[3] (0) SQLmvc 72                                                                                                                                                  |
|     6 | X_102=[200000]:bat[:str] := sql.bind(X_72=0:int, "sys":str, "part":str, "p_container":str, 0:int); #[4] (0) mvc_bind_wrap 102 <- 72 74 75 103 78                                             |
|     5 | X_90=[200000]:bat[:str] := sql.bind(X_72=0:int, "sys":str, "part":str, "p_brand":str, 0:int); #[5] (0) mvc_bind_wrap 90 <- 72 74 75 91 78                                                    |
|    54 | X_629=[1500306]:bat[:lng] := sql.bind(X_72=0:int, "sys":str, "lineitem":str, "l_extendedprice":str, 0:int, 3:int, 4:int); #[330] (0) mvc_bind_wrap 629 <- 72 74 184 203 78 110 502           |
|     9 | C_73=[200000]:bat[:oid] := sql.tid(X_72=0:int, "sys":str, "part":str); #[6] (0) SQLtid 73 <- 72 74 75                                                                                        |
|    24 | X_601=[1500306]:bat[:int] := sql.bind(X_72=0:int, "sys":str, "lineitem":str, "l_partkey":str, 0:int, 3:int, 4:int); #[276] (0) mvc_bind_wrap 601 <- 72 74 184 186 78 110 502                 |
|    10 | X_617=[1500306]:bat[:lng] := sql.bind(X_72=0:int, "sys":str, "lineitem":str, "l_quantity":str, 0:int, 3:int, 4:int); #[279] (0) mvc_bind_wrap 617 <- 72 74 184 197 78 110 502                |
|     3 | C_584=[1500306]:bat[:oid] := sql.tid(X_72=0:int, "sys":str, "lineitem":str, 3:int, 4:int); #[265] (0) SQLtid 584 <- 72 74 184 110 502                                                        |
|     3 | X_85=[200000]:bat[:int] := sql.bind(X_72=0:int, "sys":str, "part":str, "p_partkey":str, 0:int); #[35] (0) mvc_bind_wrap 85 <- 72 74 75 77 78                                                 |
|    49 | X_671=[1500306]:bat[:str] := sql.bind(X_72=0:int, "sys":str, "lineitem":str, "l_shipmode":str, 0:int, 3:int, 4:int); #[263] (0) mvc_bind_wrap 671 <- 72 74 184 221 78 110 502                |
|    76 | X_658=[1500306]:bat[:str] := sql.bind(X_72=0:int, "sys":str, "lineitem":str, "l_shipinstruct":str, 0:int, 3:int, 4:int); #[264] (0) mvc_bind_wrap 658 <- 72 74 184 215 78 110 502            |
|     4 | X_641=[1500303]:bat[:lng] := sql.bind(X_72=0:int, "sys":str, "lineitem":str, "l_discount":str, 0:int, 2:int, 4:int); #[258] (0) mvc_bind_wrap 641 <- 72 74 184 209 78 83 502                 |
|    86 | X_667=[1500303]:bat[:str] := sql.bind(X_72=0:int, "sys":str, "lineitem":str, "l_shipmode":str, 0:int, 0:int, 4:int); #[37] (0) mvc_bind_wrap 667 <- 72 74 184 221 78 78 502                  |
|     5 | X_628=[1500303]:bat[:lng] := sql.bind(X_72=0:int, "sys":str, "lineitem":str, "l_extendedprice":str, 0:int, 2:int, 4:int); #[256] (0) mvc_bind_wrap 628 <- 72 74 184 203 78 83 502            |
|     3 | X_615=[1500303]:bat[:lng] := sql.bind(X_72=0:int, "sys":str, "lineitem":str, "l_quantity":str, 0:int, 2:int, 4:int); #[205] (0) mvc_bind_wrap 615 <- 72 74 184 197 78 83 502                 |
|     3 | X_600=[1500303]:bat[:int] := sql.bind(X_72=0:int, "sys":str, "lineitem":str, "l_partkey":str, 0:int, 2:int, 4:int); #[202] (0) mvc_bind_wrap 600 <- 72 74 184 186 78 83 502                  |
|     6 | X_655=[1500303]:bat[:str] := sql.bind(X_72=0:int, "sys":str, "lineitem":str, "l_shipinstruct":str, 0:int, 0:int, 4:int); #[38] (0) mvc_bind_wrap 655 <- 72 74 184 215 78 78 502              |
|    18 | X_657=[1500303]:bat[:str] := sql.bind(X_72=0:int, "sys":str, "lineitem":str, "l_shipinstruct":str, 0:int, 2:int, 4:int); #[190] (0) mvc_bind_wrap 657 <- 72 74 184 215 78 83 502             |
|     3 | C_579=[1500303]:bat[:oid] := sql.tid(X_72=0:int, "sys":str, "lineitem":str, 0:int, 4:int); #[39] (0) SQLtid 579 <- 72 74 184 78 502                                                          |
|     3 | X_670=[1500303]:bat[:str] := sql.bind(X_72=0:int, "sys":str, "lineitem":str, "l_shipmode":str, 0:int, 2:int, 4:int); #[189] (0) mvc_bind_wrap 670 <- 72 74 184 221 78 83 502                 |
|     4 | X_597=[1500303]:bat[:int] := sql.bind(X_72=0:int, "sys":str, "lineitem":str, "l_partkey":str, 0:int, 0:int, 4:int); #[50] (0) mvc_bind_wrap 597 <- 72 74 184 186 78 78 502                   |
|     3 | X_640=[1500303]:bat[:lng] := sql.bind(X_72=0:int, "sys":str, "lineitem":str, "l_discount":str, 0:int, 1:int, 4:int); #[184] (0) mvc_bind_wrap 640 <- 72 74 184 209 78 80 502                 |
|     7 | X_627=[1500303]:bat[:lng] := sql.bind(X_72=0:int, "sys":str, "lineitem":str, "l_extendedprice":str, 0:int, 1:int, 4:int); #[182] (0) mvc_bind_wrap 627 <- 72 74 184 203 78 80 502            |
|     3 | X_612=[1500303]:bat[:lng] := sql.bind(X_72=0:int, "sys":str, "lineitem":str, "l_quantity":str, 0:int, 0:int, 4:int); #[53] (0) mvc_bind_wrap 612 <- 72 74 184 197 78 78 502                  |
|     3 | X_599=[1500303]:bat[:int] := sql.bind(X_72=0:int, "sys":str, "lineitem":str, "l_partkey":str, 0:int, 1:int, 4:int); #[128] (0) mvc_bind_wrap 599 <- 72 74 184 186 78 80 502                  |
|     3 | C_582=[1500303]:bat[:oid] := sql.tid(X_72=0:int, "sys":str, "lineitem":str, 2:int, 4:int); #[191] (0) SQLtid 582 <- 72 74 184 83 502                                                         |
|     2 | X_613=[1500303]:bat[:lng] := sql.bind(X_72=0:int, "sys":str, "lineitem":str, "l_quantity":str, 0:int, 1:int, 4:int); #[131] (0) mvc_bind_wrap 613 <- 72 74 184 197 78 80 502                 |
|   644 | C_115=[8014]:bat[:oid] := algebra.thetaselect(X_90=[200000]:bat[:str], C_73=[200000]:bat[:oid], "Brand#34":str, "==":str); #[7] (1) ALGthetaselect2 115 <- 90 73 46 116                      |
|   538 | C_119=[8167]:bat[:oid] := algebra.thetaselect(X_90=[200000]:bat[:str], C_73=[200000]:bat[:oid], "Brand#12":str, "==":str); #[8] (1) ALGthetaselect2 119 <- 90 73 4 116                       |
|  4324 | C_123=[7870]:bat[:oid] := algebra.thetaselect(X_90=[200000]:bat[:str], C_73=[200000]:bat[:oid], "Brand#23":str, "==":str); #[10] (1) ALGthetaselect2 123 <- 90 73 27 116                     |
|     6 | C_580=[1500303]:bat[:oid] := sql.tid(X_72=0:int, "sys":str, "lineitem":str, 1:int, 4:int); #[117] (0) SQLtid 580 <- 72 74 184 80 502                                                         |
|     4 | X_656=[1500303]:bat[:str] := sql.bind(X_72=0:int, "sys":str, "lineitem":str, "l_shipinstruct":str, 0:int, 1:int, 4:int); #[116] (0) mvc_bind_wrap 656 <- 72 74 184 215 78 80 502             |
|     3 | X_669=[1500303]:bat[:str] := sql.bind(X_72=0:int, "sys":str, "lineitem":str, "l_shipmode":str, 0:int, 1:int, 4:int); #[115] (0) mvc_bind_wrap 669 <- 72 74 184 221 78 80 502                 |
|     3 | X_639=[1500303]:bat[:lng] := sql.bind(X_72=0:int, "sys":str, "lineitem":str, "l_discount":str, 0:int, 0:int, 4:int); #[110] (0) mvc_bind_wrap 639 <- 72 74 184 209 78 78 502                 |
|     4 | X_626=[1500303]:bat[:lng] := sql.bind(X_72=0:int, "sys":str, "lineitem":str, "l_extendedprice":str, 0:int, 0:int, 4:int); #[108] (0) mvc_bind_wrap 626 <- 72 74 184 203 78 78 502            |
|     2 | X_96=[200000]:bat[:int] := sql.bind(X_72=0:int, "sys":str, "part":str, "p_size":str, 0:int); #[57] (0) mvc_bind_wrap 96 <- 72 74 75 97 78                                                    |
|    45 | X_642=[1500306]:bat[:lng] := sql.bind(X_72=0:int, "sys":str, "lineitem":str, "l_discount":str, 0:int, 3:int, 4:int); #[332] (0) mvc_bind_wrap 642 <- 72 74 184 209 78 110 502                |
|   155 | C_120=[16181]:bat[:oid] := bat.mergecand(C_115=[8014]:bat[:oid], C_119=[8167]:bat[:oid]); #[9] (0) BKCmergecand 120 <- 115 119                                                               |
|   207 | C_124=[24051]:bat[:oid] := bat.mergecand(C_120=[16181]:bat[:oid], C_123=[7870]:bat[:oid]); #[11] (0) BKCmergecand 124 <- 120 123                                                             |
|   121 | C_128=[627]:bat[:oid] := algebra.thetaselect(X_102=[200000]:bat[:str], C_124=[24051]:bat[:oid], "SM CASE":str, "==":str); #[12] (1) ALGthetaselect2 128 <- 102 124 6 116                     |
|    93 | C_181=[608]:bat[:oid] := algebra.thetaselect(X_102=[200000]:bat[:str], C_124=[24051]:bat[:oid], "LG PKG":str, "==":str); #[33] (1) ALGthetaselect2 181 <- 102 124 54 116                     |
|   118 | C_176=[611]:bat[:oid] := algebra.thetaselect(X_102=[200000]:bat[:str], C_124=[24051]:bat[:oid], "LG PACK":str, "==":str); #[31] (1) ALGthetaselect2 176 <- 102 124 52 116                    |
|  8582 | C_682=[374527]:bat[:oid] := algebra.thetaselect(X_655=[1500303]:bat[:str], C_579=[1500303]:bat[:oid], "DELIVER IN PERSON":str, "==":str); #[40] (0) ALGthetaselect2 682 <- 655 579 25 116    |
|   132 | C_172=[574]:bat[:oid] := algebra.thetaselect(X_102=[200000]:bat[:str], C_124=[24051]:bat[:oid], "LG BOX":str, "==":str); #[29] (1) ALGthetaselect2 172 <- 102 124 50 116                     |
|   103 | C_167=[541]:bat[:oid] := algebra.thetaselect(X_102=[200000]:bat[:str], C_124=[24051]:bat[:oid], "LG CASE":str, "==":str); #[27] (1) ALGthetaselect2 167 <- 102 124 48 116                    |
|   139 | C_132=[633]:bat[:oid] := algebra.thetaselect(X_102=[200000]:bat[:str], C_124=[24051]:bat[:oid], "SM BOX":str, "==":str); #[13] (1) ALGthetaselect2 132 <- 102 124 8 116                      |
|    11 | C_133=[1260]:bat[:oid] := bat.mergecand(C_128=[627]:bat[:oid], C_132=[633]:bat[:oid]); #[14] (0) BKCmergecand 133 <- 128 132                                                                 |
|  8644 | C_685=[374424]:bat[:oid] := algebra.thetaselect(X_658=[1500306]:bat[:str], C_584=[1500306]:bat[:oid], "DELIVER IN PERSON":str, "==":str); #[266] (0) ALGthetaselect2 685 <- 658 584 25 116   |
|    91 | C_136=[571]:bat[:oid] := algebra.thetaselect(X_102=[200000]:bat[:str], C_124=[24051]:bat[:oid], "SM PACK":str, "==":str); #[15] (1) ALGthetaselect2 136 <- 102 124 10 116                    |
|    13 | C_137=[1831]:bat[:oid] := bat.mergecand(C_133=[1260]:bat[:oid], C_136=[571]:bat[:oid]); #[16] (0) BKCmergecand 137 <- 133 136                                                                |
|   141 | C_162=[573]:bat[:oid] := algebra.thetaselect(X_102=[200000]:bat[:str], C_124=[24051]:bat[:oid], "MED PACK":str, "==":str); #[25] (1) ALGthetaselect2 162 <- 102 124 35 116                   |
|    95 | C_140=[589]:bat[:oid] := algebra.thetaselect(X_102=[200000]:bat[:str], C_124=[24051]:bat[:oid], "SM PKG":str, "==":str); #[17] (1) ALGthetaselect2 140 <- 102 124 12 116                     |
|    30 | C_141=[2420]:bat[:oid] := bat.mergecand(C_137=[1831]:bat[:oid], C_140=[589]:bat[:oid]); #[18] (0) BKCmergecand 141 <- 137 140                                                                |
|    92 | C_145=[569]:bat[:oid] := algebra.thetaselect(X_102=[200000]:bat[:str], C_124=[24051]:bat[:oid], "MED BAG":str, "==":str); #[19] (1) ALGthetaselect2 145 <- 102 124 29 116                    |
|    16 | C_146=[2989]:bat[:oid] := bat.mergecand(C_141=[2420]:bat[:oid], C_145=[569]:bat[:oid]); #[20] (0) BKCmergecand 146 <- 141 145                                                                |
|    84 | C_152=[594]:bat[:oid] := algebra.thetaselect(X_102=[200000]:bat[:str], C_124=[24051]:bat[:oid], "MED BOX":str, "==":str); #[21] (1) ALGthetaselect2 152 <- 102 124 31 116                    |
|    33 | C_154=[3583]:bat[:oid] := bat.mergecand(C_146=[2989]:bat[:oid], C_152=[594]:bat[:oid]); #[22] (0) BKCmergecand 154 <- 146 152                                                                |
|    85 | C_157=[595]:bat[:oid] := algebra.thetaselect(X_102=[200000]:bat[:str], C_124=[24051]:bat[:oid], "MED PKG":str, "==":str); #[23] (1) ALGthetaselect2 157 <- 102 124 33 116                    |
|     2 | language.pass(C_124=[24051]:bat[:oid]); #[341] (0) MALpass 1060 <- 124                                                                                                                       |
|  1348 | C_690=[374527]:bat[:oid] := bat.mergecand(C_682=[374527]:bat[:oid], C_682=[374527]:bat[:oid]); #[41] (0) BKCmergecand 690 <- 682 682                                                         |
|  1586 | C_693=[374424]:bat[:oid] := bat.mergecand(C_685=[374424]:bat[:oid], C_685=[374424]:bat[:oid]); #[267] (0) BKCmergecand 693 <- 685 685                                                        |
|  1799 | C_698=[374527]:bat[:oid] := bat.mergecand(C_690=[374527]:bat[:oid], C_682=[374527]:bat[:oid]); #[42] (0) BKCmergecand 698 <- 690 682                                                         |
|     2 | language.pass(C_682=[374527]:bat[:oid]); #[342] (0) MALpass 1061 <- 682                                                                                                                      |
|    34 | C_158=[4178]:bat[:oid] := bat.mergecand(C_154=[3583]:bat[:oid], C_157=[595]:bat[:oid]); #[24] (0) BKCmergecand 158 <- 154 157                                                                |
|    17 | C_163=[4751]:bat[:oid] := bat.mergecand(C_158=[4178]:bat[:oid], C_162=[573]:bat[:oid]); #[26] (0) BKCmergecand 163 <- 158 162                                                                |
|    17 | C_168=[5292]:bat[:oid] := bat.mergecand(C_163=[4751]:bat[:oid], C_167=[541]:bat[:oid]); #[28] (0) BKCmergecand 168 <- 163 167                                                                |
|    17 | C_173=[5866]:bat[:oid] := bat.mergecand(C_168=[5292]:bat[:oid], C_172=[574]:bat[:oid]); #[30] (0) BKCmergecand 173 <- 168 172                                                                |
|    20 | C_177=[6477]:bat[:oid] := bat.mergecand(C_173=[5866]:bat[:oid], C_176=[611]:bat[:oid]); #[32] (0) BKCmergecand 177 <- 173 176                                                                |
|    20 | C_182=[7085]:bat[:oid] := bat.mergecand(C_177=[6477]:bat[:oid], C_181=[608]:bat[:oid]); #[34] (0) BKCmergecand 182 <- 177 181                                                                |
|  1718 | C_701=[374424]:bat[:oid] := bat.mergecand(C_693=[374424]:bat[:oid], C_685=[374424]:bat[:oid]); #[268] (0) BKCmergecand 701 <- 693 685                                                        |
|   116 | X_273=[7085]:bat[:int] := algebra.projection(C_182=[7085]:bat[:oid], X_85=[200000]:bat[:int]); #[36] (0) ALGprojection 273 <- 182 85                                                         |
|     2 | language.pass(C_685=[374424]:bat[:oid]); #[411] (0) MALpass 1130 <- 685                                                                                                                      |
|    65 | X_274=[7085]:bat[:str] := algebra.projection(C_182=[7085]:bat[:oid], X_90=[200000]:bat[:str]); #[62] (0) ALGprojection 274 <- 182 90                                                         |
|    46 | X_276=[7085]:bat[:str] := algebra.projection(C_182=[7085]:bat[:oid], X_102=[200000]:bat[:str]); #[60] (0) ALGprojection 276 <- 182 102                                                       |
|     2 | language.pass(X_90=[200000]:bat[:str]); #[350] (0) MALpass 1069 <- 90                                                                                                                        |
|     1 | language.pass(X_102=[200000]:bat[:str]); #[348] (0) MALpass 1067 <- 102                                                                                                                      |
|    25 | C_709=[0]:bat[:oid] := algebra.thetaselect(X_671=[1500306]:bat[:str], C_701=[374424]:bat[:oid], "AIR REG":str, "==":str); #[270] (0) ALGthetaselect2 709 <- 671 701 23 116                   |
|    96 | X_275=[7085]:bat[:int] := algebra.projection(C_182=[7085]:bat[:oid], X_96=[200000]:bat[:int]); #[58] (0) ALGprojection 275 <- 182 96                                                         |
|     2 | language.pass(C_182=[7085]:bat[:oid]); #[349] (0) MALpass 1068 <- 182                                                                                                                        |
|    15 | C_706=[0]:bat[:oid] := algebra.thetaselect(X_667=[1500303]:bat[:str], C_698=[374527]:bat[:oid], "AIR REG":str, "==":str); #[44] (0) ALGthetaselect2 706 <- 667 698 23 116                    |
|  1834 | C_705=[53438]:bat[:oid] := algebra.thetaselect(X_671=[1500306]:bat[:str], C_701=[374424]:bat[:oid], "AIR":str, "==":str); #[269] (0) ALGthetaselect2 705 <- 671 701 21 116                   |
|     3 | language.pass(C_701=[374424]:bat[:oid]); #[412] (0) MALpass 1131 <- 701                                                                                                                      |
|     1 | language.pass(C_73=[200000]:bat[:oid]); #[340] (0) MALpass 1059 <- 73                                                                                                                        |
|  1716 | C_702=[53374]:bat[:oid] := algebra.thetaselect(X_667=[1500303]:bat[:str], C_698=[374527]:bat[:oid], "AIR":str, "==":str); #[43] (0) ALGthetaselect2 702 <- 667 698 21 116                    |
|     3 | language.pass(C_698=[374527]:bat[:oid]); #[343] (0) MALpass 1062 <- 698                                                                                                                      |
|    90 | C_713=[53438]:bat[:oid] := bat.mergecand(C_705=[53438]:bat[:oid], C_709=[0]:bat[:oid]); #[271] (0) BKCmergecand 713 <- 705 709                                                               |
|   141 | C_721=[53438]:bat[:oid] := bat.mergecand(C_713=[53438]:bat[:oid], C_705=[53438]:bat[:oid]); #[272] (0) BKCmergecand 721 <- 713 705                                                           |
|    67 | C_729=[53438]:bat[:oid] := bat.mergecand(C_721=[53438]:bat[:oid], C_709=[0]:bat[:oid]); #[273] (0) BKCmergecand 729 <- 721 709                                                               |
|   127 | C_737=[53438]:bat[:oid] := bat.mergecand(C_729=[53438]:bat[:oid], C_705=[53438]:bat[:oid]); #[274] (0) BKCmergecand 737 <- 729 705                                                           |
|     1 | language.pass(C_705=[53438]:bat[:oid]); #[413] (0) MALpass 1132 <- 705                                                                                                                       |
|    69 | C_710=[53374]:bat[:oid] := bat.mergecand(C_702=[53374]:bat[:oid], C_706=[0]:bat[:oid]); #[45] (0) BKCmergecand 710 <- 702 706                                                                |
|   158 | C_718=[53374]:bat[:oid] := bat.mergecand(C_710=[53374]:bat[:oid], C_702=[53374]:bat[:oid]); #[46] (0) BKCmergecand 718 <- 710 702                                                            |
|    89 | C_726=[53374]:bat[:oid] := bat.mergecand(C_718=[53374]:bat[:oid], C_706=[0]:bat[:oid]); #[47] (0) BKCmergecand 726 <- 718 706                                                                |
|   230 | C_734=[53374]:bat[:oid] := bat.mergecand(C_726=[53374]:bat[:oid], C_702=[53374]:bat[:oid]); #[48] (0) BKCmergecand 734 <- 726 702                                                            |
|     3 | language.pass(C_702=[53374]:bat[:oid]); #[344] (0) MALpass 1063 <- 702                                                                                                                       |
|    43 | C_745=[53438]:bat[:oid] := bat.mergecand(C_737=[53438]:bat[:oid], C_709=[0]:bat[:oid]); #[275] (0) BKCmergecand 745 <- 737 709                                                               |
|     1 | language.pass(C_709=[0]:bat[:oid]); #[414] (0) MALpass 1133 <- 709                                                                                                                           |
|    58 | C_742=[53374]:bat[:oid] := bat.mergecand(C_734=[53374]:bat[:oid], C_706=[0]:bat[:oid]); #[49] (0) BKCmergecand 742 <- 734 706                                                                |
|     1 | language.pass(C_706=[0]:bat[:oid]); #[345] (0) MALpass 1064 <- 706                                                                                                                           |
| 16353 | C_684=[375451]:bat[:oid] := algebra.thetaselect(X_657=[1500303]:bat[:str], C_582=[1500303]:bat[:oid], "DELIVER IN PERSON":str, "==":str); #[192] (0) ALGthetaselect2 684 <- 657 582 25 116   |
|  1043 | X_746=[53374]:bat[:int] := algebra.projection(C_742=[53374]:bat[:oid], X_597=[1500303]:bat[:int]); #[51] (0) ALGprojection 746 <- 742 597                                                    |
|  1299 | X_749=[53438]:bat[:int] := algebra.projection(C_745=[53438]:bat[:oid], X_601=[1500306]:bat[:int]); #[277] (0) ALGprojection 749 <- 745 601                                                   |
|  1060 | (X_776=[1913]:bat[:oid], X_777=[1913]:bat[:oid]) := algebra.join(X_273=[7085]:bat[:int], X_749=[53438]:bat[:int], nil:BAT, nil:BAT, false:bit, nil:lng); #[278] (0) ALGjoin 776 777 <- 273 7 |
:       : 49 285 285 287 288                                                                                                                                                                           :
|   349 | X_801=[1913]:bat[:lng] := algebra.projectionpath(X_777=[1913]:bat[:oid], C_745=[53438]:bat[:oid], X_617=[1500306]:bat[:lng]); #[280] (0) ALGprojectionpath 801 <- 777 745 617                |
|    30 | X_785=[1913]:bat[:str] := algebra.projection(X_776=[1913]:bat[:oid], X_274=[7085]:bat[:str]); #[285] (0) ALGprojection 785 <- 776 274                                                        |
|    19 | C_821=[654]:bat[:oid] := algebra.thetaselect(X_785=[1913]:bat[:str], "Brand#12":str, "==":str); #[286] (0) ALGthetaselect1 821 <- 785 4 116                                                  |
|    15 | C_937=[618]:bat[:oid] := algebra.thetaselect(X_785=[1913]:bat[:str], "Brand#34":str, "==":str); #[315] (0) ALGthetaselect1 937 <- 785 46 116                                                 |
|    14 | C_877=[641]:bat[:oid] := algebra.thetaselect(X_785=[1913]:bat[:str], "Brand#23":str, "==":str); #[300] (0) ALGthetaselect1 877 <- 785 27 116                                                 |
|  8955 | C_683=[375646]:bat[:oid] := algebra.thetaselect(X_656=[1500303]:bat[:str], C_580=[1500303]:bat[:oid], "DELIVER IN PERSON":str, "==":str); #[118] (0) ALGthetaselect2 683 <- 656 580 25 116   |
|     1 | language.pass(X_785=[1913]:bat[:str]); #[426] (0) MALpass 1145 <- 785                                                                                                                        |
|   254 | X_813=[1913]:bat[:str] := algebra.projectionpath(X_777=[1913]:bat[:oid], C_745=[53438]:bat[:oid], X_658=[1500306]:bat[:str]); #[281] (0) ALGprojectionpath 813 <- 777 745 658                |
|     2 | language.pass(X_658=[1500306]:bat[:str]); #[416] (0) MALpass 1135 <- 658                                                                                                                     |
|   217 | X_817=[1913]:bat[:str] := algebra.projectionpath(X_777=[1913]:bat[:oid], C_745=[53438]:bat[:oid], X_671=[1500306]:bat[:str]); #[282] (0) ALGprojectionpath 817 <- 777 745 671                |
|     1 | language.pass(X_671=[1500306]:bat[:str]); #[417] (0) MALpass 1136 <- 671                                                                                                                     |
|    21 | X_789=[1913]:bat[:int] := algebra.projection(X_776=[1913]:bat[:oid], X_275=[7085]:bat[:int]); #[283] (0) ALGprojection 789 <- 776 275                                                        |
|    21 | X_793=[1913]:bat[:str] := algebra.projection(X_776=[1913]:bat[:oid], X_276=[7085]:bat[:str]); #[284] (0) ALGprojection 793 <- 776 276                                                        |
|     1 | language.pass(X_776=[1913]:bat[:oid]); #[420] (0) MALpass 1139 <- 776                                                                                                                        |
|     9 | C_825=[56]:bat[:oid] := algebra.thetaselect(X_793=[1913]:bat[:str], C_821=[654]:bat[:oid], "SM CASE":str, "==":str); #[287] (0) ALGthetaselect2 825 <- 793 821 6 116                         |
|  1290 | C_692=[375451]:bat[:oid] := bat.mergecand(C_684=[375451]:bat[:oid], C_684=[375451]:bat[:oid]); #[193] (0) BKCmergecand 692 <- 684 684                                                        |
|     6 | C_829=[63]:bat[:oid] := algebra.thetaselect(X_793=[1913]:bat[:str], C_821=[654]:bat[:oid], "SM BOX":str, "==":str); #[288] (0) ALGthetaselect2 829 <- 793 821 8 116                          |
|     6 | C_833=[119]:bat[:oid] := bat.mergecand(C_825=[56]:bat[:oid], C_829=[63]:bat[:oid]); #[289] (0) BKCmergecand 833 <- 825 829                                                                   |
|     6 | C_837=[52]:bat[:oid] := algebra.thetaselect(X_793=[1913]:bat[:str], C_821=[654]:bat[:oid], "SM PACK":str, "==":str); #[290] (0) ALGthetaselect2 837 <- 793 821 10 116                        |
|     5 | C_845=[38]:bat[:oid] := algebra.thetaselect(X_793=[1913]:bat[:str], C_821=[654]:bat[:oid], "SM PKG":str, "==":str); #[292] (0) ALGthetaselect2 845 <- 793 821 12 116                         |
|     1 | language.pass(C_821=[654]:bat[:oid]); #[422] (0) MALpass 1141 <- 821                                                                                                                         |
|     3 | C_841=[171]:bat[:oid] := bat.mergecand(C_833=[119]:bat[:oid], C_837=[52]:bat[:oid]); #[291] (0) BKCmergecand 841 <- 833 837                                                                  |
|     4 | C_849=[209]:bat[:oid] := bat.mergecand(C_841=[171]:bat[:oid], C_845=[38]:bat[:oid]); #[293] (0) BKCmergecand 849 <- 841 845                                                                  |
|    11 | C_853=[32]:bat[:oid] := algebra.select(X_789=[1913]:bat[:int], C_849=[209]:bat[:oid], 1:int, 5:int, true:bit, true:bit, false:bit, true:bit); #[294] (0) ALGselect2nil 853 <- 789 849 80 562 |
:       :  330 330 287 330                                                                                                                                                                             :
|    73 | C_857=[32]:bat[:oid] := algebra.thetaselect(X_817=[1913]:bat[:str], C_853=[32]:bat[:oid], "AIR":str, "==":str); #[295] (0) ALGthetaselect2 857 <- 817 853 21 116                             |
|     4 | C_861=[0]:bat[:oid] := algebra.thetaselect(X_817=[1913]:bat[:str], C_853=[32]:bat[:oid], "AIR REG":str, "==":str); #[296] (0) ALGthetaselect2 861 <- 817 853 23 116                          |
|     8 | C_881=[53]:bat[:oid] := algebra.thetaselect(X_793=[1913]:bat[:str], C_877=[641]:bat[:oid], "MED BAG":str, "==":str); #[301] (0) ALGthetaselect2 881 <- 793 877 29 116                        |
|     3 | C_865=[32]:bat[:oid] := bat.mergecand(C_857=[32]:bat[:oid], C_861=[0]:bat[:oid]); #[297] (0) BKCmergecand 865 <- 857 861                                                                     |
|    59 | C_869=[32]:bat[:oid] := algebra.thetaselect(X_813=[1913]:bat[:str], C_865=[32]:bat[:oid], "DELIVER IN PERSON":str, "==":str); #[298] (0) ALGthetaselect2 869 <- 813 865 25 116               |
|    21 | C_873=[6]:bat[:oid] := algebra.select(X_801=[1913]:bat[:lng], C_869=[32]:bat[:oid], 100:lng, 1100:lng, true:bit, true:bit, false:bit, true:bit); #[299] (0) ALGselect2nil 873 <- 801 869 563 |
:       :  565 330 330 287 330                                                                                                                                                                         :
|     7 | C_885=[50]:bat[:oid] := algebra.thetaselect(X_793=[1913]:bat[:str], C_877=[641]:bat[:oid], "MED BOX":str, "==":str); #[302] (0) ALGthetaselect2 885 <- 793 877 31 116                        |
|     3 | C_889=[103]:bat[:oid] := bat.mergecand(C_881=[53]:bat[:oid], C_885=[50]:bat[:oid]); #[303] (0) BKCmergecand 889 <- 881 885                                                                   |
|     6 | C_893=[60]:bat[:oid] := algebra.thetaselect(X_793=[1913]:bat[:str], C_877=[641]:bat[:oid], "MED PKG":str, "==":str); #[304] (0) ALGthetaselect2 893 <- 793 877 33 116                        |
|     4 | C_897=[163]:bat[:oid] := bat.mergecand(C_889=[103]:bat[:oid], C_893=[60]:bat[:oid]); #[305] (0) BKCmergecand 897 <- 889 893                                                                  |
|     6 | C_901=[52]:bat[:oid] := algebra.thetaselect(X_793=[1913]:bat[:str], C_877=[641]:bat[:oid], "MED PACK":str, "==":str); #[306] (0) ALGthetaselect2 901 <- 793 877 35 116                       |
|     1 | language.pass(C_877=[641]:bat[:oid]); #[424] (0) MALpass 1143 <- 877                                                                                                                         |
|     4 | C_905=[215]:bat[:oid] := bat.mergecand(C_897=[163]:bat[:oid], C_901=[52]:bat[:oid]); #[307] (0) BKCmergecand 905 <- 897 901                                                                  |
|     5 | C_909=[50]:bat[:oid] := algebra.select(X_789=[1913]:bat[:int], C_905=[215]:bat[:oid], 1:int, 10:int, true:bit, true:bit, false:bit, true:bit); #[308] (0) ALGselect2nil 909 <- 789 905 80 11 |
:       : 4 330 330 287 330                                                                                                                                                                            :
|     4 | C_913=[50]:bat[:oid] := algebra.thetaselect(X_817=[1913]:bat[:str], C_909=[50]:bat[:oid], "AIR":str, "==":str); #[309] (0) ALGthetaselect2 913 <- 817 909 21 116                             |
|     7 | C_941=[54]:bat[:oid] := algebra.thetaselect(X_793=[1913]:bat[:str], C_937=[618]:bat[:oid], "LG CASE":str, "==":str); #[316] (0) ALGthetaselect2 941 <- 793 937 48 116                        |
|     4 | C_917=[0]:bat[:oid] := algebra.thetaselect(X_817=[1913]:bat[:str], C_909=[50]:bat[:oid], "AIR REG":str, "==":str); #[310] (0) ALGthetaselect2 917 <- 817 909 23 116                          |
|     1 | language.pass(C_909=[50]:bat[:oid]); #[425] (0) MALpass 1144 <- 909                                                                                                                          |
|     3 | C_921=[50]:bat[:oid] := bat.mergecand(C_913=[50]:bat[:oid], C_917=[0]:bat[:oid]); #[311] (0) BKCmergecand 921 <- 913 917                                                                     |
|     4 | C_925=[50]:bat[:oid] := algebra.thetaselect(X_813=[1913]:bat[:str], C_921=[50]:bat[:oid], "DELIVER IN PERSON":str, "==":str); #[312] (0) ALGthetaselect2 925 <- 813 921 25 116               |
|     5 | C_929=[17]:bat[:oid] := algebra.select(X_801=[1913]:bat[:lng], C_925=[50]:bat[:oid], 1000:lng, 2000:lng, true:bit, true:bit, false:bit, true:bit); #[313] (0) ALGselect2nil 929 <- 801 925 5 |
:       : 67 569 330 330 287 330                                                                                                                                                                       :
|  1502 | C_691=[375646]:bat[:oid] := bat.mergecand(C_683=[375646]:bat[:oid], C_683=[375646]:bat[:oid]); #[119] (0) BKCmergecand 691 <- 683 683                                                        |
|     2 | C_933=[23]:bat[:oid] := bat.mergecand(C_873=[6]:bat[:oid], C_929=[17]:bat[:oid]); #[314] (0) BKCmergecand 933 <- 873 929                                                                     |
|     9 | C_945=[52]:bat[:oid] := algebra.thetaselect(X_793=[1913]:bat[:str], C_937=[618]:bat[:oid], "LG BOX":str, "==":str); #[317] (0) ALGthetaselect2 945 <- 793 937 50 116                         |
|     4 | C_949=[106]:bat[:oid] := bat.mergecand(C_941=[54]:bat[:oid], C_945=[52]:bat[:oid]); #[318] (0) BKCmergecand 949 <- 941 945                                                                   |
|     6 | C_953=[52]:bat[:oid] := algebra.thetaselect(X_793=[1913]:bat[:str], C_937=[618]:bat[:oid], "LG PACK":str, "==":str); #[319] (0) ALGthetaselect2 953 <- 793 937 52 116                        |
|     5 | C_961=[51]:bat[:oid] := algebra.thetaselect(X_793=[1913]:bat[:str], C_937=[618]:bat[:oid], "LG PKG":str, "==":str); #[321] (0) ALGthetaselect2 961 <- 793 937 54 116                         |
|     1 | language.pass(X_793=[1913]:bat[:str]); #[427] (0) MALpass 1146 <- 793                                                                                                                        |
|     3 | C_957=[158]:bat[:oid] := bat.mergecand(C_949=[106]:bat[:oid], C_953=[52]:bat[:oid]); #[320] (0) BKCmergecand 957 <- 949 953                                                                  |
|     4 | C_965=[209]:bat[:oid] := bat.mergecand(C_957=[158]:bat[:oid], C_961=[51]:bat[:oid]); #[322] (0) BKCmergecand 965 <- 957 961                                                                  |
|     6 | C_969=[71]:bat[:oid] := algebra.select(X_789=[1913]:bat[:int], C_965=[209]:bat[:oid], 1:int, 15:int, true:bit, true:bit, false:bit, true:bit); #[323] (0) ALGselect2nil 969 <- 789 965 80 35 |
:       : 4 330 330 287 330                                                                                                                                                                            :
|     1 | language.pass(X_789=[1913]:bat[:int]); #[429] (0) MALpass 1148 <- 789                                                                                                                        |
|     1 | language.pass(C_853=[32]:bat[:oid]); #[423] (0) MALpass 1142 <- 853                                                                                                                          |
|     1 | language.pass(C_937=[618]:bat[:oid]); #[428] (0) MALpass 1147 <- 937                                                                                                                         |
|     4 | C_973=[71]:bat[:oid] := algebra.thetaselect(X_817=[1913]:bat[:str], C_969=[71]:bat[:oid], "AIR":str, "==":str); #[324] (0) ALGthetaselect2 973 <- 817 969 21 116                             |
|     3 | C_977=[0]:bat[:oid] := algebra.thetaselect(X_817=[1913]:bat[:str], C_969=[71]:bat[:oid], "AIR REG":str, "==":str); #[325] (0) ALGthetaselect2 977 <- 817 969 23 116                          |
|     1 | language.pass(X_817=[1913]:bat[:str]); #[430] (0) MALpass 1149 <- 817                                                                                                                        |
|     6 | C_981=[71]:bat[:oid] := bat.mergecand(C_973=[71]:bat[:oid], C_977=[0]:bat[:oid]); #[326] (0) BKCmergecand 981 <- 973 977                                                                     |
|    20 | C_985=[71]:bat[:oid] := algebra.thetaselect(X_813=[1913]:bat[:str], C_981=[71]:bat[:oid], "DELIVER IN PERSON":str, "==":str); #[327] (0) ALGthetaselect2 985 <- 813 981 25 116               |
|     1 | language.pass(X_813=[1913]:bat[:str]); #[432] (0) MALpass 1151 <- 813                                                                                                                        |
|     6 | C_989=[17]:bat[:oid] := algebra.select(X_801=[1913]:bat[:lng], C_985=[71]:bat[:oid], 2000:lng, 3000:lng, true:bit, true:bit, false:bit, true:bit); #[328] (0) ALGselect2nil 989 <- 801 985 5 |
:       : 69 572 330 330 287 330                                                                                                                                                                       :
|     1 | language.pass(X_801=[1913]:bat[:lng]); #[433] (0) MALpass 1152 <- 801                                                                                                                        |
|     1 | language.pass(C_969=[71]:bat[:oid]); #[431] (0) MALpass 1150 <- 969                                                                                                                          |
|     3 | C_993=[40]:bat[:oid] := bat.mergecand(C_933=[23]:bat[:oid], C_989=[17]:bat[:oid]); #[329] (0) BKCmergecand 993 <- 933 989                                                                    |
|   223 | X_1021=[40]:bat[:lng] := algebra.projectionpath(C_993=[40]:bat[:oid], X_777=[1913]:bat[:oid], C_745=[53438]:bat[:oid], X_629=[1500306]:bat[:lng]); #[331] (0) ALGprojectionpath 1021 <- 993  |
:       : 777 745 629                                                                                                                                                                                  :
|    28 | X_1025=[40]:bat[:lng] := algebra.projectionpath(C_993=[40]:bat[:oid], X_777=[1913]:bat[:oid], C_745=[53438]:bat[:oid], X_642=[1500306]:bat[:lng]); #[333] (0) ALGprojectionpath 1025 <- 993  |
:       : 777 745 642                                                                                                                                                                                  :
|     1 | language.pass(C_993=[40]:bat[:oid]); #[434] (0) MALpass 1153 <- 993                                                                                                                          |
|     5 | X_1037=[40]:bat[:lng] := batcalc.-(100:lng, X_1025=[40]:bat[:lng], nil:BAT); #[334] (0) CMDbatSUBsignal 1037 <- 563 1025 285                                                                 |
|     5 | X_1041=[40]:bat[:hge] := batcalc.*(X_1021=[40]:bat[:lng], X_1037=[40]:bat[:lng], nil:BAT, nil:BAT); #[335] (0) CMDbatMULenlarge 1041 <- 1021 1037 285 285                                    |
|     5 | X_1046=10184813992:hge := aggr.sum(X_1041=[40]:bat[:hge]); #[336] (0) CMDBATsum 1046 <- 1041                                                                                                 |
|     1 | language.pass(X_777=[1913]:bat[:oid]); #[435] (0) MALpass 1154 <- 777                                                                                                                        |
|     1 | language.pass(C_745=[53438]:bat[:oid]); #[436] (0) MALpass 1155 <- 745                                                                                                                       |
|  4147 | (X_770=[1862]:bat[:oid], X_771=[1862]:bat[:oid]) := algebra.join(X_273=[7085]:bat[:int], X_746=[53374]:bat[:int], nil:BAT, nil:BAT, false:bit, nil:lng); #[52] (0) ALGjoin 770 771 <- 273 74 |
:       : 6 285 285 287 288                                                                                                                                                                            :
|   248 | X_810=[1862]:bat[:str] := algebra.projectionpath(X_771=[1862]:bat[:oid], C_742=[53374]:bat[:oid], X_655=[1500303]:bat[:str]); #[55] (0) ALGprojectionpath 810 <- 771 742 655                 |
|   373 | X_798=[1862]:bat[:lng] := algebra.projectionpath(X_771=[1862]:bat[:oid], C_742=[53374]:bat[:oid], X_612=[1500303]:bat[:lng]); #[54] (0) ALGprojectionpath 798 <- 771 742 612                 |
|     1 | language.pass(X_655=[1500303]:bat[:str]); #[346] (0) MALpass 1065 <- 655                                                                                                                     |
|    30 | X_782=[1862]:bat[:str] := algebra.projection(X_770=[1862]:bat[:oid], X_274=[7085]:bat[:str]); #[63] (0) ALGprojection 782 <- 770 274                                                         |
|    19 | C_818=[610]:bat[:oid] := algebra.thetaselect(X_782=[1862]:bat[:str], "Brand#12":str, "==":str); #[64] (0) ALGthetaselect1 818 <- 782 4 116                                                   |
|    15 | C_934=[618]:bat[:oid] := algebra.thetaselect(X_782=[1862]:bat[:str], "Brand#34":str, "==":str); #[93] (0) ALGthetaselect1 934 <- 782 46 116                                                  |
|    16 | C_874=[634]:bat[:oid] := algebra.thetaselect(X_782=[1862]:bat[:str], "Brand#23":str, "==":str); #[78] (0) ALGthetaselect1 874 <- 782 27 116                                                  |
|     2 | language.pass(X_782=[1862]:bat[:str]); #[356] (0) MALpass 1075 <- 782                                                                                                                        |
|   139 | X_814=[1862]:bat[:str] := algebra.projectionpath(X_771=[1862]:bat[:oid], C_742=[53374]:bat[:oid], X_667=[1500303]:bat[:str]); #[56] (0) ALGprojectionpath 814 <- 771 742 667                 |
|     1 | language.pass(X_667=[1500303]:bat[:str]); #[347] (0) MALpass 1066 <- 667                                                                                                                     |
|    12 | X_790=[1862]:bat[:str] := algebra.projection(X_770=[1862]:bat[:oid], X_276=[7085]:bat[:str]); #[61] (0) ALGprojection 790 <- 770 276                                                         |
|    14 | X_786=[1862]:bat[:int] := algebra.projection(X_770=[1862]:bat[:oid], X_275=[7085]:bat[:int]); #[59] (0) ALGprojection 786 <- 770 275                                                         |
|  1511 | C_699=[375646]:bat[:oid] := bat.mergecand(C_691=[375646]:bat[:oid], C_683=[375646]:bat[:oid]); #[120] (0) BKCmergecand 699 <- 691 683                                                        |
|     7 | C_822=[41]:bat[:oid] := algebra.thetaselect(X_790=[1862]:bat[:str], C_818=[610]:bat[:oid], "SM CASE":str, "==":str); #[65] (0) ALGthetaselect2 822 <- 790 818 6 116                          |
|     2 | language.pass(C_683=[375646]:bat[:oid]); #[367] (0) MALpass 1086 <- 683                                                                                                                      |
|     9 | C_826=[61]:bat[:oid] := algebra.thetaselect(X_790=[1862]:bat[:str], C_818=[610]:bat[:oid], "SM BOX":str, "==":str); #[66] (0) ALGthetaselect2 826 <- 790 818 8 116                           |
|     3 | C_830=[102]:bat[:oid] := bat.mergecand(C_822=[41]:bat[:oid], C_826=[61]:bat[:oid]); #[67] (0) BKCmergecand 830 <- 822 826                                                                    |
|     8 | C_958=[64]:bat[:oid] := algebra.thetaselect(X_790=[1862]:bat[:str], C_934=[618]:bat[:oid], "LG PKG":str, "==":str); #[99] (0) ALGthetaselect2 958 <- 790 934 54 116                          |
|     4 | C_834=[49]:bat[:oid] := algebra.thetaselect(X_790=[1862]:bat[:str], C_818=[610]:bat[:oid], "SM PACK":str, "==":str); #[68] (0) ALGthetaselect2 834 <- 790 818 10 116                         |
|     5 | C_950=[50]:bat[:oid] := algebra.thetaselect(X_790=[1862]:bat[:str], C_934=[618]:bat[:oid], "LG PACK":str, "==":str); #[97] (0) ALGthetaselect2 950 <- 790 934 52 116                         |
|     3 | C_838=[151]:bat[:oid] := bat.mergecand(C_830=[102]:bat[:oid], C_834=[49]:bat[:oid]); #[69] (0) BKCmergecand 838 <- 830 834                                                                   |
|     6 | C_942=[55]:bat[:oid] := algebra.thetaselect(X_790=[1862]:bat[:str], C_934=[618]:bat[:oid], "LG BOX":str, "==":str); #[95] (0) ALGthetaselect2 942 <- 790 934 50 116                          |
|     4 | C_842=[42]:bat[:oid] := algebra.thetaselect(X_790=[1862]:bat[:str], C_818=[610]:bat[:oid], "SM PKG":str, "==":str); #[70] (0) ALGthetaselect2 842 <- 790 818 12 116                          |
|     1 | language.pass(C_818=[610]:bat[:oid]); #[352] (0) MALpass 1071 <- 818                                                                                                                         |
|     6 | C_938=[49]:bat[:oid] := algebra.thetaselect(X_790=[1862]:bat[:str], C_934=[618]:bat[:oid], "LG CASE":str, "==":str); #[94] (0) ALGthetaselect2 938 <- 790 934 48 116                         |
|     5 | C_878=[41]:bat[:oid] := algebra.thetaselect(X_790=[1862]:bat[:str], C_874=[634]:bat[:oid], "MED BAG":str, "==":str); #[79] (0) ALGthetaselect2 878 <- 790 874 29 116                         |
|     1 | language.pass(C_934=[618]:bat[:oid]); #[358] (0) MALpass 1077 <- 934                                                                                                                         |
|     4 | C_846=[193]:bat[:oid] := bat.mergecand(C_838=[151]:bat[:oid], C_842=[42]:bat[:oid]); #[71] (0) BKCmergecand 846 <- 838 842                                                                   |
|     4 | C_850=[15]:bat[:oid] := algebra.select(X_786=[1862]:bat[:int], C_846=[193]:bat[:oid], 1:int, 5:int, true:bit, true:bit, false:bit, true:bit); #[72] (0) ALGselect2nil 850 <- 786 846 80 562  |
:       : 330 330 287 330                                                                                                                                                                              :
|     4 | C_946=[104]:bat[:oid] := bat.mergecand(C_938=[49]:bat[:oid], C_942=[55]:bat[:oid]); #[96] (0) BKCmergecand 946 <- 938 942                                                                    |
|    14 | C_854=[15]:bat[:oid] := algebra.thetaselect(X_814=[1862]:bat[:str], C_850=[15]:bat[:oid], "AIR":str, "==":str); #[73] (0) ALGthetaselect2 854 <- 814 850 21 116                              |
|     4 | C_954=[154]:bat[:oid] := bat.mergecand(C_946=[104]:bat[:oid], C_950=[50]:bat[:oid]); #[98] (0) BKCmergecand 954 <- 946 950                                                                   |
|     5 | C_882=[61]:bat[:oid] := algebra.thetaselect(X_790=[1862]:bat[:str], C_874=[634]:bat[:oid], "MED BOX":str, "==":str); #[80] (0) ALGthetaselect2 882 <- 790 874 31 116                         |
|     3 | C_886=[102]:bat[:oid] := bat.mergecand(C_878=[41]:bat[:oid], C_882=[61]:bat[:oid]); #[81] (0) BKCmergecand 886 <- 878 882                                                                    |
|     3 | C_962=[218]:bat[:oid] := bat.mergecand(C_954=[154]:bat[:oid], C_958=[64]:bat[:oid]); #[100] (0) BKCmergecand 962 <- 954 958                                                                  |
|     3 | C_858=[0]:bat[:oid] := algebra.thetaselect(X_814=[1862]:bat[:str], C_850=[15]:bat[:oid], "AIR REG":str, "==":str); #[74] (0) ALGthetaselect2 858 <- 814 850 23 116                           |
|     1 | language.pass(C_850=[15]:bat[:oid]); #[353] (0) MALpass 1072 <- 850                                                                                                                          |
|     6 | C_966=[66]:bat[:oid] := algebra.select(X_786=[1862]:bat[:int], C_962=[218]:bat[:oid], 1:int, 15:int, true:bit, true:bit, false:bit, true:bit); #[101] (0) ALGselect2nil 966 <- 786 962 80 35 |
:       : 4 330 330 287 330                                                                                                                                                                            :
|     4 | C_890=[56]:bat[:oid] := algebra.thetaselect(X_790=[1862]:bat[:str], C_874=[634]:bat[:oid], "MED PKG":str, "==":str); #[82] (0) ALGthetaselect2 890 <- 790 874 33 116                         |
|     3 | C_894=[158]:bat[:oid] := bat.mergecand(C_886=[102]:bat[:oid], C_890=[56]:bat[:oid]); #[83] (0) BKCmergecand 894 <- 886 890                                                                   |
|     5 | C_970=[66]:bat[:oid] := algebra.thetaselect(X_814=[1862]:bat[:str], C_966=[66]:bat[:oid], "AIR":str, "==":str); #[102] (0) ALGthetaselect2 970 <- 814 966 21 116                             |
|     2 | C_862=[15]:bat[:oid] := bat.mergecand(C_854=[15]:bat[:oid], C_858=[0]:bat[:oid]); #[75] (0) BKCmergecand 862 <- 854 858                                                                      |
|     4 | C_974=[0]:bat[:oid] := algebra.thetaselect(X_814=[1862]:bat[:str], C_966=[66]:bat[:oid], "AIR REG":str, "==":str); #[103] (0) ALGthetaselect2 974 <- 814 966 23 116                          |
|    12 | C_866=[15]:bat[:oid] := algebra.thetaselect(X_810=[1862]:bat[:str], C_862=[15]:bat[:oid], "DELIVER IN PERSON":str, "==":str); #[76] (0) ALGthetaselect2 866 <- 810 862 25 116                |
|     5 | C_898=[37]:bat[:oid] := algebra.thetaselect(X_790=[1862]:bat[:str], C_874=[634]:bat[:oid], "MED PACK":str, "==":str); #[84] (0) ALGthetaselect2 898 <- 790 874 35 116                        |
|     1 | language.pass(X_790=[1862]:bat[:str]); #[357] (0) MALpass 1076 <- 790                                                                                                                        |
|     4 | C_870=[7]:bat[:oid] := algebra.select(X_798=[1862]:bat[:lng], C_866=[15]:bat[:oid], 100:lng, 1100:lng, true:bit, true:bit, false:bit, true:bit); #[77] (0) ALGselect2nil 870 <- 798 866 563  |
:       : 565 330 330 287 330                                                                                                                                                                          :
|     2 | C_978=[66]:bat[:oid] := bat.mergecand(C_970=[66]:bat[:oid], C_974=[0]:bat[:oid]); #[104] (0) BKCmergecand 978 <- 970 974                                                                     |
|     3 | C_902=[195]:bat[:oid] := bat.mergecand(C_894=[158]:bat[:oid], C_898=[37]:bat[:oid]); #[85] (0) BKCmergecand 902 <- 894 898                                                                   |
|     4 | C_982=[66]:bat[:oid] := algebra.thetaselect(X_810=[1862]:bat[:str], C_978=[66]:bat[:oid], "DELIVER IN PERSON":str, "==":str); #[105] (0) ALGthetaselect2 982 <- 810 978 25 116               |
|     3 | C_906=[36]:bat[:oid] := algebra.select(X_786=[1862]:bat[:int], C_902=[195]:bat[:oid], 1:int, 10:int, true:bit, true:bit, false:bit, true:bit); #[86] (0) ALGselect2nil 906 <- 786 902 80 114 |
:       :  330 330 287 330                                                                                                                                                                             :
|     1 | language.pass(X_786=[1862]:bat[:int]); #[359] (0) MALpass 1078 <- 786                                                                                                                        |
|  2792 | C_700=[375451]:bat[:oid] := bat.mergecand(C_692=[375451]:bat[:oid], C_684=[375451]:bat[:oid]); #[194] (0) BKCmergecand 700 <- 692 684                                                        |
|     5 | C_986=[13]:bat[:oid] := algebra.select(X_798=[1862]:bat[:lng], C_982=[66]:bat[:oid], 2000:lng, 3000:lng, true:bit, true:bit, false:bit, true:bit); #[106] (0) ALGselect2nil 986 <- 798 982 5 |
:       : 69 572 330 330 287 330                                                                                                                                                                       :
|    16 | language.pass(C_684=[375451]:bat[:oid]); #[389] (0) MALpass 1108 <- 684                                                                                                                      |
|     2 | C_910=[36]:bat[:oid] := algebra.thetaselect(X_814=[1862]:bat[:str], C_906=[36]:bat[:oid], "AIR":str, "==":str); #[87] (0) ALGthetaselect2 910 <- 814 906 21 116                              |
|     6 | C_914=[0]:bat[:oid] := algebra.thetaselect(X_814=[1862]:bat[:str], C_906=[36]:bat[:oid], "AIR REG":str, "==":str); #[88] (0) ALGthetaselect2 914 <- 814 906 23 116                           |
|    46 | C_708=[0]:bat[:oid] := algebra.thetaselect(X_670=[1500303]:bat[:str], C_700=[375451]:bat[:oid], "AIR REG":str, "==":str); #[196] (0) ALGthetaselect2 708 <- 670 700 23 116                   |
|     6 | C_918=[36]:bat[:oid] := bat.mergecand(C_910=[36]:bat[:oid], C_914=[0]:bat[:oid]); #[89] (0) BKCmergecand 918 <- 910 914                                                                      |
|     7 | C_922=[36]:bat[:oid] := algebra.thetaselect(X_810=[1862]:bat[:str], C_918=[36]:bat[:oid], "DELIVER IN PERSON":str, "==":str); #[90] (0) ALGthetaselect2 922 <- 810 918 25 116                |
|     2 | language.pass(X_810=[1862]:bat[:str]); #[362] (0) MALpass 1081 <- 810                                                                                                                        |
|     1 | language.pass(C_906=[36]:bat[:oid]); #[355] (0) MALpass 1074 <- 906                                                                                                                          |
|     7 | C_926=[7]:bat[:oid] := algebra.select(X_798=[1862]:bat[:lng], C_922=[36]:bat[:oid], 1000:lng, 2000:lng, true:bit, true:bit, false:bit, true:bit); #[91] (0) ALGselect2nil 926 <- 798 922 567 |
:       :  569 330 330 287 330                                                                                                                                                                         :
|     1 | language.pass(X_798=[1862]:bat[:lng]); #[363] (0) MALpass 1082 <- 798                                                                                                                        |
|     1 | language.pass(X_814=[1862]:bat[:str]); #[360] (0) MALpass 1079 <- 814                                                                                                                        |
|     1 | language.pass(C_874=[634]:bat[:oid]); #[354] (0) MALpass 1073 <- 874                                                                                                                         |
|     3 | C_930=[14]:bat[:oid] := bat.mergecand(C_870=[7]:bat[:oid], C_926=[7]:bat[:oid]); #[92] (0) BKCmergecand 930 <- 870 926                                                                       |
|     3 | C_990=[27]:bat[:oid] := bat.mergecand(C_930=[14]:bat[:oid], C_986=[13]:bat[:oid]); #[107] (0) BKCmergecand 990 <- 930 986                                                                    |
|   117 | X_1018=[27]:bat[:lng] := algebra.projectionpath(C_990=[27]:bat[:oid], X_771=[1862]:bat[:oid], C_742=[53374]:bat[:oid], X_626=[1500303]:bat[:lng]); #[109] (0) ALGprojectionpath 1018 <- 990  |
:       : 771 742 626                                                                                                                                                                                  :
|     8 | X_1022=[27]:bat[:lng] := algebra.projectionpath(C_990=[27]:bat[:oid], X_771=[1862]:bat[:oid], C_742=[53374]:bat[:oid], X_639=[1500303]:bat[:lng]); #[111] (0) ALGprojectionpath 1022 <- 990  |
:       : 771 742 639                                                                                                                                                                                  :
|     4 | X_1034=[27]:bat[:lng] := batcalc.-(100:lng, X_1022=[27]:bat[:lng], nil:BAT); #[112] (0) CMDbatSUBsignal 1034 <- 563 1022 285                                                                 |
|     3 | X_1038=[27]:bat[:hge] := batcalc.*(X_1018=[27]:bat[:lng], X_1034=[27]:bat[:lng], nil:BAT, nil:BAT); #[113] (0) CMDbatMULenlarge 1038 <- 1018 1034 285 285                                    |
|     3 | X_1043=7006360906:hge := aggr.sum(X_1038=[27]:bat[:hge]); #[114] (0) CMDBATsum 1043 <- 1038                                                                                                  |
|     1 | language.pass(C_742=[53374]:bat[:oid]); #[366] (0) MALpass 1085 <- 742                                                                                                                       |
|     1 | language.pass(X_771=[1862]:bat[:oid]); #[365] (0) MALpass 1084 <- 771                                                                                                                        |
|     1 | language.pass(C_990=[27]:bat[:oid]); #[364] (0) MALpass 1083 <- 990                                                                                                                          |
|     1 | language.pass(C_966=[66]:bat[:oid]); #[361] (0) MALpass 1080 <- 966                                                                                                                          |
|     1 | language.pass(X_770=[1862]:bat[:oid]); #[351] (0) MALpass 1070 <- 770                                                                                                                        |
|     8 | C_707=[0]:bat[:oid] := algebra.thetaselect(X_669=[1500303]:bat[:str], C_699=[375646]:bat[:oid], "AIR REG":str, "==":str); #[122] (0) ALGthetaselect2 707 <- 669 699 23 116                   |
|  1867 | C_704=[53597]:bat[:oid] := algebra.thetaselect(X_670=[1500303]:bat[:str], C_700=[375451]:bat[:oid], "AIR":str, "==":str); #[195] (0) ALGthetaselect2 704 <- 670 700 21 116                   |
|  1856 | C_703=[53968]:bat[:oid] := algebra.thetaselect(X_669=[1500303]:bat[:str], C_699=[375646]:bat[:oid], "AIR":str, "==":str); #[121] (0) ALGthetaselect2 703 <- 669 699 21 116                   |
|     2 | language.pass(C_700=[375451]:bat[:oid]); #[390] (0) MALpass 1109 <- 700                                                                                                                      |
|     2 | language.pass(C_699=[375646]:bat[:oid]); #[368] (0) MALpass 1087 <- 699                                                                                                                      |
|   142 | C_712=[53597]:bat[:oid] := bat.mergecand(C_704=[53597]:bat[:oid], C_708=[0]:bat[:oid]); #[197] (0) BKCmergecand 712 <- 704 708                                                               |
|   147 | C_711=[53968]:bat[:oid] := bat.mergecand(C_703=[53968]:bat[:oid], C_707=[0]:bat[:oid]); #[123] (0) BKCmergecand 711 <- 703 707                                                               |
|   177 | C_720=[53597]:bat[:oid] := bat.mergecand(C_712=[53597]:bat[:oid], C_704=[53597]:bat[:oid]); #[198] (0) BKCmergecand 720 <- 712 704                                                           |
|   189 | C_719=[53968]:bat[:oid] := bat.mergecand(C_711=[53968]:bat[:oid], C_703=[53968]:bat[:oid]); #[124] (0) BKCmergecand 719 <- 711 703                                                           |
|   115 | C_727=[53968]:bat[:oid] := bat.mergecand(C_719=[53968]:bat[:oid], C_707=[0]:bat[:oid]); #[125] (0) BKCmergecand 727 <- 719 707                                                               |
|   123 | C_728=[53597]:bat[:oid] := bat.mergecand(C_720=[53597]:bat[:oid], C_708=[0]:bat[:oid]); #[199] (0) BKCmergecand 728 <- 720 708                                                               |
|   115 | C_735=[53968]:bat[:oid] := bat.mergecand(C_727=[53968]:bat[:oid], C_703=[53968]:bat[:oid]); #[126] (0) BKCmergecand 735 <- 727 703                                                           |
|   116 | C_736=[53597]:bat[:oid] := bat.mergecand(C_728=[53597]:bat[:oid], C_704=[53597]:bat[:oid]); #[200] (0) BKCmergecand 736 <- 728 704                                                           |
|     1 | language.pass(C_703=[53968]:bat[:oid]); #[369] (0) MALpass 1088 <- 703                                                                                                                       |
|     2 | language.pass(C_704=[53597]:bat[:oid]); #[391] (0) MALpass 1110 <- 704                                                                                                                       |
|    66 | C_743=[53968]:bat[:oid] := bat.mergecand(C_735=[53968]:bat[:oid], C_707=[0]:bat[:oid]); #[127] (0) BKCmergecand 743 <- 735 707                                                               |
|     2 | language.pass(C_707=[0]:bat[:oid]); #[370] (0) MALpass 1089 <- 707                                                                                                                           |
|    60 | C_744=[53597]:bat[:oid] := bat.mergecand(C_736=[53597]:bat[:oid], C_708=[0]:bat[:oid]); #[201] (0) BKCmergecand 744 <- 736 708                                                               |
|     2 | language.pass(C_708=[0]:bat[:oid]); #[392] (0) MALpass 1111 <- 708                                                                                                                           |
|   998 | X_747=[53968]:bat[:int] := algebra.projection(C_743=[53968]:bat[:oid], X_599=[1500303]:bat[:int]); #[129] (0) ALGprojection 747 <- 743 599                                                   |
|  1066 | X_748=[53597]:bat[:int] := algebra.projection(C_744=[53597]:bat[:oid], X_600=[1500303]:bat[:int]); #[203] (0) ALGprojection 748 <- 744 600                                                   |
|  1213 | (X_772=[1871]:bat[:oid], X_773=[1871]:bat[:oid]) := algebra.join(X_273=[7085]:bat[:int], X_747=[53968]:bat[:int], nil:BAT, nil:BAT, false:bit, nil:lng); #[130] (0) ALGjoin 772 773 <- 273 7 |
:       : 47 285 285 287 288                                                                                                                                                                           :
|    17 | X_783=[1871]:bat[:str] := algebra.projection(X_772=[1871]:bat[:oid], X_274=[7085]:bat[:str]); #[137] (0) ALGprojection 783 <- 772 274                                                        |
|   144 | X_799=[1871]:bat[:lng] := algebra.projectionpath(X_773=[1871]:bat[:oid], C_743=[53968]:bat[:oid], X_613=[1500303]:bat[:lng]); #[132] (0) ALGprojectionpath 799 <- 773 743 613                |
|    13 | X_791=[1871]:bat[:str] := algebra.projection(X_772=[1871]:bat[:oid], X_276=[7085]:bat[:str]); #[136] (0) ALGprojection 791 <- 772 276                                                        |
|    70 | C_819=[649]:bat[:oid] := algebra.thetaselect(X_783=[1871]:bat[:str], "Brand#12":str, "==":str); #[138] (0) ALGthetaselect1 819 <- 783 4 116                                                  |
|    17 | C_935=[624]:bat[:oid] := algebra.thetaselect(X_783=[1871]:bat[:str], "Brand#34":str, "==":str); #[167] (0) ALGthetaselect1 935 <- 783 46 116                                                 |
|    17 | C_875=[598]:bat[:oid] := algebra.thetaselect(X_783=[1871]:bat[:str], "Brand#23":str, "==":str); #[152] (0) ALGthetaselect1 875 <- 783 27 116                                                 |
|     8 | C_939=[48]:bat[:oid] := algebra.thetaselect(X_791=[1871]:bat[:str], C_935=[624]:bat[:oid], "LG CASE":str, "==":str); #[168] (0) ALGthetaselect2 939 <- 791 935 48 116                        |
|     6 | C_951=[50]:bat[:oid] := algebra.thetaselect(X_791=[1871]:bat[:str], C_935=[624]:bat[:oid], "LG PACK":str, "==":str); #[171] (0) ALGthetaselect2 951 <- 791 935 52 116                        |
|    29 | C_959=[59]:bat[:oid] := algebra.thetaselect(X_791=[1871]:bat[:str], C_935=[624]:bat[:oid], "LG PKG":str, "==":str); #[173] (0) ALGthetaselect2 959 <- 791 935 54 116                         |
|     5 | C_943=[54]:bat[:oid] := algebra.thetaselect(X_791=[1871]:bat[:str], C_935=[624]:bat[:oid], "LG BOX":str, "==":str); #[169] (0) ALGthetaselect2 943 <- 791 935 50 116                         |
|     2 | language.pass(X_783=[1871]:bat[:str]); #[378] (0) MALpass 1097 <- 783                                                                                                                        |
|     4 | C_947=[102]:bat[:oid] := bat.mergecand(C_939=[48]:bat[:oid], C_943=[54]:bat[:oid]); #[170] (0) BKCmergecand 947 <- 939 943                                                                   |
|     1 | language.pass(C_935=[624]:bat[:oid]); #[380] (0) MALpass 1099 <- 935                                                                                                                         |
|     4 | C_955=[152]:bat[:oid] := bat.mergecand(C_947=[102]:bat[:oid], C_951=[50]:bat[:oid]); #[172] (0) BKCmergecand 955 <- 947 951                                                                  |
|     6 | C_899=[36]:bat[:oid] := algebra.thetaselect(X_791=[1871]:bat[:str], C_875=[598]:bat[:oid], "MED PACK":str, "==":str); #[158] (0) ALGthetaselect2 899 <- 791 875 35 116                       |
|     3 | C_963=[211]:bat[:oid] := bat.mergecand(C_955=[152]:bat[:oid], C_959=[59]:bat[:oid]); #[174] (0) BKCmergecand 963 <- 955 959                                                                  |
|     5 | C_891=[51]:bat[:oid] := algebra.thetaselect(X_791=[1871]:bat[:str], C_875=[598]:bat[:oid], "MED PKG":str, "==":str); #[156] (0) ALGthetaselect2 891 <- 791 875 33 116                        |
|     5 | C_883=[54]:bat[:oid] := algebra.thetaselect(X_791=[1871]:bat[:str], C_875=[598]:bat[:oid], "MED BOX":str, "==":str); #[154] (0) ALGthetaselect2 883 <- 791 875 31 116                        |
|     6 | C_843=[55]:bat[:oid] := algebra.thetaselect(X_791=[1871]:bat[:str], C_819=[649]:bat[:oid], "SM PKG":str, "==":str); #[144] (0) ALGthetaselect2 843 <- 791 819 12 116                         |
|     5 | C_835=[55]:bat[:oid] := algebra.thetaselect(X_791=[1871]:bat[:str], C_819=[649]:bat[:oid], "SM PACK":str, "==":str); #[142] (0) ALGthetaselect2 835 <- 791 819 10 116                        |
|     6 | C_827=[50]:bat[:oid] := algebra.thetaselect(X_791=[1871]:bat[:str], C_819=[649]:bat[:oid], "SM BOX":str, "==":str); #[140] (0) ALGthetaselect2 827 <- 791 819 8 116                          |
|     5 | C_823=[58]:bat[:oid] := algebra.thetaselect(X_791=[1871]:bat[:str], C_819=[649]:bat[:oid], "SM CASE":str, "==":str); #[139] (0) ALGthetaselect2 823 <- 791 819 6 116                         |
|     9 | X_787=[1871]:bat[:int] := algebra.projection(X_772=[1871]:bat[:oid], X_275=[7085]:bat[:int]); #[135] (0) ALGprojection 787 <- 772 275                                                        |
|     1 | language.pass(C_819=[649]:bat[:oid]); #[374] (0) MALpass 1093 <- 819                                                                                                                         |
|     1 | language.pass(X_772=[1871]:bat[:oid]); #[373] (0) MALpass 1092 <- 772                                                                                                                        |
|   109 | X_815=[1871]:bat[:str] := algebra.projectionpath(X_773=[1871]:bat[:oid], C_743=[53968]:bat[:oid], X_669=[1500303]:bat[:str]); #[134] (0) ALGprojectionpath 815 <- 773 743 669                |
|   116 | X_811=[1871]:bat[:str] := algebra.projectionpath(X_773=[1871]:bat[:oid], C_743=[53968]:bat[:oid], X_656=[1500303]:bat[:str]); #[133] (0) ALGprojectionpath 811 <- 773 743 656                |
|     1 | language.pass(X_669=[1500303]:bat[:str]); #[372] (0) MALpass 1091 <- 669                                                                                                                     |
|     2 | language.pass(X_656=[1500303]:bat[:str]); #[371] (0) MALpass 1090 <- 656                                                                                                                     |
|     4 | C_831=[108]:bat[:oid] := bat.mergecand(C_823=[58]:bat[:oid], C_827=[50]:bat[:oid]); #[141] (0) BKCmergecand 831 <- 823 827                                                                   |
|     6 | C_967=[74]:bat[:oid] := algebra.select(X_787=[1871]:bat[:int], C_963=[211]:bat[:oid], 1:int, 15:int, true:bit, true:bit, false:bit, true:bit); #[175] (0) ALGselect2nil 967 <- 787 963 80 35 |
:       : 4 330 330 287 330                                                                                                                                                                            :
|     4 | C_839=[163]:bat[:oid] := bat.mergecand(C_831=[108]:bat[:oid], C_835=[55]:bat[:oid]); #[143] (0) BKCmergecand 839 <- 831 835                                                                  |
|     4 | C_847=[218]:bat[:oid] := bat.mergecand(C_839=[163]:bat[:oid], C_843=[55]:bat[:oid]); #[145] (0) BKCmergecand 847 <- 839 843                                                                  |
|     5 | C_851=[22]:bat[:oid] := algebra.select(X_787=[1871]:bat[:int], C_847=[218]:bat[:oid], 1:int, 5:int, true:bit, true:bit, false:bit, true:bit); #[146] (0) ALGselect2nil 851 <- 787 847 80 562 |
:       :  330 330 287 330                                                                                                                                                                             :
|    55 | C_971=[74]:bat[:oid] := algebra.thetaselect(X_815=[1871]:bat[:str], C_967=[74]:bat[:oid], "AIR":str, "==":str); #[176] (0) ALGthetaselect2 971 <- 815 967 21 116                             |
|     5 | C_855=[22]:bat[:oid] := algebra.thetaselect(X_815=[1871]:bat[:str], C_851=[22]:bat[:oid], "AIR":str, "==":str); #[147] (0) ALGthetaselect2 855 <- 815 851 21 116                             |
|     4 | C_975=[0]:bat[:oid] := algebra.thetaselect(X_815=[1871]:bat[:str], C_967=[74]:bat[:oid], "AIR REG":str, "==":str); #[177] (0) ALGthetaselect2 975 <- 815 967 23 116                          |
|     3 | C_859=[0]:bat[:oid] := algebra.thetaselect(X_815=[1871]:bat[:str], C_851=[22]:bat[:oid], "AIR REG":str, "==":str); #[148] (0) ALGthetaselect2 859 <- 815 851 23 116                          |
|     1 | language.pass(C_967=[74]:bat[:oid]); #[383] (0) MALpass 1102 <- 967                                                                                                                          |
|     1 | language.pass(C_851=[22]:bat[:oid]); #[375] (0) MALpass 1094 <- 851                                                                                                                          |
|     8 | C_879=[46]:bat[:oid] := algebra.thetaselect(X_791=[1871]:bat[:str], C_875=[598]:bat[:oid], "MED BAG":str, "==":str); #[153] (0) ALGthetaselect2 879 <- 791 875 29 116                        |
|     7 | C_979=[74]:bat[:oid] := bat.mergecand(C_971=[74]:bat[:oid], C_975=[0]:bat[:oid]); #[178] (0) BKCmergecand 979 <- 971 975                                                                     |
|     3 | language.pass(X_791=[1871]:bat[:str]); #[379] (0) MALpass 1098 <- 791                                                                                                                        |
|    57 | C_983=[74]:bat[:oid] := algebra.thetaselect(X_811=[1871]:bat[:str], C_979=[74]:bat[:oid], "DELIVER IN PERSON":str, "==":str); #[179] (0) ALGthetaselect2 983 <- 811 979 25 116               |
|    21 | C_887=[100]:bat[:oid] := bat.mergecand(C_879=[46]:bat[:oid], C_883=[54]:bat[:oid]); #[155] (0) BKCmergecand 887 <- 879 883                                                                   |
|     5 | C_987=[17]:bat[:oid] := algebra.select(X_799=[1871]:bat[:lng], C_983=[74]:bat[:oid], 2000:lng, 3000:lng, true:bit, true:bit, false:bit, true:bit); #[180] (0) ALGselect2nil 987 <- 799 983 5 |
:       : 69 572 330 330 287 330                                                                                                                                                                       :
|     4 | C_895=[151]:bat[:oid] := bat.mergecand(C_887=[100]:bat[:oid], C_891=[51]:bat[:oid]); #[157] (0) BKCmergecand 895 <- 887 891                                                                  |
|     2 | language.pass(C_875=[598]:bat[:oid]); #[376] (0) MALpass 1095 <- 875                                                                                                                         |
|    18 | C_903=[187]:bat[:oid] := bat.mergecand(C_895=[151]:bat[:oid], C_899=[36]:bat[:oid]); #[159] (0) BKCmergecand 903 <- 895 899                                                                  |
|     3 | C_863=[22]:bat[:oid] := bat.mergecand(C_855=[22]:bat[:oid], C_859=[0]:bat[:oid]); #[149] (0) BKCmergecand 863 <- 855 859                                                                     |
|     3 | C_867=[22]:bat[:oid] := algebra.thetaselect(X_811=[1871]:bat[:str], C_863=[22]:bat[:oid], "DELIVER IN PERSON":str, "==":str); #[150] (0) ALGthetaselect2 867 <- 811 863 25 116               |
|     5 | C_907=[38]:bat[:oid] := algebra.select(X_787=[1871]:bat[:int], C_903=[187]:bat[:oid], 1:int, 10:int, true:bit, true:bit, false:bit, true:bit); #[160] (0) ALGselect2nil 907 <- 787 903 80 11 |
:       : 4 330 330 287 330                                                                                                                                                                            :
|     2 | language.pass(X_787=[1871]:bat[:int]); #[381] (0) MALpass 1100 <- 787                                                                                                                        |
|  1080 | (X_774=[1864]:bat[:oid], X_775=[1864]:bat[:oid]) := algebra.join(X_273=[7085]:bat[:int], X_748=[53597]:bat[:int], nil:BAT, nil:BAT, false:bit, nil:lng); #[204] (0) ALGjoin 774 775 <- 273 7 |
:       : 48 285 285 287 288                                                                                                                                                                           :
|     7 | C_915=[0]:bat[:oid] := algebra.thetaselect(X_815=[1871]:bat[:str], C_907=[38]:bat[:oid], "AIR REG":str, "==":str); #[162] (0) ALGthetaselect2 915 <- 815 907 23 116                          |
|     3 | language.pass(X_273=[7085]:bat[:int]); #[415] (0) MALpass 1134 <- 273                                                                                                                        |
|     4 | C_911=[38]:bat[:oid] := algebra.thetaselect(X_815=[1871]:bat[:str], C_907=[38]:bat[:oid], "AIR":str, "==":str); #[161] (0) ALGthetaselect2 911 <- 815 907 21 116                             |
|     4 | C_871=[10]:bat[:oid] := algebra.select(X_799=[1871]:bat[:lng], C_867=[22]:bat[:oid], 100:lng, 1100:lng, true:bit, true:bit, false:bit, true:bit); #[151] (0) ALGselect2nil 871 <- 799 867 56 |
:       : 3 565 330 330 287 330                                                                                                                                                                        :
|     7 | C_919=[38]:bat[:oid] := bat.mergecand(C_911=[38]:bat[:oid], C_915=[0]:bat[:oid]); #[163] (0) BKCmergecand 919 <- 911 915                                                                     |
|    11 | X_788=[1864]:bat[:int] := algebra.projection(X_774=[1864]:bat[:oid], X_275=[7085]:bat[:int]); #[209] (0) ALGprojection 788 <- 774 275                                                        |
|     6 | C_923=[38]:bat[:oid] := algebra.thetaselect(X_811=[1871]:bat[:str], C_919=[38]:bat[:oid], "DELIVER IN PERSON":str, "==":str); #[164] (0) ALGthetaselect2 923 <- 811 919 25 116               |
|     1 | language.pass(X_275=[7085]:bat[:int]); #[418] (0) MALpass 1137 <- 275                                                                                                                        |
|    43 | X_792=[1864]:bat[:str] := algebra.projection(X_774=[1864]:bat[:oid], X_276=[7085]:bat[:str]); #[210] (0) ALGprojection 792 <- 774 276                                                        |
|     2 | language.pass(X_811=[1871]:bat[:str]); #[384] (0) MALpass 1103 <- 811                                                                                                                        |
|     2 | language.pass(X_276=[7085]:bat[:str]); #[419] (0) MALpass 1138 <- 276                                                                                                                        |
|     5 | C_927=[8]:bat[:oid] := algebra.select(X_799=[1871]:bat[:lng], C_923=[38]:bat[:oid], 1000:lng, 2000:lng, true:bit, true:bit, false:bit, true:bit); #[165] (0) ALGselect2nil 927 <- 799 923 56 |
:       : 7 569 330 330 287 330                                                                                                                                                                        :
|     1 | language.pass(X_799=[1871]:bat[:lng]); #[385] (0) MALpass 1104 <- 799                                                                                                                        |
|   139 | X_816=[1864]:bat[:str] := algebra.projectionpath(X_775=[1864]:bat[:oid], C_744=[53597]:bat[:oid], X_670=[1500303]:bat[:str]); #[208] (0) ALGprojectionpath 816 <- 775 744 670                |
|   143 | X_800=[1864]:bat[:lng] := algebra.projectionpath(X_775=[1864]:bat[:oid], C_744=[53597]:bat[:oid], X_615=[1500303]:bat[:lng]); #[206] (0) ALGprojectionpath 800 <- 775 744 615                |
|     2 | language.pass(X_670=[1500303]:bat[:str]); #[394] (0) MALpass 1113 <- 670                                                                                                                     |
|     0 | language.pass(C_907=[38]:bat[:oid]); #[377] (0) MALpass 1096 <- 907                                                                                                                          |
|   107 | X_812=[1864]:bat[:str] := algebra.projectionpath(X_775=[1864]:bat[:oid], C_744=[53597]:bat[:oid], X_657=[1500303]:bat[:str]); #[207] (0) ALGprojectionpath 812 <- 775 744 657                |
|     4 | C_931=[18]:bat[:oid] := bat.mergecand(C_871=[10]:bat[:oid], C_927=[8]:bat[:oid]); #[166] (0) BKCmergecand 931 <- 871 927                                                                     |
|     1 | language.pass(X_657=[1500303]:bat[:str]); #[393] (0) MALpass 1112 <- 657                                                                                                                     |
|     1 | language.pass(X_815=[1871]:bat[:str]); #[382] (0) MALpass 1101 <- 815                                                                                                                        |
|    10 | X_784=[1864]:bat[:str] := algebra.projection(X_774=[1864]:bat[:oid], X_274=[7085]:bat[:str]); #[211] (0) ALGprojection 784 <- 774 274                                                        |
|     1 | language.pass(X_774=[1864]:bat[:oid]); #[395] (0) MALpass 1114 <- 774                                                                                                                        |
|     3 | C_991=[35]:bat[:oid] := bat.mergecand(C_931=[18]:bat[:oid], C_987=[17]:bat[:oid]); #[181] (0) BKCmergecand 991 <- 931 987                                                                    |
|    18 | C_876=[637]:bat[:oid] := algebra.thetaselect(X_784=[1864]:bat[:str], "Brand#23":str, "==":str); #[226] (0) ALGthetaselect1 876 <- 784 27 116                                                 |
|    20 | C_936=[561]:bat[:oid] := algebra.thetaselect(X_784=[1864]:bat[:str], "Brand#34":str, "==":str); #[241] (0) ALGthetaselect1 936 <- 784 46 116                                                 |
|     5 | C_880=[45]:bat[:oid] := algebra.thetaselect(X_792=[1864]:bat[:str], C_876=[637]:bat[:oid], "MED BAG":str, "==":str); #[227] (0) ALGthetaselect2 880 <- 792 876 29 116                        |
|     6 | C_940=[55]:bat[:oid] := algebra.thetaselect(X_792=[1864]:bat[:str], C_936=[561]:bat[:oid], "LG CASE":str, "==":str); #[242] (0) ALGthetaselect2 940 <- 792 936 48 116                        |
|     5 | C_900=[49]:bat[:oid] := algebra.thetaselect(X_792=[1864]:bat[:str], C_876=[637]:bat[:oid], "MED PACK":str, "==":str); #[232] (0) ALGthetaselect2 900 <- 792 876 35 116                       |
|     6 | C_892=[69]:bat[:oid] := algebra.thetaselect(X_792=[1864]:bat[:str], C_876=[637]:bat[:oid], "MED PKG":str, "==":str); #[230] (0) ALGthetaselect2 892 <- 792 876 33 116                        |
|     5 | C_884=[51]:bat[:oid] := algebra.thetaselect(X_792=[1864]:bat[:str], C_876=[637]:bat[:oid], "MED BOX":str, "==":str); #[228] (0) ALGthetaselect2 884 <- 792 876 31 116                        |
|     5 | C_960=[44]:bat[:oid] := algebra.thetaselect(X_792=[1864]:bat[:str], C_936=[561]:bat[:oid], "LG PKG":str, "==":str); #[247] (0) ALGthetaselect2 960 <- 792 936 54 116                         |
|     1 | language.pass(C_876=[637]:bat[:oid]); #[398] (0) MALpass 1117 <- 876                                                                                                                         |
|     5 | C_952=[42]:bat[:oid] := algebra.thetaselect(X_792=[1864]:bat[:str], C_936=[561]:bat[:oid], "LG PACK":str, "==":str); #[245] (0) ALGthetaselect2 952 <- 792 936 52 116                        |
|     6 | C_944=[35]:bat[:oid] := algebra.thetaselect(X_792=[1864]:bat[:str], C_936=[561]:bat[:oid], "LG BOX":str, "==":str); #[243] (0) ALGthetaselect2 944 <- 792 936 50 116                         |
|   104 | X_1019=[35]:bat[:lng] := algebra.projectionpath(C_991=[35]:bat[:oid], X_773=[1871]:bat[:oid], C_743=[53968]:bat[:oid], X_627=[1500303]:bat[:lng]); #[183] (0) ALGprojectionpath 1019 <- 991  |
:       : 773 743 627                                                                                                                                                                                  :
|    10 | X_1023=[35]:bat[:lng] := algebra.projectionpath(C_991=[35]:bat[:oid], X_773=[1871]:bat[:oid], C_743=[53968]:bat[:oid], X_640=[1500303]:bat[:lng]); #[185] (0) ALGprojectionpath 1023 <- 991  |
:       : 773 743 640                                                                                                                                                                                  :
|     1 | language.pass(C_936=[561]:bat[:oid]); #[402] (0) MALpass 1121 <- 936                                                                                                                         |
|     5 | X_1035=[35]:bat[:lng] := batcalc.-(100:lng, X_1023=[35]:bat[:lng], nil:BAT); #[186] (0) CMDbatSUBsignal 1035 <- 563 1023 285                                                                 |
|     4 | C_888=[96]:bat[:oid] := bat.mergecand(C_880=[45]:bat[:oid], C_884=[51]:bat[:oid]); #[229] (0) BKCmergecand 888 <- 880 884                                                                    |
|    17 | C_820=[666]:bat[:oid] := algebra.thetaselect(X_784=[1864]:bat[:str], "Brand#12":str, "==":str); #[212] (0) ALGthetaselect1 820 <- 784 4 116                                                  |
|     2 | language.pass(X_274=[7085]:bat[:str]); #[421] (0) MALpass 1140 <- 274                                                                                                                        |
|     1 | language.pass(X_784=[1864]:bat[:str]); #[400] (0) MALpass 1119 <- 784                                                                                                                        |
|     4 | X_1039=[35]:bat[:hge] := batcalc.*(X_1019=[35]:bat[:lng], X_1035=[35]:bat[:lng], nil:BAT, nil:BAT); #[187] (0) CMDbatMULenlarge 1039 <- 1019 1035 285 285                                    |
|     7 | X_1044=8576990333:hge := aggr.sum(X_1039=[35]:bat[:hge]); #[188] (0) CMDBATsum 1044 <- 1039                                                                                                  |
|     6 | C_896=[165]:bat[:oid] := bat.mergecand(C_888=[96]:bat[:oid], C_892=[69]:bat[:oid]); #[231] (0) BKCmergecand 896 <- 888 892                                                                   |
|    23 | C_824=[50]:bat[:oid] := algebra.thetaselect(X_792=[1864]:bat[:str], C_820=[666]:bat[:oid], "SM CASE":str, "==":str); #[213] (0) ALGthetaselect2 824 <- 792 820 6 116                         |
|     6 | C_828=[67]:bat[:oid] := algebra.thetaselect(X_792=[1864]:bat[:str], C_820=[666]:bat[:oid], "SM BOX":str, "==":str); #[214] (0) ALGthetaselect2 828 <- 792 820 8 116                          |
|     7 | C_844=[42]:bat[:oid] := algebra.thetaselect(X_792=[1864]:bat[:str], C_820=[666]:bat[:oid], "SM PKG":str, "==":str); #[218] (0) ALGthetaselect2 844 <- 792 820 12 116                         |
|     3 | C_904=[214]:bat[:oid] := bat.mergecand(C_896=[165]:bat[:oid], C_900=[49]:bat[:oid]); #[233] (0) BKCmergecand 904 <- 896 900                                                                  |
|     3 | C_948=[90]:bat[:oid] := bat.mergecand(C_940=[55]:bat[:oid], C_944=[35]:bat[:oid]); #[244] (0) BKCmergecand 948 <- 940 944                                                                    |
|     5 | C_836=[50]:bat[:oid] := algebra.thetaselect(X_792=[1864]:bat[:str], C_820=[666]:bat[:oid], "SM PACK":str, "==":str); #[216] (0) ALGthetaselect2 836 <- 792 820 10 116                        |
|     1 | language.pass(X_792=[1864]:bat[:str]); #[401] (0) MALpass 1120 <- 792                                                                                                                        |
|     5 | C_908=[35]:bat[:oid] := algebra.select(X_788=[1864]:bat[:int], C_904=[214]:bat[:oid], 1:int, 10:int, true:bit, true:bit, false:bit, true:bit); #[234] (0) ALGselect2nil 908 <- 788 904 80 11 |
:       : 4 330 330 287 330                                                                                                                                                                            :
|     3 | C_956=[132]:bat[:oid] := bat.mergecand(C_948=[90]:bat[:oid], C_952=[42]:bat[:oid]); #[246] (0) BKCmergecand 956 <- 948 952                                                                   |
|     1 | language.pass(C_820=[666]:bat[:oid]); #[396] (0) MALpass 1115 <- 820                                                                                                                         |
|     3 | C_964=[176]:bat[:oid] := bat.mergecand(C_956=[132]:bat[:oid], C_960=[44]:bat[:oid]); #[248] (0) BKCmergecand 964 <- 956 960                                                                  |
|     5 | C_968=[51]:bat[:oid] := algebra.select(X_788=[1864]:bat[:int], C_964=[176]:bat[:oid], 1:int, 15:int, true:bit, true:bit, false:bit, true:bit); #[249] (0) ALGselect2nil 968 <- 788 964 80 35 |
:       : 4 330 330 287 330                                                                                                                                                                            :
|    60 | C_912=[35]:bat[:oid] := algebra.thetaselect(X_816=[1864]:bat[:str], C_908=[35]:bat[:oid], "AIR":str, "==":str); #[235] (0) ALGthetaselect2 912 <- 816 908 21 116                             |
|     1 | language.pass(C_743=[53968]:bat[:oid]); #[388] (0) MALpass 1107 <- 743                                                                                                                       |
|     5 | C_972=[51]:bat[:oid] := algebra.thetaselect(X_816=[1864]:bat[:str], C_968=[51]:bat[:oid], "AIR":str, "==":str); #[250] (0) ALGthetaselect2 972 <- 816 968 21 116                             |
|     1 | language.pass(X_773=[1871]:bat[:oid]); #[387] (0) MALpass 1106 <- 773                                                                                                                        |
|     1 | language.pass(C_991=[35]:bat[:oid]); #[386] (0) MALpass 1105 <- 991                                                                                                                          |
|   100 | C_916=[0]:bat[:oid] := algebra.thetaselect(X_816=[1864]:bat[:str], C_908=[35]:bat[:oid], "AIR REG":str, "==":str); #[236] (0) ALGthetaselect2 916 <- 816 908 23 116                          |
|     3 | C_976=[0]:bat[:oid] := algebra.thetaselect(X_816=[1864]:bat[:str], C_968=[51]:bat[:oid], "AIR REG":str, "==":str); #[251] (0) ALGthetaselect2 976 <- 816 968 23 116                          |
|     6 | C_832=[117]:bat[:oid] := bat.mergecand(C_824=[50]:bat[:oid], C_828=[67]:bat[:oid]); #[215] (0) BKCmergecand 832 <- 824 828                                                                   |
|     1 | language.pass(C_968=[51]:bat[:oid]); #[405] (0) MALpass 1124 <- 968                                                                                                                          |
|     4 | C_920=[35]:bat[:oid] := bat.mergecand(C_912=[35]:bat[:oid], C_916=[0]:bat[:oid]); #[237] (0) BKCmergecand 920 <- 912 916                                                                     |
|     2 | language.pass(C_908=[35]:bat[:oid]); #[399] (0) MALpass 1118 <- 908                                                                                                                          |
|     6 | C_980=[51]:bat[:oid] := bat.mergecand(C_972=[51]:bat[:oid], C_976=[0]:bat[:oid]); #[252] (0) BKCmergecand 980 <- 972 976                                                                     |
|     6 | C_840=[167]:bat[:oid] := bat.mergecand(C_832=[117]:bat[:oid], C_836=[50]:bat[:oid]); #[217] (0) BKCmergecand 840 <- 832 836                                                                  |
|    56 | C_924=[35]:bat[:oid] := algebra.thetaselect(X_812=[1864]:bat[:str], C_920=[35]:bat[:oid], "DELIVER IN PERSON":str, "==":str); #[238] (0) ALGthetaselect2 924 <- 812 920 25 116               |
|     4 | C_848=[209]:bat[:oid] := bat.mergecand(C_840=[167]:bat[:oid], C_844=[42]:bat[:oid]); #[219] (0) BKCmergecand 848 <- 840 844                                                                  |
|    27 | C_984=[51]:bat[:oid] := algebra.thetaselect(X_812=[1864]:bat[:str], C_980=[51]:bat[:oid], "DELIVER IN PERSON":str, "==":str); #[253] (0) ALGthetaselect2 984 <- 812 980 25 116               |
|     4 | C_928=[8]:bat[:oid] := algebra.select(X_800=[1864]:bat[:lng], C_924=[35]:bat[:oid], 1000:lng, 2000:lng, true:bit, true:bit, false:bit, true:bit); #[239] (0) ALGselect2nil 928 <- 800 924 56 |
:       : 7 569 330 330 287 330                                                                                                                                                                        :
|     5 | C_852=[21]:bat[:oid] := algebra.select(X_788=[1864]:bat[:int], C_848=[209]:bat[:oid], 1:int, 5:int, true:bit, true:bit, false:bit, true:bit); #[220] (0) ALGselect2nil 852 <- 788 848 80 562 |
:       :  330 330 287 330                                                                                                                                                                             :
|     1 | language.pass(X_788=[1864]:bat[:int]); #[403] (0) MALpass 1122 <- 788                                                                                                                        |
|     6 | C_988=[9]:bat[:oid] := algebra.select(X_800=[1864]:bat[:lng], C_984=[51]:bat[:oid], 2000:lng, 3000:lng, true:bit, true:bit, false:bit, true:bit); #[254] (0) ALGselect2nil 988 <- 800 984 56 |
:       : 9 572 330 330 287 330                                                                                                                                                                        :
|     7 | C_860=[0]:bat[:oid] := algebra.thetaselect(X_816=[1864]:bat[:str], C_852=[21]:bat[:oid], "AIR REG":str, "==":str); #[222] (0) ALGthetaselect2 860 <- 816 852 23 116                          |
|     8 | C_856=[21]:bat[:oid] := algebra.thetaselect(X_816=[1864]:bat[:str], C_852=[21]:bat[:oid], "AIR":str, "==":str); #[221] (0) ALGthetaselect2 856 <- 816 852 21 116                             |
|     1 | language.pass(X_816=[1864]:bat[:str]); #[404] (0) MALpass 1123 <- 816                                                                                                                        |
|    22 | C_864=[21]:bat[:oid] := bat.mergecand(C_856=[21]:bat[:oid], C_860=[0]:bat[:oid]); #[223] (0) BKCmergecand 864 <- 856 860                                                                     |
|     6 | C_868=[21]:bat[:oid] := algebra.thetaselect(X_812=[1864]:bat[:str], C_864=[21]:bat[:oid], "DELIVER IN PERSON":str, "==":str); #[224] (0) ALGthetaselect2 868 <- 812 864 25 116               |
|     2 | language.pass(X_812=[1864]:bat[:str]); #[406] (0) MALpass 1125 <- 812                                                                                                                        |
|     2 | language.pass(C_852=[21]:bat[:oid]); #[397] (0) MALpass 1116 <- 852                                                                                                                          |
|    30 | C_872=[2]:bat[:oid] := algebra.select(X_800=[1864]:bat[:lng], C_868=[21]:bat[:oid], 100:lng, 1100:lng, true:bit, true:bit, false:bit, true:bit); #[225] (0) ALGselect2nil 872 <- 800 868 563 |
:       :  565 330 330 287 330                                                                                                                                                                         :
|     2 | language.pass(X_800=[1864]:bat[:lng]); #[407] (0) MALpass 1126 <- 800                                                                                                                        |
|     8 | C_932=[10]:bat[:oid] := bat.mergecand(C_872=[2]:bat[:oid], C_928=[8]:bat[:oid]); #[240] (0) BKCmergecand 932 <- 872 928                                                                      |
|     3 | C_992=[19]:bat[:oid] := bat.mergecand(C_932=[10]:bat[:oid], C_988=[9]:bat[:oid]); #[255] (0) BKCmergecand 992 <- 932 988                                                                     |
|    13 | X_1024=[19]:bat[:lng] := algebra.projectionpath(C_992=[19]:bat[:oid], X_775=[1864]:bat[:oid], C_744=[53597]:bat[:oid], X_641=[1500303]:bat[:lng]); #[259] (0) ALGprojectionpath 1024 <- 992  |
:       : 775 744 641                                                                                                                                                                                  :
|   125 | X_1020=[19]:bat[:lng] := algebra.projectionpath(C_992=[19]:bat[:oid], X_775=[1864]:bat[:oid], C_744=[53597]:bat[:oid], X_628=[1500303]:bat[:lng]); #[257] (0) ALGprojectionpath 1020 <- 992  |
:       : 775 744 628                                                                                                                                                                                  :
|     7 | X_1036=[19]:bat[:lng] := batcalc.-(100:lng, X_1024=[19]:bat[:lng], nil:BAT); #[260] (0) CMDbatSUBsignal 1036 <- 563 1024 285                                                                 |
|     3 | language.pass(C_992=[19]:bat[:oid]); #[408] (0) MALpass 1127 <- 992                                                                                                                          |
|     9 | X_1040=[19]:bat[:hge] := batcalc.*(X_1020=[19]:bat[:lng], X_1036=[19]:bat[:lng], nil:BAT, nil:BAT); #[261] (0) CMDbatMULenlarge 1040 <- 1020 1036 285 285                                    |
|     3 | language.pass(C_744=[53597]:bat[:oid]); #[410] (0) MALpass 1129 <- 744                                                                                                                       |
|     3 | X_1045=5070265347:hge := aggr.sum(X_1040=[19]:bat[:hge]); #[262] (0) CMDBATsum 1045 <- 1040                                                                                                  |
|     1 | language.pass(X_775=[1864]:bat[:oid]); #[409] (0) MALpass 1128 <- 775                                                                                                                        |
|     5 | X_1042=[4]:bat[:hge] := mat.pack(X_1043=7006360906:hge, X_1044=8576990333:hge, X_1045=5070265347:hge, X_1046=10184813992:hge); #[337] (0) MATpackValues 1042 <- 1043 1044 1045 1046          |
|     1 | X_1047=[4]:bat[:hge] := algebra.selectNotNil(X_1042=[4]:bat[:hge]); #[338] (0) ALGselectNotNil 1047 <- 1042                                                                                  |
|     1 | X_495=30838430578:hge := aggr.sum(X_1047=[4]:bat[:hge]); #[339] (1) CMDBATsum 495 <- 1047                                                                                                    |
| 32218 | barrier X_1057=false:bit := language.dataflow(); #[2] (0) MALstartDataflow 1057                                                                                                              |
|    66 | sql.resultSet("sys.":str, "revenue":str, "decimal":str, 38:int, 4:int, 10:int, X_495=30838430578:hge); #[438] (0) mvc_scalar_value_wrap 497 <- 498 499 500 501 502 114 495                   |
+-------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
437 tuples
