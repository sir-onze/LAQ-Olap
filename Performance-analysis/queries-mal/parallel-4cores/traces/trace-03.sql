operation successful
+------------+------------------------------------------+-------------+----------------+
| l_orderkey | revenue                                  | o_orderdate | o_shippriority |
+============+==========================================+=============+================+
|    2456423 |                              406181.0111 | 1995-03-05  |              0 |
|    3459808 |                              405838.6989 | 1995-03-04  |              0 |
|     492164 |                              390324.0610 | 1995-02-19  |              0 |
|    1188320 |                              384537.9359 | 1995-03-09  |              0 |
|    2435712 |                              378673.0558 | 1995-02-26  |              0 |
|    4878020 |                              378376.7952 | 1995-03-12  |              0 |
|    5521732 |                              375153.9215 | 1995-03-13  |              0 |
|    2628192 |                              373133.3094 | 1995-02-22  |              0 |
|     993600 |                              371407.4595 | 1995-03-05  |              0 |
|    2300070 |                              367371.1452 | 1995-03-13  |              0 |
+------------+------------------------------------------+-------------+----------------+
10 tuples
+-------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| usec  | statement                                                                                                                                                                                    |
+=======+==============================================================================================================================================================================================+
|     3 | X_5=0@0:void := querylog.define("trace select\n l_orderkey,\n sum(l_extendedprice * (1 - l_discount)) as revenue,\n o_orderdate,\n o_shippriority\nfrom customer,\n orders,\n lineitem\nwher |
:       : e c_mktsegment = \\'BUILDING\\'\n and c_custkey = o_custkey\n and l_orderkey = o_orderkey\n and o_orderdate < date \\'1995-03-15\\'\n and l_shipdate > date \\'1995-03-15\\'\ngroup by\n l_o :
:       : rderkey,\n o_orderdate,\n o_shippriority\norder by\n revenue desc,\n o_orderdate\nlimit 10;":str, "default_pipe":str, 142:int); #[1] (0) QLOGdefineNaive 5 <- 6 7 233                        :
|    28 | X_212=[4]:bat[:str] := bat.pack("sys.lineitem":str, "sys.":str, "sys.orders":str, "sys.orders":str); #[3] (0) MATpackValues 212 <- 217 222 227 227                                           |
|     4 | X_8=0:int := sql.mvc(); #[8] (0) SQLmvc 8                                                                                                                                                    |
|     4 | X_216=[4]:bat[:int] := bat.pack(0:int, 4:int, 0:int, 0:int); #[7] (0) MATpackValues 216 <- 16 226 16 16                                                                                      |
|    13 | X_215=[4]:bat[:int] := bat.pack(64:int, 38:int, 0:int, 32:int); #[6] (0) MATpackValues 215 <- 220 225 16 232                                                                                 |
|     9 | X_341=[1500303]:bat[:date] := sql.bind(X_8=0:int, "sys":str, "lineitem":str, "l_shipdate":str, 0:int, 0:int, 4:int); #[9] (0) mvc_bind_wrap 341 <- 8 12 13 41 16 16 226                      |
|     8 | X_214=[4]:bat[:str] := bat.pack("bigint":str, "decimal":str, "date":str, "int":str); #[5] (0) MATpackValues 214 <- 219 224 229 231                                                           |
|     5 | X_213=[4]:bat[:str] := bat.pack("l_orderkey":str, "revenue":str, "o_orderdate":str, "o_shippriority":str); #[4] (0) MATpackValues 213 <- 15 223 58 69                                        |
|     7 | C_281=[1500303]:bat[:oid] := sql.tid(X_8=0:int, "sys":str, "lineitem":str, 0:int, 4:int); #[10] (0) SQLtid 281 <- 8 12 13 16 226                                                             |
|   111 | X_358=[1500303]:bat[:oid] := sql.bind_idxbat(X_8=0:int, "sys":str, "lineitem":str, "lineitem_fk1":str, 0:int, 0:int, 4:int); #[12] (0) mvc_bind_idxbat_wrap 358 <- 8 12 13 47 16 16 226      |
|    41 | X_320=[1500306]:bat[:lng] := sql.bind(X_8=0:int, "sys":str, "lineitem":str, "l_extendedprice":str, 0:int, 3:int, 4:int); #[130] (0) mvc_bind_wrap 320 <- 8 12 13 29 16 123 226               |
|    38 | X_303=[1500306]:bat[:lng] := sql.bind(X_8=0:int, "sys":str, "lineitem":str, "l_orderkey":str, 0:int, 3:int, 4:int); #[121] (0) mvc_bind_wrap 303 <- 8 12 13 15 16 123 226                    |
|     4 | X_48=[0]:bat[:oid] := sql.bind_idxbat(X_8=0:int, "sys":str, "lineitem":str, "lineitem_fk1":str, 1:int); #[114] (0) mvc_bind_idxbat_wrap 48 <- 8 12 13 47 18                                  |
|     8 | (X_368=[0]:bat[:oid], X_369=[0]:bat[:oid]) := sql.bind_idxbat(X_8=0:int, "sys":str, "lineitem":str, "lineitem_fk1":str, 2:int, 3:int, 4:int); #[113] (0) mvc_bind_idxbat_wrap 368 369 <- 8 1 |
:       : 2 13 47 21 123 226                                                                                                                                                                           :
|    16 | X_361=[1500306]:bat[:oid] := sql.bind_idxbat(X_8=0:int, "sys":str, "lineitem":str, "lineitem_fk1":str, 0:int, 3:int, 4:int); #[112] (0) mvc_bind_idxbat_wrap 361 <- 8 12 13 47 16 123 226    |
|     6 | C_287=[1500306]:bat[:oid] := sql.tid(X_8=0:int, "sys":str, "lineitem":str, 3:int, 4:int); #[110] (0) SQLtid 287 <- 8 12 13 123 226                                                           |
|     5 | X_344=[1500306]:bat[:date] := sql.bind(X_8=0:int, "sys":str, "lineitem":str, "l_shipdate":str, 0:int, 3:int, 4:int); #[109] (0) mvc_bind_wrap 344 <- 8 12 13 41 16 123 226                   |
|     4 | X_331=[1500303]:bat[:lng] := sql.bind(X_8=0:int, "sys":str, "lineitem":str, "l_discount":str, 0:int, 2:int, 4:int); #[102] (0) mvc_bind_wrap 331 <- 8 12 13 35 16 21 226                     |
|     3 | X_318=[1500303]:bat[:lng] := sql.bind(X_8=0:int, "sys":str, "lineitem":str, "l_extendedprice":str, 0:int, 2:int, 4:int); #[100] (0) mvc_bind_wrap 318 <- 8 12 13 29 16 21 226                |
|     3 | X_302=[1500303]:bat[:lng] := sql.bind(X_8=0:int, "sys":str, "lineitem":str, "l_orderkey":str, 0:int, 2:int, 4:int); #[91] (0) mvc_bind_wrap 302 <- 8 12 13 15 16 21 226                      |
|    24 | (X_366=[0]:bat[:oid], X_367=[0]:bat[:oid]) := sql.bind_idxbat(X_8=0:int, "sys":str, "lineitem":str, "lineitem_fk1":str, 2:int, 2:int, 4:int); #[84] (0) mvc_bind_idxbat_wrap 366 367 <- 8 12 |
:       :  13 47 21 21 226                                                                                                                                                                             :
|    11 | X_360=[1500303]:bat[:oid] := sql.bind_idxbat(X_8=0:int, "sys":str, "lineitem":str, "lineitem_fk1":str, 0:int, 2:int, 4:int); #[83] (0) mvc_bind_idxbat_wrap 360 <- 8 12 13 47 16 21 226      |
|     3 | C_285=[1500303]:bat[:oid] := sql.tid(X_8=0:int, "sys":str, "lineitem":str, 2:int, 4:int); #[81] (0) SQLtid 285 <- 8 12 13 21 226                                                             |
|     3 | X_343=[1500303]:bat[:date] := sql.bind(X_8=0:int, "sys":str, "lineitem":str, "l_shipdate":str, 0:int, 2:int, 4:int); #[80] (0) mvc_bind_wrap 343 <- 8 12 13 41 16 21 226                     |
|     9 | X_330=[1500303]:bat[:lng] := sql.bind(X_8=0:int, "sys":str, "lineitem":str, "l_discount":str, 0:int, 1:int, 4:int); #[73] (0) mvc_bind_wrap 330 <- 8 12 13 35 16 18 226                      |
|     4 | X_316=[1500303]:bat[:lng] := sql.bind(X_8=0:int, "sys":str, "lineitem":str, "l_extendedprice":str, 0:int, 1:int, 4:int); #[71] (0) mvc_bind_wrap 316 <- 8 12 13 29 16 18 226                 |
|     3 | X_301=[1500303]:bat[:lng] := sql.bind(X_8=0:int, "sys":str, "lineitem":str, "l_orderkey":str, 0:int, 1:int, 4:int); #[62] (0) mvc_bind_wrap 301 <- 8 12 13 15 16 18 226                      |
|     6 | (X_364=[0]:bat[:oid], X_365=[0]:bat[:oid]) := sql.bind_idxbat(X_8=0:int, "sys":str, "lineitem":str, "lineitem_fk1":str, 2:int, 1:int, 4:int); #[55] (0) mvc_bind_idxbat_wrap 364 365 <- 8 12 |
:       :  13 47 21 18 226                                                                                                                                                                             :
|    13 | X_359=[1500303]:bat[:oid] := sql.bind_idxbat(X_8=0:int, "sys":str, "lineitem":str, "lineitem_fk1":str, 0:int, 1:int, 4:int); #[54] (0) mvc_bind_idxbat_wrap 359 <- 8 12 13 47 16 18 226      |
|     4 | C_283=[1500303]:bat[:oid] := sql.tid(X_8=0:int, "sys":str, "lineitem":str, 1:int, 4:int); #[52] (0) SQLtid 283 <- 8 12 13 18 226                                                             |
|     3 | X_342=[1500303]:bat[:date] := sql.bind(X_8=0:int, "sys":str, "lineitem":str, "l_shipdate":str, 0:int, 1:int, 4:int); #[51] (0) mvc_bind_wrap 342 <- 8 12 13 41 16 18 226                     |
|     4 | X_329=[1500303]:bat[:lng] := sql.bind(X_8=0:int, "sys":str, "lineitem":str, "l_discount":str, 0:int, 0:int, 4:int); #[44] (0) mvc_bind_wrap 329 <- 8 12 13 35 16 16 226                      |
|     4 | X_314=[1500303]:bat[:lng] := sql.bind(X_8=0:int, "sys":str, "lineitem":str, "l_extendedprice":str, 0:int, 0:int, 4:int); #[42] (0) mvc_bind_wrap 314 <- 8 12 13 29 16 16 226                 |
|     3 | X_300=[1500303]:bat[:lng] := sql.bind(X_8=0:int, "sys":str, "lineitem":str, "l_orderkey":str, 0:int, 0:int, 4:int); #[33] (0) mvc_bind_wrap 300 <- 8 12 13 15 16 16 226                      |
|     4 | X_68=[1500000]:bat[:int] := sql.bind(X_8=0:int, "sys":str, "orders":str, "o_shippriority":str, 0:int); #[30] (0) mvc_bind_wrap 68 <- 8 12 56 69 16                                           |
|     3 | C_107=[150000]:bat[:oid] := sql.tid(X_8=0:int, "sys":str, "customer":str); #[25] (0) SQLtid 107 <- 8 12 108                                                                                  |
|     3 | X_115=[150000]:bat[:str] := sql.bind(X_8=0:int, "sys":str, "customer":str, "c_mktsegment":str, 0:int); #[24] (0) mvc_bind_wrap 115 <- 8 12 108 110 16                                        |
|     2 | X_77=[0]:bat[:oid] := sql.bind_idxbat(X_8=0:int, "sys":str, "orders":str, "orders_fk1":str, 1:int); #[21] (0) mvc_bind_idxbat_wrap 77 <- 8 12 56 76 18                                       |
|     2 | (X_78=[0]:bat[:oid], X_79=[0]:bat[:oid]) := sql.bind_idxbat(X_8=0:int, "sys":str, "orders":str, "orders_fk1":str, 2:int); #[20] (0) mvc_bind_idxbat_wrap 78 79 <- 8 12 56 76 21              |
|     2 | X_75=[1500000]:bat[:oid] := sql.bind_idxbat(X_8=0:int, "sys":str, "orders":str, "orders_fk1":str, 0:int); #[19] (0) mvc_bind_idxbat_wrap 75 <- 8 12 56 76 16                                 |
|     3 | C_55=[1500000]:bat[:oid] := sql.tid(X_8=0:int, "sys":str, "orders":str); #[16] (0) SQLtid 55 <- 8 12 56                                                                                      |
|     3 | X_63=[1500000]:bat[:date] := sql.bind(X_8=0:int, "sys":str, "orders":str, "o_orderdate":str, 0:int); #[15] (0) mvc_bind_wrap 63 <- 8 12 56 58 16                                             |
|     4 | (X_362=[0]:bat[:oid], X_363=[0]:bat[:oid]) := sql.bind_idxbat(X_8=0:int, "sys":str, "lineitem":str, "lineitem_fk1":str, 2:int, 0:int, 4:int); #[13] (0) mvc_bind_idxbat_wrap 362 363 <- 8 12 |
:       :  13 47 21 16 226                                                                                                                                                                             :
|  5362 | C_378=[809962]:bat[:oid] := algebra.thetaselect(X_344=[1500306]:bat[:date], C_287=[1500306]:bat[:oid], "1995-03-15":date, ">":str); #[111] (0) ALGthetaselect2 378 <- 344 287 3 54           |
|  5273 | C_377=[811035]:bat[:oid] := algebra.thetaselect(X_343=[1500303]:bat[:date], C_285=[1500303]:bat[:oid], "1995-03-15":date, ">":str); #[82] (0) ALGthetaselect2 377 <- 343 285 3 54            |
|  5187 | C_82=[727305]:bat[:oid] := algebra.thetaselect(X_63=[1500000]:bat[:date], C_55=[1500000]:bat[:oid], "1995-03-15":date, "<":str); #[17] (1) ALGthetaselect2 82 <- 63 55 3 83                  |
|  7783 | C_375=[810652]:bat[:oid] := algebra.thetaselect(X_341=[1500303]:bat[:date], C_281=[1500303]:bat[:oid], "1995-03-15":date, ">":str); #[11] (0) ALGthetaselect2 375 <- 341 281 3 54            |
|  8441 | X_398=[809962]:bat[:oid] := sql.projectdelta(C_378=[809962]:bat[:oid], X_361=[1500306]:bat[:oid], X_368=[0]:bat[:oid], X_369=[0]:bat[:oid], X_48=[0]:bat[:oid]); #[115] (0) DELTAproject 398 |
:       :  <- 378 361 368 369 48                                                                                                                                                                       :
|    23 | X_332=[1500306]:bat[:lng] := sql.bind(X_8=0:int, "sys":str, "lineitem":str, "l_discount":str, 0:int, 3:int, 4:int); #[132] (0) mvc_bind_wrap 332 <- 8 12 13 35 16 123 226                    |
|  8606 | X_397=[811035]:bat[:oid] := sql.projectdelta(C_377=[811035]:bat[:oid], X_360=[1500303]:bat[:oid], X_366=[0]:bat[:oid], X_367=[0]:bat[:oid]); #[85] (0) DELTAproject2 397 <- 377 360 366 367  |
|  7955 | X_91=[727305]:bat[:oid] := sql.projectdelta(C_82=[727305]:bat[:oid], X_75=[1500000]:bat[:oid], X_78=[0]:bat[:oid], X_79=[0]:bat[:oid], X_77=[0]:bat[:oid]); #[22] (0) DELTAproject 91 <- 82  |
:       : 75 78 79 77                                                                                                                                                                                  :
|   853 | C_128=[30142]:bat[:oid] := algebra.thetaselect(X_115=[150000]:bat[:str], C_107=[150000]:bat[:oid], "BUILDING":str, "==":str); #[26] (1) ALGthetaselect2 128 <- 115 107 2 129                 |
|  8405 | X_395=[810652]:bat[:oid] := sql.projectdelta(C_375=[810652]:bat[:oid], X_358=[1500303]:bat[:oid], X_362=[0]:bat[:oid], X_363=[0]:bat[:oid]); #[14] (0) DELTAproject2 395 <- 375 358 362 363  |
|  4279 | C_376=[810127]:bat[:oid] := algebra.thetaselect(X_342=[1500303]:bat[:date], C_283=[1500303]:bat[:oid], "1995-03-15":date, ">":str); #[53] (0) ALGthetaselect2 376 <- 342 283 3 54            |
|  3892 | X_396=[810127]:bat[:oid] := sql.projectdelta(C_376=[810127]:bat[:oid], X_359=[1500303]:bat[:oid], X_364=[0]:bat[:oid], X_365=[0]:bat[:oid]); #[56] (0) DELTAproject2 396 <- 376 359 364 365  |
|  9714 | (X_405=[37734]:bat[:oid], X_406=[37734]:bat[:oid]) := algebra.join(X_398=[809962]:bat[:oid], C_82=[727305]:bat[:oid], nil:BAT, nil:BAT, false:bit, nil:lng); #[116] (0) ALGjoin 405 406 <- 3 |
:       : 98 82 94 94 96 97                                                                                                                                                                            :
|  9887 | (X_403=[37305]:bat[:oid], X_404=[37305]:bat[:oid]) := algebra.join(X_397=[811035]:bat[:oid], C_82=[727305]:bat[:oid], nil:BAT, nil:BAT, false:bit, nil:lng); #[86] (0) ALGjoin 403 404 <- 39 |
:       : 7 82 94 94 96 97                                                                                                                                                                             :
|   284 | X_442=[37734]:bat[:oid] := algebra.projection(X_406=[37734]:bat[:oid], X_91=[727305]:bat[:oid]); #[117] (0) ALGprojection 442 <- 406 91                                                      |
|  8577 | (X_399=[38067]:bat[:oid], X_400=[38067]:bat[:oid]) := algebra.join(X_395=[810652]:bat[:oid], C_82=[727305]:bat[:oid], nil:BAT, nil:BAT, false:bit, nil:lng); #[18] (0) ALGjoin 399 400 <- 39 |
:       : 5 82 94 94 96 97                                                                                                                                                                             :
|   344 | X_441=[37305]:bat[:oid] := algebra.projection(X_404=[37305]:bat[:oid], X_91=[727305]:bat[:oid]); #[87] (0) ALGprojection 441 <- 404 91                                                       |
|   306 | X_439=[38067]:bat[:oid] := algebra.projection(X_400=[38067]:bat[:oid], X_91=[727305]:bat[:oid]); #[23] (0) ALGprojection 439 <- 400 91                                                       |
|  1131 | X_449=[7417]:bat[:oid] := algebra.join(X_442=[37734]:bat[:oid], C_128=[30142]:bat[:oid], nil:BAT, nil:BAT, false:bit, nil:lng); #[118] (0) ALGjoin1 449 <- 442 128 94 94 96 97               |
|   963 | X_447=[7377]:bat[:oid] := algebra.join(X_441=[37305]:bat[:oid], C_128=[30142]:bat[:oid], nil:BAT, nil:BAT, false:bit, nil:lng); #[88] (0) ALGjoin1 447 <- 441 128 94 94 96 97                |
|   844 | X_443=[7989]:bat[:oid] := algebra.join(X_439=[38067]:bat[:oid], C_128=[30142]:bat[:oid], nil:BAT, nil:BAT, false:bit, nil:lng); #[27] (0) ALGjoin1 443 <- 439 128 94 94 96 97                |
|  1288 | X_453=[7377]:bat[:lng] := algebra.projectionpath(X_447=[7377]:bat[:oid], X_403=[37305]:bat[:oid], C_377=[811035]:bat[:oid], X_302=[1500303]:bat[:lng]); #[92] (0) ALGprojectionpath 453 <- 4 |
:       : 47 403 377 302                                                                                                                                                                               :
|  1305 | X_451=[7989]:bat[:lng] := algebra.projectionpath(X_443=[7989]:bat[:oid], X_399=[38067]:bat[:oid], C_375=[810652]:bat[:oid], X_300=[1500303]:bat[:lng]); #[34] (0) ALGprojectionpath 451 <- 4 |
:       : 43 399 375 300                                                                                                                                                                               :
|    54 | (X_514=[7377]:bat[:oid], C_515=[2808]:bat[:oid]) := group.group(X_453=[7377]:bat[:lng]); #[93] (0) GRPgroup3 514 515 <- 453                                                                  |
|    56 | (X_506=[7989]:bat[:oid], C_507=[2998]:bat[:oid]) := group.group(X_451=[7989]:bat[:lng]); #[35] (0) GRPgroup3 506 507 <- 451                                                                  |
|  1470 | X_454=[7417]:bat[:lng] := algebra.projectionpath(X_449=[7417]:bat[:oid], X_405=[37734]:bat[:oid], C_378=[809962]:bat[:oid], X_303=[1500306]:bat[:lng]); #[122] (0) ALGprojectionpath 454 <-  |
:       : 449 405 378 303                                                                                                                                                                              :
|    57 | (X_518=[7417]:bat[:oid], C_519=[2834]:bat[:oid]) := group.group(X_454=[7417]:bat[:lng]); #[123] (0) GRPgroup3 518 519 <- 454                                                                 |
|  1045 | X_461=[7377]:bat[:lng] := algebra.projectionpath(X_447=[7377]:bat[:oid], X_403=[37305]:bat[:oid], C_377=[811035]:bat[:oid], X_331=[1500303]:bat[:lng]); #[103] (0) ALGprojectionpath 461 <-  |
:       : 447 403 377 331                                                                                                                                                                              :
|    42 | X_497=[7377]:bat[:lng] := batcalc.-(100:lng, X_461=[7377]:bat[:lng], nil:BAT); #[104] (0) CMDbatSUBsignal 497 <- 271 461 94                                                                  |
|  1570 | X_457=[7377]:bat[:lng] := algebra.projectionpath(X_447=[7377]:bat[:oid], X_403=[37305]:bat[:oid], C_377=[811035]:bat[:oid], X_318=[1500303]:bat[:lng]); #[101] (0) ALGprojectionpath 457 <-  |
:       : 447 403 377 318                                                                                                                                                                              :
|     3 | language.pass(X_403=[37305]:bat[:oid]); #[209] (0) MALpass 674 <- 403                                                                                                                        |
|    59 | X_501=[7377]:bat[:hge] := batcalc.*(X_457=[7377]:bat[:lng], X_497=[7377]:bat[:lng], nil:BAT, nil:BAT); #[105] (0) CMDbatMULenlarge 501 <- 457 497 94 94                                      |
|     2 | language.pass(C_377=[811035]:bat[:oid]); #[210] (0) MALpass 675 <- 377                                                                                                                       |
|  1835 | X_89=[727305]:bat[:date] := algebra.projection(C_82=[727305]:bat[:oid], X_63=[1500000]:bat[:date]); #[28] (0) ALGprojection 89 <- 82 63                                                      |
|     3 | language.pass(X_63=[1500000]:bat[:date]); #[180] (0) MALpass 645 <- 63                                                                                                                       |
|   997 | X_459=[7989]:bat[:lng] := algebra.projectionpath(X_443=[7989]:bat[:oid], X_399=[38067]:bat[:oid], C_375=[810652]:bat[:oid], X_329=[1500303]:bat[:lng]); #[45] (0) ALGprojectionpath 459 <- 4 |
:       : 43 399 375 329                                                                                                                                                                               :
|   240 | X_471=[7989]:bat[:date] := algebra.projectionpath(X_443=[7989]:bat[:oid], X_400=[38067]:bat[:oid], X_89=[727305]:bat[:date]); #[29] (0) ALGprojectionpath 471 <- 443 400 89                  |
|    32 | X_495=[7989]:bat[:lng] := batcalc.-(100:lng, X_459=[7989]:bat[:lng], nil:BAT); #[46] (0) CMDbatSUBsignal 495 <- 271 459 94                                                                   |
|   378 | X_474=[7417]:bat[:date] := algebra.projectionpath(X_449=[7417]:bat[:oid], X_406=[37734]:bat[:oid], X_89=[727305]:bat[:date]); #[119] (0) ALGprojectionpath 474 <- 449 406 89                 |
|   399 | X_473=[7377]:bat[:date] := algebra.projectionpath(X_447=[7377]:bat[:oid], X_404=[37305]:bat[:oid], X_89=[727305]:bat[:date]); #[89] (0) ALGprojectionpath 473 <- 447 404 89                  |
|  8010 | (X_401=[38225]:bat[:oid], X_402=[38225]:bat[:oid]) := algebra.join(X_396=[810127]:bat[:oid], C_82=[727305]:bat[:oid], nil:BAT, nil:BAT, false:bit, nil:lng); #[57] (0) ALGjoin 401 402 <- 39 |
:       : 6 82 94 94 96 97                                                                                                                                                                             :
|  1648 | X_455=[7989]:bat[:lng] := algebra.projectionpath(X_443=[7989]:bat[:oid], X_399=[38067]:bat[:oid], C_375=[810652]:bat[:oid], X_314=[1500303]:bat[:lng]); #[43] (0) ALGprojectionpath 455 <- 4 |
:       : 43 399 375 314                                                                                                                                                                               :
|     2 | language.pass(X_399=[38067]:bat[:oid]); #[185] (0) MALpass 650 <- 399                                                                                                                        |
|   503 | X_440=[38225]:bat[:oid] := algebra.projection(X_402=[38225]:bat[:oid], X_91=[727305]:bat[:oid]); #[58] (0) ALGprojection 440 <- 402 91                                                       |
|     2 | language.pass(X_91=[727305]:bat[:oid]); #[218] (0) MALpass 683 <- 91                                                                                                                         |
|  2012 | X_90=[727305]:bat[:int] := algebra.projection(C_82=[727305]:bat[:oid], X_68=[1500000]:bat[:int]); #[31] (0) ALGprojection 90 <- 82 68                                                        |
|     3 | language.pass(C_82=[727305]:bat[:oid]); #[217] (0) MALpass 682 <- 82                                                                                                                         |
|    35 | X_499=[7989]:bat[:hge] := batcalc.*(X_455=[7989]:bat[:lng], X_495=[7989]:bat[:lng], nil:BAT, nil:BAT); #[47] (0) CMDbatMULenlarge 499 <- 455 495 94 94                                       |
|  1237 | X_462=[7417]:bat[:lng] := algebra.projectionpath(X_449=[7417]:bat[:oid], X_405=[37734]:bat[:oid], C_378=[809962]:bat[:oid], X_332=[1500306]:bat[:lng]); #[133] (0) ALGprojectionpath 462 <-  |
:       : 449 405 378 332                                                                                                                                                                              :
|    31 | X_498=[7417]:bat[:lng] := batcalc.-(100:lng, X_462=[7417]:bat[:lng], nil:BAT); #[134] (0) CMDbatSUBsignal 498 <- 271 462 94                                                                  |
|   232 | X_475=[7989]:bat[:int] := algebra.projectionpath(X_443=[7989]:bat[:oid], X_400=[38067]:bat[:oid], X_90=[727305]:bat[:int]); #[32] (0) ALGprojectionpath 475 <- 443 400 90                    |
|     1 | language.pass(X_443=[7989]:bat[:oid]); #[184] (0) MALpass 649 <- 443                                                                                                                         |
|   229 | X_478=[7417]:bat[:int] := algebra.projectionpath(X_449=[7417]:bat[:oid], X_406=[37734]:bat[:oid], X_90=[727305]:bat[:int]); #[120] (0) ALGprojectionpath 478 <- 449 406 90                   |
|     2 | language.pass(X_406=[37734]:bat[:oid]); #[221] (0) MALpass 686 <- 406                                                                                                                        |
|    62 | (X_525=[7989]:bat[:oid], C_526=[2998]:bat[:oid]) := group.subgroup(X_475=[7989]:bat[:int], X_506=[7989]:bat[:oid]); #[36] (0) GRPsubgroup6 525 526 <- 475 506                                |
|   259 | X_477=[7377]:bat[:int] := algebra.projectionpath(X_447=[7377]:bat[:oid], X_404=[37305]:bat[:oid], X_90=[727305]:bat[:int]); #[90] (0) ALGprojectionpath 477 <- 447 404 90                    |
|     3 | language.pass(X_447=[7377]:bat[:oid]); #[208] (0) MALpass 673 <- 447                                                                                                                         |
|  1089 | X_445=[7736]:bat[:oid] := algebra.join(X_440=[38225]:bat[:oid], C_128=[30142]:bat[:oid], nil:BAT, nil:BAT, false:bit, nil:lng); #[59] (0) ALGjoin1 445 <- 440 128 94 94 96 97                |
|     3 | language.pass(C_128=[30142]:bat[:oid]); #[219] (0) MALpass 684 <- 128                                                                                                                        |
|   208 | (X_552=[7989]:bat[:oid], C_553=[2998]:bat[:oid]) := group.subgroupdone(X_471=[7989]:bat[:date], X_525=[7989]:bat[:oid]); #[37] (0) GRPsubgroup6 552 553 <- 471 525                           |
|    87 | (X_533=[7377]:bat[:oid], C_534=[2808]:bat[:oid]) := group.subgroup(X_477=[7377]:bat[:int], X_514=[7377]:bat[:oid]); #[94] (0) GRPsubgroup6 533 534 <- 477 514                                |
|    10 | X_555=[2998]:bat[:date] := algebra.projection(C_553=[2998]:bat[:oid], X_471=[7989]:bat[:date]); #[38] (0) ALGprojection 555 <- 553 471                                                       |
|     1 | language.pass(X_471=[7989]:bat[:date]); #[182] (0) MALpass 647 <- 471                                                                                                                        |
|    92 | X_603=[2998]:bat[:hge] := aggr.subsum(X_499=[7989]:bat[:hge], X_552=[7989]:bat[:oid], C_553=[2998]:bat[:oid], true:bit, true:bit); #[48] (0) AGGRsubsum_hge 603 <- 499 552 553 170 170       |
|    13 | X_630=[2998]:bat[:hge] := mat.packIncrement(X_603=[2998]:bat[:hge], 4:int); #[155] (0) MATpackIncrement 630 <- 603 618                                                                       |
|     5 | X_617=[2998]:bat[:date] := mat.packIncrement(X_555=[2998]:bat[:date], 4:int); #[139] (0) MATpackIncrement 617 <- 555 618                                                                     |
|     8 | X_598=[2998]:bat[:int] := algebra.projection(C_553=[2998]:bat[:oid], X_475=[7989]:bat[:int]); #[41] (0) ALGprojection 598 <- 553 475                                                         |
|   224 | (X_560=[7377]:bat[:oid], C_561=[2808]:bat[:oid]) := group.subgroupdone(X_473=[7377]:bat[:date], X_533=[7377]:bat[:oid]); #[95] (0) GRPsubgroup6 560 561 <- 473 533                           |
|     5 | X_638=[2998]:bat[:int] := mat.packIncrement(X_598=[2998]:bat[:int], 4:int); #[172] (0) MATpackIncrement 638 <- 598 618                                                                       |
|    11 | X_563=[2808]:bat[:date] := algebra.projection(C_561=[2808]:bat[:oid], X_473=[7377]:bat[:date]); #[96] (0) ALGprojection 563 <- 561 473                                                       |
|     2 | language.pass(X_473=[7377]:bat[:date]); #[206] (0) MALpass 671 <- 473                                                                                                                        |
|  1684 | X_458=[7417]:bat[:lng] := algebra.projectionpath(X_449=[7417]:bat[:oid], X_405=[37734]:bat[:oid], C_378=[809962]:bat[:oid], X_320=[1500306]:bat[:lng]); #[131] (0) ALGprojectionpath 458 <-  |
:       : 449 405 378 320                                                                                                                                                                              :
|     3 | language.pass(X_449=[7417]:bat[:oid]); #[225] (0) MALpass 690 <- 449                                                                                                                         |
|    15 | X_568=[2998]:bat[:oid] := algebra.projection(C_553=[2998]:bat[:oid], X_525=[7989]:bat[:oid]); #[39] (0) ALGprojection 568 <- 553 525                                                         |
|     2 | language.pass(X_525=[7989]:bat[:oid]); #[183] (0) MALpass 648 <- 525                                                                                                                         |
|   104 | X_605=[2808]:bat[:hge] := aggr.subsum(X_501=[7377]:bat[:hge], X_560=[7377]:bat[:oid], C_561=[2808]:bat[:oid], true:bit, true:bit); #[106] (0) AGGRsubsum_hge 605 <- 501 560 561 170 170      |
|    36 | X_502=[7417]:bat[:hge] := batcalc.*(X_458=[7417]:bat[:lng], X_498=[7417]:bat[:lng], nil:BAT, nil:BAT); #[135] (0) CMDbatMULenlarge 502 <- 458 498 94 94                                      |
|    25 | X_588=[2998]:bat[:lng] := algebra.projection(C_553=[2998]:bat[:oid], X_451=[7989]:bat[:lng]); #[40] (0) ALGprojection 588 <- 553 451                                                         |
|     2 | language.pass(C_553=[2998]:bat[:oid]); #[187] (0) MALpass 652 <- 553                                                                                                                         |
|    75 | X_569=[2998]:bat[:int] := algebra.projectionpath(X_568=[2998]:bat[:oid], C_526=[2998]:bat[:oid], X_475=[7989]:bat[:int]); #[49] (0) ALGprojectionpath 569 <- 568 526 475                     |
|     2 | language.pass(X_475=[7989]:bat[:int]); #[188] (0) MALpass 653 <- 475                                                                                                                         |
|   101 | X_577=[2998]:bat[:lng] := algebra.projectionpath(X_568=[2998]:bat[:oid], C_526=[2998]:bat[:oid], X_506=[7989]:bat[:oid], C_507=[2998]:bat[:oid], X_451=[7989]:bat[:lng]); #[50] (0) ALGproje |
:       : ctionpath 577 <- 568 526 506 507 451                                                                                                                                                         :
|     1 | language.pass(X_568=[2998]:bat[:oid]); #[189] (0) MALpass 654 <- 568                                                                                                                         |
|     8 | X_634=[2998]:bat[:lng] := mat.packIncrement(X_588=[2998]:bat[:lng], 4:int); #[166] (0) MATpackIncrement 634 <- 588 618                                                                       |
|     5 | X_622=[2998]:bat[:int] := mat.packIncrement(X_569=[2998]:bat[:int], 4:int); #[143] (0) MATpackIncrement 622 <- 569 618                                                                       |
|     1 | language.pass(X_451=[7989]:bat[:lng]); #[192] (0) MALpass 657 <- 451                                                                                                                         |
|     8 | X_626=[2998]:bat[:lng] := mat.packIncrement(X_577=[2998]:bat[:lng], 4:int); #[147] (0) MATpackIncrement 626 <- 577 618                                                                       |
|     1 | language.pass(X_506=[7989]:bat[:oid]); #[191] (0) MALpass 656 <- 506                                                                                                                         |
|     1 | language.pass(C_526=[2998]:bat[:oid]); #[190] (0) MALpass 655 <- 526                                                                                                                         |
|     1 | language.pass(C_378=[809962]:bat[:oid]); #[227] (0) MALpass 692 <- 378                                                                                                                       |
|     1 | language.pass(X_405=[37734]:bat[:oid]); #[226] (0) MALpass 691 <- 405                                                                                                                        |
|    11 | X_590=[2808]:bat[:lng] := algebra.projection(C_561=[2808]:bat[:oid], X_453=[7377]:bat[:lng]); #[98] (0) ALGprojection 590 <- 561 453                                                         |
|    13 | X_600=[2808]:bat[:int] := algebra.projection(C_561=[2808]:bat[:oid], X_477=[7377]:bat[:int]); #[99] (0) ALGprojection 600 <- 561 477                                                         |
|    11 | X_572=[2808]:bat[:oid] := algebra.projection(C_561=[2808]:bat[:oid], X_533=[7377]:bat[:oid]); #[97] (0) ALGprojection 572 <- 561 533                                                         |
|     1 | language.pass(C_561=[2808]:bat[:oid]); #[211] (0) MALpass 676 <- 561                                                                                                                         |
|   344 | X_472=[7736]:bat[:date] := algebra.projectionpath(X_445=[7736]:bat[:oid], X_402=[38225]:bat[:oid], X_89=[727305]:bat[:date]); #[60] (0) ALGprojectionpath 472 <- 445 402 89                  |
|     3 | language.pass(X_89=[727305]:bat[:date]); #[220] (0) MALpass 685 <- 89                                                                                                                        |
|   306 | X_476=[7736]:bat[:int] := algebra.projectionpath(X_445=[7736]:bat[:oid], X_402=[38225]:bat[:oid], X_90=[727305]:bat[:int]); #[61] (0) ALGprojectionpath 476 <- 445 402 90                    |
|     1 | language.pass(X_402=[38225]:bat[:oid]); #[193] (0) MALpass 658 <- 402                                                                                                                        |
|   102 | X_573=[2808]:bat[:int] := algebra.projectionpath(X_572=[2808]:bat[:oid], C_534=[2808]:bat[:oid], X_477=[7377]:bat[:int]); #[107] (0) ALGprojectionpath 573 <- 572 534 477                    |
|     3 | language.pass(X_477=[7377]:bat[:int]); #[212] (0) MALpass 677 <- 477                                                                                                                         |
|  1362 | X_460=[7736]:bat[:lng] := algebra.projectionpath(X_445=[7736]:bat[:oid], X_401=[38225]:bat[:oid], C_376=[810127]:bat[:oid], X_330=[1500303]:bat[:lng]); #[74] (0) ALGprojectionpath 460 <- 4 |
:       : 45 401 376 330                                                                                                                                                                               :
|   115 | X_581=[2808]:bat[:lng] := algebra.projectionpath(X_572=[2808]:bat[:oid], C_534=[2808]:bat[:oid], X_514=[7377]:bat[:oid], C_515=[2808]:bat[:oid], X_453=[7377]:bat[:lng]); #[108] (0) ALGproj |
:       : ectionpath 581 <- 572 534 514 515 453                                                                                                                                                        :
|    35 | X_496=[7736]:bat[:lng] := batcalc.-(100:lng, X_460=[7736]:bat[:lng], nil:BAT); #[75] (0) CMDbatSUBsignal 496 <- 271 460 94                                                                   |
|     2 | language.pass(X_572=[2808]:bat[:oid]); #[213] (0) MALpass 678 <- 572                                                                                                                         |
|     2 | language.pass(X_453=[7377]:bat[:lng]); #[216] (0) MALpass 681 <- 453                                                                                                                         |
|     1 | language.pass(X_514=[7377]:bat[:oid]); #[215] (0) MALpass 680 <- 514                                                                                                                         |
|     1 | language.pass(C_534=[2808]:bat[:oid]); #[214] (0) MALpass 679 <- 534                                                                                                                         |
|     1 | language.pass(X_90=[727305]:bat[:int]); #[222] (0) MALpass 687 <- 90                                                                                                                         |
|    72 | (X_537=[7417]:bat[:oid], C_538=[2834]:bat[:oid]) := group.subgroup(X_478=[7417]:bat[:int], X_518=[7417]:bat[:oid]); #[124] (0) GRPsubgroup6 537 538 <- 478 518                               |
|     1 | language.pass(X_533=[7377]:bat[:oid]); #[207] (0) MALpass 672 <- 533                                                                                                                         |
|     2 | language.pass(X_404=[37305]:bat[:oid]); #[205] (0) MALpass 670 <- 404                                                                                                                        |
|     1 | language.pass(X_400=[38067]:bat[:oid]); #[181] (0) MALpass 646 <- 400                                                                                                                        |
|     1 | language.pass(C_375=[810652]:bat[:oid]); #[186] (0) MALpass 651 <- 375                                                                                                                       |
|   247 | (X_564=[7417]:bat[:oid], C_565=[2834]:bat[:oid]) := group.subgroupdone(X_474=[7417]:bat[:date], X_537=[7417]:bat[:oid]); #[125] (0) GRPsubgroup6 564 565 <- 474 537                          |
|    31 | X_567=[2834]:bat[:date] := algebra.projection(C_565=[2834]:bat[:oid], X_474=[7417]:bat[:date]); #[126] (0) ALGprojection 567 <- 565 474                                                      |
|  1246 | X_456=[7736]:bat[:lng] := algebra.projectionpath(X_445=[7736]:bat[:oid], X_401=[38225]:bat[:oid], C_376=[810127]:bat[:oid], X_316=[1500303]:bat[:lng]); #[72] (0) ALGprojectionpath 456 <- 4 |
:       : 45 401 376 316                                                                                                                                                                               :
|  1213 | X_452=[7736]:bat[:lng] := algebra.projectionpath(X_445=[7736]:bat[:oid], X_401=[38225]:bat[:oid], C_376=[810127]:bat[:oid], X_301=[1500303]:bat[:lng]); #[63] (0) ALGprojectionpath 452 <- 4 |
:       : 45 401 376 301                                                                                                                                                                               :
|    17 | X_574=[2834]:bat[:oid] := algebra.projection(C_565=[2834]:bat[:oid], X_537=[7417]:bat[:oid]); #[127] (0) ALGprojection 574 <- 565 537                                                        |
|     2 | language.pass(X_537=[7417]:bat[:oid]); #[224] (0) MALpass 689 <- 537                                                                                                                         |
|    13 | X_591=[2834]:bat[:lng] := algebra.projection(C_565=[2834]:bat[:oid], X_454=[7417]:bat[:lng]); #[128] (0) ALGprojection 591 <- 565 454                                                        |
|    10 | X_601=[2834]:bat[:int] := algebra.projection(C_565=[2834]:bat[:oid], X_478=[7417]:bat[:int]); #[129] (0) ALGprojection 601 <- 565 478                                                        |
|   175 | X_606=[2834]:bat[:hge] := aggr.subsum(X_502=[7417]:bat[:hge], X_564=[7417]:bat[:oid], C_565=[2834]:bat[:oid], true:bit, true:bit); #[136] (0) AGGRsubsum_hge 606 <- 502 564 565 170 170      |
|     2 | language.pass(C_565=[2834]:bat[:oid]); #[228] (0) MALpass 693 <- 565                                                                                                                         |
|    96 | X_575=[2834]:bat[:int] := algebra.projectionpath(X_574=[2834]:bat[:oid], C_538=[2834]:bat[:oid], X_478=[7417]:bat[:int]); #[137] (0) ALGprojectionpath 575 <- 574 538 478                    |
|     1 | language.pass(X_478=[7417]:bat[:int]); #[229] (0) MALpass 694 <- 478                                                                                                                         |
|     1 | language.pass(X_474=[7417]:bat[:date]); #[223] (0) MALpass 688 <- 474                                                                                                                        |
|   212 | X_583=[2834]:bat[:lng] := algebra.projectionpath(X_574=[2834]:bat[:oid], C_538=[2834]:bat[:oid], X_518=[7417]:bat[:oid], C_519=[2834]:bat[:oid], X_454=[7417]:bat[:lng]); #[138] (0) ALGproj |
:       : ectionpath 583 <- 574 538 518 519 454                                                                                                                                                        :
|     3 | language.pass(X_574=[2834]:bat[:oid]); #[230] (0) MALpass 695 <- 574                                                                                                                         |
|     1 | language.pass(X_454=[7417]:bat[:lng]); #[233] (0) MALpass 698 <- 454                                                                                                                         |
|     1 | language.pass(X_518=[7417]:bat[:oid]); #[232] (0) MALpass 697 <- 518                                                                                                                         |
|     3 | language.pass(C_538=[2834]:bat[:oid]); #[231] (0) MALpass 696 <- 538                                                                                                                         |
|    94 | X_500=[7736]:bat[:hge] := batcalc.*(X_456=[7736]:bat[:lng], X_496=[7736]:bat[:lng], nil:BAT, nil:BAT); #[76] (0) CMDbatMULenlarge 500 <- 456 496 94 94                                       |
|     2 | language.pass(X_445=[7736]:bat[:oid]); #[196] (0) MALpass 661 <- 445                                                                                                                         |
|     3 | language.pass(X_401=[38225]:bat[:oid]); #[197] (0) MALpass 662 <- 401                                                                                                                        |
|     3 | language.pass(C_376=[810127]:bat[:oid]); #[198] (0) MALpass 663 <- 376                                                                                                                       |
|   115 | (X_510=[7736]:bat[:oid], C_511=[2980]:bat[:oid]) := group.group(X_452=[7736]:bat[:lng]); #[64] (0) GRPgroup3 510 511 <- 452                                                                  |
|    72 | (X_529=[7736]:bat[:oid], C_530=[2980]:bat[:oid]) := group.subgroup(X_476=[7736]:bat[:int], X_510=[7736]:bat[:oid]); #[65] (0) GRPsubgroup6 529 530 <- 476 510                                |
|   347 | (X_556=[7736]:bat[:oid], C_557=[2980]:bat[:oid]) := group.subgroupdone(X_472=[7736]:bat[:date], X_529=[7736]:bat[:oid]); #[66] (0) GRPsubgroup6 556 557 <- 472 529                           |
|    33 | X_559=[2980]:bat[:date] := algebra.projection(C_557=[2980]:bat[:oid], X_472=[7736]:bat[:date]); #[67] (0) ALGprojection 559 <- 557 472                                                       |
|     3 | language.pass(X_472=[7736]:bat[:date]); #[194] (0) MALpass 659 <- 472                                                                                                                        |
|     9 | X_619=[5978]:bat[:date] := mat.packIncrement(X_617=[5978]:bat[:date], X_559=[2980]:bat[:date]); #[140] (0) MATpackIncrement 619 <- 617 559                                                   |
|    56 | X_570=[2980]:bat[:oid] := algebra.projection(C_557=[2980]:bat[:oid], X_529=[7736]:bat[:oid]); #[68] (0) ALGprojection 570 <- 557 529                                                         |
|     2 | language.pass(X_529=[7736]:bat[:oid]); #[195] (0) MALpass 660 <- 529                                                                                                                         |
|     5 | X_620=[8786]:bat[:date] := mat.packIncrement(X_619=[8786]:bat[:date], X_563=[2808]:bat[:date]); #[141] (0) MATpackIncrement 620 <- 619 563                                                   |
|    14 | X_589=[2980]:bat[:lng] := algebra.projection(C_557=[2980]:bat[:oid], X_452=[7736]:bat[:lng]); #[69] (0) ALGprojection 589 <- 557 452                                                         |
|     8 | X_142=[11620]:bat[:date] := mat.packIncrement(X_620=[11620]:bat[:date], X_567=[2834]:bat[:date]); #[142] (0) MATpackIncrement 142 <- 620 567                                                 |
|    47 | X_599=[2980]:bat[:int] := algebra.projection(C_557=[2980]:bat[:oid], X_476=[7736]:bat[:int]); #[70] (0) ALGprojection 599 <- 557 476                                                         |
|     5 | X_635=[5978]:bat[:lng] := mat.packIncrement(X_634=[5978]:bat[:lng], X_589=[2980]:bat[:lng]); #[167] (0) MATpackIncrement 635 <- 634 589                                                      |
|     5 | X_639=[5978]:bat[:int] := mat.packIncrement(X_638=[5978]:bat[:int], X_599=[2980]:bat[:int]); #[173] (0) MATpackIncrement 639 <- 638 599                                                      |
|   119 | X_604=[2980]:bat[:hge] := aggr.subsum(X_500=[7736]:bat[:hge], X_556=[7736]:bat[:oid], C_557=[2980]:bat[:oid], true:bit, true:bit); #[77] (0) AGGRsubsum_hge 604 <- 500 556 557 170 170       |
|     6 | X_640=[8786]:bat[:int] := mat.packIncrement(X_639=[8786]:bat[:int], X_600=[2808]:bat[:int]); #[174] (0) MATpackIncrement 640 <- 639 600                                                      |
|     7 | X_636=[8786]:bat[:lng] := mat.packIncrement(X_635=[8786]:bat[:lng], X_590=[2808]:bat[:lng]); #[168] (0) MATpackIncrement 636 <- 635 590                                                      |
|     3 | language.pass(C_557=[2980]:bat[:oid]); #[199] (0) MALpass 664 <- 557                                                                                                                         |
|     6 | X_587=[11620]:bat[:lng] := mat.packIncrement(X_636=[11620]:bat[:lng], X_591=[2834]:bat[:lng]); #[169] (0) MATpackIncrement 587 <- 636 591                                                    |
|   129 | X_579=[2980]:bat[:lng] := algebra.projectionpath(X_570=[2980]:bat[:oid], C_530=[2980]:bat[:oid], X_510=[7736]:bat[:oid], C_511=[2980]:bat[:oid], X_452=[7736]:bat[:lng]); #[79] (0) ALGproje |
:       : ctionpath 579 <- 570 530 510 511 452                                                                                                                                                         :
|     8 | X_631=[5978]:bat[:hge] := mat.packIncrement(X_630=[5978]:bat[:hge], X_604=[2980]:bat[:hge]); #[156] (0) MATpackIncrement 631 <- 630 604                                                      |
|    53 | X_597=[11620]:bat[:int] := mat.packIncrement(X_640=[11620]:bat[:int], X_601=[2834]:bat[:int]); #[175] (0) MATpackIncrement 597 <- 640 601                                                    |
|     3 | language.pass(X_510=[7736]:bat[:oid]); #[203] (0) MALpass 668 <- 510                                                                                                                         |
|     9 | X_632=[8786]:bat[:hge] := mat.packIncrement(X_631=[8786]:bat[:hge], X_605=[2808]:bat[:hge]); #[157] (0) MATpackIncrement 632 <- 631 605                                                      |
|    10 | X_602=[11620]:bat[:hge] := mat.packIncrement(X_632=[11620]:bat[:hge], X_606=[2834]:bat[:hge]); #[158] (0) MATpackIncrement 602 <- 632 606                                                    |
|    92 | X_571=[2980]:bat[:int] := algebra.projectionpath(X_570=[2980]:bat[:oid], C_530=[2980]:bat[:oid], X_476=[7736]:bat[:int]); #[78] (0) ALGprojectionpath 571 <- 570 530 476                     |
|     5 | X_627=[5978]:bat[:lng] := mat.packIncrement(X_626=[5978]:bat[:lng], X_579=[2980]:bat[:lng]); #[148] (0) MATpackIncrement 627 <- 626 579                                                      |
|     1 | language.pass(X_452=[7736]:bat[:lng]); #[204] (0) MALpass 669 <- 452                                                                                                                         |
|     2 | language.pass(X_570=[2980]:bat[:oid]); #[201] (0) MALpass 666 <- 570                                                                                                                         |
|     6 | X_628=[8786]:bat[:lng] := mat.packIncrement(X_627=[8786]:bat[:lng], X_581=[2808]:bat[:lng]); #[149] (0) MATpackIncrement 628 <- 627 581                                                      |
|     6 | X_623=[5978]:bat[:int] := mat.packIncrement(X_622=[5978]:bat[:int], X_571=[2980]:bat[:int]); #[144] (0) MATpackIncrement 623 <- 622 571                                                      |
|    24 | language.pass(X_476=[7736]:bat[:int]); #[200] (0) MALpass 665 <- 476                                                                                                                         |
|     9 | X_137=[11620]:bat[:lng] := mat.packIncrement(X_628=[11620]:bat[:lng], X_583=[2834]:bat[:lng]); #[150] (0) MATpackIncrement 137 <- 628 583                                                    |
|     1 | language.pass(C_530=[2980]:bat[:oid]); #[202] (0) MALpass 667 <- 530                                                                                                                         |
|     8 | X_624=[8786]:bat[:int] := mat.packIncrement(X_623=[8786]:bat[:int], X_573=[2808]:bat[:int]); #[145] (0) MATpackIncrement 624 <- 623 573                                                      |
|    68 | (X_157=[11620]:bat[:oid], C_158=[11620]:bat[:oid]) := group.group(X_137=[11620]:bat[:lng]); #[151] (1) GRPgroup3 157 158 <- 137                                                              |
|     4 | X_143=[11620]:bat[:int] := mat.packIncrement(X_624=[11620]:bat[:int], X_575=[2834]:bat[:int]); #[146] (0) MATpackIncrement 143 <- 624 575                                                    |
|    10 | (X_160=[11620]:bat[:oid], C_161=[11620]:bat[:oid]) := group.subgroup(X_143=[11620]:bat[:int], X_157=[11620]:bat[:oid]); #[152] (1) GRPsubgroup6 160 161 <- 143 157                           |
|    22 | (X_163=[11620]:bat[:oid], C_164=[11620]:bat[:oid]) := group.subgroupdone(X_142=[11620]:bat[:date], X_160=[11620]:bat[:oid]); #[153] (0) GRPsubgroup6 163 164 <- 142 160                      |
|     4 | X_167=[11620]:bat[:date] := algebra.projection(C_164=[11620]:bat[:oid], X_142=[11620]:bat[:date]); #[154] (0) ALGprojection 167 <- 164 142                                                   |
|     8 | X_169=[11620]:bat[:hge] := aggr.subsum(X_602=[11620]:bat[:hge], X_163=[11620]:bat[:oid], C_164=[11620]:bat[:oid], true:bit, true:bit); #[159] (0) AGGRsubsum_hge 169 <- 602 163 164 170 170  |
|     3 | language.pass(X_142=[11620]:bat[:date]); #[234] (0) MALpass 699 <- 142                                                                                                                       |
|   202 | (C_175=[10]:bat[:oid], X_176=[10]:bat[:oid]) := algebra.firstn(X_169=[11620]:bat[:hge], 10:lng, false:bit, true:bit, false:bit); #[160] (0) ALGfirstn 175 176 <- 169 10 96 170 96            |
|    29 | C_181=[10]:bat[:oid] := algebra.firstn(X_167=[11620]:bat[:date], C_175=[10]:bat[:oid], X_176=[10]:bat[:oid], 10:lng, true:bit, false:bit, false:bit); #[161] (0) ALGfirstn 181 <- 167 175 17 |
:       : 6 10 170 96 96                                                                                                                                                                               :
|     4 | X_184=[10]:bat[:date] := algebra.projection(C_181=[10]:bat[:oid], X_167=[11620]:bat[:date]); #[162] (0) ALGprojection 184 <- 181 167                                                         |
|     2 | language.pass(X_167=[11620]:bat[:date]); #[235] (0) MALpass 700 <- 167                                                                                                                       |
|     3 | X_183=[10]:bat[:hge] := algebra.projection(C_181=[10]:bat[:oid], X_169=[11620]:bat[:hge]); #[163] (0) ALGprojection 183 <- 181 169                                                           |
|     1 | language.pass(X_169=[11620]:bat[:hge]); #[236] (0) MALpass 701 <- 169                                                                                                                        |
|    30 | (X_190=[10]:bat[:hge], X_191=[10]:bat[:oid], X_192=[10]:bat[:oid]) := algebra.sort(X_183=[10]:bat[:hge], true:bit, true:bit, false:bit); #[164] (0) ALGsort13 190 191 192 <- 183 170 170 96  |
|    28 | (X_193=[10]:bat[:date], X_194=[10]:bat[:oid]) := algebra.sort(X_184=[10]:bat[:date], X_191=[10]:bat[:oid], X_192=[10]:bat[:oid], false:bit, false:bit, false:bit); #[165] (0) ALGsort32 193  |
:       : 194 <- 184 191 192 96 96 96                                                                                                                                                                  :
|    21 | X_196=[10]:bat[:lng] := algebra.projectionpath(X_194=[10]:bat[:oid], C_181=[10]:bat[:oid], C_164=[11620]:bat[:oid], X_587=[11620]:bat[:lng]); #[170] (0) ALGprojectionpath 196 <- 194 181 16 |
:       : 4 587                                                                                                                                                                                        :
|    18 | C_206=[10]:bat[:oid] := algebra.subslice(X_196=[10]:bat[:lng], 0:lng, 9:lng); #[171] (0) ALGsubslice_lng 206 <- 196 173 274                                                                  |
|    12 | X_209=[10]:bat[:date] := algebra.projectionpath(C_206=[10]:bat[:oid], X_194=[10]:bat[:oid], X_184=[10]:bat[:date]); #[179] (0) ALGprojectionpath 209 <- 206 194 184                          |
|     8 | X_210=[10]:bat[:int] := algebra.projectionpath(C_206=[10]:bat[:oid], X_194=[10]:bat[:oid], C_181=[10]:bat[:oid], C_164=[11620]:bat[:oid], X_597=[11620]:bat[:int]); #[176] (0) ALGprojection |
:       : path 210 <- 206 194 181 164 597                                                                                                                                                              :
|    16 | language.pass(X_184=[10]:bat[:date]); #[243] (0) MALpass 708 <- 184                                                                                                                          |
|     9 | X_207=[10]:bat[:lng] := algebra.projection(C_206=[10]:bat[:oid], X_196=[10]:bat[:lng]); #[177] (0) ALGprojection 207 <- 206 196                                                              |
|     2 | language.pass(C_181=[10]:bat[:oid]); #[237] (0) MALpass 702 <- 181                                                                                                                           |
|     1 | language.pass(X_196=[10]:bat[:lng]); #[239] (0) MALpass 704 <- 196                                                                                                                           |
|     8 | X_208=[10]:bat[:hge] := algebra.projectionpath(C_206=[10]:bat[:oid], X_194=[10]:bat[:oid], X_183=[10]:bat[:hge]); #[178] (0) ALGprojectionpath 208 <- 206 194 183                            |
|     2 | language.pass(C_164=[11620]:bat[:oid]); #[238] (0) MALpass 703 <- 164                                                                                                                        |
|     2 | language.pass(C_206=[10]:bat[:oid]); #[241] (0) MALpass 706 <- 206                                                                                                                           |
|     3 | language.pass(X_194=[10]:bat[:oid]); #[242] (0) MALpass 707 <- 194                                                                                                                           |
|     2 | language.pass(X_183=[10]:bat[:hge]); #[240] (0) MALpass 705 <- 183                                                                                                                           |
| 42774 | barrier X_643=false:bit := language.dataflow(); #[2] (0) MALstartDataflow 643                                                                                                                |
|    42 | sql.resultSet(X_212=[4]:bat[:str], X_213=[4]:bat[:str], X_214=[4]:bat[:str], X_215=[4]:bat[:int], X_216=[4]:bat[:int], X_207=[10]:bat[:lng], X_208=[10]:bat[:hge], X_209=[10]:bat[:date], X_ |
:       : 210=[10]:bat[:int]); #[245] (0) mvc_table_result_wrap 211 <- 212 213 214 215 216 207 208 209 210                                                                                             :
+-------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
244 tuples
