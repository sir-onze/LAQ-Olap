operation successful
+---------------------------+------------------------------------------+
| n_name                    | revenue                                  |
+===========================+==========================================+
| INDONESIA                 |                            55502041.1697 |
| VIETNAM                   |                            55295086.9967 |
| CHINA                     |                            53724494.2566 |
| INDIA                     |                            52035512.0002 |
| JAPAN                     |                            45410175.6954 |
+---------------------------+------------------------------------------+
5 tuples
+-------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| usec  | statement                                                                                                                                                                                    |
+=======+==============================================================================================================================================================================================+
|     4 | X_6=0@0:void := querylog.define("trace select\n n_name,\n sum(l_extendedprice * (1 - l_discount)) as revenue\nfrom\n customer,\n orders,\n lineitem,\n supplier,\n nation,\n region\nwhere\n |
:       :  c_custkey = o_custkey\n and l_orderkey = o_orderkey\n and l_suppkey = s_suppkey\n and c_nationkey = s_nationkey\n and s_nationkey = n_nationkey\n and n_regionkey = r_regionkey\n and r_nam :
:       : e = \\'ASIA\\'\n and o_orderdate >= date \\'1994-01-01\\'\n and o_orderdate < date \\'1994-01-01\\' + interval \\'1\\' year\ngroup by\n n_name\norder by\n revenue desc;":str, "default_pipe :
:       : ":str, 212:int); #[1] (0) QLOGdefineNaive 6 <- 7 8 323                                                                                                                                       :
|     6 | X_308=[2]:bat[:str] := bat.pack("sys.nation":str, "sys.":str); #[2] (0) MATpackValues 308 <- 313 318                                                                                         |
|     4 | X_309=[2]:bat[:str] := bat.pack("n_name":str, "revenue":str); #[3] (0) MATpackValues 309 <- 198 319                                                                                          |
|     3 | X_310=[2]:bat[:str] := bat.pack("char":str, "decimal":str); #[4] (0) MATpackValues 310 <- 315 320                                                                                            |
|     2 | X_311=[2]:bat[:int] := bat.pack(25:int, 38:int); #[5] (0) MATpackValues 311 <- 258 321                                                                                                       |
|     2 | X_312=[2]:bat[:int] := bat.pack(0:int, 4:int); #[6] (0) MATpackValues 312 <- 15 255                                                                                                          |
|     0 | X_9=0:int := sql.mvc(); #[7] (0) SQLmvc 9                                                                                                                                                    |
|     3 | X_22=[1500000]:bat[:date] := sql.bind(X_9=0:int, "sys":str, "orders":str, "o_orderdate":str, 0:int); #[8] (0) mvc_bind_wrap 22 <- 9 11 12 14 15                                              |
|    10 | C_10=[1500000]:bat[:oid] := sql.tid(X_9=0:int, "sys":str, "orders":str); #[9] (0) SQLtid 10 <- 9 11 12                                                                                       |
|  3726 | C_38=[227597]:bat[:oid] := algebra.select(X_22=[1500000]:bat[:date], C_10=[1500000]:bat[:oid], "1994-01-01":date, "1995-01-01":date, true:bit, false:bit, false:bit, true:bit); #[10] (1) AL |
:       : Gselect2nil 38 <- 22 10 3 360 39 40 40 39                                                                                                                                                    :
|     9 | X_28=[1500000]:bat[:oid] := sql.bind_idxbat(X_9=0:int, "sys":str, "orders":str, "orders_fk1":str, 0:int); #[11] (0) mvc_bind_idxbat_wrap 28 <- 9 11 12 29 15                                 |
|     2 | (X_31=[0]:bat[:oid], X_32=[0]:bat[:oid]) := sql.bind_idxbat(X_9=0:int, "sys":str, "orders":str, "orders_fk1":str, 2:int); #[12] (0) mvc_bind_idxbat_wrap 31 32 <- 9 11 12 29 20              |
|     1 | X_30=[0]:bat[:oid] := sql.bind_idxbat(X_9=0:int, "sys":str, "orders":str, "orders_fk1":str, 1:int); #[13] (0) mvc_bind_idxbat_wrap 30 <- 9 11 12 29 17                                       |
|  5707 | X_57=[227597]:bat[:oid] := sql.projectdelta(C_38=[227597]:bat[:oid], X_28=[1500000]:bat[:oid], X_31=[0]:bat[:oid], X_32=[0]:bat[:oid], X_30=[0]:bat[:oid]); #[14] (0) DELTAproject 57 <- 38  |
:       : 28 31 32 30                                                                                                                                                                                  :
|    53 | C_42=[150000]:bat[:oid] := sql.tid(X_9=0:int, "sys":str, "customer":str); #[15] (0) SQLtid 42 <- 9 11 43                                                                                     |
|  1479 | (X_59=[227597]:bat[:oid], X_60=[227597]:bat[:oid]) := algebra.join(X_57=[227597]:bat[:oid], C_42=[150000]:bat[:oid], nil:BAT, nil:BAT, false:bit, nil:lng); #[16] (0) ALGjoin 59 60 <- 57 42 |
:       :  61 61 40 63                                                                                                                                                                                 :
|   364 | X_65=[227597]:bat[:oid] := algebra.projection(X_59=[227597]:bat[:oid], C_38=[227597]:bat[:oid]); #[17] (0) ALGprojection 65 <- 59 38                                                         |
|     5 | C_69=[6001215]:bat[:oid] := sql.tid(X_9=0:int, "sys":str, "lineitem":str); #[18] (6001215) SQLtid 69 <- 9 11 70                                                                              |
|     8 | X_94=[6001215]:bat[:oid] := sql.bind_idxbat(X_9=0:int, "sys":str, "lineitem":str, "lineitem_fk1":str, 0:int); #[19] (6001215) mvc_bind_idxbat_wrap 94 <- 9 11 70 95 15                       |
|     3 | (X_97=[0]:bat[:oid], X_98=[0]:bat[:oid]) := sql.bind_idxbat(X_9=0:int, "sys":str, "lineitem":str, "lineitem_fk1":str, 2:int); #[20] (6001215) mvc_bind_idxbat_wrap 97 98 <- 9 11 70 95 20    |
|     1 | X_96=[0]:bat[:oid] := sql.bind_idxbat(X_9=0:int, "sys":str, "lineitem":str, "lineitem_fk1":str, 1:int); #[21] (0) mvc_bind_idxbat_wrap 96 <- 9 11 70 95 17                                   |
|     4 | X_103=[6001215]:bat[:oid] := sql.projectdelta(C_69=[6001215]:bat[:oid], X_94=[6001215]:bat[:oid], X_97=[0]:bat[:oid], X_98=[0]:bat[:oid], X_96=[0]:bat[:oid]); #[22] (0) DELTAproject 103 <- |
:       :  69 94 97 98 96                                                                                                                                                                              :
| 74325 | (X_104=[910519]:bat[:oid], X_105=[910519]:bat[:oid]) := algebra.join(X_65=[227597]:bat[:oid], X_103=[6001215]:bat[:oid], nil:BAT, nil:BAT, false:bit, nil:lng); #[23] (0) ALGjoin 104 105 <- |
:       :  65 103 61 61 40 63                                                                                                                                                                          :
|    53 | X_77=[6001215]:bat[:int] := sql.bind(X_9=0:int, "sys":str, "lineitem":str, "l_suppkey":str, 0:int); #[24] (6001215) mvc_bind_wrap 77 <- 9 11 70 72 15                                        |
| 23949 | X_115=[910519]:bat[:int] := algebra.projectionpath(X_105=[910519]:bat[:oid], C_69=[6001215]:bat[:oid], X_77=[6001215]:bat[:int]); #[25] (0) ALGprojectionpath 115 <- 105 69 77               |
|  2449 | X_157=[910519]:bat[:lng] := batmkey.hash(X_115=[910519]:bat[:int]); #[26] (0) MKEYbathash 157 <- 115                                                                                         |
|   149 | X_50=[150000]:bat[:int] := sql.bind(X_9=0:int, "sys":str, "customer":str, "c_nationkey":str, 0:int); #[27] (0) mvc_bind_wrap 50 <- 9 11 43 45 15                                             |
| 26060 | X_113=[910519]:bat[:int] := algebra.projectionpath(X_104=[910519]:bat[:oid], X_60=[227597]:bat[:oid], C_42=[150000]:bat[:oid], X_50=[150000]:bat[:int]); #[28] (0) ALGprojectionpath 113 <-  |
:       : 104 60 42 50                                                                                                                                                                                 :
|  1967 | X_160=[910519]:bat[:lng] := mkey.bulk_rotate_xor_hash(X_157=[910519]:bat[:lng], 22:int, X_113=[910519]:bat[:int]); #[29] (0) MKEYbulk_rotate_xor_hash 160 <- 157 156 113                     |
|    10 | C_119=[10000]:bat[:oid] := sql.tid(X_9=0:int, "sys":str, "supplier":str); #[30] (0) SQLtid 119 <- 9 11 120                                                                                   |
|    35 | X_127=[10000]:bat[:int] := sql.bind(X_9=0:int, "sys":str, "supplier":str, "s_suppkey":str, 0:int); #[31] (0) mvc_bind_wrap 127 <- 9 11 120 122 15                                            |
|     3 | X_144=[10000]:bat[:int] := algebra.projection(C_119=[10000]:bat[:oid], X_127=[10000]:bat[:int]); #[32] (0) ALGprojection 144 <- 119 127                                                      |
|    11 | X_162=[10000]:bat[:lng] := batmkey.hash(X_144=[10000]:bat[:int]); #[33] (0) MKEYbathash 162 <- 144                                                                                           |
|    20 | X_132=[10000]:bat[:int] := sql.bind(X_9=0:int, "sys":str, "supplier":str, "s_nationkey":str, 0:int); #[34] (0) mvc_bind_wrap 132 <- 9 11 120 133 15                                          |
|    12 | X_145=[10000]:bat[:int] := algebra.projection(C_119=[10000]:bat[:oid], X_132=[10000]:bat[:int]); #[35] (0) ALGprojection 145 <- 119 132                                                      |
|    16 | X_163=[10000]:bat[:lng] := mkey.bulk_rotate_xor_hash(X_162=[10000]:bat[:lng], 22:int, X_145=[10000]:bat[:int]); #[36] (0) MKEYbulk_rotate_xor_hash 163 <- 162 156 145                        |
| 20896 | (X_164=[36236]:bat[:oid], X_165=[36236]:bat[:oid]) := algebra.join(X_160=[910519]:bat[:lng], X_163=[10000]:bat[:lng], nil:BAT, nil:BAT, true:bit, nil:lng); #[37] (0) ALGjoin 164 165 <- 160 |
:       :  163 61 61 39 63                                                                                                                                                                             :
|   376 | X_167=[36236]:bat[:int] := algebra.projection(X_164=[36236]:bat[:oid], X_115=[910519]:bat[:int]); #[38] (0) ALGprojection 167 <- 164 115                                                     |
|    48 | X_168=[36236]:bat[:int] := algebra.projection(X_165=[36236]:bat[:oid], X_144=[10000]:bat[:int]); #[39] (0) ALGprojection 168 <- 165 144                                                      |
|    88 | X_169=[36236]:bat[:bit] := batcalc.==(X_167=[36236]:bat[:int], X_168=[36236]:bat[:int]); #[40] (0) CMDbatEQ 169 <- 167 168                                                                   |
|   455 | C_173=[36236]:bat[:oid] := algebra.thetaselect(X_169=[36236]:bat[:bit], true:bit, "==":str); #[41] (1) ALGthetaselect1 173 <- 169 39 171                                                     |
|    42 | X_174=[36236]:bat[:oid] := algebra.projection(C_173=[36236]:bat[:oid], X_164=[36236]:bat[:oid]); #[42] (0) ALGprojection 174 <- 173 164                                                      |
|   426 | X_176=[36236]:bat[:int] := algebra.projection(X_174=[36236]:bat[:oid], X_113=[910519]:bat[:int]); #[43] (0) ALGprojection 176 <- 174 113                                                     |
|    76 | X_175=[36236]:bat[:oid] := algebra.projection(C_173=[36236]:bat[:oid], X_165=[36236]:bat[:oid]); #[44] (0) ALGprojection 175 <- 173 165                                                      |
|    44 | X_177=[36236]:bat[:int] := algebra.projection(X_175=[36236]:bat[:oid], X_145=[10000]:bat[:int]); #[45] (0) ALGprojection 177 <- 175 145                                                      |
|    91 | X_178=[36236]:bat[:bit] := batcalc.==(X_176=[36236]:bat[:int], X_177=[36236]:bat[:int]); #[46] (0) CMDbatEQ 178 <- 176 177                                                                   |
|   471 | C_180=[36236]:bat[:oid] := algebra.thetaselect(X_178=[36236]:bat[:bit], true:bit, "==":str); #[47] (1) ALGthetaselect1 180 <- 178 39 171                                                     |
|    10 | X_138=[10000]:bat[:oid] := sql.bind_idxbat(X_9=0:int, "sys":str, "supplier":str, "supplier_fk1":str, 0:int); #[48] (0) mvc_bind_idxbat_wrap 138 <- 9 11 120 139 15                           |
|     2 | (X_141=[0]:bat[:oid], X_142=[0]:bat[:oid]) := sql.bind_idxbat(X_9=0:int, "sys":str, "supplier":str, "supplier_fk1":str, 2:int); #[49] (0) mvc_bind_idxbat_wrap 141 142 <- 9 11 120 139 20    |
|     0 | X_140=[0]:bat[:oid] := sql.bind_idxbat(X_9=0:int, "sys":str, "supplier":str, "supplier_fk1":str, 1:int); #[50] (0) mvc_bind_idxbat_wrap 140 <- 9 11 120 139 17                               |
|     3 | X_146=[10000]:bat[:oid] := sql.projectdelta(C_119=[10000]:bat[:oid], X_138=[10000]:bat[:oid], X_141=[0]:bat[:oid], X_142=[0]:bat[:oid], X_140=[0]:bat[:oid]); #[51] (0) DELTAproject 146 <-  |
:       : 119 138 141 142 140                                                                                                                                                                          :
|   726 | X_194=[36236]:bat[:oid] := algebra.projectionpath(C_180=[36236]:bat[:oid], X_175=[36236]:bat[:oid], X_146=[10000]:bat[:oid]); #[52] (0) ALGprojectionpath 194 <- 180 175 146                 |
|     3 | C_195=[25]:bat[:oid] := sql.tid(X_9=0:int, "sys":str, "nation":str); #[53] (0) SQLtid 195 <- 9 11 196                                                                                        |
|   117 | (X_217=[36236]:bat[:oid], X_218=[36236]:bat[:oid]) := algebra.join(X_194=[36236]:bat[:oid], C_195=[25]:bat[:oid], nil:BAT, nil:BAT, false:bit, nil:lng); #[54] (0) ALGjoin 217 218 <- 194 19 |
:       : 5 61 61 40 63                                                                                                                                                                                :
|     3 | X_209=[25]:bat[:oid] := sql.bind_idxbat(X_9=0:int, "sys":str, "nation":str, "nation_fk1":str, 0:int); #[55] (0) mvc_bind_idxbat_wrap 209 <- 9 11 196 210 15                                  |
|     1 | (X_212=[0]:bat[:oid], X_213=[0]:bat[:oid]) := sql.bind_idxbat(X_9=0:int, "sys":str, "nation":str, "nation_fk1":str, 2:int); #[56] (0) mvc_bind_idxbat_wrap 212 213 <- 9 11 196 210 20        |
|     1 | X_211=[0]:bat[:oid] := sql.bind_idxbat(X_9=0:int, "sys":str, "nation":str, "nation_fk1":str, 1:int); #[57] (0) mvc_bind_idxbat_wrap 211 <- 9 11 196 210 17                                   |
|     5 | X_216=[25]:bat[:oid] := sql.projectdelta(C_195=[25]:bat[:oid], X_209=[25]:bat[:oid], X_212=[0]:bat[:oid], X_213=[0]:bat[:oid], X_211=[0]:bat[:oid]); #[58] (0) DELTAproject 216 <- 195 209 2 |
:       : 12 213 211                                                                                                                                                                                   :
|    54 | X_237=[36236]:bat[:oid] := algebra.projection(X_218=[36236]:bat[:oid], X_216=[25]:bat[:oid]); #[59] (0) ALGprojection 237 <- 218 216                                                         |
|     2 | X_246=[5]:bat[:str] := sql.bind(X_9=0:int, "sys":str, "region":str, "r_name":str, 0:int); #[60] (0) mvc_bind_wrap 246 <- 9 11 239 241 15                                                     |
|     1 | C_238=[5]:bat[:oid] := sql.tid(X_9=0:int, "sys":str, "region":str); #[61] (0) SQLtid 238 <- 9 11 239                                                                                         |
|     3 | C_259=[1]:bat[:oid] := algebra.thetaselect(X_246=[5]:bat[:str], C_238=[5]:bat[:oid], "ASIA":str, "==":str); #[62] (1) ALGthetaselect2 259 <- 246 238 2 171                                   |
|   100 | X_262=[7243]:bat[:oid] := algebra.join(X_237=[36236]:bat[:oid], C_259=[1]:bat[:oid], nil:BAT, nil:BAT, false:bit, nil:lng); #[63] (0) ALGjoin1 262 <- 237 259 61 61 40 63                    |
|    41 | X_181=[36236]:bat[:oid] := algebra.projection(C_180=[36236]:bat[:oid], X_174=[36236]:bat[:oid]); #[64] (0) ALGprojection 181 <- 180 174                                                      |
|     3 | X_82=[6001215]:bat[:lng] := sql.bind(X_9=0:int, "sys":str, "lineitem":str, "l_extendedprice":str, 0:int); #[65] (6001215) mvc_bind_wrap 82 <- 9 11 70 83 15                                  |
|   891 | X_274=[7243]:bat[:lng] := algebra.projectionpath(X_262=[7243]:bat[:oid], X_217=[36236]:bat[:oid], X_181=[36236]:bat[:oid], X_105=[910519]:bat[:oid], C_69=[6001215]:bat[:oid], X_82=[6001215 |
:       : ]:bat[:lng]); #[66] (0) ALGprojectionpath 274 <- 262 217 181 105 69 82                                                                                                                       :
|     5 | X_88=[6001215]:bat[:lng] := sql.bind(X_9=0:int, "sys":str, "lineitem":str, "l_discount":str, 0:int); #[67] (6001215) mvc_bind_wrap 88 <- 9 11 70 89 15                                       |
|   885 | X_275=[7243]:bat[:lng] := algebra.projectionpath(X_262=[7243]:bat[:oid], X_217=[36236]:bat[:oid], X_181=[36236]:bat[:oid], X_105=[910519]:bat[:oid], C_69=[6001215]:bat[:oid], X_88=[6001215 |
:       : ]:bat[:lng]); #[68] (0) ALGprojectionpath 275 <- 262 217 181 105 69 88                                                                                                                       :
|    26 | X_289=[7243]:bat[:lng] := batcalc.-(100:lng, X_275=[7243]:bat[:lng], nil:BAT); #[69] (0) CMDbatSUBsignal 289 <- 362 275 61                                                                   |
|    24 | X_292=[7243]:bat[:hge] := batcalc.*(X_274=[7243]:bat[:lng], X_289=[7243]:bat[:lng], nil:BAT, nil:BAT); #[70] (0) CMDbatMULenlarge 292 <- 274 289 61 61                                       |
|     4 | X_203=[25]:bat[:str] := sql.bind(X_9=0:int, "sys":str, "nation":str, "n_name":str, 0:int); #[71] (0) mvc_bind_wrap 203 <- 9 11 196 198 15                                                    |
|   180 | X_280=[7243]:bat[:str] := algebra.projectionpath(X_262=[7243]:bat[:oid], X_218=[36236]:bat[:oid], C_195=[25]:bat[:oid], X_203=[25]:bat[:str]); #[72] (0) ALGprojectionpath 280 <- 262 218 19 |
:       : 5 203                                                                                                                                                                                        :
|    64 | (X_294=[7243]:bat[:oid], C_295=[5]:bat[:oid]) := group.groupdone(X_280=[7243]:bat[:str]); #[73] (0) GRPgroup3 294 295 <- 280                                                                 |
|    38 | X_298=[5]:bat[:hge] := aggr.subsum(X_292=[7243]:bat[:hge], X_294=[7243]:bat[:oid], C_295=[5]:bat[:oid], true:bit, true:bit); #[74] (0) AGGRsubsum_hge 298 <- 292 294 295 39 39               |
|     6 | (X_301=[5]:bat[:hge], X_302=[5]:bat[:oid]) := algebra.sort(X_298=[5]:bat[:hge], true:bit, true:bit, false:bit); #[75] (0) ALGsort12 301 302 <- 298 39 39 40                                  |
|     3 | X_305=[5]:bat[:str] := algebra.projectionpath(X_302=[5]:bat[:oid], C_295=[5]:bat[:oid], X_280=[7243]:bat[:str]); #[76] (0) ALGprojectionpath 305 <- 302 295 280                              |
|     2 | X_306=[5]:bat[:hge] := algebra.projection(X_302=[5]:bat[:oid], X_298=[5]:bat[:hge]); #[77] (0) ALGprojection 306 <- 302 298                                                                  |
|    20 | sql.resultSet(X_308=[2]:bat[:str], X_309=[2]:bat[:str], X_310=[2]:bat[:str], X_311=[2]:bat[:int], X_312=[2]:bat[:int], X_305=[5]:bat[:str], X_306=[5]:bat[:hge]); #[78] (0) mvc_table_result |
:       : _wrap 307 <- 308 309 310 311 312 305 306                                                                                                                                                     :
+-------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
78 tuples
