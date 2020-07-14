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
|     2 | X_6=0@0:void := querylog.define("trace select\n n_name,\n sum(l_extendedprice * (1 - l_discount)) as revenue\nfrom\n customer,\n orders,\n lineitem,\n supplier,\n nation,\n region\nwhere\n |
:       :  c_custkey = o_custkey\n and l_orderkey = o_orderkey\n and l_suppkey = s_suppkey\n and c_nationkey = s_nationkey\n and s_nationkey = n_nationkey\n and n_regionkey = r_regionkey\n and r_nam :
:       : e = \\'ASIA\\'\n and o_orderdate >= date \\'1994-01-01\\'\n and o_orderdate < date \\'1994-01-01\\' + interval \\'1\\' year\ngroup by\n n_name\norder by\n revenue desc;":str, "default_pipe :
:       : ":str, 212:int); #[1] (0) QLOGdefineNaive 6 <- 7 8 323                                                                                                                                       :
|    27 | X_310=[2]:bat[:str] := bat.pack("char":str, "decimal":str); #[5] (0) MATpackValues 310 <- 315 320                                                                                            |
|     2 | X_9=0:int := sql.mvc(); #[8] (0) SQLmvc 9                                                                                                                                                    |
|    14 | X_309=[2]:bat[:str] := bat.pack("n_name":str, "revenue":str); #[4] (0) MATpackValues 309 <- 198 319                                                                                          |
|     4 | X_22=[1500000]:bat[:date] := sql.bind(X_9=0:int, "sys":str, "orders":str, "o_orderdate":str, 0:int); #[9] (0) mvc_bind_wrap 22 <- 9 11 12 14 15                                              |
|     4 | X_312=[2]:bat[:int] := bat.pack(0:int, 4:int); #[7] (0) MATpackValues 312 <- 15 255                                                                                                          |
|     3 | X_311=[2]:bat[:int] := bat.pack(25:int, 38:int); #[6] (0) MATpackValues 311 <- 258 321                                                                                                       |
|    27 | X_308=[2]:bat[:str] := bat.pack("sys.nation":str, "sys.":str); #[3] (0) MATpackValues 308 <- 313 318                                                                                         |
|     5 | C_10=[1500000]:bat[:oid] := sql.tid(X_9=0:int, "sys":str, "orders":str); #[10] (0) SQLtid 10 <- 9 11 12                                                                                      |
|     6 | X_28=[1500000]:bat[:oid] := sql.bind_idxbat(X_9=0:int, "sys":str, "orders":str, "orders_fk1":str, 0:int); #[12] (0) mvc_bind_idxbat_wrap 28 <- 9 11 12 29 15                                 |
|    22 | (X_31=[0]:bat[:oid], X_32=[0]:bat[:oid]) := sql.bind_idxbat(X_9=0:int, "sys":str, "orders":str, "orders_fk1":str, 2:int); #[13] (0) mvc_bind_idxbat_wrap 31 32 <- 9 11 12 29 20              |
|     2 | X_30=[0]:bat[:oid] := sql.bind_idxbat(X_9=0:int, "sys":str, "orders":str, "orders_fk1":str, 1:int); #[14] (0) mvc_bind_idxbat_wrap 30 <- 9 11 12 29 17                                       |
|     4 | C_42=[150000]:bat[:oid] := sql.tid(X_9=0:int, "sys":str, "customer":str); #[16] (0) SQLtid 42 <- 9 11 43                                                                                     |
|     2 | C_369=[1500303]:bat[:oid] := sql.tid(X_9=0:int, "sys":str, "lineitem":str, 0:int, 4:int); #[19] (0) SQLtid 369 <- 9 11 70 15 255                                                             |
|    46 | X_408=[1500306]:bat[:lng] := sql.bind(X_9=0:int, "sys":str, "lineitem":str, "l_extendedprice":str, 0:int, 3:int, 4:int); #[177] (0) mvc_bind_wrap 408 <- 9 11 70 83 15 254 255               |
|     5 | X_96=[0]:bat[:oid] := sql.bind_idxbat(X_9=0:int, "sys":str, "lineitem":str, "lineitem_fk1":str, 1:int); #[153] (0) mvc_bind_idxbat_wrap 96 <- 9 11 70 95 17                                  |
|    72 | X_429=[1500303]:bat[:oid] := sql.bind_idxbat(X_9=0:int, "sys":str, "lineitem":str, "lineitem_fk1":str, 0:int, 0:int, 4:int); #[20] (0) mvc_bind_idxbat_wrap 429 <- 9 11 70 95 15 15 255      |
|    24 | X_391=[1500306]:bat[:int] := sql.bind(X_9=0:int, "sys":str, "lineitem":str, "l_suppkey":str, 0:int, 3:int, 4:int); #[156] (0) mvc_bind_wrap 391 <- 9 11 70 72 15 254 255                     |
|     8 | (X_444=[0]:bat[:oid], X_445=[0]:bat[:oid]) := sql.bind_idxbat(X_9=0:int, "sys":str, "lineitem":str, "lineitem_fk1":str, 2:int, 3:int, 4:int); #[152] (0) mvc_bind_idxbat_wrap 444 445 <- 9 1 |
:       : 1 70 95 20 254 255                                                                                                                                                                           :
|     6 | (X_435=[0]:bat[:oid], X_436=[0]:bat[:oid]) := sql.bind_idxbat(X_9=0:int, "sys":str, "lineitem":str, "lineitem_fk1":str, 2:int, 0:int, 4:int); #[21] (0) mvc_bind_idxbat_wrap 435 436 <- 9 11 |
:       :  70 95 20 15 255                                                                                                                                                                             :
|    14 | X_432=[1500306]:bat[:oid] := sql.bind_idxbat(X_9=0:int, "sys":str, "lineitem":str, "lineitem_fk1":str, 0:int, 3:int, 4:int); #[151] (0) mvc_bind_idxbat_wrap 432 <- 9 11 70 95 15 254 255    |
|     3 | C_375=[1500306]:bat[:oid] := sql.tid(X_9=0:int, "sys":str, "lineitem":str, 3:int, 4:int); #[150] (0) SQLtid 375 <- 9 11 70 254 255                                                           |
|     4 | X_388=[1500303]:bat[:int] := sql.bind(X_9=0:int, "sys":str, "lineitem":str, "l_suppkey":str, 0:int, 0:int, 4:int); #[24] (0) mvc_bind_wrap 388 <- 9 11 70 72 15 15 255                       |
|     3 | X_419=[1500303]:bat[:lng] := sql.bind(X_9=0:int, "sys":str, "lineitem":str, "l_discount":str, 0:int, 2:int, 4:int); #[142] (0) mvc_bind_wrap 419 <- 9 11 70 89 15 20 255                     |
|     3 | X_406=[1500303]:bat[:lng] := sql.bind(X_9=0:int, "sys":str, "lineitem":str, "l_extendedprice":str, 0:int, 2:int, 4:int); #[140] (0) mvc_bind_wrap 406 <- 9 11 70 83 15 20 255                |
|     2 | X_50=[150000]:bat[:int] := sql.bind(X_9=0:int, "sys":str, "customer":str, "c_nationkey":str, 0:int); #[27] (0) mvc_bind_wrap 50 <- 9 11 43 45 15                                             |
|     3 | X_390=[1500303]:bat[:int] := sql.bind(X_9=0:int, "sys":str, "lineitem":str, "l_suppkey":str, 0:int, 2:int, 4:int); #[119] (0) mvc_bind_wrap 390 <- 9 11 70 72 15 20 255                      |
|     3 | C_119=[10000]:bat[:oid] := sql.tid(X_9=0:int, "sys":str, "supplier":str); #[31] (0) SQLtid 119 <- 9 11 120                                                                                   |
|     4 | (X_441=[0]:bat[:oid], X_442=[0]:bat[:oid]) := sql.bind_idxbat(X_9=0:int, "sys":str, "lineitem":str, "lineitem_fk1":str, 2:int, 2:int, 4:int); #[116] (0) mvc_bind_idxbat_wrap 441 442 <- 9 1 |
:       : 1 70 95 20 20 255                                                                                                                                                                            :
|     2 | X_127=[10000]:bat[:int] := sql.bind(X_9=0:int, "sys":str, "supplier":str, "s_suppkey":str, 0:int); #[32] (0) mvc_bind_wrap 127 <- 9 11 120 122 15                                            |
|     2 | C_373=[1500303]:bat[:oid] := sql.tid(X_9=0:int, "sys":str, "lineitem":str, 2:int, 4:int); #[114] (0) SQLtid 373 <- 9 11 70 20 255                                                            |
|     8 | X_431=[1500303]:bat[:oid] := sql.bind_idxbat(X_9=0:int, "sys":str, "lineitem":str, "lineitem_fk1":str, 0:int, 2:int, 4:int); #[115] (0) mvc_bind_idxbat_wrap 431 <- 9 11 70 95 15 20 255     |
|     2 | X_132=[10000]:bat[:int] := sql.bind(X_9=0:int, "sys":str, "supplier":str, "s_nationkey":str, 0:int); #[35] (0) mvc_bind_wrap 132 <- 9 11 120 133 15                                          |
|     3 | X_418=[1500303]:bat[:lng] := sql.bind(X_9=0:int, "sys":str, "lineitem":str, "l_discount":str, 0:int, 1:int, 4:int); #[106] (0) mvc_bind_wrap 418 <- 9 11 70 89 15 17 255                     |
|     2 | X_138=[10000]:bat[:oid] := sql.bind_idxbat(X_9=0:int, "sys":str, "supplier":str, "supplier_fk1":str, 0:int); #[49] (0) mvc_bind_idxbat_wrap 138 <- 9 11 120 139 15                           |
|     3 | X_389=[1500303]:bat[:int] := sql.bind(X_9=0:int, "sys":str, "lineitem":str, "l_suppkey":str, 0:int, 1:int, 4:int); #[83] (0) mvc_bind_wrap 389 <- 9 11 70 72 15 17 255                       |
|     3 | (X_141=[0]:bat[:oid], X_142=[0]:bat[:oid]) := sql.bind_idxbat(X_9=0:int, "sys":str, "supplier":str, "supplier_fk1":str, 2:int); #[50] (0) mvc_bind_idxbat_wrap 141 142 <- 9 11 120 139 20    |
|     4 | (X_438=[0]:bat[:oid], X_439=[0]:bat[:oid]) := sql.bind_idxbat(X_9=0:int, "sys":str, "lineitem":str, "lineitem_fk1":str, 2:int, 1:int, 4:int); #[80] (0) mvc_bind_idxbat_wrap 438 439 <- 9 11 |
:       :  70 95 20 17 255                                                                                                                                                                             :
|     2 | X_140=[0]:bat[:oid] := sql.bind_idxbat(X_9=0:int, "sys":str, "supplier":str, "supplier_fk1":str, 1:int); #[51] (0) mvc_bind_idxbat_wrap 140 <- 9 11 120 139 17                               |
|     3 | X_404=[1500303]:bat[:lng] := sql.bind(X_9=0:int, "sys":str, "lineitem":str, "l_extendedprice":str, 0:int, 1:int, 4:int); #[104] (0) mvc_bind_wrap 404 <- 9 11 70 83 15 17 255                |
|     3 | C_195=[25]:bat[:oid] := sql.tid(X_9=0:int, "sys":str, "nation":str); #[54] (0) SQLtid 195 <- 9 11 196                                                                                        |
|    13 | X_430=[1500303]:bat[:oid] := sql.bind_idxbat(X_9=0:int, "sys":str, "lineitem":str, "lineitem_fk1":str, 0:int, 1:int, 4:int); #[79] (0) mvc_bind_idxbat_wrap 430 <- 9 11 70 95 15 17 255      |
|     1 | X_209=[25]:bat[:oid] := sql.bind_idxbat(X_9=0:int, "sys":str, "nation":str, "nation_fk1":str, 0:int); #[56] (0) mvc_bind_idxbat_wrap 209 <- 9 11 196 210 15                                  |
|     5 | C_371=[1500303]:bat[:oid] := sql.tid(X_9=0:int, "sys":str, "lineitem":str, 1:int, 4:int); #[78] (0) SQLtid 371 <- 9 11 70 17 255                                                             |
|     3 | X_203=[25]:bat[:str] := sql.bind(X_9=0:int, "sys":str, "nation":str, "n_name":str, 0:int); #[72] (0) mvc_bind_wrap 203 <- 9 11 196 198 15                                                    |
|     2 | (X_212=[0]:bat[:oid], X_213=[0]:bat[:oid]) := sql.bind_idxbat(X_9=0:int, "sys":str, "nation":str, "nation_fk1":str, 2:int); #[57] (0) mvc_bind_idxbat_wrap 212 213 <- 9 11 196 210 20        |
|     4 | X_417=[1500303]:bat[:lng] := sql.bind(X_9=0:int, "sys":str, "lineitem":str, "l_discount":str, 0:int, 0:int, 4:int); #[68] (0) mvc_bind_wrap 417 <- 9 11 70 89 15 15 255                      |
|     4 | X_402=[1500303]:bat[:lng] := sql.bind(X_9=0:int, "sys":str, "lineitem":str, "l_extendedprice":str, 0:int, 0:int, 4:int); #[66] (0) mvc_bind_wrap 402 <- 9 11 70 83 15 15 255                 |
|     2 | X_211=[0]:bat[:oid] := sql.bind_idxbat(X_9=0:int, "sys":str, "nation":str, "nation_fk1":str, 1:int); #[58] (0) mvc_bind_idxbat_wrap 211 <- 9 11 196 210 17                                   |
|    19 | C_238=[5]:bat[:oid] := sql.tid(X_9=0:int, "sys":str, "region":str); #[62] (0) SQLtid 238 <- 9 11 239                                                                                         |
|     4 | X_246=[5]:bat[:str] := sql.bind(X_9=0:int, "sys":str, "region":str, "r_name":str, 0:int); #[61] (0) mvc_bind_wrap 246 <- 9 11 239 241 15                                                     |
|    10 | X_463=[1500303]:bat[:oid] := sql.projectdelta(C_369=[1500303]:bat[:oid], X_429=[1500303]:bat[:oid], X_435=[0]:bat[:oid], X_436=[0]:bat[:oid]); #[22] (0) DELTAproject2 463 <- 369 429 435 43 |
:       : 6                                                                                                                                                                                            :
|     9 | X_420=[1500306]:bat[:lng] := sql.bind(X_9=0:int, "sys":str, "lineitem":str, "l_discount":str, 0:int, 3:int, 4:int); #[179] (0) mvc_bind_wrap 420 <- 9 11 70 89 15 254 255                    |
|    10 | X_466=[1500306]:bat[:oid] := sql.projectdelta(C_375=[1500306]:bat[:oid], X_432=[1500306]:bat[:oid], X_444=[0]:bat[:oid], X_445=[0]:bat[:oid], X_96=[0]:bat[:oid]); #[154] (0) DELTAproject 4 |
:       : 66 <- 375 432 444 445 96                                                                                                                                                                     :
|     3 | X_145=[10000]:bat[:int] := algebra.projection(C_119=[10000]:bat[:oid], X_132=[10000]:bat[:int]); #[36] (0) ALGprojection 145 <- 119 132                                                      |
|     4 | X_144=[10000]:bat[:int] := algebra.projection(C_119=[10000]:bat[:oid], X_127=[10000]:bat[:int]); #[33] (0) ALGprojection 144 <- 119 127                                                      |
|     3 | X_465=[1500303]:bat[:oid] := sql.projectdelta(C_373=[1500303]:bat[:oid], X_431=[1500303]:bat[:oid], X_441=[0]:bat[:oid], X_442=[0]:bat[:oid]); #[117] (0) DELTAproject2 465 <- 373 431 441 4 |
:       : 42                                                                                                                                                                                           :
|    28 | X_146=[10000]:bat[:oid] := sql.projectdelta(C_119=[10000]:bat[:oid], X_138=[10000]:bat[:oid], X_141=[0]:bat[:oid], X_142=[0]:bat[:oid], X_140=[0]:bat[:oid]); #[52] (0) DELTAproject 146 <-  |
:       : 119 138 141 142 140                                                                                                                                                                          :
|    16 | X_162=[10000]:bat[:lng] := batmkey.hash(X_144=[10000]:bat[:int]); #[34] (0) MKEYbathash 162 <- 144                                                                                           |
|     3 | X_464=[1500303]:bat[:oid] := sql.projectdelta(C_371=[1500303]:bat[:oid], X_430=[1500303]:bat[:oid], X_438=[0]:bat[:oid], X_439=[0]:bat[:oid]); #[81] (0) DELTAproject2 464 <- 371 430 438 43 |
:       : 9                                                                                                                                                                                            :
|     4 | X_215=[25]:bat[:str] := algebra.projection(C_195=[25]:bat[:oid], X_203=[25]:bat[:str]); #[73] (0) ALGprojection 215 <- 195 203                                                               |
|     4 | X_216=[25]:bat[:oid] := sql.projectdelta(C_195=[25]:bat[:oid], X_209=[25]:bat[:oid], X_212=[0]:bat[:oid], X_213=[0]:bat[:oid], X_211=[0]:bat[:oid]); #[59] (0) DELTAproject 216 <- 195 209 2 |
:       : 12 213 211                                                                                                                                                                                   :
|     6 | C_259=[1]:bat[:oid] := algebra.thetaselect(X_246=[5]:bat[:str], C_238=[5]:bat[:oid], "ASIA":str, "==":str); #[63] (1) ALGthetaselect2 259 <- 246 238 2 171                                   |
|     2 | language.pass(C_119=[10000]:bat[:oid]); #[207] (0) MALpass 850 <- 119                                                                                                                        |
|    41 | X_163=[10000]:bat[:lng] := mkey.bulk_rotate_xor_hash(X_162=[10000]:bat[:lng], 22:int, X_145=[10000]:bat[:int]); #[37] (0) MKEYbulk_rotate_xor_hash 163 <- 162 156 145                        |
|  4068 | C_38=[227597]:bat[:oid] := algebra.select(X_22=[1500000]:bat[:date], C_10=[1500000]:bat[:oid], "1994-01-01":date, "1995-01-01":date, true:bit, false:bit, false:bit, true:bit); #[11] (1) AL |
:       : Gselect2nil 38 <- 22 10 3 360 39 40 40 39                                                                                                                                                    :
|  1376 | X_57=[227597]:bat[:oid] := sql.projectdelta(C_38=[227597]:bat[:oid], X_28=[1500000]:bat[:oid], X_31=[0]:bat[:oid], X_32=[0]:bat[:oid], X_30=[0]:bat[:oid]); #[15] (0) DELTAproject 57 <- 38  |
:       : 28 31 32 30                                                                                                                                                                                  :
|  1152 | (X_59=[227597]:bat[:oid], X_60=[227597]:bat[:oid]) := algebra.join(X_57=[227597]:bat[:oid], C_42=[150000]:bat[:oid], nil:BAT, nil:BAT, false:bit, nil:lng); #[17] (0) ALGjoin 59 60 <- 57 42 |
:       :  61 61 40 63                                                                                                                                                                                 :
|   426 | X_65=[227597]:bat[:oid] := algebra.projection(X_59=[227597]:bat[:oid], C_38=[227597]:bat[:oid]); #[18] (0) ALGprojection 65 <- 59 38                                                         |
|     2 | language.pass(C_38=[227597]:bat[:oid]); #[200] (0) MALpass 843 <- 38                                                                                                                         |
|  6342 | X_67=[227597]:bat[:int] := algebra.projectionpath(X_60=[227597]:bat[:oid], C_42=[150000]:bat[:oid], X_50=[150000]:bat[:int]); #[28] (0) ALGprojectionpath 67 <- 60 42 50                     |
|     7 | language.pass(C_42=[150000]:bat[:oid]); #[201] (0) MALpass 844 <- 42                                                                                                                         |
| 16637 | (X_473=[227210]:bat[:oid], X_474=[227210]:bat[:oid]) := algebra.join(X_65=[227597]:bat[:oid], X_466=[1500306]:bat[:oid], nil:BAT, nil:BAT, false:bit, nil:lng); #[155] (0) ALGjoin 473 474 < |
:       : - 65 466 61 61 40 63                                                                                                                                                                         :
| 16863 | (X_471=[226786]:bat[:oid], X_472=[226786]:bat[:oid]) := algebra.join(X_65=[227597]:bat[:oid], X_465=[1500303]:bat[:oid], nil:BAT, nil:BAT, false:bit, nil:lng); #[118] (0) ALGjoin 471 472 < |
:       : - 65 465 61 61 40 63                                                                                                                                                                         :
| 17520 | (X_467=[229349]:bat[:oid], X_468=[229349]:bat[:oid]) := algebra.join(X_65=[227597]:bat[:oid], X_463=[1500303]:bat[:oid], nil:BAT, nil:BAT, false:bit, nil:lng); #[23] (0) ALGjoin 467 468 <- |
:       :  65 463 61 61 40 63                                                                                                                                                                          :
| 15372 | (X_469=[227174]:bat[:oid], X_470=[227174]:bat[:oid]) := algebra.join(X_65=[227597]:bat[:oid], X_464=[1500303]:bat[:oid], nil:BAT, nil:BAT, false:bit, nil:lng); #[82] (0) ALGjoin 469 470 <- |
:       :  65 464 61 61 40 63                                                                                                                                                                          :
|     5 | language.pass(X_65=[227597]:bat[:oid]); #[251] (0) MALpass 894 <- 65                                                                                                                         |
|   422 | X_488=[227174]:bat[:int] := algebra.projection(X_469=[227174]:bat[:oid], X_67=[227597]:bat[:int]); #[86] (0) ALGprojection 488 <- 469 67                                                     |
|  6351 | X_497=[226786]:bat[:int] := algebra.projectionpath(X_472=[226786]:bat[:oid], C_373=[1500303]:bat[:oid], X_390=[1500303]:bat[:int]); #[120] (0) ALGprojectionpath 497 <- 472 373 390          |
|  6678 | X_498=[227210]:bat[:int] := algebra.projectionpath(X_474=[227210]:bat[:oid], C_375=[1500306]:bat[:oid], X_391=[1500306]:bat[:int]); #[157] (0) ALGprojectionpath 498 <- 474 375 391          |
|   692 | X_530=[227210]:bat[:lng] := batmkey.hash(X_498=[227210]:bat[:int]); #[158] (0) MKEYbathash 530 <- 498                                                                                        |
|   767 | X_529=[226786]:bat[:lng] := batmkey.hash(X_497=[226786]:bat[:int]); #[121] (0) MKEYbathash 529 <- 497                                                                                        |
|  6635 | X_495=[229349]:bat[:int] := algebra.projectionpath(X_468=[229349]:bat[:oid], C_369=[1500303]:bat[:oid], X_388=[1500303]:bat[:int]); #[25] (0) ALGprojectionpath 495 <- 468 369 388           |
|   946 | X_487=[229349]:bat[:int] := algebra.projection(X_467=[229349]:bat[:oid], X_67=[227597]:bat[:int]); #[29] (0) ALGprojection 487 <- 467 67                                                     |
|  1048 | X_489=[226786]:bat[:int] := algebra.projection(X_471=[226786]:bat[:oid], X_67=[227597]:bat[:int]); #[122] (0) ALGprojection 489 <- 471 67                                                    |
|  1041 | X_527=[229349]:bat[:lng] := batmkey.hash(X_495=[229349]:bat[:int]); #[26] (0) MKEYbathash 527 <- 495                                                                                         |
|  1146 | X_490=[227210]:bat[:int] := algebra.projection(X_473=[227210]:bat[:oid], X_67=[227597]:bat[:int]); #[159] (0) ALGprojection 490 <- 473 67                                                    |
|     3 | language.pass(X_67=[227597]:bat[:int]); #[252] (0) MALpass 895 <- 67                                                                                                                         |
|  1269 | X_533=[226786]:bat[:lng] := mkey.bulk_rotate_xor_hash(X_529=[226786]:bat[:lng], 22:int, X_489=[226786]:bat[:int]); #[123] (0) MKEYbulk_rotate_xor_hash 533 <- 529 156 489                    |
|  1346 | X_531=[229349]:bat[:lng] := mkey.bulk_rotate_xor_hash(X_527=[229349]:bat[:lng], 22:int, X_487=[229349]:bat[:int]); #[30] (0) MKEYbulk_rotate_xor_hash 531 <- 527 156 487                     |
|   809 | X_534=[227210]:bat[:lng] := mkey.bulk_rotate_xor_hash(X_530=[227210]:bat[:lng], 22:int, X_490=[227210]:bat[:int]); #[160] (0) MKEYbulk_rotate_xor_hash 534 <- 530 156 490                    |
|  8100 | X_496=[227174]:bat[:int] := algebra.projectionpath(X_470=[227174]:bat[:oid], C_371=[1500303]:bat[:oid], X_389=[1500303]:bat[:int]); #[84] (0) ALGprojectionpath 496 <- 470 371 389           |
|  5496 | (X_539=[9094]:bat[:oid], X_540=[9094]:bat[:oid]) := algebra.join(X_533=[226786]:bat[:lng], X_163=[10000]:bat[:lng], nil:BAT, nil:BAT, true:bit, nil:lng); #[124] (0) ALGjoin 539 540 <- 533  |
:       : 163 61 61 39 63                                                                                                                                                                              :
|  5546 | (X_535=[9103]:bat[:oid], X_536=[9103]:bat[:oid]) := algebra.join(X_531=[229349]:bat[:lng], X_163=[10000]:bat[:lng], nil:BAT, nil:BAT, true:bit, nil:lng); #[38] (0) ALGjoin 535 536 <- 531 1 |
:       : 63 61 61 39 63                                                                                                                                                                               :
|   114 | X_545=[9094]:bat[:int] := algebra.projection(X_539=[9094]:bat[:oid], X_497=[226786]:bat[:int]); #[125] (0) ALGprojection 545 <- 539 497                                                      |
|     2 | language.pass(X_497=[226786]:bat[:int]); #[235] (0) MALpass 878 <- 497                                                                                                                       |
|    53 | X_549=[9094]:bat[:int] := algebra.projection(X_540=[9094]:bat[:oid], X_144=[10000]:bat[:int]); #[126] (0) ALGprojection 549 <- 540 144                                                       |
|    36 | X_553=[9094]:bat[:bit] := batcalc.==(X_545=[9094]:bat[:int], X_549=[9094]:bat[:int]); #[127] (0) CMDbatEQ 553 <- 545 549                                                                     |
|   177 | X_543=[9103]:bat[:int] := algebra.projection(X_535=[9103]:bat[:oid], X_495=[229349]:bat[:int]); #[39] (0) ALGprojection 543 <- 535 495                                                       |
|     2 | language.pass(X_495=[229349]:bat[:int]); #[202] (0) MALpass 845 <- 495                                                                                                                       |
|    37 | X_547=[9103]:bat[:int] := algebra.projection(X_536=[9103]:bat[:oid], X_144=[10000]:bat[:int]); #[40] (0) ALGprojection 547 <- 536 144                                                        |
|   140 | C_557=[9094]:bat[:oid] := algebra.thetaselect(X_553=[9094]:bat[:bit], true:bit, "==":str); #[128] (0) ALGthetaselect1 557 <- 553 39 171                                                      |
|    31 | X_551=[9103]:bat[:bit] := batcalc.==(X_543=[9103]:bat[:int], X_547=[9103]:bat[:int]); #[41] (0) CMDbatEQ 551 <- 543 547                                                                      |
|    24 | X_561=[9094]:bat[:oid] := algebra.projection(C_557=[9094]:bat[:oid], X_539=[9094]:bat[:oid]); #[129] (0) ALGprojection 561 <- 557 539                                                        |
|     1 | language.pass(X_539=[9094]:bat[:oid]); #[236] (0) MALpass 879 <- 539                                                                                                                         |
|   412 | X_528=[227174]:bat[:lng] := batmkey.hash(X_496=[227174]:bat[:int]); #[85] (0) MKEYbathash 528 <- 496                                                                                         |
|   129 | C_555=[9103]:bat[:oid] := algebra.thetaselect(X_551=[9103]:bat[:bit], true:bit, "==":str); #[42] (0) ALGthetaselect1 555 <- 551 39 171                                                       |
|   139 | X_569=[9094]:bat[:int] := algebra.projection(X_561=[9094]:bat[:oid], X_489=[226786]:bat[:int]); #[130] (0) ALGprojection 569 <- 561 489                                                      |
|    20 | X_559=[9103]:bat[:oid] := algebra.projection(C_555=[9103]:bat[:oid], X_535=[9103]:bat[:oid]); #[43] (0) ALGprojection 559 <- 555 535                                                         |
|  5492 | (X_541=[9046]:bat[:oid], X_542=[9046]:bat[:oid]) := algebra.join(X_534=[227210]:bat[:lng], X_163=[10000]:bat[:lng], nil:BAT, nil:BAT, true:bit, nil:lng); #[161] (0) ALGjoin 541 542 <- 534  |
:       : 163 61 61 39 63                                                                                                                                                                              :
|     1 | language.pass(X_535=[9103]:bat[:oid]); #[203] (0) MALpass 846 <- 535                                                                                                                         |
|     1 | language.pass(X_489=[226786]:bat[:int]); #[237] (0) MALpass 880 <- 489                                                                                                                       |
|    66 | X_550=[9046]:bat[:int] := algebra.projection(X_542=[9046]:bat[:oid], X_144=[10000]:bat[:int]); #[163] (0) ALGprojection 550 <- 542 144                                                       |
|    28 | X_563=[9103]:bat[:oid] := algebra.projection(C_555=[9103]:bat[:oid], X_536=[9103]:bat[:oid]); #[45] (0) ALGprojection 563 <- 555 536                                                         |
|   205 | X_567=[9103]:bat[:int] := algebra.projection(X_559=[9103]:bat[:oid], X_487=[229349]:bat[:int]); #[44] (0) ALGprojection 567 <- 559 487                                                       |
|     1 | language.pass(C_555=[9103]:bat[:oid]); #[205] (0) MALpass 848 <- 555                                                                                                                         |
|     1 | language.pass(X_487=[229349]:bat[:int]); #[204] (0) MALpass 847 <- 487                                                                                                                       |
|    41 | X_565=[9094]:bat[:oid] := algebra.projection(C_557=[9094]:bat[:oid], X_540=[9094]:bat[:oid]); #[131] (0) ALGprojection 565 <- 557 540                                                        |
|     3 | language.pass(C_557=[9094]:bat[:oid]); #[238] (0) MALpass 881 <- 557                                                                                                                         |
|    44 | X_571=[9103]:bat[:int] := algebra.projection(X_563=[9103]:bat[:oid], X_145=[10000]:bat[:int]); #[46] (0) ALGprojection 571 <- 563 145                                                        |
|    33 | X_573=[9094]:bat[:int] := algebra.projection(X_565=[9094]:bat[:oid], X_145=[10000]:bat[:int]); #[132] (0) ALGprojection 573 <- 565 145                                                       |
|   314 | X_546=[9046]:bat[:int] := algebra.projection(X_541=[9046]:bat[:oid], X_498=[227210]:bat[:int]); #[162] (0) ALGprojection 546 <- 541 498                                                      |
|    28 | X_575=[9103]:bat[:bit] := batcalc.==(X_567=[9103]:bat[:int], X_571=[9103]:bat[:int]); #[47] (0) CMDbatEQ 575 <- 567 571                                                                      |
|     2 | language.pass(X_498=[227210]:bat[:int]); #[254] (0) MALpass 897 <- 498                                                                                                                       |
|    30 | X_577=[9094]:bat[:bit] := batcalc.==(X_569=[9094]:bat[:int], X_573=[9094]:bat[:int]); #[133] (0) CMDbatEQ 577 <- 569 573                                                                     |
|    31 | X_554=[9046]:bat[:bit] := batcalc.==(X_546=[9046]:bat[:int], X_550=[9046]:bat[:int]); #[164] (0) CMDbatEQ 554 <- 546 550                                                                     |
|   129 | C_579=[9103]:bat[:oid] := algebra.thetaselect(X_575=[9103]:bat[:bit], true:bit, "==":str); #[48] (0) ALGthetaselect1 579 <- 575 39 171                                                       |
|   129 | C_581=[9094]:bat[:oid] := algebra.thetaselect(X_577=[9094]:bat[:bit], true:bit, "==":str); #[134] (0) ALGthetaselect1 581 <- 577 39 171                                                      |
|   624 | X_532=[227174]:bat[:lng] := mkey.bulk_rotate_xor_hash(X_528=[227174]:bat[:lng], 22:int, X_488=[227174]:bat[:int]); #[87] (0) MKEYbulk_rotate_xor_hash 532 <- 528 156 488                     |
|   173 | C_558=[9046]:bat[:oid] := algebra.thetaselect(X_554=[9046]:bat[:bit], true:bit, "==":str); #[165] (0) ALGthetaselect1 558 <- 554 39 171                                                      |
|    16 | X_562=[9046]:bat[:oid] := algebra.projection(C_558=[9046]:bat[:oid], X_541=[9046]:bat[:oid]); #[166] (0) ALGprojection 562 <- 558 541                                                        |
|     1 | language.pass(X_541=[9046]:bat[:oid]); #[256] (0) MALpass 899 <- 541                                                                                                                         |
|   196 | X_635=[9103]:bat[:oid] := algebra.projectionpath(C_579=[9103]:bat[:oid], X_563=[9103]:bat[:oid], X_146=[10000]:bat[:oid]); #[53] (0) ALGprojectionpath 635 <- 579 563 146                    |
|     2 | language.pass(X_563=[9103]:bat[:oid]); #[208] (0) MALpass 851 <- 563                                                                                                                         |
|    19 | X_583=[9103]:bat[:oid] := algebra.projection(C_579=[9103]:bat[:oid], X_559=[9103]:bat[:oid]); #[65] (0) ALGprojection 583 <- 579 559                                                         |
|     1 | language.pass(C_579=[9103]:bat[:oid]); #[209] (0) MALpass 852 <- 579                                                                                                                         |
|   255 | X_637=[9094]:bat[:oid] := algebra.projectionpath(C_581=[9094]:bat[:oid], X_565=[9094]:bat[:oid], X_146=[10000]:bat[:oid]); #[135] (0) ALGprojectionpath 637 <- 581 565 146                   |
|     2 | language.pass(X_565=[9094]:bat[:oid]); #[240] (0) MALpass 883 <- 565                                                                                                                         |
|    42 | (X_639=[9103]:bat[:oid], X_640=[9103]:bat[:oid]) := algebra.join(X_635=[9103]:bat[:oid], C_195=[25]:bat[:oid], nil:BAT, nil:BAT, false:bit, nil:lng); #[55] (0) ALGjoin 639 640 <- 635 195 6 |
:       : 1 61 40 63                                                                                                                                                                                   :
|    29 | X_703=[9103]:bat[:oid] := algebra.projection(X_640=[9103]:bat[:oid], X_216=[25]:bat[:oid]); #[60] (0) ALGprojection 703 <- 640 216                                                           |
|    58 | (X_643=[9094]:bat[:oid], X_644=[9094]:bat[:oid]) := algebra.join(X_637=[9094]:bat[:oid], C_195=[25]:bat[:oid], nil:BAT, nil:BAT, false:bit, nil:lng); #[136] (0) ALGjoin 643 644 <- 637 195  |
:       : 61 61 40 63                                                                                                                                                                                  :
|    41 | X_707=[1855]:bat[:oid] := algebra.join(X_703=[9103]:bat[:oid], C_259=[1]:bat[:oid], nil:BAT, nil:BAT, false:bit, nil:lng); #[64] (0) ALGjoin1 707 <- 703 259 61 61 40 63                     |
|   251 | X_570=[9046]:bat[:int] := algebra.projection(X_562=[9046]:bat[:oid], X_490=[227210]:bat[:int]); #[167] (0) ALGprojection 570 <- 562 490                                                      |
|    29 | X_705=[9094]:bat[:oid] := algebra.projection(X_644=[9094]:bat[:oid], X_216=[25]:bat[:oid]); #[137] (0) ALGprojection 705 <- 644 216                                                          |
|     2 | language.pass(X_490=[227210]:bat[:int]); #[257] (0) MALpass 900 <- 490                                                                                                                       |
|    85 | X_711=[1850]:bat[:oid] := algebra.join(X_705=[9094]:bat[:oid], C_259=[1]:bat[:oid], nil:BAT, nil:BAT, false:bit, nil:lng); #[138] (0) ALGjoin1 711 <- 705 259 61 61 40 63                    |
|    43 | X_765=[1850]:bat[:str] := algebra.projectionpath(X_711=[1850]:bat[:oid], X_644=[9094]:bat[:oid], X_215=[25]:bat[:str]); #[146] (0) ALGprojectionpath 765 <- 711 644 215                      |
|     1 | language.pass(X_644=[9094]:bat[:oid]); #[248] (0) MALpass 891 <- 644                                                                                                                         |
|    97 | X_763=[1855]:bat[:str] := algebra.projectionpath(X_707=[1855]:bat[:oid], X_640=[9103]:bat[:oid], X_215=[25]:bat[:str]); #[74] (0) ALGprojectionpath 763 <- 707 640 215                       |
|     3 | language.pass(X_640=[9103]:bat[:oid]); #[216] (0) MALpass 859 <- 640                                                                                                                         |
|    49 | (X_794=[1855]:bat[:oid], C_795=[5]:bat[:oid]) := group.groupdone(X_763=[1855]:bat[:str]); #[75] (0) GRPgroup3 794 795 <- 763                                                                 |
|     8 | X_797=[5]:bat[:str] := algebra.projection(C_795=[5]:bat[:oid], X_763=[1855]:bat[:str]); #[76] (0) ALGprojection 797 <- 795 763                                                               |
|     2 | language.pass(X_763=[1855]:bat[:str]); #[217] (0) MALpass 860 <- 763                                                                                                                         |
|     9 | X_836=[5]:bat[:str] := mat.packIncrement(X_797=[5]:bat[:str], 4:int); #[191] (0) MATpackIncrement 836 <- 797 832                                                                             |
|   266 | X_743=[1855]:bat[:lng] := algebra.projectionpath(X_707=[1855]:bat[:oid], X_639=[9103]:bat[:oid], X_583=[9103]:bat[:oid], X_468=[229349]:bat[:oid], C_369=[1500303]:bat[:oid], X_417=[1500303 |
:       : ]:bat[:lng]); #[69] (0) ALGprojectionpath 743 <- 707 639 583 468 369 417                                                                                                                     :
|    32 | (X_802=[1850]:bat[:oid], C_803=[5]:bat[:oid]) := group.groupdone(X_765=[1850]:bat[:str]); #[147] (0) GRPgroup3 802 803 <- 765                                                                |
|    13 | X_783=[1855]:bat[:lng] := batcalc.-(100:lng, X_743=[1855]:bat[:lng], nil:BAT); #[70] (0) CMDbatSUBsignal 783 <- 362 743 61                                                                   |
|     8 | X_805=[5]:bat[:str] := algebra.projection(C_803=[5]:bat[:oid], X_765=[1850]:bat[:str]); #[148] (0) ALGprojection 805 <- 803 765                                                              |
|     2 | language.pass(X_559=[9103]:bat[:oid]); #[210] (0) MALpass 853 <- 559                                                                                                                         |
|     1 | language.pass(X_765=[1850]:bat[:str]); #[249] (0) MALpass 892 <- 765                                                                                                                         |
|    16 | X_566=[9046]:bat[:oid] := algebra.projection(C_558=[9046]:bat[:oid], X_542=[9046]:bat[:oid]); #[168] (0) ALGprojection 566 <- 558 542                                                        |
|     1 | language.pass(C_558=[9046]:bat[:oid]); #[258] (0) MALpass 901 <- 558                                                                                                                         |
|     1 | language.pass(X_540=[9094]:bat[:oid]); #[239] (0) MALpass 882 <- 540                                                                                                                         |
|     1 | language.pass(X_536=[9103]:bat[:oid]); #[206] (0) MALpass 849 <- 536                                                                                                                         |
|    17 | X_574=[9046]:bat[:int] := algebra.projection(X_566=[9046]:bat[:oid], X_145=[10000]:bat[:int]); #[169] (0) ALGprojection 574 <- 566 145                                                       |
|    40 | X_585=[9094]:bat[:oid] := algebra.projection(C_581=[9094]:bat[:oid], X_561=[9094]:bat[:oid]); #[139] (0) ALGprojection 585 <- 581 561                                                        |
|     2 | language.pass(C_581=[9094]:bat[:oid]); #[241] (0) MALpass 884 <- 581                                                                                                                         |
|    27 | X_578=[9046]:bat[:bit] := batcalc.==(X_570=[9046]:bat[:int], X_574=[9046]:bat[:int]); #[170] (0) CMDbatEQ 578 <- 570 574                                                                     |
|   798 | X_739=[1855]:bat[:lng] := algebra.projectionpath(X_707=[1855]:bat[:oid], X_639=[9103]:bat[:oid], X_583=[9103]:bat[:oid], X_468=[229349]:bat[:oid], C_369=[1500303]:bat[:oid], X_402=[1500303 |
:       : ]:bat[:lng]); #[67] (0) ALGprojectionpath 739 <- 707 639 583 468 369 402                                                                                                                     :
|     2 | language.pass(X_707=[1855]:bat[:oid]); #[215] (0) MALpass 858 <- 707                                                                                                                         |
|   128 | C_582=[9046]:bat[:oid] := algebra.thetaselect(X_578=[9046]:bat[:bit], true:bit, "==":str); #[171] (0) ALGthetaselect1 582 <- 578 39 171                                                      |
|   300 | X_745=[1850]:bat[:lng] := algebra.projectionpath(X_711=[1850]:bat[:oid], X_643=[9094]:bat[:oid], X_585=[9094]:bat[:oid], X_472=[226786]:bat[:oid], C_373=[1500303]:bat[:oid], X_419=[1500303 |
:       : ]:bat[:lng]); #[143] (0) ALGprojectionpath 745 <- 711 643 585 472 373 419                                                                                                                    :
|    12 | X_785=[1850]:bat[:lng] := batcalc.-(100:lng, X_745=[1850]:bat[:lng], nil:BAT); #[144] (0) CMDbatSUBsignal 785 <- 362 745 61                                                                  |
|   184 | X_638=[9046]:bat[:oid] := algebra.projectionpath(C_582=[9046]:bat[:oid], X_566=[9046]:bat[:oid], X_146=[10000]:bat[:oid]); #[172] (0) ALGprojectionpath 638 <- 582 566 146                   |
|     1 | language.pass(X_566=[9046]:bat[:oid]); #[261] (0) MALpass 904 <- 566                                                                                                                         |
|    48 | (X_645=[9046]:bat[:oid], X_646=[9046]:bat[:oid]) := algebra.join(X_638=[9046]:bat[:oid], C_195=[25]:bat[:oid], nil:BAT, nil:BAT, false:bit, nil:lng); #[173] (0) ALGjoin 645 646 <- 638 195  |
:       : 61 61 40 63                                                                                                                                                                                  :
|    99 | X_586=[9046]:bat[:oid] := algebra.projection(C_582=[9046]:bat[:oid], X_562=[9046]:bat[:oid]); #[176] (0) ALGprojection 586 <- 582 562                                                        |
|     2 | language.pass(C_582=[9046]:bat[:oid]); #[266] (0) MALpass 909 <- 582                                                                                                                         |
|    11 | X_787=[1855]:bat[:hge] := batcalc.*(X_739=[1855]:bat[:lng], X_783=[1855]:bat[:lng], nil:BAT, nil:BAT); #[71] (0) CMDbatMULenlarge 787 <- 739 783 61 61                                       |
|    45 | X_706=[9046]:bat[:oid] := algebra.projection(X_646=[9046]:bat[:oid], X_216=[25]:bat[:oid]); #[174] (0) ALGprojection 706 <- 646 216                                                          |
|    17 | X_817=[5]:bat[:hge] := aggr.subsum(X_787=[1855]:bat[:hge], X_794=[1855]:bat[:oid], C_795=[5]:bat[:oid], true:bit, true:bit); #[77] (0) AGGRsubsum_hge 817 <- 787 794 795 39 39               |
|     1 | language.pass(C_795=[5]:bat[:oid]); #[218] (0) MALpass 861 <- 795                                                                                                                            |
|     7 | X_831=[5]:bat[:hge] := mat.packIncrement(X_817=[5]:bat[:hge], 4:int); #[187] (0) MATpackIncrement 831 <- 817 832                                                                             |
|     2 | language.pass(X_562=[9046]:bat[:oid]); #[267] (0) MALpass 910 <- 562                                                                                                                         |
|     0 | language.pass(C_369=[1500303]:bat[:oid]); #[214] (0) MALpass 857 <- 369                                                                                                                      |
|     1 | language.pass(X_468=[229349]:bat[:oid]); #[213] (0) MALpass 856 <- 468                                                                                                                       |
|     1 | language.pass(X_583=[9103]:bat[:oid]); #[212] (0) MALpass 855 <- 583                                                                                                                         |
|   109 | X_713=[1741]:bat[:oid] := algebra.join(X_706=[9046]:bat[:oid], C_259=[1]:bat[:oid], nil:BAT, nil:BAT, false:bit, nil:lng); #[175] (0) ALGjoin1 713 <- 706 259 61 61 40 63                    |
|     1 | language.pass(X_639=[9103]:bat[:oid]); #[211] (0) MALpass 854 <- 639                                                                                                                         |
|     1 | language.pass(X_561=[9094]:bat[:oid]); #[242] (0) MALpass 885 <- 561                                                                                                                         |
|     1 | language.pass(X_542=[9046]:bat[:oid]); #[259] (0) MALpass 902 <- 542                                                                                                                         |
|    43 | X_766=[1741]:bat[:str] := algebra.projectionpath(X_713=[1741]:bat[:oid], X_646=[9046]:bat[:oid], X_215=[25]:bat[:str]); #[183] (0) ALGprojectionpath 766 <- 713 646 215                      |
|     2 | language.pass(X_646=[9046]:bat[:oid]); #[273] (0) MALpass 916 <- 646                                                                                                                         |
|   734 | X_741=[1850]:bat[:lng] := algebra.projectionpath(X_711=[1850]:bat[:oid], X_643=[9094]:bat[:oid], X_585=[9094]:bat[:oid], X_472=[226786]:bat[:oid], C_373=[1500303]:bat[:oid], X_406=[1500303 |
:       : ]:bat[:lng]); #[141] (0) ALGprojectionpath 741 <- 711 643 585 472 373 406                                                                                                                    :
|     2 | language.pass(X_711=[1850]:bat[:oid]); #[247] (0) MALpass 890 <- 711                                                                                                                         |
|    31 | (X_806=[1741]:bat[:oid], C_807=[5]:bat[:oid]) := group.groupdone(X_766=[1741]:bat[:str]); #[184] (0) GRPgroup3 806 807 <- 766                                                                |
|     5 | X_809=[5]:bat[:str] := algebra.projection(C_807=[5]:bat[:oid], X_766=[1741]:bat[:str]); #[185] (0) ALGprojection 809 <- 807 766                                                              |
|    43 | X_789=[1850]:bat[:hge] := batcalc.*(X_741=[1850]:bat[:lng], X_785=[1850]:bat[:lng], nil:BAT, nil:BAT); #[145] (0) CMDbatMULenlarge 789 <- 741 785 61 61                                      |
|    15 | X_819=[5]:bat[:hge] := aggr.subsum(X_789=[1850]:bat[:hge], X_802=[1850]:bat[:oid], C_803=[5]:bat[:oid], true:bit, true:bit); #[149] (0) AGGRsubsum_hge 819 <- 789 802 803 39 39              |
|     2 | language.pass(C_803=[5]:bat[:oid]); #[250] (0) MALpass 893 <- 803                                                                                                                            |
|     1 | language.pass(X_643=[9094]:bat[:oid]); #[243] (0) MALpass 886 <- 643                                                                                                                         |
|     1 | language.pass(X_585=[9094]:bat[:oid]); #[244] (0) MALpass 887 <- 585                                                                                                                         |
|     1 | language.pass(X_472=[226786]:bat[:oid]); #[245] (0) MALpass 888 <- 472                                                                                                                       |
|     1 | language.pass(C_373=[1500303]:bat[:oid]); #[246] (0) MALpass 889 <- 373                                                                                                                      |
|     1 | language.pass(X_766=[1741]:bat[:str]); #[275] (0) MALpass 918 <- 766                                                                                                                         |
|   259 | X_746=[1741]:bat[:lng] := algebra.projectionpath(X_713=[1741]:bat[:oid], X_645=[9046]:bat[:oid], X_586=[9046]:bat[:oid], X_474=[227210]:bat[:oid], C_375=[1500306]:bat[:oid], X_420=[1500306 |
:       : ]:bat[:lng]); #[180] (0) ALGprojectionpath 746 <- 713 645 586 474 375 420                                                                                                                    :
|    10 | X_786=[1741]:bat[:lng] := batcalc.-(100:lng, X_746=[1741]:bat[:lng], nil:BAT); #[181] (0) CMDbatSUBsignal 786 <- 362 746 61                                                                  |
|  1122 | X_742=[1741]:bat[:lng] := algebra.projectionpath(X_713=[1741]:bat[:oid], X_645=[9046]:bat[:oid], X_586=[9046]:bat[:oid], X_474=[227210]:bat[:oid], C_375=[1500306]:bat[:oid], X_408=[1500306 |
:       : ]:bat[:lng]); #[178] (0) ALGprojectionpath 742 <- 713 645 586 474 375 408                                                                                                                    :
|     2 | language.pass(X_713=[1741]:bat[:oid]); #[272] (0) MALpass 915 <- 713                                                                                                                         |
|     2 | language.pass(X_645=[9046]:bat[:oid]); #[268] (0) MALpass 911 <- 645                                                                                                                         |
|     1 | language.pass(X_586=[9046]:bat[:oid]); #[269] (0) MALpass 912 <- 586                                                                                                                         |
|     1 | language.pass(X_474=[227210]:bat[:oid]); #[270] (0) MALpass 913 <- 474                                                                                                                       |
|     3 | language.pass(C_375=[1500306]:bat[:oid]); #[271] (0) MALpass 914 <- 375                                                                                                                      |
|    10 | X_790=[1741]:bat[:hge] := batcalc.*(X_742=[1741]:bat[:lng], X_786=[1741]:bat[:lng], nil:BAT, nil:BAT); #[182] (0) CMDbatMULenlarge 790 <- 742 786 61 61                                      |
|    15 | X_820=[5]:bat[:hge] := aggr.subsum(X_790=[1741]:bat[:hge], X_806=[1741]:bat[:oid], C_807=[5]:bat[:oid], true:bit, true:bit); #[186] (0) AGGRsubsum_hge 820 <- 790 806 807 39 39              |
|     1 | language.pass(C_807=[5]:bat[:oid]); #[276] (0) MALpass 919 <- 807                                                                                                                            |
|  5391 | (X_537=[8993]:bat[:oid], X_538=[8993]:bat[:oid]) := algebra.join(X_532=[227174]:bat[:lng], X_163=[10000]:bat[:lng], nil:BAT, nil:BAT, true:bit, nil:lng); #[88] (0) ALGjoin 537 538 <- 532 1 |
:       : 63 61 61 39 63                                                                                                                                                                               :
|     3 | language.pass(X_163=[10000]:bat[:lng]); #[253] (0) MALpass 896 <- 163                                                                                                                        |
|    36 | X_548=[8993]:bat[:int] := algebra.projection(X_538=[8993]:bat[:oid], X_144=[10000]:bat[:int]); #[90] (0) ALGprojection 548 <- 538 144                                                        |
|     1 | language.pass(X_144=[10000]:bat[:int]); #[255] (0) MALpass 898 <- 144                                                                                                                        |
|   134 | X_544=[8993]:bat[:int] := algebra.projection(X_537=[8993]:bat[:oid], X_496=[227174]:bat[:int]); #[89] (0) ALGprojection 544 <- 537 496                                                       |
|     1 | language.pass(X_496=[227174]:bat[:int]); #[219] (0) MALpass 862 <- 496                                                                                                                       |
|    87 | X_552=[8993]:bat[:bit] := batcalc.==(X_544=[8993]:bat[:int], X_548=[8993]:bat[:int]); #[91] (0) CMDbatEQ 552 <- 544 548                                                                      |
|   152 | C_556=[8993]:bat[:oid] := algebra.thetaselect(X_552=[8993]:bat[:bit], true:bit, "==":str); #[92] (0) ALGthetaselect1 556 <- 552 39 171                                                       |
|     9 | X_560=[8993]:bat[:oid] := algebra.projection(C_556=[8993]:bat[:oid], X_537=[8993]:bat[:oid]); #[93] (0) ALGprojection 560 <- 556 537                                                         |
|     1 | language.pass(X_537=[8993]:bat[:oid]); #[220] (0) MALpass 863 <- 537                                                                                                                         |
|    33 | X_564=[8993]:bat[:oid] := algebra.projection(C_556=[8993]:bat[:oid], X_538=[8993]:bat[:oid]); #[95] (0) ALGprojection 564 <- 556 538                                                         |
|     1 | language.pass(C_556=[8993]:bat[:oid]); #[222] (0) MALpass 865 <- 556                                                                                                                         |
|     3 | language.pass(X_538=[8993]:bat[:oid]); #[223] (0) MALpass 866 <- 538                                                                                                                         |
|   247 | X_568=[8993]:bat[:int] := algebra.projection(X_560=[8993]:bat[:oid], X_488=[227174]:bat[:int]); #[94] (0) ALGprojection 568 <- 560 488                                                       |
|    25 | X_572=[8993]:bat[:int] := algebra.projection(X_564=[8993]:bat[:oid], X_145=[10000]:bat[:int]); #[96] (0) ALGprojection 572 <- 564 145                                                        |
|     1 | language.pass(X_145=[10000]:bat[:int]); #[260] (0) MALpass 903 <- 145                                                                                                                        |
|     2 | language.pass(X_488=[227174]:bat[:int]); #[221] (0) MALpass 864 <- 488                                                                                                                       |
|    28 | X_576=[8993]:bat[:bit] := batcalc.==(X_568=[8993]:bat[:int], X_572=[8993]:bat[:int]); #[97] (0) CMDbatEQ 576 <- 568 572                                                                      |
|   214 | C_580=[8993]:bat[:oid] := algebra.thetaselect(X_576=[8993]:bat[:bit], true:bit, "==":str); #[98] (0) ALGthetaselect1 580 <- 576 39 171                                                       |
|    15 | X_584=[8993]:bat[:oid] := algebra.projection(C_580=[8993]:bat[:oid], X_560=[8993]:bat[:oid]); #[103] (0) ALGprojection 584 <- 580 560                                                        |
|     1 | language.pass(X_560=[8993]:bat[:oid]); #[226] (0) MALpass 869 <- 560                                                                                                                         |
|   265 | X_636=[8993]:bat[:oid] := algebra.projectionpath(C_580=[8993]:bat[:oid], X_564=[8993]:bat[:oid], X_146=[10000]:bat[:oid]); #[99] (0) ALGprojectionpath 636 <- 580 564 146                    |
|     2 | language.pass(C_580=[8993]:bat[:oid]); #[225] (0) MALpass 868 <- 580                                                                                                                         |
|     2 | language.pass(X_564=[8993]:bat[:oid]); #[224] (0) MALpass 867 <- 564                                                                                                                         |
|     1 | language.pass(X_146=[10000]:bat[:oid]); #[262] (0) MALpass 905 <- 146                                                                                                                        |
|   121 | (X_641=[8993]:bat[:oid], X_642=[8993]:bat[:oid]) := algebra.join(X_636=[8993]:bat[:oid], C_195=[25]:bat[:oid], nil:BAT, nil:BAT, false:bit, nil:lng); #[100] (0) ALGjoin 641 642 <- 636 195  |
:       : 61 61 40 63                                                                                                                                                                                  :
|     2 | language.pass(C_195=[25]:bat[:oid]); #[263] (0) MALpass 906 <- 195                                                                                                                           |
|    51 | X_704=[8993]:bat[:oid] := algebra.projection(X_642=[8993]:bat[:oid], X_216=[25]:bat[:oid]); #[101] (0) ALGprojection 704 <- 642 216                                                          |
|     2 | language.pass(X_216=[25]:bat[:oid]); #[264] (0) MALpass 907 <- 216                                                                                                                           |
|   166 | X_709=[1797]:bat[:oid] := algebra.join(X_704=[8993]:bat[:oid], C_259=[1]:bat[:oid], nil:BAT, nil:BAT, false:bit, nil:lng); #[102] (0) ALGjoin1 709 <- 704 259 61 61 40 63                    |
|     3 | language.pass(C_259=[1]:bat[:oid]); #[265] (0) MALpass 908 <- 259                                                                                                                            |
|    46 | X_764=[1797]:bat[:str] := algebra.projectionpath(X_709=[1797]:bat[:oid], X_642=[8993]:bat[:oid], X_215=[25]:bat[:str]); #[110] (0) ALGprojectionpath 764 <- 709 642 215                      |
|     2 | language.pass(X_642=[8993]:bat[:oid]); #[232] (0) MALpass 875 <- 642                                                                                                                         |
|    28 | (X_798=[1797]:bat[:oid], C_799=[5]:bat[:oid]) := group.groupdone(X_764=[1797]:bat[:str]); #[111] (0) GRPgroup3 798 799 <- 764                                                                |
|     2 | language.pass(X_215=[25]:bat[:str]); #[274] (0) MALpass 917 <- 215                                                                                                                           |
|     7 | X_801=[5]:bat[:str] := algebra.projection(C_799=[5]:bat[:oid], X_764=[1797]:bat[:str]); #[112] (0) ALGprojection 801 <- 799 764                                                              |
|     2 | language.pass(X_764=[1797]:bat[:str]); #[233] (0) MALpass 876 <- 764                                                                                                                         |
|     4 | X_837=[10]:bat[:str] := mat.packIncrement(X_836=[10]:bat[:str], X_801=[5]:bat[:str]); #[192] (0) MATpackIncrement 837 <- 836 801                                                             |
|     3 | X_838=[15]:bat[:str] := mat.packIncrement(X_837=[15]:bat[:str], X_805=[5]:bat[:str]); #[193] (0) MATpackIncrement 838 <- 837 805                                                             |
|     3 | X_280=[20]:bat[:str] := mat.packIncrement(X_838=[20]:bat[:str], X_809=[5]:bat[:str]); #[194] (0) MATpackIncrement 280 <- 838 809                                                             |
|    25 | (X_294=[20]:bat[:oid], C_295=[5]:bat[:oid]) := group.groupdone(X_280=[20]:bat[:str]); #[195] (0) GRPgroup3 294 295 <- 280                                                                    |
|   521 | X_744=[1797]:bat[:lng] := algebra.projectionpath(X_709=[1797]:bat[:oid], X_641=[8993]:bat[:oid], X_584=[8993]:bat[:oid], X_470=[227174]:bat[:oid], C_371=[1500303]:bat[:oid], X_418=[1500303 |
:       : ]:bat[:lng]); #[107] (0) ALGprojectionpath 744 <- 709 641 584 470 371 418                                                                                                                    :
|    31 | X_784=[1797]:bat[:lng] := batcalc.-(100:lng, X_744=[1797]:bat[:lng], nil:BAT); #[108] (0) CMDbatSUBsignal 784 <- 362 744 61                                                                  |
|   887 | X_740=[1797]:bat[:lng] := algebra.projectionpath(X_709=[1797]:bat[:oid], X_641=[8993]:bat[:oid], X_584=[8993]:bat[:oid], X_470=[227174]:bat[:oid], C_371=[1500303]:bat[:oid], X_404=[1500303 |
:       : ]:bat[:lng]); #[105] (0) ALGprojectionpath 740 <- 709 641 584 470 371 404                                                                                                                    :
|     2 | language.pass(X_709=[1797]:bat[:oid]); #[231] (0) MALpass 874 <- 709                                                                                                                         |
|    18 | language.pass(C_371=[1500303]:bat[:oid]); #[230] (0) MALpass 873 <- 371                                                                                                                      |
|     2 | language.pass(X_641=[8993]:bat[:oid]); #[227] (0) MALpass 870 <- 641                                                                                                                         |
|     3 | language.pass(X_470=[227174]:bat[:oid]); #[229] (0) MALpass 872 <- 470                                                                                                                       |
|     1 | language.pass(X_584=[8993]:bat[:oid]); #[228] (0) MALpass 871 <- 584                                                                                                                         |
|    33 | X_788=[1797]:bat[:hge] := batcalc.*(X_740=[1797]:bat[:lng], X_784=[1797]:bat[:lng], nil:BAT, nil:BAT); #[109] (0) CMDbatMULenlarge 788 <- 740 784 61 61                                      |
|    18 | X_818=[5]:bat[:hge] := aggr.subsum(X_788=[1797]:bat[:hge], X_798=[1797]:bat[:oid], C_799=[5]:bat[:oid], true:bit, true:bit); #[113] (0) AGGRsubsum_hge 818 <- 788 798 799 39 39              |
|     2 | language.pass(C_799=[5]:bat[:oid]); #[234] (0) MALpass 877 <- 799                                                                                                                            |
|     5 | X_833=[10]:bat[:hge] := mat.packIncrement(X_831=[10]:bat[:hge], X_818=[5]:bat[:hge]); #[188] (0) MATpackIncrement 833 <- 831 818                                                             |
|     2 | X_834=[15]:bat[:hge] := mat.packIncrement(X_833=[15]:bat[:hge], X_819=[5]:bat[:hge]); #[189] (0) MATpackIncrement 834 <- 833 819                                                             |
|     2 | X_816=[20]:bat[:hge] := mat.packIncrement(X_834=[20]:bat[:hge], X_820=[5]:bat[:hge]); #[190] (0) MATpackIncrement 816 <- 834 820                                                             |
|     5 | X_298=[5]:bat[:hge] := aggr.subsum(X_816=[20]:bat[:hge], X_294=[20]:bat[:oid], C_295=[5]:bat[:oid], true:bit, true:bit); #[196] (0) AGGRsubsum_hge 298 <- 816 294 295 39 39                  |
|     7 | (X_301=[5]:bat[:hge], X_302=[5]:bat[:oid]) := algebra.sort(X_298=[5]:bat[:hge], true:bit, true:bit, false:bit); #[197] (0) ALGsort12 301 302 <- 298 39 39 40                                 |
|     4 | X_305=[5]:bat[:str] := algebra.projectionpath(X_302=[5]:bat[:oid], C_295=[5]:bat[:oid], X_280=[20]:bat[:str]); #[198] (0) ALGprojectionpath 305 <- 302 295 280                               |
|     1 | language.pass(C_295=[5]:bat[:oid]); #[277] (0) MALpass 920 <- 295                                                                                                                            |
|    21 | X_306=[5]:bat[:hge] := algebra.projection(X_302=[5]:bat[:oid], X_298=[5]:bat[:hge]); #[199] (0) ALGprojection 306 <- 302 298                                                                 |
|     3 | language.pass(X_280=[20]:bat[:str]); #[278] (0) MALpass 921 <- 280                                                                                                                           |
|     1 | language.pass(X_302=[5]:bat[:oid]); #[279] (0) MALpass 922 <- 302                                                                                                                            |
|     2 | language.pass(X_298=[5]:bat[:hge]); #[280] (0) MALpass 923 <- 298                                                                                                                            |
| 51774 | barrier X_841=false:bit := language.dataflow(); #[2] (0) MALstartDataflow 841                                                                                                                |
|    25 | sql.resultSet(X_308=[2]:bat[:str], X_309=[2]:bat[:str], X_310=[2]:bat[:str], X_311=[2]:bat[:int], X_312=[2]:bat[:int], X_305=[5]:bat[:str], X_306=[5]:bat[:hge]); #[282] (0) mvc_table_resul |
:       : t_wrap 307 <- 308 309 310 311 312 305 306                                                                                                                                                    :
+-------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
281 tuples
