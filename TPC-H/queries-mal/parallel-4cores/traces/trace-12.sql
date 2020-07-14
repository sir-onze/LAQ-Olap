operation successful
+------------+-----------------+----------------+
| l_shipmode | high_line_count | low_line_count |
+============+=================+================+
| MAIL       |            6202 |           9324 |
| SHIP       |            6200 |           9262 |
+------------+-----------------+----------------+
2 tuples
+-------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| usec  | statement                                                                                                                                                                                    |
+=======+==============================================================================================================================================================================================+
|     3 | X_14=0@0:void := querylog.define("trace select l_shipmode,\n sum(case\n when o_orderpriority = \\'1-URGENT\\'\n or o_orderpriority = \\'2-HIGH\\'\n then 1\n else 0\n end) as high_line_coun |
:       : t,\n sum(case\n when o_orderpriority <> \\'1-URGENT\\'\n and o_orderpriority <> \\'2-HIGH\\'\n then 1\n else 0\n end) as low_line_count\nfrom orders, lineitem\nwhere o_orderkey = l_orderke :
:       : y\n and l_shipmode in (\\'MAIL\\', \\'SHIP\\')\n and l_commitdate < l_receiptdate\n and l_shipdate < l_commitdate\n and l_receiptdate >= date \\'1994-01-01\\'\n and l_receiptdate < date \\ :
:       : '1994-01-01\\' + interval \\'1\\' year\ngroup by l_shipmode\norder by l_shipmode;":str, "default_pipe":str, 105:int); #[1] (0) QLOGdefineNaive 14 <- 15 16 185                               :
|    26 | X_172=[3]:bat[:str] := bat.pack("char":str, "hugeint":str, "hugeint":str); #[5] (0) MATpackValues 172 <- 177 182 182                                                                         |
|    14 | X_170=[3]:bat[:str] := bat.pack("sys.lineitem":str, "sys.":str, "sys.":str); #[3] (0) MATpackValues 170 <- 175 180 180                                                                       |
|     2 | X_17=0:int := sql.mvc(); #[8] (0) SQLmvc 17                                                                                                                                                  |
|     4 | X_173=[3]:bat[:int] := bat.pack(10:int, 128:int, 128:int); #[6] (0) MATpackValues 173 <- 76 183 183                                                                                          |
|    12 | X_174=[3]:bat[:int] := bat.pack(0:int, 0:int, 0:int); #[7] (0) MATpackValues 174 <- 23 23 23                                                                                                 |
|     6 | X_171=[3]:bat[:str] := bat.pack("l_shipmode":str, "high_line_count":str, "low_line_count":str); #[4] (0) MATpackValues 171 <- 48 181 184                                                     |
|   129 | X_292=[1500303]:bat[:str] := sql.bind(X_17=0:int, "sys":str, "lineitem":str, "l_shipmode":str, 0:int, 0:int, 4:int); #[9] (0) mvc_bind_wrap 292 <- 17 19 20 48 23 23 73                      |
|     6 | X_251=[1500303]:bat[:date] := sql.bind(X_17=0:int, "sys":str, "lineitem":str, "l_shipdate":str, 0:int, 0:int, 4:int); #[12] (0) mvc_bind_wrap 251 <- 17 19 20 22 23 23 73                    |
|    12 | X_280=[1500303]:bat[:date] := sql.bind(X_17=0:int, "sys":str, "lineitem":str, "l_receiptdate":str, 0:int, 0:int, 4:int); #[10] (0) mvc_bind_wrap 280 <- 17 19 20 42 23 23 73                 |
|    78 | X_265=[1500303]:bat[:date] := sql.bind(X_17=0:int, "sys":str, "lineitem":str, "l_commitdate":str, 0:int, 0:int, 4:int); #[11] (0) mvc_bind_wrap 265 <- 17 19 20 36 23 23 73                  |
|    86 | (X_319=[0]:bat[:oid], X_320=[0]:bat[:oid]) := sql.bind_idxbat(X_17=0:int, "sys":str, "lineitem":str, "lineitem_fk1":str, 2:int, 3:int, 4:int); #[111] (0) mvc_bind_idxbat_wrap 319 320 <- 17 |
:       :  19 20 54 28 72 73                                                                                                                                                                           :
|     4 | C_232=[1500303]:bat[:oid] := sql.tid(X_17=0:int, "sys":str, "lineitem":str, 0:int, 4:int); #[14] (0) SQLtid 232 <- 17 19 20 23 73                                                            |
|     8 | C_238=[1500306]:bat[:oid] := sql.tid(X_17=0:int, "sys":str, "lineitem":str, 3:int, 4:int); #[104] (0) SQLtid 238 <- 17 19 20 72 73                                                           |
|     4 | X_254=[1500306]:bat[:date] := sql.bind(X_17=0:int, "sys":str, "lineitem":str, "l_shipdate":str, 0:int, 3:int, 4:int); #[102] (0) mvc_bind_wrap 254 <- 17 19 20 22 23 72 73                   |
|     4 | X_283=[1500306]:bat[:date] := sql.bind(X_17=0:int, "sys":str, "lineitem":str, "l_receiptdate":str, 0:int, 3:int, 4:int); #[100] (0) mvc_bind_wrap 283 <- 17 19 20 42 23 72 73                |
|    29 | X_309=[1500303]:bat[:oid] := sql.bind_idxbat(X_17=0:int, "sys":str, "lineitem":str, "lineitem_fk1":str, 0:int, 0:int, 4:int); #[20] (0) mvc_bind_idxbat_wrap 309 <- 17 19 20 54 23 23 73     |
|     5 | X_271=[1500306]:bat[:date] := sql.bind(X_17=0:int, "sys":str, "lineitem":str, "l_commitdate":str, 0:int, 3:int, 4:int); #[101] (0) mvc_bind_wrap 271 <- 17 19 20 36 23 72 73                 |
|     3 | X_295=[1500306]:bat[:str] := sql.bind(X_17=0:int, "sys":str, "lineitem":str, "l_shipmode":str, 0:int, 3:int, 4:int); #[99] (0) mvc_bind_wrap 295 <- 17 19 20 48 23 72 73                     |
|     5 | (X_313=[0]:bat[:oid], X_314=[0]:bat[:oid]) := sql.bind_idxbat(X_17=0:int, "sys":str, "lineitem":str, "lineitem_fk1":str, 2:int, 0:int, 4:int); #[21] (0) mvc_bind_idxbat_wrap 313 314 <- 17  |
:       : 19 20 54 28 23 73                                                                                                                                                                            :
|     6 | (X_317=[0]:bat[:oid], X_318=[0]:bat[:oid]) := sql.bind_idxbat(X_17=0:int, "sys":str, "lineitem":str, "lineitem_fk1":str, 2:int, 2:int, 4:int); #[82] (0) mvc_bind_idxbat_wrap 317 318 <- 17  |
:       : 19 20 54 28 28 73                                                                                                                                                                            :
|     2 | C_83=[1500000]:bat[:oid] := sql.tid(X_17=0:int, "sys":str, "orders":str); #[23] (0) SQLtid 83 <- 17 19 84                                                                                    |
|     2 | C_236=[1500303]:bat[:oid] := sql.tid(X_17=0:int, "sys":str, "lineitem":str, 2:int, 4:int); #[75] (0) SQLtid 236 <- 17 19 20 28 73                                                            |
|    10 | X_311=[1500303]:bat[:oid] := sql.bind_idxbat(X_17=0:int, "sys":str, "lineitem":str, "lineitem_fk1":str, 0:int, 2:int, 4:int); #[81] (0) mvc_bind_idxbat_wrap 311 <- 17 19 20 54 23 28 73     |
|     3 | X_253=[1500303]:bat[:date] := sql.bind(X_17=0:int, "sys":str, "lineitem":str, "l_shipdate":str, 0:int, 2:int, 4:int); #[73] (0) mvc_bind_wrap 253 <- 17 19 20 22 23 28 73                    |
|     3 | X_269=[1500303]:bat[:date] := sql.bind(X_17=0:int, "sys":str, "lineitem":str, "l_commitdate":str, 0:int, 2:int, 4:int); #[72] (0) mvc_bind_wrap 269 <- 17 19 20 36 23 28 73                  |
|     3 | X_282=[1500303]:bat[:date] := sql.bind(X_17=0:int, "sys":str, "lineitem":str, "l_receiptdate":str, 0:int, 2:int, 4:int); #[71] (0) mvc_bind_wrap 282 <- 17 19 20 42 23 28 73                 |
|     2 | X_91=[1500000]:bat[:str] := sql.bind(X_17=0:int, "sys":str, "orders":str, "o_orderpriority":str, 0:int); #[28] (0) mvc_bind_wrap 91 <- 17 19 84 86 23                                        |
|    18 | X_294=[1500303]:bat[:str] := sql.bind(X_17=0:int, "sys":str, "lineitem":str, "l_shipmode":str, 0:int, 2:int, 4:int); #[70] (0) mvc_bind_wrap 294 <- 17 19 20 48 23 28 73                     |
|     4 | (X_315=[0]:bat[:oid], X_316=[0]:bat[:oid]) := sql.bind_idxbat(X_17=0:int, "sys":str, "lineitem":str, "lineitem_fk1":str, 2:int, 1:int, 4:int); #[53] (0) mvc_bind_idxbat_wrap 315 316 <- 17  |
:       : 19 20 54 28 25 73                                                                                                                                                                            :
|    22 | X_293=[1500303]:bat[:str] := sql.bind(X_17=0:int, "sys":str, "lineitem":str, "l_shipmode":str, 0:int, 1:int, 4:int); #[41] (0) mvc_bind_wrap 293 <- 17 19 20 48 23 25 73                     |
|    12 | X_310=[1500303]:bat[:oid] := sql.bind_idxbat(X_17=0:int, "sys":str, "lineitem":str, "lineitem_fk1":str, 0:int, 1:int, 4:int); #[52] (0) mvc_bind_idxbat_wrap 310 <- 17 19 20 54 23 25 73     |
|   291 | X_312=[1500306]:bat[:oid] := sql.bind_idxbat(X_17=0:int, "sys":str, "lineitem":str, "lineitem_fk1":str, 0:int, 3:int, 4:int); #[110] (0) mvc_bind_idxbat_wrap 312 <- 17 19 20 54 23 72 73    |
|     3 | C_234=[1500303]:bat[:oid] := sql.tid(X_17=0:int, "sys":str, "lineitem":str, 1:int, 4:int); #[46] (0) SQLtid 234 <- 17 19 20 25 73                                                            |
|     4 | X_102=[1500000]:bat[:str] := algebra.projection(C_83=[1500000]:bat[:oid], X_91=[1500000]:bat[:str]); #[29] (0) ALGprojection 102 <- 83 91                                                    |
|     6 | X_252=[1500303]:bat[:date] := sql.bind(X_17=0:int, "sys":str, "lineitem":str, "l_shipdate":str, 0:int, 1:int, 4:int); #[44] (0) mvc_bind_wrap 252 <- 17 19 20 22 23 25 73                    |
|     3 | X_267=[1500303]:bat[:date] := sql.bind(X_17=0:int, "sys":str, "lineitem":str, "l_commitdate":str, 0:int, 1:int, 4:int); #[43] (0) mvc_bind_wrap 267 <- 17 19 20 36 23 25 73                  |
|     3 | X_281=[1500303]:bat[:date] := sql.bind(X_17=0:int, "sys":str, "lineitem":str, "l_receiptdate":str, 0:int, 1:int, 4:int); #[42] (0) mvc_bind_wrap 281 <- 17 19 20 42 23 25 73                 |
|    17 | X_55=[0]:bat[:oid] := sql.bind_idxbat(X_17=0:int, "sys":str, "lineitem":str, "lineitem_fk1":str, 1:int); #[112] (0) mvc_bind_idxbat_wrap 55 <- 17 19 20 54 25                                |
| 18622 | X_329=[1500306]:bat[:bit] := batcalc.between(X_271=[1500306]:bat[:date], X_254=[1500306]:bat[:date], X_283=[1500306]:bat[:date], false:bit, false:bit, false:bit, false:bit, false:bit); #[1 |
:       : 03] (0) CMDbatBETWEEN 329 <- 271 254 283 60 60 60 60 60                                                                                                                                      :
| 18898 | X_326=[1500303]:bat[:bit] := batcalc.between(X_265=[1500303]:bat[:date], X_251=[1500303]:bat[:date], X_280=[1500303]:bat[:date], false:bit, false:bit, false:bit, false:bit, false:bit); #[1 |
:       : 3] (0) CMDbatBETWEEN 326 <- 265 251 280 60 60 60 60 60                                                                                                                                       :
| 18989 | X_328=[1500303]:bat[:bit] := batcalc.between(X_269=[1500303]:bat[:date], X_253=[1500303]:bat[:date], X_282=[1500303]:bat[:date], false:bit, false:bit, false:bit, false:bit, false:bit); #[7 |
:       : 4] (0) CMDbatBETWEEN 328 <- 269 253 282 60 60 60 60 60                                                                                                                                       :
| 18915 | X_327=[1500303]:bat[:bit] := batcalc.between(X_267=[1500303]:bat[:date], X_252=[1500303]:bat[:date], X_281=[1500303]:bat[:date], false:bit, false:bit, false:bit, false:bit, false:bit); #[4 |
:       : 5] (0) CMDbatBETWEEN 327 <- 267 252 281 60 60 60 60 60                                                                                                                                       :
|  4695 | C_333=[179180]:bat[:oid] := algebra.select(X_329=[1500306]:bat[:bit], C_238=[1500306]:bat[:oid], true:bit, true:bit, true:bit, true:bit, false:bit); #[105] (0) ALGselect2 333 <- 329 238 63 |
:       :  63 63 63 60                                                                                                                                                                                 :
|  4765 | C_330=[180165]:bat[:oid] := algebra.select(X_326=[1500303]:bat[:bit], C_232=[1500303]:bat[:oid], true:bit, true:bit, true:bit, true:bit, false:bit); #[15] (0) ALGselect2 330 <- 326 232 63  |
:       : 63 63 63 60                                                                                                                                                                                  :
|  4712 | C_332=[179793]:bat[:oid] := algebra.select(X_328=[1500303]:bat[:bit], C_236=[1500303]:bat[:oid], true:bit, true:bit, true:bit, true:bit, false:bit); #[76] (0) ALGselect2 332 <- 328 236 63  |
:       : 63 63 63 60                                                                                                                                                                                  :
|  2275 | C_337=[27024]:bat[:oid] := algebra.select(X_283=[1500306]:bat[:date], C_333=[179180]:bat[:oid], "1994-01-01":date, "1995-01-01":date, true:bit, false:bit, false:bit, true:bit); #[106] (0)  |
:       : ALGselect2nil 337 <- 283 333 11 220 63 60 60 63                                                                                                                                              :
|     3 | language.pass(X_283=[1500306]:bat[:date]); #[173] (0) MALpass 539 <- 283                                                                                                                     |
|  2168 | C_334=[27255]:bat[:oid] := algebra.select(X_280=[1500303]:bat[:date], C_330=[180165]:bat[:oid], "1994-01-01":date, "1995-01-01":date, true:bit, false:bit, false:bit, true:bit); #[16] (0) A |
:       : LGselect2nil 334 <- 280 330 11 220 63 60 60 63                                                                                                                                               :
|     2 | language.pass(X_280=[1500303]:bat[:date]); #[149] (0) MALpass 515 <- 280                                                                                                                     |
|  2142 | C_336=[27014]:bat[:oid] := algebra.select(X_282=[1500303]:bat[:date], C_332=[179793]:bat[:oid], "1994-01-01":date, "1995-01-01":date, true:bit, false:bit, false:bit, true:bit); #[77] (0) A |
:       : LGselect2nil 336 <- 282 332 11 220 63 60 60 63                                                                                                                                               :
|     2 | language.pass(X_282=[1500303]:bat[:date]); #[165] (0) MALpass 531 <- 282                                                                                                                     |
|   223 | C_341=[3880]:bat[:oid] := algebra.thetaselect(X_295=[1500306]:bat[:str], C_337=[27024]:bat[:oid], "MAIL":str, "==":str); #[107] (0) ALGthetaselect2 341 <- 295 337 9 78                      |
|   418 | C_345=[3891]:bat[:oid] := algebra.thetaselect(X_295=[1500306]:bat[:str], C_337=[27024]:bat[:oid], "SHIP":str, "==":str); #[108] (0) ALGthetaselect2 345 <- 295 337 10 78                     |
|   352 | C_342=[3873]:bat[:oid] := algebra.thetaselect(X_292=[1500303]:bat[:str], C_334=[27255]:bat[:oid], "SHIP":str, "==":str); #[18] (0) ALGthetaselect2 342 <- 292 334 10 78                      |
|    55 | C_349=[7771]:bat[:oid] := bat.mergecand(C_341=[3880]:bat[:oid], C_345=[3891]:bat[:oid]); #[109] (0) BKCmergecand 349 <- 341 345                                                              |
|   249 | C_338=[3893]:bat[:oid] := algebra.thetaselect(X_292=[1500303]:bat[:str], C_334=[27255]:bat[:oid], "MAIL":str, "==":str); #[17] (0) ALGthetaselect2 338 <- 292 334 9 78                       |
|     2 | language.pass(C_334=[27255]:bat[:oid]); #[150] (0) MALpass 516 <- 334                                                                                                                        |
|   369 | C_344=[3817]:bat[:oid] := algebra.thetaselect(X_294=[1500303]:bat[:str], C_336=[27014]:bat[:oid], "SHIP":str, "==":str); #[79] (0) ALGthetaselect2 344 <- 294 336 10 78                      |
|    52 | C_346=[7766]:bat[:oid] := bat.mergecand(C_338=[3893]:bat[:oid], C_342=[3873]:bat[:oid]); #[19] (0) BKCmergecand 346 <- 338 342                                                               |
|   202 | C_340=[3820]:bat[:oid] := algebra.thetaselect(X_294=[1500303]:bat[:str], C_336=[27014]:bat[:oid], "MAIL":str, "==":str); #[78] (0) ALGthetaselect2 340 <- 294 336 9 78                       |
|     1 | language.pass(C_336=[27014]:bat[:oid]); #[166] (0) MALpass 532 <- 336                                                                                                                        |
|     1 | language.pass(C_337=[27024]:bat[:oid]); #[174] (0) MALpass 540 <- 337                                                                                                                        |
|    49 | C_348=[7637]:bat[:oid] := bat.mergecand(C_340=[3820]:bat[:oid], C_344=[3817]:bat[:oid]); #[80] (0) BKCmergecand 348 <- 340 344                                                               |
|   647 | X_369=[7771]:bat[:oid] := sql.projectdelta(C_349=[7771]:bat[:oid], X_312=[1500306]:bat[:oid], X_319=[0]:bat[:oid], X_320=[0]:bat[:oid], X_55=[0]:bat[:oid]); #[113] (0) DELTAproject 369 <-  |
:       : 349 312 319 320 55                                                                                                                                                                           :
|    26 | (X_376=[7771]:bat[:oid], X_377=[7771]:bat[:oid]) := algebra.join(X_369=[7771]:bat[:oid], C_83=[1500000]:bat[:oid], nil:BAT, nil:BAT, false:bit, nil:lng); #[114] (0) ALGjoin 376 377 <- 369  |
:       : 83 105 105 60 108                                                                                                                                                                            :
|   257 | X_393=[7771]:bat[:str] := algebra.projectionpath(X_376=[7771]:bat[:oid], C_349=[7771]:bat[:oid], X_295=[1500306]:bat[:str]); #[115] (0) ALGprojectionpath 393 <- 376 349 295                 |
|   676 | X_368=[7637]:bat[:oid] := sql.projectdelta(C_348=[7637]:bat[:oid], X_311=[1500303]:bat[:oid], X_317=[0]:bat[:oid], X_318=[0]:bat[:oid]); #[83] (0) DELTAproject2 368 <- 348 311 317 318      |
|     1 | language.pass(C_349=[7771]:bat[:oid]); #[176] (0) MALpass 542 <- 349                                                                                                                         |
|   825 | X_366=[7766]:bat[:oid] := sql.projectdelta(C_346=[7766]:bat[:oid], X_309=[1500303]:bat[:oid], X_313=[0]:bat[:oid], X_314=[0]:bat[:oid]); #[22] (0) DELTAproject2 366 <- 346 309 313 314      |
|    21 | (X_374=[7637]:bat[:oid], X_375=[7637]:bat[:oid]) := algebra.join(X_368=[7637]:bat[:oid], C_83=[1500000]:bat[:oid], nil:BAT, nil:BAT, false:bit, nil:lng); #[84] (0) ALGjoin 374 375 <- 368 8 |
:       : 3 105 105 60 108                                                                                                                                                                             :
|    20 | (X_370=[7766]:bat[:oid], X_371=[7766]:bat[:oid]) := algebra.join(X_366=[7766]:bat[:oid], C_83=[1500000]:bat[:oid], nil:BAT, nil:BAT, false:bit, nil:lng); #[24] (0) ALGjoin 370 371 <- 366 8 |
:       : 3 105 105 60 108                                                                                                                                                                             :
|    82 | X_401=[7771]:bat[:str] := algebra.projection(X_377=[7771]:bat[:oid], X_102=[1500000]:bat[:str]); #[118] (0) ALGprojection 401 <- 377 102                                                     |
|   172 | X_409=[7771]:bat[:bit] := batcalc.==(X_401=[7771]:bat[:str], "1-URGENT":str); #[119] (0) CMDbatEQ 409 <- 401 1                                                                               |
|   232 | X_392=[7637]:bat[:str] := algebra.projectionpath(X_374=[7637]:bat[:oid], C_348=[7637]:bat[:oid], X_294=[1500303]:bat[:str]); #[85] (0) ALGprojectionpath 392 <- 374 348 294                  |
|   241 | X_390=[7766]:bat[:str] := algebra.projectionpath(X_370=[7766]:bat[:oid], C_346=[7766]:bat[:oid], X_292=[1500303]:bat[:str]); #[25] (0) ALGprojectionpath 390 <- 370 346 292                  |
|     2 | language.pass(C_346=[7766]:bat[:oid]); #[151] (0) MALpass 517 <- 346                                                                                                                         |
|     2 | language.pass(C_348=[7637]:bat[:oid]); #[167] (0) MALpass 533 <- 348                                                                                                                         |
|    39 | X_398=[7766]:bat[:str] := algebra.projection(X_371=[7766]:bat[:oid], X_102=[1500000]:bat[:str]); #[30] (0) ALGprojection 398 <- 371 102                                                      |
|   182 | X_437=[7771]:bat[:bit] := batcalc.!=(X_401=[7771]:bat[:str], "2-HIGH":str); #[125] (0) CMDbatNE 437 <- 401 2                                                                                 |
|   171 | X_433=[7771]:bat[:bit] := batcalc.!=(X_401=[7771]:bat[:str], "1-URGENT":str); #[124] (0) CMDbatNE 433 <- 401 1                                                                               |
|   175 | X_406=[7766]:bat[:bit] := batcalc.==(X_398=[7766]:bat[:str], "1-URGENT":str); #[31] (0) CMDbatEQ 406 <- 398 1                                                                                |
|    64 | X_441=[7771]:bat[:bit] := batcalc.and(X_433=[7771]:bat[:bit], X_437=[7771]:bat[:bit]); #[126] (0) CMDbatAND 441 <- 433 437                                                                   |
|    55 | (X_457=[7766]:bat[:oid], C_458=[2]:bat[:oid]) := group.groupdone(X_390=[7766]:bat[:str]); #[26] (0) GRPgroup3 457 458 <- 390                                                                 |
|    36 | X_453=[7771]:bat[:bte] := batcalc.ifthenelse(X_441=[7771]:bat[:bit], 1:bte, 0:bte); #[127] (0) CMDifthen 453 <- 441 3 4                                                                      |
|     5 | X_460=[2]:bat[:str] := algebra.projection(C_458=[2]:bat[:oid], X_390=[7766]:bat[:str]); #[27] (0) ALGprojection 460 <- 458 390                                                               |
|   181 | X_434=[7766]:bat[:bit] := batcalc.!=(X_398=[7766]:bat[:str], "2-HIGH":str); #[37] (0) CMDbatNE 434 <- 398 2                                                                                  |
|     6 | X_499=[2]:bat[:str] := mat.packIncrement(X_460=[2]:bat[:str], 4:int); #[129] (0) MATpackIncrement 499 <- 460 500                                                                             |
|     2 | language.pass(X_390=[7766]:bat[:str]); #[153] (0) MALpass 519 <- 390                                                                                                                         |
|    55 | (X_465=[7637]:bat[:oid], C_466=[2]:bat[:oid]) := group.groupdone(X_392=[7637]:bat[:str]); #[86] (0) GRPgroup3 465 466 <- 392                                                                 |
|     4 | X_468=[2]:bat[:str] := algebra.projection(C_466=[2]:bat[:oid], X_392=[7637]:bat[:str]); #[87] (0) ALGprojection 468 <- 466 392                                                               |
|    38 | X_400=[7637]:bat[:str] := algebra.projection(X_375=[7637]:bat[:oid], X_102=[1500000]:bat[:str]); #[88] (0) ALGprojection 400 <- 375 102                                                      |
|   179 | X_430=[7766]:bat[:bit] := batcalc.!=(X_398=[7766]:bat[:str], "1-URGENT":str); #[36] (0) CMDbatNE 430 <- 398 1                                                                                |
|   170 | X_410=[7766]:bat[:bit] := batcalc.==(X_398=[7766]:bat[:str], "2-HIGH":str); #[32] (0) CMDbatEQ 410 <- 398 2                                                                                  |
|     1 | language.pass(X_398=[7766]:bat[:str]); #[154] (0) MALpass 520 <- 398                                                                                                                         |
|    63 | X_438=[7766]:bat[:bit] := batcalc.and(X_430=[7766]:bat[:bit], X_434=[7766]:bat[:bit]); #[38] (0) CMDbatAND 438 <- 430 434                                                                    |
|    35 | X_450=[7766]:bat[:bte] := batcalc.ifthenelse(X_438=[7766]:bat[:bit], 1:bte, 0:bte); #[39] (0) CMDifthen 450 <- 438 3 4                                                                       |
|   171 | X_408=[7637]:bat[:bit] := batcalc.==(X_400=[7637]:bat[:str], "1-URGENT":str); #[89] (0) CMDbatEQ 408 <- 400 1                                                                                |
|    36 | X_487=[2]:bat[:hge] := aggr.subsum(X_450=[7766]:bat[:bte], X_457=[7766]:bat[:oid], C_458=[2]:bat[:oid], true:bit, true:bit); #[40] (0) AGGRsubsum_hge 487 <- 450 457 458 63 63               |
|     4 | X_508=[2]:bat[:hge] := mat.packIncrement(X_487=[2]:bat[:hge], 4:int); #[140] (0) MATpackIncrement 508 <- 487 500                                                                             |
|   179 | X_436=[7637]:bat[:bit] := batcalc.!=(X_400=[7637]:bat[:str], "2-HIGH":str); #[95] (0) CMDbatNE 436 <- 400 2                                                                                  |
|    64 | X_414=[7766]:bat[:bit] := batcalc.or(X_406=[7766]:bat[:bit], X_410=[7766]:bat[:bit]); #[33] (0) CMDbatOR 414 <- 406 410                                                                      |
|    36 | X_426=[7766]:bat[:bte] := batcalc.ifthenelse(X_414=[7766]:bat[:bit], 1:bte, 0:bte); #[34] (0) CMDifthen 426 <- 414 3 4                                                                       |
|    34 | X_480=[2]:bat[:hge] := aggr.subsum(X_426=[7766]:bat[:bte], X_457=[7766]:bat[:oid], C_458=[2]:bat[:oid], true:bit, true:bit); #[35] (0) AGGRsubsum_hge 480 <- 426 457 458 63 63               |
|     1 | language.pass(X_457=[7766]:bat[:oid]); #[155] (0) MALpass 521 <- 457                                                                                                                         |
|   171 | X_412=[7637]:bat[:bit] := batcalc.==(X_400=[7637]:bat[:str], "2-HIGH":str); #[90] (0) CMDbatEQ 412 <- 400 2                                                                                  |
|   173 | X_432=[7637]:bat[:bit] := batcalc.!=(X_400=[7637]:bat[:str], "1-URGENT":str); #[94] (0) CMDbatNE 432 <- 400 1                                                                                |
|    72 | (X_469=[7771]:bat[:oid], C_470=[2]:bat[:oid]) := group.groupdone(X_393=[7771]:bat[:str]); #[116] (0) GRPgroup3 469 470 <- 393                                                                |
|     6 | X_472=[2]:bat[:str] := algebra.projection(C_470=[2]:bat[:oid], X_393=[7771]:bat[:str]); #[117] (0) ALGprojection 472 <- 470 393                                                              |
|    76 | X_440=[7637]:bat[:bit] := batcalc.and(X_432=[7637]:bat[:bit], X_436=[7637]:bat[:bit]); #[96] (0) CMDbatAND 440 <- 432 436                                                                    |
|    82 | X_416=[7637]:bat[:bit] := batcalc.or(X_408=[7637]:bat[:bit], X_412=[7637]:bat[:bit]); #[91] (0) CMDbatOR 416 <- 408 412                                                                      |
|    36 | X_428=[7637]:bat[:bte] := batcalc.ifthenelse(X_416=[7637]:bat[:bit], 1:bte, 0:bte); #[92] (0) CMDifthen 428 <- 416 3 4                                                                       |
|    36 | X_452=[7637]:bat[:bte] := batcalc.ifthenelse(X_440=[7637]:bat[:bit], 1:bte, 0:bte); #[97] (0) CMDifthen 452 <- 440 3 4                                                                       |
|    34 | X_489=[2]:bat[:hge] := aggr.subsum(X_452=[7637]:bat[:bte], X_465=[7637]:bat[:oid], C_466=[2]:bat[:oid], true:bit, true:bit); #[98] (0) AGGRsubsum_hge 489 <- 452 465 466 63 63               |
|    34 | X_482=[2]:bat[:hge] := aggr.subsum(X_428=[7637]:bat[:bte], X_465=[7637]:bat[:oid], C_466=[2]:bat[:oid], true:bit, true:bit); #[93] (0) AGGRsubsum_hge 482 <- 428 465 466 63 63               |
|     1 | language.pass(X_393=[7771]:bat[:str]); #[178] (0) MALpass 544 <- 393                                                                                                                         |
|     1 | language.pass(X_400=[7637]:bat[:str]); #[170] (0) MALpass 536 <- 400                                                                                                                         |
|     3 | X_504=[2]:bat[:hge] := mat.packIncrement(X_480=[2]:bat[:hge], 4:int); #[135] (0) MATpackIncrement 504 <- 480 500                                                                             |
|     1 | language.pass(C_466=[2]:bat[:oid]); #[172] (0) MALpass 538 <- 466                                                                                                                            |
|    33 | X_490=[2]:bat[:hge] := aggr.subsum(X_453=[7771]:bat[:bte], X_469=[7771]:bat[:oid], C_470=[2]:bat[:oid], true:bit, true:bit); #[128] (0) AGGRsubsum_hge 490 <- 453 469 470 63 63              |
|     1 | language.pass(X_465=[7637]:bat[:oid]); #[171] (0) MALpass 537 <- 465                                                                                                                         |
|   182 | X_413=[7771]:bat[:bit] := batcalc.==(X_401=[7771]:bat[:str], "2-HIGH":str); #[120] (0) CMDbatEQ 413 <- 401 2                                                                                 |
|     1 | language.pass(C_458=[2]:bat[:oid]); #[156] (0) MALpass 522 <- 458                                                                                                                            |
|     1 | language.pass(X_392=[7637]:bat[:str]); #[169] (0) MALpass 535 <- 392                                                                                                                         |
|     1 | language.pass(X_401=[7771]:bat[:str]); #[180] (0) MALpass 546 <- 401                                                                                                                         |
|     1 | language.pass(X_294=[1500303]:bat[:str]); #[168] (0) MALpass 534 <- 294                                                                                                                      |
|     1 | language.pass(X_292=[1500303]:bat[:str]); #[152] (0) MALpass 518 <- 292                                                                                                                      |
|     1 | language.pass(X_295=[1500306]:bat[:str]); #[177] (0) MALpass 543 <- 295                                                                                                                      |
|    63 | X_417=[7771]:bat[:bit] := batcalc.or(X_409=[7771]:bat[:bit], X_413=[7771]:bat[:bit]); #[121] (0) CMDbatOR 417 <- 409 413                                                                     |
|  5745 | C_331=[179501]:bat[:oid] := algebra.select(X_327=[1500303]:bat[:bit], C_234=[1500303]:bat[:oid], true:bit, true:bit, true:bit, true:bit, false:bit); #[47] (0) ALGselect2 331 <- 327 234 63  |
:       : 63 63 63 60                                                                                                                                                                                  :
|    36 | X_429=[7771]:bat[:bte] := batcalc.ifthenelse(X_417=[7771]:bat[:bit], 1:bte, 0:bte); #[122] (0) CMDifthen 429 <- 417 3 4                                                                      |
|    47 | X_483=[2]:bat[:hge] := aggr.subsum(X_429=[7771]:bat[:bte], X_469=[7771]:bat[:oid], C_470=[2]:bat[:oid], true:bit, true:bit); #[123] (0) AGGRsubsum_hge 483 <- 429 469 470 63 63              |
|     1 | language.pass(X_469=[7771]:bat[:oid]); #[181] (0) MALpass 547 <- 469                                                                                                                         |
|     3 | language.pass(C_470=[2]:bat[:oid]); #[182] (0) MALpass 548 <- 470                                                                                                                            |
|  1842 | C_335=[27141]:bat[:oid] := algebra.select(X_281=[1500303]:bat[:date], C_331=[179501]:bat[:oid], "1994-01-01":date, "1995-01-01":date, true:bit, false:bit, false:bit, true:bit); #[48] (0) A |
:       : LGselect2nil 335 <- 281 331 11 220 63 60 60 63                                                                                                                                               :
|     2 | language.pass(X_281=[1500303]:bat[:date]); #[157] (0) MALpass 523 <- 281                                                                                                                     |
|   283 | C_339=[3933]:bat[:oid] := algebra.thetaselect(X_293=[1500303]:bat[:str], C_335=[27141]:bat[:oid], "MAIL":str, "==":str); #[49] (0) ALGthetaselect2 339 <- 293 335 9 78                       |
|   804 | C_343=[3881]:bat[:oid] := algebra.thetaselect(X_293=[1500303]:bat[:str], C_335=[27141]:bat[:oid], "SHIP":str, "==":str); #[50] (0) ALGthetaselect2 343 <- 293 335 10 78                      |
|     2 | language.pass(C_335=[27141]:bat[:oid]); #[158] (0) MALpass 524 <- 335                                                                                                                        |
|    64 | C_347=[7814]:bat[:oid] := bat.mergecand(C_339=[3933]:bat[:oid], C_343=[3881]:bat[:oid]); #[51] (0) BKCmergecand 347 <- 339 343                                                               |
|   593 | X_367=[7814]:bat[:oid] := sql.projectdelta(C_347=[7814]:bat[:oid], X_310=[1500303]:bat[:oid], X_315=[0]:bat[:oid], X_316=[0]:bat[:oid]); #[54] (0) DELTAproject2 367 <- 347 310 315 316      |
|    21 | (X_372=[7814]:bat[:oid], X_373=[7814]:bat[:oid]) := algebra.join(X_367=[7814]:bat[:oid], C_83=[1500000]:bat[:oid], nil:BAT, nil:BAT, false:bit, nil:lng); #[55] (0) ALGjoin 372 373 <- 367 8 |
:       : 3 105 105 60 108                                                                                                                                                                             :
|     1 | language.pass(C_83=[1500000]:bat[:oid]); #[175] (0) MALpass 541 <- 83                                                                                                                        |
|    65 | X_399=[7814]:bat[:str] := algebra.projection(X_373=[7814]:bat[:oid], X_102=[1500000]:bat[:str]); #[59] (0) ALGprojection 399 <- 373 102                                                      |
|     2 | language.pass(X_102=[1500000]:bat[:str]); #[179] (0) MALpass 545 <- 102                                                                                                                      |
|    78 | X_407=[7814]:bat[:bit] := batcalc.==(X_399=[7814]:bat[:str], "1-URGENT":str); #[60] (0) CMDbatEQ 407 <- 399 1                                                                                |
|   255 | X_391=[7814]:bat[:str] := algebra.projectionpath(X_372=[7814]:bat[:oid], C_347=[7814]:bat[:oid], X_293=[1500303]:bat[:str]); #[56] (0) ALGprojectionpath 391 <- 372 347 293                  |
|     1 | language.pass(C_347=[7814]:bat[:oid]); #[159] (0) MALpass 525 <- 347                                                                                                                         |
|    59 | X_411=[7814]:bat[:bit] := batcalc.==(X_399=[7814]:bat[:str], "2-HIGH":str); #[61] (0) CMDbatEQ 411 <- 399 2                                                                                  |
|    56 | (X_461=[7814]:bat[:oid], C_462=[2]:bat[:oid]) := group.groupdone(X_391=[7814]:bat[:str]); #[57] (0) GRPgroup3 461 462 <- 391                                                                 |
|   201 | X_431=[7814]:bat[:bit] := batcalc.!=(X_399=[7814]:bat[:str], "1-URGENT":str); #[65] (0) CMDbatNE 431 <- 399 1                                                                                |
|    65 | X_415=[7814]:bat[:bit] := batcalc.or(X_407=[7814]:bat[:bit], X_411=[7814]:bat[:bit]); #[62] (0) CMDbatOR 415 <- 407 411                                                                      |
|     1 | language.pass(X_293=[1500303]:bat[:str]); #[160] (0) MALpass 526 <- 293                                                                                                                      |
|     5 | X_464=[2]:bat[:str] := algebra.projection(C_462=[2]:bat[:oid], X_391=[7814]:bat[:str]); #[58] (0) ALGprojection 464 <- 462 391                                                               |
|     1 | language.pass(X_391=[7814]:bat[:str]); #[161] (0) MALpass 527 <- 391                                                                                                                         |
|    35 | X_427=[7814]:bat[:bte] := batcalc.ifthenelse(X_415=[7814]:bat[:bit], 1:bte, 0:bte); #[63] (0) CMDifthen 427 <- 415 3 4                                                                       |
|     5 | X_501=[4]:bat[:str] := mat.packIncrement(X_499=[4]:bat[:str], X_464=[2]:bat[:str]); #[130] (0) MATpackIncrement 501 <- 499 464                                                               |
|     2 | X_502=[6]:bat[:str] := mat.packIncrement(X_501=[6]:bat[:str], X_468=[2]:bat[:str]); #[131] (0) MATpackIncrement 502 <- 501 468                                                               |
|    34 | X_481=[2]:bat[:hge] := aggr.subsum(X_427=[7814]:bat[:bte], X_461=[7814]:bat[:oid], C_462=[2]:bat[:oid], true:bit, true:bit); #[64] (0) AGGRsubsum_hge 481 <- 427 461 462 63 63               |
|     2 | X_505=[4]:bat[:hge] := mat.packIncrement(X_504=[4]:bat[:hge], X_481=[2]:bat[:hge]); #[136] (0) MATpackIncrement 505 <- 504 481                                                               |
|     3 | X_112=[8]:bat[:str] := mat.packIncrement(X_502=[8]:bat[:str], X_472=[2]:bat[:str]); #[132] (0) MATpackIncrement 112 <- 502 472                                                               |
|     2 | X_506=[6]:bat[:hge] := mat.packIncrement(X_505=[6]:bat[:hge], X_482=[2]:bat[:hge]); #[137] (0) MATpackIncrement 506 <- 505 482                                                               |
|     2 | X_479=[8]:bat[:hge] := mat.packIncrement(X_506=[8]:bat[:hge], X_483=[2]:bat[:hge]); #[138] (0) MATpackIncrement 479 <- 506 483                                                               |
|     9 | (X_153=[8]:bat[:oid], C_154=[2]:bat[:oid]) := group.groupdone(X_112=[8]:bat[:str]); #[133] (0) GRPgroup3 153 154 <- 112                                                                      |
|     4 | X_156=[2]:bat[:str] := algebra.projection(C_154=[2]:bat[:oid], X_112=[8]:bat[:str]); #[134] (0) ALGprojection 156 <- 154 112                                                                 |
|     8 | (X_161=[2]:bat[:str], X_162=[2]:bat[:oid]) := algebra.sort(X_156=[2]:bat[:str], false:bit, false:bit, false:bit); #[145] (0) ALGsort12 161 162 <- 156 60 60 60                               |
|   425 | X_435=[7814]:bat[:bit] := batcalc.!=(X_399=[7814]:bat[:str], "2-HIGH":str); #[66] (0) CMDbatNE 435 <- 399 2                                                                                  |
|     6 | X_157=[2]:bat[:hge] := aggr.subsum(X_479=[8]:bat[:hge], X_153=[8]:bat[:oid], C_154=[2]:bat[:oid], true:bit, true:bit); #[139] (0) AGGRsubsum_hge 157 <- 479 153 154 63 63                    |
|    19 | X_166=[2]:bat[:str] := algebra.projection(X_162=[2]:bat[:oid], X_156=[2]:bat[:str]); #[146] (0) ALGprojection 166 <- 162 156                                                                 |
|     2 | language.pass(X_156=[2]:bat[:str]); #[186] (0) MALpass 552 <- 156                                                                                                                            |
|     3 | language.pass(X_399=[7814]:bat[:str]); #[162] (0) MALpass 528 <- 399                                                                                                                         |
|     5 | X_167=[2]:bat[:hge] := algebra.projection(X_162=[2]:bat[:oid], X_157=[2]:bat[:hge]); #[147] (0) ALGprojection 167 <- 162 157                                                                 |
|     2 | language.pass(X_112=[8]:bat[:str]); #[183] (0) MALpass 549 <- 112                                                                                                                            |
|    65 | X_439=[7814]:bat[:bit] := batcalc.and(X_431=[7814]:bat[:bit], X_435=[7814]:bat[:bit]); #[67] (0) CMDbatAND 439 <- 431 435                                                                    |
|    68 | X_451=[7814]:bat[:bte] := batcalc.ifthenelse(X_439=[7814]:bat[:bit], 1:bte, 0:bte); #[68] (0) CMDifthen 451 <- 439 3 4                                                                       |
|    32 | X_488=[2]:bat[:hge] := aggr.subsum(X_451=[7814]:bat[:bte], X_461=[7814]:bat[:oid], C_462=[2]:bat[:oid], true:bit, true:bit); #[69] (0) AGGRsubsum_hge 488 <- 451 461 462 63 63               |
|     1 | language.pass(X_461=[7814]:bat[:oid]); #[163] (0) MALpass 529 <- 461                                                                                                                         |
|     5 | X_509=[4]:bat[:hge] := mat.packIncrement(X_508=[4]:bat[:hge], X_488=[2]:bat[:hge]); #[141] (0) MATpackIncrement 509 <- 508 488                                                               |
|     3 | language.pass(C_462=[2]:bat[:oid]); #[164] (0) MALpass 530 <- 462                                                                                                                            |
|     4 | X_510=[6]:bat[:hge] := mat.packIncrement(X_509=[6]:bat[:hge], X_489=[2]:bat[:hge]); #[142] (0) MATpackIncrement 510 <- 509 489                                                               |
|    41 | X_486=[8]:bat[:hge] := mat.packIncrement(X_510=[8]:bat[:hge], X_490=[2]:bat[:hge]); #[143] (0) MATpackIncrement 486 <- 510 490                                                               |
|     5 | X_160=[2]:bat[:hge] := aggr.subsum(X_486=[8]:bat[:hge], X_153=[8]:bat[:oid], C_154=[2]:bat[:oid], true:bit, true:bit); #[144] (0) AGGRsubsum_hge 160 <- 486 153 154 63 63                    |
|     1 | language.pass(X_153=[8]:bat[:oid]); #[184] (0) MALpass 550 <- 153                                                                                                                            |
|     1 | language.pass(C_154=[2]:bat[:oid]); #[185] (0) MALpass 551 <- 154                                                                                                                            |
|     8 | X_168=[2]:bat[:hge] := algebra.projection(X_162=[2]:bat[:oid], X_160=[2]:bat[:hge]); #[148] (0) ALGprojection 168 <- 162 160                                                                 |
|     1 | language.pass(X_162=[2]:bat[:oid]); #[187] (0) MALpass 553 <- 162                                                                                                                            |
| 36171 | barrier X_513=false:bit := language.dataflow(); #[2] (0) MALstartDataflow 513                                                                                                                |
|    31 | sql.resultSet(X_170=[3]:bat[:str], X_171=[3]:bat[:str], X_172=[3]:bat[:str], X_173=[3]:bat[:int], X_174=[3]:bat[:int], X_166=[2]:bat[:str], X_167=[2]:bat[:hge], X_168=[2]:bat[:hge]); #[189 |
:       : ] (0) mvc_table_result_wrap 169 <- 170 171 172 173 174 166 167 168                                                                                                                           :
+-------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
188 tuples
