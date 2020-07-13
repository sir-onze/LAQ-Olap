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
|     4 | X_69=0@0:void := querylog.define("trace select sum(l_extendedprice* (1 - l_discount)) as revenue\nfrom lineitem, part\nwhere ( p_partkey = l_partkey\n and p_brand = \\'Brand#12\\'\n and p_ |
:       : container in (\\'SM CASE\\', \\'SM BOX\\', \\'SM PACK\\', \\'SM PKG\\')\n and l_quantity >= 1 and l_quantity <= 1 + 10\n and p_size between 1 and 5\n and l_shipmode in (\\'AIR\\', \\'AIR R :
:       : EG\\')\n and l_shipinstruct = \\'DELIVER IN PERSON\\'\n ) or ( p_partkey = l_partkey\n and p_brand = \\'Brand#23\\'\n and p_container in (\\'MED BAG\\', \\'MED BOX\\', \\'MED PKG\\', \\'ME :
:       : D PACK\\')\n and l_quantity >= 10 and l_quantity <= 10 + 10\n and p_size between 1 and 10\n and l_shipmode in (\\'AIR\\', \\'AIR REG\\')\n and l_shipinstruct = \\'DELIVER IN PERSON\\'\n )  :
:       : or ( p_partkey = l_partkey\n and p_brand = \\'Brand#34\\'\n and p_container in (\\'LG CASE\\', \\'LG BOX\\', \\'LG PACK\\', \\'LG PKG\\')\n and l_quantity >= 20 and l_quantity <= 20 + 10\n :
:       :  and p_size between 1 and 15\n and l_shipmode in (\\'AIR\\', \\'AIR REG\\')\n a                                                                                                              :
|     1 | X_72=0:int := sql.mvc(); #[2] (0) SQLmvc 72                                                                                                                                                  |
|     6 | X_102=[200000]:bat[:str] := sql.bind(X_72=0:int, "sys":str, "part":str, "p_container":str, 0:int); #[3] (0) mvc_bind_wrap 102 <- 72 74 75 103 78                                             |
|     2 | X_90=[200000]:bat[:str] := sql.bind(X_72=0:int, "sys":str, "part":str, "p_brand":str, 0:int); #[4] (0) mvc_bind_wrap 90 <- 72 74 75 91 78                                                    |
|     4 | C_73=[200000]:bat[:oid] := sql.tid(X_72=0:int, "sys":str, "part":str); #[5] (0) SQLtid 73 <- 72 74 75                                                                                        |
|   593 | C_115=[8014]:bat[:oid] := algebra.thetaselect(X_90=[200000]:bat[:str], C_73=[200000]:bat[:oid], "Brand#34":str, "==":str); #[6] (1) ALGthetaselect2 115 <- 90 73 46 116                      |
|  1556 | C_119=[8167]:bat[:oid] := algebra.thetaselect(X_90=[200000]:bat[:str], C_73=[200000]:bat[:oid], "Brand#12":str, "==":str); #[7] (1) ALGthetaselect2 119 <- 90 73 4 116                       |
|   133 | C_120=[16181]:bat[:oid] := bat.mergecand(C_115=[8014]:bat[:oid], C_119=[8167]:bat[:oid]); #[8] (0) BKCmergecand 120 <- 115 119                                                               |
|   737 | C_123=[7870]:bat[:oid] := algebra.thetaselect(X_90=[200000]:bat[:str], C_73=[200000]:bat[:oid], "Brand#23":str, "==":str); #[9] (1) ALGthetaselect2 123 <- 90 73 27 116                      |
|   127 | C_124=[24051]:bat[:oid] := bat.mergecand(C_120=[16181]:bat[:oid], C_123=[7870]:bat[:oid]); #[10] (0) BKCmergecand 124 <- 120 123                                                             |
|    90 | C_128=[627]:bat[:oid] := algebra.thetaselect(X_102=[200000]:bat[:str], C_124=[24051]:bat[:oid], "SM CASE":str, "==":str); #[11] (1) ALGthetaselect2 128 <- 102 124 6 116                     |
|   116 | C_132=[633]:bat[:oid] := algebra.thetaselect(X_102=[200000]:bat[:str], C_124=[24051]:bat[:oid], "SM BOX":str, "==":str); #[12] (1) ALGthetaselect2 132 <- 102 124 8 116                      |
|    12 | C_133=[1260]:bat[:oid] := bat.mergecand(C_128=[627]:bat[:oid], C_132=[633]:bat[:oid]); #[13] (0) BKCmergecand 133 <- 128 132                                                                 |
|   108 | C_136=[571]:bat[:oid] := algebra.thetaselect(X_102=[200000]:bat[:str], C_124=[24051]:bat[:oid], "SM PACK":str, "==":str); #[14] (1) ALGthetaselect2 136 <- 102 124 10 116                    |
|    11 | C_137=[1831]:bat[:oid] := bat.mergecand(C_133=[1260]:bat[:oid], C_136=[571]:bat[:oid]); #[15] (0) BKCmergecand 137 <- 133 136                                                                |
|  2313 | C_140=[589]:bat[:oid] := algebra.thetaselect(X_102=[200000]:bat[:str], C_124=[24051]:bat[:oid], "SM PKG":str, "==":str); #[16] (1) ALGthetaselect2 140 <- 102 124 12 116                     |
|    19 | C_141=[2420]:bat[:oid] := bat.mergecand(C_137=[1831]:bat[:oid], C_140=[589]:bat[:oid]); #[17] (0) BKCmergecand 141 <- 137 140                                                                |
|    78 | C_145=[569]:bat[:oid] := algebra.thetaselect(X_102=[200000]:bat[:str], C_124=[24051]:bat[:oid], "MED BAG":str, "==":str); #[18] (1) ALGthetaselect2 145 <- 102 124 29 116                    |
|    13 | C_146=[2989]:bat[:oid] := bat.mergecand(C_141=[2420]:bat[:oid], C_145=[569]:bat[:oid]); #[19] (0) BKCmergecand 146 <- 141 145                                                                |
|    73 | C_152=[594]:bat[:oid] := algebra.thetaselect(X_102=[200000]:bat[:str], C_124=[24051]:bat[:oid], "MED BOX":str, "==":str); #[20] (1) ALGthetaselect2 152 <- 102 124 31 116                    |
|    13 | C_154=[3583]:bat[:oid] := bat.mergecand(C_146=[2989]:bat[:oid], C_152=[594]:bat[:oid]); #[21] (0) BKCmergecand 154 <- 146 152                                                                |
|    73 | C_157=[595]:bat[:oid] := algebra.thetaselect(X_102=[200000]:bat[:str], C_124=[24051]:bat[:oid], "MED PKG":str, "==":str); #[22] (1) ALGthetaselect2 157 <- 102 124 33 116                    |
|    15 | C_158=[4178]:bat[:oid] := bat.mergecand(C_154=[3583]:bat[:oid], C_157=[595]:bat[:oid]); #[23] (0) BKCmergecand 158 <- 154 157                                                                |
|    75 | C_162=[573]:bat[:oid] := algebra.thetaselect(X_102=[200000]:bat[:str], C_124=[24051]:bat[:oid], "MED PACK":str, "==":str); #[24] (1) ALGthetaselect2 162 <- 102 124 35 116                   |
|    15 | C_163=[4751]:bat[:oid] := bat.mergecand(C_158=[4178]:bat[:oid], C_162=[573]:bat[:oid]); #[25] (0) BKCmergecand 163 <- 158 162                                                                |
|  6576 | C_167=[541]:bat[:oid] := algebra.thetaselect(X_102=[200000]:bat[:str], C_124=[24051]:bat[:oid], "LG CASE":str, "==":str); #[26] (1) ALGthetaselect2 167 <- 102 124 48 116                    |
|    25 | C_168=[5292]:bat[:oid] := bat.mergecand(C_163=[4751]:bat[:oid], C_167=[541]:bat[:oid]); #[27] (0) BKCmergecand 168 <- 163 167                                                                |
|    89 | C_172=[574]:bat[:oid] := algebra.thetaselect(X_102=[200000]:bat[:str], C_124=[24051]:bat[:oid], "LG BOX":str, "==":str); #[28] (1) ALGthetaselect2 172 <- 102 124 50 116                     |
|    16 | C_173=[5866]:bat[:oid] := bat.mergecand(C_168=[5292]:bat[:oid], C_172=[574]:bat[:oid]); #[29] (0) BKCmergecand 173 <- 168 172                                                                |
|    70 | C_176=[611]:bat[:oid] := algebra.thetaselect(X_102=[200000]:bat[:str], C_124=[24051]:bat[:oid], "LG PACK":str, "==":str); #[30] (1) ALGthetaselect2 176 <- 102 124 52 116                    |
|    16 | C_177=[6477]:bat[:oid] := bat.mergecand(C_173=[5866]:bat[:oid], C_176=[611]:bat[:oid]); #[31] (0) BKCmergecand 177 <- 173 176                                                                |
|   100 | C_181=[608]:bat[:oid] := algebra.thetaselect(X_102=[200000]:bat[:str], C_124=[24051]:bat[:oid], "LG PKG":str, "==":str); #[32] (1) ALGthetaselect2 181 <- 102 124 54 116                     |
|    20 | C_182=[7085]:bat[:oid] := bat.mergecand(C_177=[6477]:bat[:oid], C_181=[608]:bat[:oid]); #[33] (0) BKCmergecand 182 <- 177 181                                                                |
|     8 | X_85=[200000]:bat[:int] := sql.bind(X_72=0:int, "sys":str, "part":str, "p_partkey":str, 0:int); #[34] (0) mvc_bind_wrap 85 <- 72 74 75 77 78                                                 |
|   158 | X_273=[7085]:bat[:int] := algebra.projection(C_182=[7085]:bat[:oid], X_85=[200000]:bat[:int]); #[35] (0) ALGprojection 273 <- 182 85                                                         |
|     3 | X_220=[6001215]:bat[:str] := sql.bind(X_72=0:int, "sys":str, "lineitem":str, "l_shipmode":str, 0:int); #[36] (6001215) mvc_bind_wrap 220 <- 72 74 184 221 78                                 |
|     2 | X_214=[6001215]:bat[:str] := sql.bind(X_72=0:int, "sys":str, "lineitem":str, "l_shipinstruct":str, 0:int); #[37] (6001215) mvc_bind_wrap 214 <- 72 74 184 215 78                             |
|     3 | C_183=[6001215]:bat[:oid] := sql.tid(X_72=0:int, "sys":str, "lineitem":str); #[38] (6001215) SQLtid 183 <- 72 74 184                                                                         |
| 50035 | C_233=[1500048]:bat[:oid] := algebra.thetaselect(X_214=[6001215]:bat[:str], C_183=[6001215]:bat[:oid], "DELIVER IN PERSON":str, "==":str); #[39] (1) ALGthetaselect2 233 <- 214 183 25 116   |
|  7771 | C_238=[1500048]:bat[:oid] := bat.mergecand(C_233=[1500048]:bat[:oid], C_233=[1500048]:bat[:oid]); #[40] (0) BKCmergecand 238 <- 233 233                                                      |
|  5154 | C_242=[1500048]:bat[:oid] := bat.mergecand(C_238=[1500048]:bat[:oid], C_233=[1500048]:bat[:oid]); #[41] (0) BKCmergecand 242 <- 238 233                                                      |
| 88789 | C_246=[214377]:bat[:oid] := algebra.thetaselect(X_220=[6001215]:bat[:str], C_242=[1500048]:bat[:oid], "AIR":str, "==":str); #[42] (1) ALGthetaselect2 246 <- 220 242 21 116                  |
|    52 | C_250=[0]:bat[:oid] := algebra.thetaselect(X_220=[6001215]:bat[:str], C_242=[1500048]:bat[:oid], "AIR REG":str, "==":str); #[43] (1) ALGthetaselect2 250 <- 220 242 23 116                   |
|   228 | C_251=[214377]:bat[:oid] := bat.mergecand(C_246=[214377]:bat[:oid], C_250=[0]:bat[:oid]); #[44] (0) BKCmergecand 251 <- 246 250                                                              |
|   925 | C_255=[214377]:bat[:oid] := bat.mergecand(C_251=[214377]:bat[:oid], C_246=[214377]:bat[:oid]); #[45] (0) BKCmergecand 255 <- 251 246                                                         |
|   799 | C_259=[214377]:bat[:oid] := bat.mergecand(C_255=[214377]:bat[:oid], C_250=[0]:bat[:oid]); #[46] (0) BKCmergecand 259 <- 255 250                                                              |
|  1724 | C_268=[214377]:bat[:oid] := bat.mergecand(C_259=[214377]:bat[:oid], C_246=[214377]:bat[:oid]); #[47] (0) BKCmergecand 268 <- 259 246                                                         |
|   633 | C_272=[214377]:bat[:oid] := bat.mergecand(C_268=[214377]:bat[:oid], C_250=[0]:bat[:oid]); #[48] (0) BKCmergecand 272 <- 268 250                                                              |
|     8 | X_191=[6001215]:bat[:int] := sql.bind(X_72=0:int, "sys":str, "lineitem":str, "l_partkey":str, 0:int); #[49] (6001215) mvc_bind_wrap 191 <- 72 74 184 186 78                                  |
|  2827 | X_277=[214377]:bat[:int] := algebra.projection(C_272=[214377]:bat[:oid], X_191=[6001215]:bat[:int]); #[50] (0) ALGprojection 277 <- 272 191                                                  |
|  4035 | (X_283=[7510]:bat[:oid], X_284=[7510]:bat[:oid]) := algebra.join(X_273=[7085]:bat[:int], X_277=[214377]:bat[:int], nil:BAT, nil:BAT, false:bit, nil:lng); #[51] (0) ALGjoin 283 284 <- 273 2 |
:       : 77 285 285 287 288                                                                                                                                                                           :
|    10 | X_196=[6001215]:bat[:lng] := sql.bind(X_72=0:int, "sys":str, "lineitem":str, "l_quantity":str, 0:int); #[52] (6001215) mvc_bind_wrap 196 <- 72 74 184 197 78                                 |
|   579 | X_294=[7510]:bat[:lng] := algebra.projectionpath(X_284=[7510]:bat[:oid], C_272=[214377]:bat[:oid], X_196=[6001215]:bat[:lng]); #[53] (0) ALGprojectionpath 294 <- 284 272 196                |
|   415 | X_297=[7510]:bat[:str] := algebra.projectionpath(X_284=[7510]:bat[:oid], C_272=[214377]:bat[:oid], X_214=[6001215]:bat[:str]); #[54] (0) ALGprojectionpath 297 <- 284 272 214                |
|   261 | X_298=[7510]:bat[:str] := algebra.projectionpath(X_284=[7510]:bat[:oid], C_272=[214377]:bat[:oid], X_220=[6001215]:bat[:str]); #[55] (0) ALGprojectionpath 298 <- 284 272 220                |
|     4 | X_96=[200000]:bat[:int] := sql.bind(X_72=0:int, "sys":str, "part":str, "p_size":str, 0:int); #[56] (0) mvc_bind_wrap 96 <- 72 74 75 97 78                                                    |
|   260 | X_291=[7510]:bat[:int] := algebra.projectionpath(X_283=[7510]:bat[:oid], C_182=[7085]:bat[:oid], X_96=[200000]:bat[:int]); #[57] (0) ALGprojectionpath 291 <- 283 182 96                     |
|   250 | X_292=[7510]:bat[:str] := algebra.projectionpath(X_283=[7510]:bat[:oid], C_182=[7085]:bat[:oid], X_102=[200000]:bat[:str]); #[58] (0) ALGprojectionpath 292 <- 283 182 102                   |
|   214 | X_290=[7510]:bat[:str] := algebra.projectionpath(X_283=[7510]:bat[:oid], C_182=[7085]:bat[:oid], X_90=[200000]:bat[:str]); #[59] (0) ALGprojectionpath 290 <- 283 182 90                     |
|    52 | C_306=[2579]:bat[:oid] := algebra.thetaselect(X_290=[7510]:bat[:str], "Brand#12":str, "==":str); #[60] (1) ALGthetaselect1 306 <- 290 4 116                                                  |
|    10 | C_311=[205]:bat[:oid] := algebra.thetaselect(X_292=[7510]:bat[:str], C_306=[2579]:bat[:oid], "SM CASE":str, "==":str); #[61] (1) ALGthetaselect2 311 <- 292 306 6 116                        |
|    10 | C_315=[241]:bat[:oid] := algebra.thetaselect(X_292=[7510]:bat[:str], C_306=[2579]:bat[:oid], "SM BOX":str, "==":str); #[62] (1) ALGthetaselect2 315 <- 292 306 8 116                         |
|     6 | C_316=[446]:bat[:oid] := bat.mergecand(C_311=[205]:bat[:oid], C_315=[241]:bat[:oid]); #[63] (0) BKCmergecand 316 <- 311 315                                                                  |
|     9 | C_319=[206]:bat[:oid] := algebra.thetaselect(X_292=[7510]:bat[:str], C_306=[2579]:bat[:oid], "SM PACK":str, "==":str); #[64] (1) ALGthetaselect2 319 <- 292 306 10 116                       |
|     6 | C_320=[652]:bat[:oid] := bat.mergecand(C_316=[446]:bat[:oid], C_319=[206]:bat[:oid]); #[65] (0) BKCmergecand 320 <- 316 319                                                                  |
|     9 | C_323=[177]:bat[:oid] := algebra.thetaselect(X_292=[7510]:bat[:str], C_306=[2579]:bat[:oid], "SM PKG":str, "==":str); #[66] (1) ALGthetaselect2 323 <- 292 306 12 116                        |
|     5 | C_324=[829]:bat[:oid] := bat.mergecand(C_320=[652]:bat[:oid], C_323=[177]:bat[:oid]); #[67] (0) BKCmergecand 324 <- 320 323                                                                  |
|     6 | C_329=[90]:bat[:oid] := algebra.select(X_291=[7510]:bat[:int], C_324=[829]:bat[:oid], 1:int, 5:int, true:bit, true:bit, false:bit, true:bit); #[68] (1) ALGselect2nil 329 <- 291 324 80 562  |
:       : 330 330 287 330                                                                                                                                                                              :
|   221 | C_340=[90]:bat[:oid] := algebra.thetaselect(X_298=[7510]:bat[:str], C_329=[90]:bat[:oid], "AIR":str, "==":str); #[69] (1) ALGthetaselect2 340 <- 298 329 21 116                              |
|     3 | C_345=[0]:bat[:oid] := algebra.thetaselect(X_298=[7510]:bat[:str], C_329=[90]:bat[:oid], "AIR REG":str, "==":str); #[70] (1) ALGthetaselect2 345 <- 298 329 23 116                           |
|     2 | C_346=[90]:bat[:oid] := bat.mergecand(C_340=[90]:bat[:oid], C_345=[0]:bat[:oid]); #[71] (0) BKCmergecand 346 <- 340 345                                                                      |
|   189 | C_351=[90]:bat[:oid] := algebra.thetaselect(X_297=[7510]:bat[:str], C_346=[90]:bat[:oid], "DELIVER IN PERSON":str, "==":str); #[72] (1) ALGthetaselect2 351 <- 297 346 25 116                |
|     8 | C_360=[25]:bat[:oid] := algebra.select(X_294=[7510]:bat[:lng], C_351=[90]:bat[:oid], 100:lng, 1100:lng, true:bit, true:bit, false:bit, true:bit); #[73] (1) ALGselect2nil 360 <- 294 351 563 |
:       :  565 330 330 287 330                                                                                                                                                                         :
|    45 | C_364=[2510]:bat[:oid] := algebra.thetaselect(X_290=[7510]:bat[:str], "Brand#23":str, "==":str); #[74] (1) ALGthetaselect1 364 <- 290 27 116                                                 |
|     9 | C_367=[185]:bat[:oid] := algebra.thetaselect(X_292=[7510]:bat[:str], C_364=[2510]:bat[:oid], "MED BAG":str, "==":str); #[75] (1) ALGthetaselect2 367 <- 292 364 29 116                       |
|     9 | C_374=[216]:bat[:oid] := algebra.thetaselect(X_292=[7510]:bat[:str], C_364=[2510]:bat[:oid], "MED BOX":str, "==":str); #[76] (1) ALGthetaselect2 374 <- 292 364 31 116                       |
|     4 | C_376=[401]:bat[:oid] := bat.mergecand(C_367=[185]:bat[:oid], C_374=[216]:bat[:oid]); #[77] (0) BKCmergecand 376 <- 367 374                                                                  |
|     9 | C_380=[236]:bat[:oid] := algebra.thetaselect(X_292=[7510]:bat[:str], C_364=[2510]:bat[:oid], "MED PKG":str, "==":str); #[78] (1) ALGthetaselect2 380 <- 292 364 33 116                       |
|     5 | C_381=[637]:bat[:oid] := bat.mergecand(C_376=[401]:bat[:oid], C_380=[236]:bat[:oid]); #[79] (0) BKCmergecand 381 <- 376 380                                                                  |
|     9 | C_384=[174]:bat[:oid] := algebra.thetaselect(X_292=[7510]:bat[:str], C_364=[2510]:bat[:oid], "MED PACK":str, "==":str); #[80] (1) ALGthetaselect2 384 <- 292 364 35 116                      |
|     4 | C_385=[811]:bat[:oid] := bat.mergecand(C_381=[637]:bat[:oid], C_384=[174]:bat[:oid]); #[81] (0) BKCmergecand 385 <- 381 384                                                                  |
|     5 | C_390=[159]:bat[:oid] := algebra.select(X_291=[7510]:bat[:int], C_385=[811]:bat[:oid], 1:int, 10:int, true:bit, true:bit, false:bit, true:bit); #[82] (1) ALGselect2nil 390 <- 291 385 80 11 |
:       : 4 330 330 287 330                                                                                                                                                                            :
|     3 | C_396=[159]:bat[:oid] := algebra.thetaselect(X_298=[7510]:bat[:str], C_390=[159]:bat[:oid], "AIR":str, "==":str); #[83] (1) ALGthetaselect2 396 <- 298 390 21 116                            |
|     2 | C_399=[0]:bat[:oid] := algebra.thetaselect(X_298=[7510]:bat[:str], C_390=[159]:bat[:oid], "AIR REG":str, "==":str); #[84] (1) ALGthetaselect2 399 <- 298 390 23 116                          |
|     1 | C_400=[159]:bat[:oid] := bat.mergecand(C_396=[159]:bat[:oid], C_399=[0]:bat[:oid]); #[85] (0) BKCmergecand 400 <- 396 399                                                                    |
|     2 | C_408=[159]:bat[:oid] := algebra.thetaselect(X_297=[7510]:bat[:str], C_400=[159]:bat[:oid], "DELIVER IN PERSON":str, "==":str); #[86] (1) ALGthetaselect2 408 <- 297 400 25 116              |
|     4 | C_418=[40]:bat[:oid] := algebra.select(X_294=[7510]:bat[:lng], C_408=[159]:bat[:oid], 1000:lng, 2000:lng, true:bit, true:bit, false:bit, true:bit); #[87] (1) ALGselect2nil 418 <- 294 408 5 |
:       : 67 569 330 330 287 330                                                                                                                                                                       :
|     2 | C_419=[65]:bat[:oid] := bat.mergecand(C_360=[25]:bat[:oid], C_418=[40]:bat[:oid]); #[88] (0) BKCmergecand 419 <- 360 418                                                                     |
|    47 | C_424=[2421]:bat[:oid] := algebra.thetaselect(X_290=[7510]:bat[:str], "Brand#34":str, "==":str); #[89] (1) ALGthetaselect1 424 <- 290 46 116                                                 |
|     8 | C_428=[206]:bat[:oid] := algebra.thetaselect(X_292=[7510]:bat[:str], C_424=[2421]:bat[:oid], "LG CASE":str, "==":str); #[90] (1) ALGthetaselect2 428 <- 292 424 48 116                       |
|     8 | C_432=[196]:bat[:oid] := algebra.thetaselect(X_292=[7510]:bat[:str], C_424=[2421]:bat[:oid], "LG BOX":str, "==":str); #[91] (1) ALGthetaselect2 432 <- 292 424 50 116                        |
|     4 | C_433=[402]:bat[:oid] := bat.mergecand(C_428=[206]:bat[:oid], C_432=[196]:bat[:oid]); #[92] (0) BKCmergecand 433 <- 428 432                                                                  |
|     9 | C_437=[194]:bat[:oid] := algebra.thetaselect(X_292=[7510]:bat[:str], C_424=[2421]:bat[:oid], "LG PACK":str, "==":str); #[93] (1) ALGthetaselect2 437 <- 292 424 52 116                       |
|     5 | C_438=[596]:bat[:oid] := bat.mergecand(C_433=[402]:bat[:oid], C_437=[194]:bat[:oid]); #[94] (0) BKCmergecand 438 <- 433 437                                                                  |
|     8 | C_443=[218]:bat[:oid] := algebra.thetaselect(X_292=[7510]:bat[:str], C_424=[2421]:bat[:oid], "LG PKG":str, "==":str); #[95] (1) ALGthetaselect2 443 <- 292 424 54 116                        |
|     5 | C_445=[814]:bat[:oid] := bat.mergecand(C_438=[596]:bat[:oid], C_443=[218]:bat[:oid]); #[96] (0) BKCmergecand 445 <- 438 443                                                                  |
|     4 | C_450=[262]:bat[:oid] := algebra.select(X_291=[7510]:bat[:int], C_445=[814]:bat[:oid], 1:int, 15:int, true:bit, true:bit, false:bit, true:bit); #[97] (1) ALGselect2nil 450 <- 291 445 80 35 |
:       : 4 330 330 287 330                                                                                                                                                                            :
|     3 | C_457=[262]:bat[:oid] := algebra.thetaselect(X_298=[7510]:bat[:str], C_450=[262]:bat[:oid], "AIR":str, "==":str); #[98] (1) ALGthetaselect2 457 <- 298 450 21 116                            |
|     4 | C_461=[0]:bat[:oid] := algebra.thetaselect(X_298=[7510]:bat[:str], C_450=[262]:bat[:oid], "AIR REG":str, "==":str); #[99] (1) ALGthetaselect2 461 <- 298 450 23 116                          |
|    28 | C_462=[262]:bat[:oid] := bat.mergecand(C_457=[262]:bat[:oid], C_461=[0]:bat[:oid]); #[100] (0) BKCmergecand 462 <- 457 461                                                                   |
|     4 | C_467=[262]:bat[:oid] := algebra.thetaselect(X_297=[7510]:bat[:str], C_462=[262]:bat[:oid], "DELIVER IN PERSON":str, "==":str); #[101] (1) ALGthetaselect2 467 <- 297 462 25 116             |
|     6 | C_476=[56]:bat[:oid] := algebra.select(X_294=[7510]:bat[:lng], C_467=[262]:bat[:oid], 2000:lng, 3000:lng, true:bit, true:bit, false:bit, true:bit); #[102] (1) ALGselect2nil 476 <- 294 467  |
:       : 569 572 330 330 287 330                                                                                                                                                                      :
|     3 | C_477=[121]:bat[:oid] := bat.mergecand(C_419=[65]:bat[:oid], C_476=[56]:bat[:oid]); #[103] (0) BKCmergecand 477 <- 419 476                                                                   |
|     3 | X_202=[6001215]:bat[:lng] := sql.bind(X_72=0:int, "sys":str, "lineitem":str, "l_extendedprice":str, 0:int); #[104] (6001215) mvc_bind_wrap 202 <- 72 74 184 203 78                           |
|    20 | X_484=[121]:bat[:lng] := algebra.projectionpath(C_477=[121]:bat[:oid], X_284=[7510]:bat[:oid], C_272=[214377]:bat[:oid], X_202=[6001215]:bat[:lng]); #[105] (0) ALGprojectionpath 484 <- 477 |
:       :  284 272 202                                                                                                                                                                                 :
|     1 | X_208=[6001215]:bat[:lng] := sql.bind(X_72=0:int, "sys":str, "lineitem":str, "l_discount":str, 0:int); #[106] (6001215) mvc_bind_wrap 208 <- 72 74 184 209 78                                |
|    17 | X_485=[121]:bat[:lng] := algebra.projectionpath(C_477=[121]:bat[:oid], X_284=[7510]:bat[:oid], C_272=[214377]:bat[:oid], X_208=[6001215]:bat[:lng]); #[107] (0) ALGprojectionpath 485 <- 477 |
:       :  284 272 208                                                                                                                                                                                 :
|     4 | X_490=[121]:bat[:lng] := batcalc.-(100:lng, X_485=[121]:bat[:lng], nil:BAT); #[108] (0) CMDbatSUBsignal 490 <- 563 485 285                                                                   |
|     4 | X_493=[121]:bat[:hge] := batcalc.*(X_484=[121]:bat[:lng], X_490=[121]:bat[:lng], nil:BAT, nil:BAT); #[109] (0) CMDbatMULenlarge 493 <- 484 490 285 285                                       |
|     3 | X_495=30838430578:hge := aggr.sum(X_493=[121]:bat[:hge]); #[110] (1) CMDBATsum 495 <- 493                                                                                                    |
|    21 | sql.resultSet("sys.":str, "revenue":str, "decimal":str, 38:int, 4:int, 10:int, X_495=30838430578:hge); #[111] (0) mvc_scalar_value_wrap 497 <- 498 499 500 501 502 114 495                   |
+-------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
111 tuples
