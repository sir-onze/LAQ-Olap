operation successful
+------------------------------------------+
| avg_yearly                               |
+==========================================+
|                               348406.054 |
+------------------------------------------+
1 tuple
+------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| usec | statement                                                                                                                                                                                     |
+======+===============================================================================================================================================================================================+
|    3 | X_9=0@0:void := querylog.define("trace select sum(l_extendedprice) / 7.0 as avg_yearly\nfrom lineitem, part\nwhere p_partkey = l_partkey\n and p_brand = \\'Brand#23\\'\n and p_container = \ |
:      : \'MED BOX\\'\n and l_quantity < (\n select 0.2 * avg(l_quantity)\n from lineitem\n where l_partkey = p_partkey\n );":str, "default_pipe":str, 169:int); #[1] (0) QLOGdefineNaive 9 <- 10 11 2 :
:      : 55                                                                                                                                                                                            :
|    1 | X_12=0:int := sql.mvc(); #[2] (0) SQLmvc 12                                                                                                                                                   |
|   39 | X_60=[200000]:bat[:str] := sql.bind(X_12=0:int, "sys":str, "part":str, "p_container":str, 0:int); #[3] (200000) mvc_bind_wrap 60 <- 12 14 15 61 18                                            |
|    2 | X_42=[200000]:bat[:str] := sql.bind(X_12=0:int, "sys":str, "part":str, "p_brand":str, 0:int); #[4] (200000) mvc_bind_wrap 42 <- 12 14 15 43 18                                                |
|    5 | C_13=[200000]:bat[:oid] := sql.tid(X_12=0:int, "sys":str, "part":str); #[5] (200000) SQLtid 13 <- 12 14 15                                                                                    |
|  597 | C_86=[7870]:bat[:oid] := algebra.thetaselect(X_42=[200000]:bat[:str], C_13=[200000]:bat[:oid], "Brand#23":str, "==":str); #[6] (1) ALGthetaselect2 86 <- 42 13 4 87                           |
|   84 | C_91=[204]:bat[:oid] := algebra.thetaselect(X_60=[200000]:bat[:str], C_86=[7870]:bat[:oid], "MED BOX":str, "==":str); #[7] (1) ALGthetaselect2 91 <- 60 86 6 87                               |
|    2 | X_25=[200000]:bat[:int] := sql.bind(X_12=0:int, "sys":str, "part":str, "p_partkey":str, 0:int); #[8] (200000) mvc_bind_wrap 25 <- 12 14 15 17 18                                              |
|   11 | X_113=[204]:bat[:int] := algebra.projection(C_91=[204]:bat[:oid], X_25=[200000]:bat[:int]); #[9] (0) ALGprojection 113 <- 91 25                                                               |
|    2 | C_92=[6001215]:bat[:oid] := sql.tid(X_12=0:int, "sys":str, "lineitem":str); #[10] (6001215) SQLtid 92 <- 12 14 93                                                                             |
|    1 | X_100=[6001215]:bat[:int] := sql.bind(X_12=0:int, "sys":str, "lineitem":str, "l_partkey":str, 0:int); #[11] (6001215) mvc_bind_wrap 100 <- 12 14 93 95 18                                     |
|    2 | X_111=[6001215]:bat[:int] := algebra.projection(C_92=[6001215]:bat[:oid], X_100=[6001215]:bat[:int]); #[12] (0) ALGprojection 111 <- 92 100                                                   |
| 1001 | (X_122=[6088]:bat[:oid], X_123=[6088]:bat[:oid]) := algebra.join(X_111=[6001215]:bat[:int], X_113=[204]:bat[:int], nil:BAT, nil:BAT, false:bit, nil:lng); #[13] (0) ALGjoin 122 123 <- 111 11 |
:      : 3 124 124 126 127                                                                                                                                                                             :
|   25 | X_130=[6088]:bat[:int] := algebra.projection(X_123=[6088]:bat[:oid], X_113=[204]:bat[:int]); #[14] (0) ALGprojection 130 <- 123 113                                                           |
|   24 | (X_140=[6088]:bat[:oid], C_141=[204]:bat[:oid]) := group.groupdone(X_130=[6088]:bat[:int]); #[15] (0) GRPgroup3 140 141 <- 130                                                                |
|    2 | X_105=[6001215]:bat[:lng] := sql.bind(X_12=0:int, "sys":str, "lineitem":str, "l_quantity":str, 0:int); #[16] (6001215) mvc_bind_wrap 105 <- 12 14 93 106 18                                   |
|    8 | X_112=[6001215]:bat[:lng] := algebra.projection(C_92=[6001215]:bat[:oid], X_105=[6001215]:bat[:lng]); #[17] (0) ALGprojection 112 <- 92 105                                                   |
|  175 | X_129=[6088]:bat[:lng] := algebra.projection(X_122=[6088]:bat[:oid], X_112=[6001215]:bat[:lng]); #[18] (0) ALGprojection 129 <- 122 112                                                       |
|   11 | X_143=[6088]:bat[:dbl] := batcalc.dbl(2:int, X_129=[6088]:bat[:lng]); #[19] (0) batlng_dec2_dbl 143 <- 23 129                                                                                 |
|   52 | X_147=[204]:bat[:dbl] := aggr.subavg(X_143=[6088]:bat[:dbl], X_140=[6088]:bat[:oid], C_141=[204]:bat[:oid], true:bit, true:bit); #[20] (0) AGGRsubavg1_dbl 147 <- 143 140 141 148 148         |
|    4 | X_150=[204]:bat[:int] := algebra.projection(C_141=[204]:bat[:oid], X_130=[6088]:bat[:int]); #[21] (0) ALGprojection 150 <- 141 130                                                            |
|    8 | (X_160=[204]:bat[:oid], X_161=[204]:bat[:oid]) := algebra.join(X_113=[204]:bat[:int], X_150=[204]:bat[:int], nil:BAT, nil:BAT, true:bit, nil:lng); #[22] (0) ALGjoin 160 161 <- 113 150 124 1 |
:      : 24 148 127                                                                                                                                                                                    :
|    2 | X_165=[204]:bat[:int] := algebra.projection(X_160=[204]:bat[:oid], X_113=[204]:bat[:int]); #[23] (0) ALGprojection 165 <- 160 113                                                             |
|  531 | (X_203=[6088]:bat[:oid], X_204=[6088]:bat[:oid]) := algebra.join(X_165=[204]:bat[:int], X_111=[6001215]:bat[:int], nil:BAT, nil:BAT, false:bit, nil:lng); #[24] (0) ALGjoin 203 204 <- 165 11 |
:      : 1 124 124 126 127                                                                                                                                                                             :
|  128 | X_222=[6088]:bat[:lng] := algebra.projection(X_204=[6088]:bat[:oid], X_112=[6001215]:bat[:lng]); #[25] (0) ALGprojection 222 <- 204 112                                                       |
|   11 | X_230=[6088]:bat[:dbl] := batcalc.dbl(2:int, X_222=[6088]:bat[:lng]); #[26] (0) batlng_dec2_dbl 230 <- 23 222                                                                                 |
|  158 | X_219=[6088]:bat[:dbl] := algebra.projectionpath(X_203=[6088]:bat[:oid], X_161=[204]:bat[:oid], X_147=[204]:bat[:dbl]); #[27] (0) ALGprojectionpath 219 <- 203 161 147                        |
|   48 | X_227=[6088]:bat[:dbl] := batcalc.*(X_219=[6088]:bat[:dbl], 0.2:dbl, nil:BAT); #[28] (0) CMDbatMULsignal 227 <- 219 293 124                                                                   |
|   19 | X_233=[6088]:bat[:bit] := batcalc.<(X_230=[6088]:bat[:dbl], X_227=[6088]:bat[:dbl]); #[29] (0) CMDbatLT 233 <- 230 227                                                                        |
|   17 | C_235=[587]:bat[:oid] := algebra.select(X_233=[6088]:bat[:bit], true:bit, true:bit, true:bit, true:bit, false:bit); #[30] (1) ALGselect1 235 <- 233 148 148 148 148 126                       |
|    3 | X_194=[6001215]:bat[:lng] := sql.bind(X_12=0:int, "sys":str, "lineitem":str, "l_extendedprice":str, 0:int); #[31] (6001215) mvc_bind_wrap 194 <- 12 14 93 195 18                              |
|  120 | X_239=[587]:bat[:lng] := algebra.projectionpath(C_235=[587]:bat[:oid], X_204=[6088]:bat[:oid], C_92=[6001215]:bat[:oid], X_194=[6001215]:bat[:lng]); #[32] (0) ALGprojectionpath 239 <- 235 2 |
:      : 04 92 194                                                                                                                                                                                     :
|    3 | X_241=243884238:hge := aggr.sum(X_239=[587]:bat[:lng]); #[33] (1) CMDBATsum 241 <- 239                                                                                                        |
|    1 | X_242=243884238000:hge := calc.hge(2:int, X_241=243884238:hge, 38:int, 5:int); #[34] (0) hge_dec2dec_hge 242 <- 23 241 243 244                                                                |
|    2 | X_247=348406054:hge := calc./(X_242=243884238000:hge, 700:hge); #[35] (0) CMDvarDIVsignal 247 <- 242 294                                                                                      |
|   27 | sql.resultSet("sys.":str, "avg_yearly":str, "decimal":str, 38:int, 3:int, 10:int, X_247=348406054:hge); #[36] (0) mvc_scalar_value_wrap 249 <- 250 251 252 243 81 85 247                      |
+------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
36 tuples
