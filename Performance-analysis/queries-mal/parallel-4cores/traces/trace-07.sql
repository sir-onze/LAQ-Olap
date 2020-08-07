operation successful
+---------------------------+---------------------------+--------+------------------------------------------+
| supp_nation               | cust_nation               | l_year | revenue                                  |
+===========================+===========================+========+==========================================+
| FRANCE                    | GERMANY                   |   1995 |                            54639732.7336 |
| FRANCE                    | GERMANY                   |   1996 |                            54633083.3076 |
| GERMANY                   | FRANCE                    |   1995 |                            52531746.6697 |
| GERMANY                   | FRANCE                    |   1996 |                            52520549.0224 |
+---------------------------+---------------------------+--------+------------------------------------------+
4 tuples
+-------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| usec  | statement                                                                                                                                                                                    |
+=======+==============================================================================================================================================================================================+
|     2 | X_13=0@0:void := querylog.define("trace select\n supp_nation,\n cust_nation,\n l_year,\n sum(volume) as revenue\nfrom ( select\n n1.n_name as supp_nation,\n n2.n_name as cust_nation,\n ext |
:       : ract(year from l_shipdate) as l_year,\n l_extendedprice * (1 - l_discount) as volume\n from supplier,\n lineitem,\n orders,\n customer,\n nation n1,\n nation n2\n where s_suppkey = l_suppk :
:       : ey\n and o_orderkey = l_orderkey\n and c_custkey = o_custkey\n and s_nationkey = n1.n_nationkey\n and c_nationkey = n2.n_nationkey\n and ( (n1.n_name = \\'FRANCE\\' and n2.n_name = \\'GERM :
:       : ANY\\')\n or (n1.n_name = \\'GERMANY\\' and n2.n_name = \\'FRANCE\\'))\n and l_shipdate between date \\'1995-01-01\\' and date \\'1996-12-31\\'\n ) as shipping\ngroup by supp_nation,\n cus :
:       : t_nation,\n l_year\norder by supp_nation,\n cust_nation,\n l_year;":str, "default_pipe":str, 215:int); #[1] (0) QLOGdefineNaive 13 <- 14 15 322                                              :
|    61 | X_304=[4]:bat[:str] := bat.pack("supp_nation":str, "cust_nation":str, "l_year":str, "revenue":str); #[4] (0) MATpackValues 304 <- 309 313 314 318                                            |
|     2 | X_16=0:int := sql.mvc(); #[8] (0) SQLmvc 16                                                                                                                                                  |
|    28 | X_303=[4]:bat[:str] := bat.pack("sys.shipping":str, "sys.shipping":str, "sys.shipping":str, "sys.":str); #[3] (0) MATpackValues 303 <- 308 308 308 317                                       |
|     7 | X_429=[1500303]:bat[:date] := sql.bind(X_16=0:int, "sys":str, "lineitem":str, "l_shipdate":str, 0:int, 0:int, 4:int); #[9] (0) mvc_bind_wrap 429 <- 16 18 19 47 22 22 321                    |
|     6 | X_307=[4]:bat[:int] := bat.pack(0:int, 0:int, 0:int, 4:int); #[7] (0) MATpackValues 307 <- 22 22 22 321                                                                                      |
|     3 | X_306=[4]:bat[:int] := bat.pack(25:int, 25:int, 32:int, 38:int); #[6] (0) MATpackValues 306 <- 231 231 316 320                                                                               |
|     5 | X_305=[4]:bat[:str] := bat.pack("char":str, "char":str, "int":str, "decimal":str); #[5] (0) MATpackValues 305 <- 310 310 315 319                                                             |
|     4 | C_369=[1500303]:bat[:oid] := sql.tid(X_16=0:int, "sys":str, "lineitem":str, 0:int, 4:int); #[10] (0) SQLtid 369 <- 16 18 19 22 321                                                           |
|    26 | X_169=[150000]:bat[:oid] := sql.bind_idxbat(X_16=0:int, "sys":str, "customer":str, "customer_fk1":str, 0:int); #[37] (0) mvc_bind_idxbat_wrap 169 <- 16 18 161 163 22                        |
|    71 | X_446=[1500303]:bat[:oid] := sql.bind_idxbat(X_16=0:int, "sys":str, "lineitem":str, "lineitem_fk1":str, 0:int, 0:int, 4:int); #[12] (0) mvc_bind_idxbat_wrap 446 <- 16 18 19 53 22 22 321    |
|     8 | (X_450=[0]:bat[:oid], X_451=[0]:bat[:oid]) := sql.bind_idxbat(X_16=0:int, "sys":str, "lineitem":str, "lineitem_fk1":str, 2:int, 0:int, 4:int); #[13] (0) mvc_bind_idxbat_wrap 450 451 <- 16  |
:       : 18 19 53 27 22 321                                                                                                                                                                           :
|     3 | C_64=[1500000]:bat[:oid] := sql.tid(X_16=0:int, "sys":str, "orders":str); #[15] (0) SQLtid 64 <- 16 18 65                                                                                    |
|    54 | X_391=[1500306]:bat[:int] := sql.bind(X_16=0:int, "sys":str, "lineitem":str, "l_suppkey":str, 0:int, 3:int, 4:int); #[166] (0) mvc_bind_wrap 391 <- 16 18 19 21 22 227 321                   |
|     4 | X_54=[0]:bat[:oid] := sql.bind_idxbat(X_16=0:int, "sys":str, "lineitem":str, "lineitem_fk1":str, 1:int); #[163] (0) mvc_bind_idxbat_wrap 54 <- 16 18 19 53 24                                |
|     5 | (X_456=[0]:bat[:oid], X_457=[0]:bat[:oid]) := sql.bind_idxbat(X_16=0:int, "sys":str, "lineitem":str, "lineitem_fk1":str, 2:int, 3:int, 4:int); #[162] (0) mvc_bind_idxbat_wrap 456 457 <- 16 |
:       :  18 19 53 27 227 321                                                                                                                                                                         :
|    24 | X_449=[1500306]:bat[:oid] := sql.bind_idxbat(X_16=0:int, "sys":str, "lineitem":str, "lineitem_fk1":str, 0:int, 3:int, 4:int); #[161] (0) mvc_bind_idxbat_wrap 449 <- 16 18 19 53 22 227 321  |
|     2 | C_375=[1500306]:bat[:oid] := sql.tid(X_16=0:int, "sys":str, "lineitem":str, 3:int, 4:int); #[159] (0) SQLtid 375 <- 16 18 19 227 321                                                         |
|     2 | X_432=[1500306]:bat[:date] := sql.bind(X_16=0:int, "sys":str, "lineitem":str, "l_shipdate":str, 0:int, 3:int, 4:int); #[158] (0) mvc_bind_wrap 432 <- 16 18 19 47 22 227 321                 |
|     3 | X_419=[1500303]:bat[:lng] := sql.bind(X_16=0:int, "sys":str, "lineitem":str, "l_discount":str, 0:int, 2:int, 4:int); #[151] (0) mvc_bind_wrap 419 <- 16 18 19 41 22 27 321                   |
|     2 | X_406=[1500303]:bat[:lng] := sql.bind(X_16=0:int, "sys":str, "lineitem":str, "l_extendedprice":str, 0:int, 2:int, 4:int); #[149] (0) mvc_bind_wrap 406 <- 16 18 19 35 22 27 321              |
|     2 | X_390=[1500303]:bat[:int] := sql.bind(X_16=0:int, "sys":str, "lineitem":str, "l_suppkey":str, 0:int, 2:int, 4:int); #[122] (0) mvc_bind_wrap 390 <- 16 18 19 21 22 27 321                    |
|    32 | (X_454=[0]:bat[:oid], X_455=[0]:bat[:oid]) := sql.bind_idxbat(X_16=0:int, "sys":str, "lineitem":str, "lineitem_fk1":str, 2:int, 2:int, 4:int); #[119] (0) mvc_bind_idxbat_wrap 454 455 <- 16 |
:       :  18 19 53 27 27 321                                                                                                                                                                          :
|     8 | X_448=[1500303]:bat[:oid] := sql.bind_idxbat(X_16=0:int, "sys":str, "lineitem":str, "lineitem_fk1":str, 0:int, 2:int, 4:int); #[118] (0) mvc_bind_idxbat_wrap 448 <- 16 18 19 53 22 27 321   |
|     8 | C_373=[1500303]:bat[:oid] := sql.tid(X_16=0:int, "sys":str, "lineitem":str, 2:int, 4:int); #[116] (0) SQLtid 373 <- 16 18 19 27 321                                                          |
|     9 | X_431=[1500303]:bat[:date] := sql.bind(X_16=0:int, "sys":str, "lineitem":str, "l_shipdate":str, 0:int, 2:int, 4:int); #[115] (0) mvc_bind_wrap 431 <- 16 18 19 47 22 27 321                  |
|     8 | X_418=[1500303]:bat[:lng] := sql.bind(X_16=0:int, "sys":str, "lineitem":str, "l_discount":str, 0:int, 1:int, 4:int); #[108] (0) mvc_bind_wrap 418 <- 16 18 19 41 22 24 321                   |
|     8 | X_404=[1500303]:bat[:lng] := sql.bind(X_16=0:int, "sys":str, "lineitem":str, "l_extendedprice":str, 0:int, 1:int, 4:int); #[106] (0) mvc_bind_wrap 404 <- 16 18 19 35 22 24 321              |
|     8 | X_389=[1500303]:bat[:int] := sql.bind(X_16=0:int, "sys":str, "lineitem":str, "l_suppkey":str, 0:int, 1:int, 4:int); #[79] (0) mvc_bind_wrap 389 <- 16 18 19 21 22 24 321                     |
|    10 | (X_452=[0]:bat[:oid], X_453=[0]:bat[:oid]) := sql.bind_idxbat(X_16=0:int, "sys":str, "lineitem":str, "lineitem_fk1":str, 2:int, 1:int, 4:int); #[76] (0) mvc_bind_idxbat_wrap 452 453 <- 16  |
:       : 18 19 53 27 24 321                                                                                                                                                                           :
|     7 | X_447=[1500303]:bat[:oid] := sql.bind_idxbat(X_16=0:int, "sys":str, "lineitem":str, "lineitem_fk1":str, 0:int, 1:int, 4:int); #[75] (0) mvc_bind_idxbat_wrap 447 <- 16 18 19 53 22 24 321    |
|     8 | C_371=[1500303]:bat[:oid] := sql.tid(X_16=0:int, "sys":str, "lineitem":str, 1:int, 4:int); #[73] (0) SQLtid 371 <- 16 18 19 24 321                                                           |
|     7 | X_430=[1500303]:bat[:date] := sql.bind(X_16=0:int, "sys":str, "lineitem":str, "l_shipdate":str, 0:int, 1:int, 4:int); #[72] (0) mvc_bind_wrap 430 <- 16 18 19 47 22 24 321                   |
|    10 | X_417=[1500303]:bat[:lng] := sql.bind(X_16=0:int, "sys":str, "lineitem":str, "l_discount":str, 0:int, 0:int, 4:int); #[65] (0) mvc_bind_wrap 417 <- 16 18 19 41 22 22 321                    |
|     8 | X_402=[1500303]:bat[:lng] := sql.bind(X_16=0:int, "sys":str, "lineitem":str, "l_extendedprice":str, 0:int, 0:int, 4:int); #[63] (0) mvc_bind_wrap 402 <- 16 18 19 35 22 22 321               |
|     2 | X_137=[25]:bat[:str] := sql.bind(X_16=0:int, "sys":str, "nation":str, "n_name":str, 0:int); #[43] (0) mvc_bind_wrap 137 <- 16 18 130 132 22                                                  |
|     2 | X_170=[0]:bat[:oid] := sql.bind_idxbat(X_16=0:int, "sys":str, "customer":str, "customer_fk1":str, 1:int); #[39] (0) mvc_bind_idxbat_wrap 170 <- 16 18 161 163 24                             |
|     2 | (X_171=[0]:bat[:oid], X_172=[0]:bat[:oid]) := sql.bind_idxbat(X_16=0:int, "sys":str, "customer":str, "customer_fk1":str, 2:int); #[38] (0) mvc_bind_idxbat_wrap 171 172 <- 16 18 161 163 27  |
|     8 | C_160=[150000]:bat[:oid] := sql.tid(X_16=0:int, "sys":str, "customer":str); #[35] (0) SQLtid 160 <- 16 18 161                                                                                |
|     2 | X_74=[0]:bat[:oid] := sql.bind_idxbat(X_16=0:int, "sys":str, "orders":str, "orders_fk1":str, 1:int); #[32] (0) mvc_bind_idxbat_wrap 74 <- 16 18 65 67 24                                     |
|     2 | (X_75=[0]:bat[:oid], X_76=[0]:bat[:oid]) := sql.bind_idxbat(X_16=0:int, "sys":str, "orders":str, "orders_fk1":str, 2:int); #[31] (0) mvc_bind_idxbat_wrap 75 76 <- 16 18 65 67 27            |
|     1 | X_73=[1500000]:bat[:oid] := sql.bind_idxbat(X_16=0:int, "sys":str, "orders":str, "orders_fk1":str, 0:int); #[30] (0) mvc_bind_idxbat_wrap 73 <- 16 18 65 67 22                               |
|    47 | C_129=[25]:bat[:oid] := sql.tid(X_16=0:int, "sys":str, "nation":str); #[28] (0) SQLtid 129 <- 16 18 130                                                                                      |
|     3 | X_111=[0]:bat[:oid] := sql.bind_idxbat(X_16=0:int, "sys":str, "supplier":str, "supplier_fk1":str, 1:int); #[25] (0) mvc_bind_idxbat_wrap 111 <- 16 18 97 110 24                              |
|    16 | (X_112=[0]:bat[:oid], X_113=[0]:bat[:oid]) := sql.bind_idxbat(X_16=0:int, "sys":str, "supplier":str, "supplier_fk1":str, 2:int); #[24] (0) mvc_bind_idxbat_wrap 112 113 <- 16 18 97 110 27   |
|     1 | X_109=[10000]:bat[:oid] := sql.bind_idxbat(X_16=0:int, "sys":str, "supplier":str, "supplier_fk1":str, 0:int); #[23] (0) mvc_bind_idxbat_wrap 109 <- 16 18 97 110 22                          |
|   735 | X_388=[1500303]:bat[:int] := sql.bind(X_16=0:int, "sys":str, "lineitem":str, "l_suppkey":str, 0:int, 0:int, 4:int); #[17] (0) mvc_bind_wrap 388 <- 16 18 19 21 22 22 321                     |
|     5 | C_96=[10000]:bat[:oid] := sql.tid(X_16=0:int, "sys":str, "supplier":str); #[19] (0) SQLtid 96 <- 16 18 97                                                                                    |
|    70 | X_408=[1500306]:bat[:lng] := sql.bind(X_16=0:int, "sys":str, "lineitem":str, "l_extendedprice":str, 0:int, 3:int, 4:int); #[193] (0) mvc_bind_wrap 408 <- 16 18 19 35 22 227 321             |
|     2 | X_104=[10000]:bat[:int] := sql.bind(X_16=0:int, "sys":str, "supplier":str, "s_suppkey":str, 0:int); #[20] (0) mvc_bind_wrap 104 <- 16 18 97 99 22                                            |
|     5 | X_116=[10000]:bat[:oid] := sql.projectdelta(C_96=[10000]:bat[:oid], X_109=[10000]:bat[:oid], X_112=[0]:bat[:oid], X_113=[0]:bat[:oid], X_111=[0]:bat[:oid]); #[26] (0) DELTAproject 116 <- 9 |
:       : 6 109 112 113 111                                                                                                                                                                            :
|    31 | X_115=[10000]:bat[:int] := algebra.projection(C_96=[10000]:bat[:oid], X_104=[10000]:bat[:int]); #[21] (0) ALGprojection 115 <- 96 104                                                        |
|     3 | X_83=[1500000]:bat[:oid] := sql.projectdelta(C_64=[1500000]:bat[:oid], X_73=[1500000]:bat[:oid], X_75=[0]:bat[:oid], X_76=[0]:bat[:oid], X_74=[0]:bat[:oid]); #[33] (0) DELTAproject 83 <- 6 |
:       : 4 73 75 76 74                                                                                                                                                                                :
|     4 | X_143=[25]:bat[:str] := algebra.projection(C_129=[25]:bat[:oid], X_137=[25]:bat[:str]); #[44] (0) ALGprojection 143 <- 129 137                                                               |
|    11 | X_174=[150000]:bat[:oid] := sql.projectdelta(C_160=[150000]:bat[:oid], X_169=[150000]:bat[:oid], X_171=[0]:bat[:oid], X_172=[0]:bat[:oid], X_170=[0]:bat[:oid]); #[40] (0) DELTAproject 174  |
:       : <- 160 169 171 172 170                                                                                                                                                                       :
|     9 | X_420=[1500306]:bat[:lng] := sql.bind(X_16=0:int, "sys":str, "lineitem":str, "l_discount":str, 0:int, 3:int, 4:int); #[195] (0) mvc_bind_wrap 420 <- 16 18 19 41 22 227 321                  |
|  3863 | C_463=[457973]:bat[:oid] := algebra.select(X_429=[1500303]:bat[:date], C_369=[1500303]:bat[:oid], "1995-01-01":date, "1996-12-31":date, true:bit, true:bit, false:bit, true:bit); #[11] (0)  |
:       : ALGselect2nil 463 <- 429 369 10 12 61 61 63 61                                                                                                                                               :
|  3885 | C_464=[457162]:bat[:oid] := algebra.select(X_430=[1500303]:bat[:date], C_371=[1500303]:bat[:oid], "1995-01-01":date, "1996-12-31":date, true:bit, true:bit, false:bit, true:bit); #[74] (0)  |
:       : ALGselect2nil 464 <- 430 371 10 12 61 61 63 61                                                                                                                                               :
|  3681 | C_465=[457493]:bat[:oid] := algebra.select(X_431=[1500303]:bat[:date], C_373=[1500303]:bat[:oid], "1995-01-01":date, "1996-12-31":date, true:bit, true:bit, false:bit, true:bit); #[117] (0) |
:       :  ALGselect2nil 465 <- 431 373 10 12 61 61 63 61                                                                                                                                              :
|  3884 | X_485=[457493]:bat[:oid] := sql.projectdelta(C_465=[457493]:bat[:oid], X_448=[1500303]:bat[:oid], X_454=[0]:bat[:oid], X_455=[0]:bat[:oid]); #[120] (0) DELTAproject2 485 <- 465 448 454 455 |
:       :                                                                                                                                                                                              :
|  5722 | X_483=[457973]:bat[:oid] := sql.projectdelta(C_463=[457973]:bat[:oid], X_446=[1500303]:bat[:oid], X_450=[0]:bat[:oid], X_451=[0]:bat[:oid]); #[14] (0) DELTAproject2 483 <- 463 446 450 451  |
|  6078 | X_484=[457162]:bat[:oid] := sql.projectdelta(C_464=[457162]:bat[:oid], X_447=[1500303]:bat[:oid], X_452=[0]:bat[:oid], X_453=[0]:bat[:oid]); #[77] (0) DELTAproject2 484 <- 464 447 452 453  |
|  2375 | (X_491=[457493]:bat[:oid], X_492=[457493]:bat[:oid]) := algebra.join(X_485=[457493]:bat[:oid], C_64=[1500000]:bat[:oid], nil:BAT, nil:BAT, false:bit, nil:lng); #[121] (0) ALGjoin 491 492 < |
:       : - 485 64 86 86 63 88                                                                                                                                                                         :
|  2489 | (X_487=[457973]:bat[:oid], X_488=[457973]:bat[:oid]) := algebra.join(X_483=[457973]:bat[:oid], C_64=[1500000]:bat[:oid], nil:BAT, nil:BAT, false:bit, nil:lng); #[16] (0) ALGjoin 487 488 <- |
:       :  483 64 86 86 63 88                                                                                                                                                                          :
|  2287 | (X_489=[457162]:bat[:oid], X_490=[457162]:bat[:oid]) := algebra.join(X_484=[457162]:bat[:oid], C_64=[1500000]:bat[:oid], nil:BAT, nil:BAT, false:bit, nil:lng); #[78] (0) ALGjoin 489 490 <- |
:       :  484 64 86 86 63 88                                                                                                                                                                          :
| 12770 | C_466=[455822]:bat[:oid] := algebra.select(X_432=[1500306]:bat[:date], C_375=[1500306]:bat[:oid], "1995-01-01":date, "1996-12-31":date, true:bit, true:bit, false:bit, true:bit); #[160] (0) |
:       :  ALGselect2nil 466 <- 432 375 10 12 61 61 63 61                                                                                                                                              :
|  2539 | X_486=[455822]:bat[:oid] := sql.projectdelta(C_466=[455822]:bat[:oid], X_449=[1500306]:bat[:oid], X_456=[0]:bat[:oid], X_457=[0]:bat[:oid], X_54=[0]:bat[:oid]); #[164] (0) DELTAproject 486 |
:       :  <- 466 449 456 457 54                                                                                                                                                                       :
|  1306 | (X_493=[455822]:bat[:oid], X_494=[455822]:bat[:oid]) := algebra.join(X_486=[455822]:bat[:oid], C_64=[1500000]:bat[:oid], nil:BAT, nil:BAT, false:bit, nil:lng); #[165] (0) ALGjoin 493 494 < |
:       : - 486 64 86 86 63 88                                                                                                                                                                         :
|     4 | language.pass(C_96=[10000]:bat[:oid]); #[240] (0) MALpass 981 <- 96                                                                                                                          |
|     1 | language.pass(C_64=[1500000]:bat[:oid]); #[295] (0) MALpass 1036 <- 64                                                                                                                       |
| 12210 | X_497=[457493]:bat[:int] := algebra.projectionpath(X_491=[457493]:bat[:oid], C_465=[457493]:bat[:oid], X_390=[1500303]:bat[:int]); #[123] (0) ALGprojectionpath 497 <- 491 465 390           |
| 12302 | X_495=[457973]:bat[:int] := algebra.projectionpath(X_487=[457973]:bat[:oid], C_463=[457973]:bat[:oid], X_388=[1500303]:bat[:int]); #[18] (0) ALGprojectionpath 495 <- 487 463 388            |
| 12310 | X_496=[457162]:bat[:int] := algebra.projectionpath(X_489=[457162]:bat[:oid], C_464=[457162]:bat[:oid], X_389=[1500303]:bat[:int]); #[80] (0) ALGprojectionpath 496 <- 489 464 389            |
|  7400 | (X_523=[457973]:bat[:oid], X_524=[457973]:bat[:oid]) := algebra.join(X_495=[457973]:bat[:int], X_115=[10000]:bat[:int], nil:BAT, nil:BAT, false:bit, nil:lng); #[22] (0) ALGjoin 523 524 <-  |
:       : 495 115 86 86 63 88                                                                                                                                                                          :
|  7117 | (X_525=[457162]:bat[:oid], X_526=[457162]:bat[:oid]) := algebra.join(X_496=[457162]:bat[:int], X_115=[10000]:bat[:int], nil:BAT, nil:BAT, false:bit, nil:lng); #[81] (0) ALGjoin 525 526 <-  |
:       : 496 115 86 86 63 88                                                                                                                                                                          :
| 13982 | X_498=[455822]:bat[:int] := algebra.projectionpath(X_493=[455822]:bat[:oid], C_466=[455822]:bat[:oid], X_391=[1500306]:bat[:int]); #[167] (0) ALGprojectionpath 498 <- 493 466 391           |
|  9349 | (X_527=[457493]:bat[:oid], X_528=[457493]:bat[:oid]) := algebra.join(X_497=[457493]:bat[:int], X_115=[10000]:bat[:int], nil:BAT, nil:BAT, false:bit, nil:lng); #[124] (0) ALGjoin 527 528 <- |
:       :  497 115 86 86 63 88                                                                                                                                                                         :
|  1677 | X_563=[457973]:bat[:oid] := algebra.projection(X_524=[457973]:bat[:oid], X_116=[10000]:bat[:oid]); #[27] (0) ALGprojection 563 <- 524 116                                                    |
|  2282 | X_564=[457162]:bat[:oid] := algebra.projection(X_526=[457162]:bat[:oid], X_116=[10000]:bat[:oid]); #[82] (0) ALGprojection 564 <- 526 116                                                    |
|  3262 | X_565=[457493]:bat[:oid] := algebra.projection(X_528=[457493]:bat[:oid], X_116=[10000]:bat[:oid]); #[125] (0) ALGprojection 565 <- 528 116                                                   |
|  3662 | (X_567=[457973]:bat[:oid], X_568=[457973]:bat[:oid]) := algebra.join(X_563=[457973]:bat[:oid], C_129=[25]:bat[:oid], nil:BAT, nil:BAT, false:bit, nil:lng); #[29] (0) ALGjoin 567 568 <- 563 |
:       :  129 86 86 63 88                                                                                                                                                                             :
|  3727 | (X_569=[457162]:bat[:oid], X_570=[457162]:bat[:oid]) := algebra.join(X_564=[457162]:bat[:oid], C_129=[25]:bat[:oid], nil:BAT, nil:BAT, false:bit, nil:lng); #[83] (0) ALGjoin 569 570 <- 564 |
:       :  129 86 86 63 88                                                                                                                                                                             :
|  3550 | (X_571=[457493]:bat[:oid], X_572=[457493]:bat[:oid]) := algebra.join(X_565=[457493]:bat[:oid], C_129=[25]:bat[:oid], nil:BAT, nil:BAT, false:bit, nil:lng); #[126] (0) ALGjoin 571 572 <- 56 |
:       : 5 129 86 86 63 88                                                                                                                                                                            :
| 11581 | (X_529=[455822]:bat[:oid], X_530=[455822]:bat[:oid]) := algebra.join(X_498=[455822]:bat[:int], X_115=[10000]:bat[:int], nil:BAT, nil:BAT, false:bit, nil:lng); #[168] (0) ALGjoin 529 530 <- |
:       :  498 115 86 86 63 88                                                                                                                                                                         :
|     3 | language.pass(X_115=[10000]:bat[:int]); #[296] (0) MALpass 1037 <- 115                                                                                                                       |
|  1515 | X_566=[455822]:bat[:oid] := algebra.projection(X_530=[455822]:bat[:oid], X_116=[10000]:bat[:oid]); #[169] (0) ALGprojection 566 <- 530 116                                                   |
|     2 | language.pass(X_116=[10000]:bat[:oid]); #[297] (0) MALpass 1038 <- 116                                                                                                                       |
|  2523 | (X_573=[455822]:bat[:oid], X_574=[455822]:bat[:oid]) := algebra.join(X_566=[455822]:bat[:oid], C_129=[25]:bat[:oid], nil:BAT, nil:BAT, false:bit, nil:lng); #[170] (0) ALGjoin 573 574 <- 56 |
:       : 6 129 86 86 63 88                                                                                                                                                                            :
| 14075 | X_599=[457973]:bat[:oid] := algebra.projectionpath(X_567=[457973]:bat[:oid], X_523=[457973]:bat[:oid], X_488=[457973]:bat[:oid], X_83=[1500000]:bat[:oid]); #[34] (0) ALGprojectionpath 599  |
:       : <- 567 523 488 83                                                                                                                                                                            :
| 14328 | X_600=[457162]:bat[:oid] := algebra.projectionpath(X_569=[457162]:bat[:oid], X_525=[457162]:bat[:oid], X_490=[457162]:bat[:oid], X_83=[1500000]:bat[:oid]); #[84] (0) ALGprojectionpath 600  |
:       : <- 569 525 490 83                                                                                                                                                                            :
|  1765 | (X_619=[457973]:bat[:oid], X_620=[457973]:bat[:oid]) := algebra.join(X_599=[457973]:bat[:oid], C_160=[150000]:bat[:oid], nil:BAT, nil:BAT, false:bit, nil:lng); #[36] (0) ALGjoin 619 620 <- |
:       :  599 160 86 86 63 88                                                                                                                                                                         :
|  2341 | (X_621=[457162]:bat[:oid], X_622=[457162]:bat[:oid]) := algebra.join(X_600=[457162]:bat[:oid], C_160=[150000]:bat[:oid], nil:BAT, nil:BAT, false:bit, nil:lng); #[85] (0) ALGjoin 621 622 <- |
:       :  600 160 86 86 63 88                                                                                                                                                                         :
|  2691 | X_675=[457973]:bat[:oid] := algebra.projection(X_620=[457973]:bat[:oid], X_174=[150000]:bat[:oid]); #[41] (0) ALGprojection 675 <- 620 174                                                   |
|  1978 | X_676=[457162]:bat[:oid] := algebra.projection(X_622=[457162]:bat[:oid], X_174=[150000]:bat[:oid]); #[86] (0) ALGprojection 676 <- 622 174                                                   |
| 17892 | X_601=[457493]:bat[:oid] := algebra.projectionpath(X_571=[457493]:bat[:oid], X_527=[457493]:bat[:oid], X_492=[457493]:bat[:oid], X_83=[1500000]:bat[:oid]); #[127] (0) ALGprojectionpath 601 |
:       :  <- 571 527 492 83                                                                                                                                                                           :
|  2410 | (X_679=[457973]:bat[:oid], X_680=[457973]:bat[:oid]) := algebra.join(X_675=[457973]:bat[:oid], C_129=[25]:bat[:oid], nil:BAT, nil:BAT, false:bit, nil:lng); #[42] (0) ALGjoin 679 680 <- 675 |
:       :  129 86 86 63 88                                                                                                                                                                             :
|  1654 | X_739=[457973]:bat[:str] := algebra.projection(X_680=[457973]:bat[:oid], X_143=[25]:bat[:str]); #[45] (0) ALGprojection 739 <- 680 143                                                       |
|  3268 | (X_681=[457162]:bat[:oid], X_682=[457162]:bat[:oid]) := algebra.join(X_676=[457162]:bat[:oid], C_129=[25]:bat[:oid], nil:BAT, nil:BAT, false:bit, nil:lng); #[87] (0) ALGjoin 681 682 <- 676 |
:       :  129 86 86 63 88                                                                                                                                                                             :
|  3549 | (X_623=[457493]:bat[:oid], X_624=[457493]:bat[:oid]) := algebra.join(X_601=[457493]:bat[:oid], C_160=[150000]:bat[:oid], nil:BAT, nil:BAT, false:bit, nil:lng); #[128] (0) ALGjoin 623 624 < |
:       : - 601 160 86 86 63 88                                                                                                                                                                        :
|  1138 | X_740=[457162]:bat[:str] := algebra.projection(X_682=[457162]:bat[:oid], X_143=[25]:bat[:str]); #[88] (0) ALGprojection 740 <- 682 143                                                       |
|  2252 | X_677=[457493]:bat[:oid] := algebra.projection(X_624=[457493]:bat[:oid], X_174=[150000]:bat[:oid]); #[129] (0) ALGprojection 677 <- 624 174                                                  |
|  2231 | (X_683=[457493]:bat[:oid], X_684=[457493]:bat[:oid]) := algebra.join(X_677=[457493]:bat[:oid], C_129=[25]:bat[:oid], nil:BAT, nil:BAT, false:bit, nil:lng); #[130] (0) ALGjoin 683 684 <- 67 |
:       : 7 129 86 86 63 88                                                                                                                                                                            :
|   902 | X_741=[457493]:bat[:str] := algebra.projection(X_684=[457493]:bat[:oid], X_143=[25]:bat[:str]); #[131] (0) ALGprojection 741 <- 684 143                                                      |
| 18603 | X_602=[455822]:bat[:oid] := algebra.projectionpath(X_573=[455822]:bat[:oid], X_529=[455822]:bat[:oid], X_494=[455822]:bat[:oid], X_83=[1500000]:bat[:oid]); #[171] (0) ALGprojectionpath 602 |
:       :  <- 573 529 494 83                                                                                                                                                                           :
|     3 | language.pass(X_83=[1500000]:bat[:oid]); #[298] (0) MALpass 1039 <- 83                                                                                                                       |
|  2234 | (X_625=[455822]:bat[:oid], X_626=[455822]:bat[:oid]) := algebra.join(X_602=[455822]:bat[:oid], C_160=[150000]:bat[:oid], nil:BAT, nil:BAT, false:bit, nil:lng); #[172] (0) ALGjoin 625 626 < |
:       : - 602 160 86 86 63 88                                                                                                                                                                        :
|     3 | language.pass(C_160=[150000]:bat[:oid]); #[299] (0) MALpass 1040 <- 160                                                                                                                      |
| 12311 | X_723=[457973]:bat[:str] := algebra.projectionpath(X_679=[457973]:bat[:oid], X_619=[457973]:bat[:oid], X_568=[457973]:bat[:oid], X_143=[25]:bat[:str]); #[46] (0) ALGprojectionpath 723 <- 6 |
:       : 79 619 568 143                                                                                                                                                                               :
|  1154 | C_747=[18265]:bat[:oid] := algebra.thetaselect(X_723=[457973]:bat[:str], "FRANCE":str, "==":str); #[47] (0) ALGthetaselect1 747 <- 723 4 233                                                 |
|   170 | C_751=[739]:bat[:oid] := algebra.thetaselect(X_739=[457973]:bat[:str], C_747=[18265]:bat[:oid], "GERMANY":str, "==":str); #[48] (0) ALGthetaselect2 751 <- 739 747 6 233                     |
|  2100 | X_678=[455822]:bat[:oid] := algebra.projection(X_626=[455822]:bat[:oid], X_174=[150000]:bat[:oid]); #[173] (0) ALGprojection 678 <- 626 174                                                  |
|     3 | language.pass(X_174=[150000]:bat[:oid]); #[300] (0) MALpass 1041 <- 174                                                                                                                      |
| 12284 | X_724=[457162]:bat[:str] := algebra.projectionpath(X_681=[457162]:bat[:oid], X_621=[457162]:bat[:oid], X_570=[457162]:bat[:oid], X_143=[25]:bat[:str]); #[89] (0) ALGprojectionpath 724 <- 6 |
:       : 81 621 570 143                                                                                                                                                                               :
|  1098 | C_755=[18044]:bat[:oid] := algebra.thetaselect(X_723=[457973]:bat[:str], "GERMANY":str, "==":str); #[49] (0) ALGthetaselect1 755 <- 723 6 233                                                |
|   171 | C_759=[714]:bat[:oid] := algebra.thetaselect(X_739=[457973]:bat[:str], C_755=[18044]:bat[:oid], "FRANCE":str, "==":str); #[50] (0) ALGthetaselect2 759 <- 739 755 4 233                      |
|    12 | C_763=[1453]:bat[:oid] := bat.mergecand(C_751=[739]:bat[:oid], C_759=[714]:bat[:oid]); #[51] (0) BKCmergecand 763 <- 751 759                                                                 |
|  1147 | C_748=[18321]:bat[:oid] := algebra.thetaselect(X_724=[457162]:bat[:str], "FRANCE":str, "==":str); #[90] (0) ALGthetaselect1 748 <- 724 4 233                                                 |
|   482 | X_779=[1453]:bat[:date] := algebra.projectionpath(C_763=[1453]:bat[:oid], X_679=[457973]:bat[:oid], X_619=[457973]:bat[:oid], X_567=[457973]:bat[:oid], X_523=[457973]:bat[:oid], X_487=[457 |
:       : 973]:bat[:oid], C_463=[457973]:bat[:oid], X_429=[1500303]:bat[:date]); #[52] (0) ALGprojectionpath 779 <- 763 679 619 567 523 487 463 429                                                    :
|     3 | language.pass(X_429=[1500303]:bat[:date]); #[241] (0) MALpass 982 <- 429                                                                                                                     |
|   263 | C_752=[773]:bat[:oid] := algebra.thetaselect(X_740=[457162]:bat[:str], C_748=[18321]:bat[:oid], "GERMANY":str, "==":str); #[91] (0) ALGthetaselect2 752 <- 740 748 6 233                     |
|    24 | X_827=[1453]:bat[:int] := batmtime.year(X_779=[1453]:bat[:date]); #[53] (0) MTIMEdate_extract_year_bulk 827 <- 779                                                                           |
|  2023 | (X_685=[455822]:bat[:oid], X_686=[455822]:bat[:oid]) := algebra.join(X_678=[455822]:bat[:oid], C_129=[25]:bat[:oid], nil:BAT, nil:BAT, false:bit, nil:lng); #[174] (0) ALGjoin 685 686 <- 67 |
:       : 8 129 86 86 63 88                                                                                                                                                                            :
|   254 | X_819=[1453]:bat[:str] := algebra.projection(C_763=[1453]:bat[:oid], X_739=[457973]:bat[:str]); #[54] (0) ALGprojection 819 <- 763 739                                                       |
|     1 | language.pass(X_739=[457973]:bat[:str]); #[242] (0) MALpass 983 <- 739                                                                                                                       |
|     2 | language.pass(C_129=[25]:bat[:oid]); #[301] (0) MALpass 1042 <- 129                                                                                                                          |
|   432 | X_775=[1453]:bat[:lng] := algebra.projectionpath(C_763=[1453]:bat[:oid], X_679=[457973]:bat[:oid], X_619=[457973]:bat[:oid], X_567=[457973]:bat[:oid], X_523=[457973]:bat[:oid], X_487=[4579 |
:       : 73]:bat[:oid], C_463=[457973]:bat[:oid], X_417=[1500303]:bat[:lng]); #[66] (0) ALGprojectionpath 775 <- 763 679 619 567 523 487 463 417                                                      :
|    11 | X_831=[1453]:bat[:lng] := batcalc.-(100:lng, X_775=[1453]:bat[:lng], nil:BAT); #[67] (0) CMDbatSUBsignal 831 <- 362 775 86                                                                   |
|   170 | X_803=[1453]:bat[:str] := algebra.projection(C_763=[1453]:bat[:oid], X_723=[457973]:bat[:str]); #[55] (0) ALGprojection 803 <- 763 723                                                       |
|     2 | language.pass(X_723=[457973]:bat[:str]); #[243] (0) MALpass 984 <- 723                                                                                                                       |
|    20 | (X_842=[1453]:bat[:oid], C_843=[2]:bat[:oid]) := group.group(X_803=[1453]:bat[:str]); #[56] (0) GRPgroup3 842 843 <- 803                                                                     |
|    31 | (X_861=[1453]:bat[:oid], C_862=[2]:bat[:oid]) := group.subgroup(X_819=[1453]:bat[:str], X_842=[1453]:bat[:oid]); #[57] (0) GRPsubgroup6 861 862 <- 819 842                                   |
|    36 | (X_888=[1453]:bat[:oid], C_889=[4]:bat[:oid]) := group.subgroupdone(X_827=[1453]:bat[:int], X_861=[1453]:bat[:oid]); #[58] (0) GRPsubgroup6 888 889 <- 827 861                               |
|     3 | X_891=[4]:bat[:int] := algebra.projection(C_889=[4]:bat[:oid], X_827=[1453]:bat[:int]); #[59] (0) ALGprojection 891 <- 889 827                                                               |
|    39 | X_953=[4]:bat[:int] := mat.packIncrement(X_891=[4]:bat[:int], 4:int); #[202] (0) MATpackIncrement 953 <- 891 954                                                                             |
|     5 | X_904=[4]:bat[:oid] := algebra.projection(C_889=[4]:bat[:oid], X_861=[1453]:bat[:oid]); #[60] (0) ALGprojection 904 <- 889 861                                                               |
|     1 | language.pass(X_861=[1453]:bat[:oid]); #[245] (0) MALpass 986 <- 861                                                                                                                         |
|     5 | X_924=[4]:bat[:str] := algebra.projection(C_889=[4]:bat[:oid], X_803=[1453]:bat[:str]); #[61] (0) ALGprojection 924 <- 889 803                                                               |
|    25 | X_966=[4]:bat[:str] := mat.packIncrement(X_924=[4]:bat[:str], 4:int); #[217] (0) MATpackIncrement 966 <- 924 954                                                                             |
|     3 | X_929=[4]:bat[:str] := algebra.projection(C_889=[4]:bat[:oid], X_819=[1453]:bat[:str]); #[62] (0) ALGprojection 929 <- 889 819                                                               |
|    30 | X_970=[4]:bat[:str] := mat.packIncrement(X_929=[4]:bat[:str], 4:int); #[222] (0) MATpackIncrement 970 <- 929 954                                                                             |
|   546 | X_742=[455822]:bat[:str] := algebra.projection(X_686=[455822]:bat[:oid], X_143=[25]:bat[:str]); #[175] (0) ALGprojection 742 <- 686 143                                                      |
|     7 | X_913=[4]:bat[:str] := algebra.projectionpath(X_904=[4]:bat[:oid], C_862=[2]:bat[:oid], X_842=[1453]:bat[:oid], C_843=[2]:bat[:oid], X_803=[1453]:bat[:str]); #[71] (0) ALGprojectionpath 91 |
:       : 3 <- 904 862 842 843 803                                                                                                                                                                     :
|     1 | language.pass(X_842=[1453]:bat[:oid]); #[257] (0) MALpass 998 <- 842                                                                                                                         |
|     5 | X_905=[4]:bat[:str] := algebra.projectionpath(X_904=[4]:bat[:oid], C_862=[2]:bat[:oid], X_819=[1453]:bat[:str]); #[70] (0) ALGprojectionpath 905 <- 904 862 819                              |
|     1 | language.pass(X_904=[4]:bat[:oid]); #[255] (0) MALpass 996 <- 904                                                                                                                            |
|     4 | X_962=[4]:bat[:str] := mat.packIncrement(X_913=[4]:bat[:str], 4:int); #[210] (0) MATpackIncrement 962 <- 913 954                                                                             |
|     3 | X_958=[4]:bat[:str] := mat.packIncrement(X_905=[4]:bat[:str], 4:int); #[206] (0) MATpackIncrement 958 <- 905 954                                                                             |
|     1 | language.pass(X_819=[1453]:bat[:str]); #[254] (0) MALpass 995 <- 819                                                                                                                         |
|     0 | language.pass(C_862=[2]:bat[:oid]); #[256] (0) MALpass 997 <- 862                                                                                                                            |
|     1 | language.pass(X_803=[1453]:bat[:str]); #[258] (0) MALpass 999 <- 803                                                                                                                         |
|     1 | language.pass(X_827=[1453]:bat[:int]); #[244] (0) MALpass 985 <- 827                                                                                                                         |
|   793 | X_771=[1453]:bat[:lng] := algebra.projectionpath(C_763=[1453]:bat[:oid], X_679=[457973]:bat[:oid], X_619=[457973]:bat[:oid], X_567=[457973]:bat[:oid], X_523=[457973]:bat[:oid], X_487=[4579 |
:       : 73]:bat[:oid], C_463=[457973]:bat[:oid], X_402=[1500303]:bat[:lng]); #[64] (0) ALGprojectionpath 771 <- 763 679 619 567 523 487 463 402                                                      :
|     3 | language.pass(C_763=[1453]:bat[:oid]); #[246] (0) MALpass 987 <- 763                                                                                                                         |
|    10 | X_835=[1453]:bat[:hge] := batcalc.*(X_771=[1453]:bat[:lng], X_831=[1453]:bat[:lng], nil:BAT, nil:BAT); #[68] (0) CMDbatMULenlarge 835 <- 771 831 86 86                                       |
|    13 | X_939=[4]:bat[:hge] := aggr.subsum(X_835=[1453]:bat[:hge], X_888=[1453]:bat[:oid], C_889=[4]:bat[:oid], true:bit, true:bit); #[69] (0) AGGRsubsum_hge 939 <- 835 888 889 61 61               |
|     1 | language.pass(C_889=[4]:bat[:oid]); #[253] (0) MALpass 994 <- 889                                                                                                                            |
|     1 | language.pass(X_679=[457973]:bat[:oid]); #[247] (0) MALpass 988 <- 679                                                                                                                       |
|     3 | X_974=[4]:bat[:hge] := mat.packIncrement(X_939=[4]:bat[:hge], 4:int); #[228] (0) MATpackIncrement 974 <- 939 954                                                                             |
|     1 | language.pass(X_619=[457973]:bat[:oid]); #[248] (0) MALpass 989 <- 619                                                                                                                       |
|     1 | language.pass(X_567=[457973]:bat[:oid]); #[249] (0) MALpass 990 <- 567                                                                                                                       |
|     1 | language.pass(X_523=[457973]:bat[:oid]); #[250] (0) MALpass 991 <- 523                                                                                                                       |
|     1 | language.pass(X_487=[457973]:bat[:oid]); #[251] (0) MALpass 992 <- 487                                                                                                                       |
|     1 | language.pass(C_463=[457973]:bat[:oid]); #[252] (0) MALpass 993 <- 463                                                                                                                       |
|  1141 | C_756=[18165]:bat[:oid] := algebra.thetaselect(X_724=[457162]:bat[:str], "GERMANY":str, "==":str); #[92] (0) ALGthetaselect1 756 <- 724 6 233                                                |
|    98 | C_760=[764]:bat[:oid] := algebra.thetaselect(X_740=[457162]:bat[:str], C_756=[18165]:bat[:oid], "FRANCE":str, "==":str); #[93] (0) ALGthetaselect2 760 <- 740 756 4 233                      |
|    12 | C_764=[1537]:bat[:oid] := bat.mergecand(C_752=[773]:bat[:oid], C_760=[764]:bat[:oid]); #[94] (0) BKCmergecand 764 <- 752 760                                                                 |
|   188 | X_820=[1537]:bat[:str] := algebra.projection(C_764=[1537]:bat[:oid], X_740=[457162]:bat[:str]); #[97] (0) ALGprojection 820 <- 764 740                                                       |
|     2 | language.pass(X_740=[457162]:bat[:str]); #[260] (0) MALpass 1001 <- 740                                                                                                                      |
|   291 | X_780=[1537]:bat[:date] := algebra.projectionpath(C_764=[1537]:bat[:oid], X_681=[457162]:bat[:oid], X_621=[457162]:bat[:oid], X_569=[457162]:bat[:oid], X_525=[457162]:bat[:oid], X_489=[457 |
:       : 162]:bat[:oid], C_464=[457162]:bat[:oid], X_430=[1500303]:bat[:date]); #[95] (0) ALGprojectionpath 780 <- 764 681 621 569 525 489 464 430                                                    :
|     2 | language.pass(X_430=[1500303]:bat[:date]); #[259] (0) MALpass 1000 <- 430                                                                                                                    |
|    23 | X_828=[1537]:bat[:int] := batmtime.year(X_780=[1537]:bat[:date]); #[96] (0) MTIMEdate_extract_year_bulk 828 <- 780                                                                           |
|   168 | X_804=[1537]:bat[:str] := algebra.projection(C_764=[1537]:bat[:oid], X_724=[457162]:bat[:str]); #[98] (0) ALGprojection 804 <- 764 724                                                       |
|     2 | language.pass(X_724=[457162]:bat[:str]); #[261] (0) MALpass 1002 <- 724                                                                                                                      |
|   213 | X_776=[1537]:bat[:lng] := algebra.projectionpath(C_764=[1537]:bat[:oid], X_681=[457162]:bat[:oid], X_621=[457162]:bat[:oid], X_569=[457162]:bat[:oid], X_525=[457162]:bat[:oid], X_489=[4571 |
:       : 62]:bat[:oid], C_464=[457162]:bat[:oid], X_418=[1500303]:bat[:lng]); #[109] (0) ALGprojectionpath 776 <- 764 681 621 569 525 489 464 418                                                     :
|    11 | X_832=[1537]:bat[:lng] := batcalc.-(100:lng, X_776=[1537]:bat[:lng], nil:BAT); #[110] (0) CMDbatSUBsignal 832 <- 362 776 86                                                                  |
|    16 | (X_846=[1537]:bat[:oid], C_847=[2]:bat[:oid]) := group.group(X_804=[1537]:bat[:str]); #[99] (0) GRPgroup3 846 847 <- 804                                                                     |
|    28 | (X_865=[1537]:bat[:oid], C_866=[2]:bat[:oid]) := group.subgroup(X_820=[1537]:bat[:str], X_846=[1537]:bat[:oid]); #[100] (0) GRPsubgroup6 865 866 <- 820 846                                  |
|    36 | (X_892=[1537]:bat[:oid], C_893=[4]:bat[:oid]) := group.subgroupdone(X_828=[1537]:bat[:int], X_865=[1537]:bat[:oid]); #[101] (0) GRPsubgroup6 892 893 <- 828 865                              |
|     3 | X_895=[4]:bat[:int] := algebra.projection(C_893=[4]:bat[:oid], X_828=[1537]:bat[:int]); #[102] (0) ALGprojection 895 <- 893 828                                                              |
|     2 | X_955=[8]:bat[:int] := mat.packIncrement(X_953=[8]:bat[:int], X_895=[4]:bat[:int]); #[203] (0) MATpackIncrement 955 <- 953 895                                                               |
|     4 | X_930=[4]:bat[:str] := algebra.projection(C_893=[4]:bat[:oid], X_820=[1537]:bat[:str]); #[105] (0) ALGprojection 930 <- 893 820                                                              |
|     2 | X_971=[8]:bat[:str] := mat.packIncrement(X_970=[8]:bat[:str], X_930=[4]:bat[:str]); #[223] (0) MATpackIncrement 971 <- 970 930                                                               |
|     3 | X_925=[4]:bat[:str] := algebra.projection(C_893=[4]:bat[:oid], X_804=[1537]:bat[:str]); #[104] (0) ALGprojection 925 <- 893 804                                                              |
|     2 | X_967=[8]:bat[:str] := mat.packIncrement(X_966=[8]:bat[:str], X_925=[4]:bat[:str]); #[218] (0) MATpackIncrement 967 <- 966 925                                                               |
|     3 | X_906=[4]:bat[:oid] := algebra.projection(C_893=[4]:bat[:oid], X_865=[1537]:bat[:oid]); #[103] (0) ALGprojection 906 <- 893 865                                                              |
|     1 | language.pass(X_865=[1537]:bat[:oid]); #[263] (0) MALpass 1004 <- 865                                                                                                                        |
|     5 | X_915=[4]:bat[:str] := algebra.projectionpath(X_906=[4]:bat[:oid], C_866=[2]:bat[:oid], X_846=[1537]:bat[:oid], C_847=[2]:bat[:oid], X_804=[1537]:bat[:str]); #[114] (0) ALGprojectionpath 9 |
:       : 15 <- 906 866 846 847 804                                                                                                                                                                    :
|     1 | language.pass(X_846=[1537]:bat[:oid]); #[275] (0) MALpass 1016 <- 846                                                                                                                        |
|     3 | X_907=[4]:bat[:str] := algebra.projectionpath(X_906=[4]:bat[:oid], C_866=[2]:bat[:oid], X_820=[1537]:bat[:str]); #[113] (0) ALGprojectionpath 907 <- 906 866 820                             |
|     1 | language.pass(X_906=[4]:bat[:oid]); #[273] (0) MALpass 1014 <- 906                                                                                                                           |
|     2 | X_963=[8]:bat[:str] := mat.packIncrement(X_962=[8]:bat[:str], X_915=[4]:bat[:str]); #[211] (0) MATpackIncrement 963 <- 962 915                                                               |
|     3 | X_959=[8]:bat[:str] := mat.packIncrement(X_958=[8]:bat[:str], X_907=[4]:bat[:str]); #[207] (0) MATpackIncrement 959 <- 958 907                                                               |
|     1 | language.pass(X_820=[1537]:bat[:str]); #[272] (0) MALpass 1013 <- 820                                                                                                                        |
|     1 | language.pass(C_866=[2]:bat[:oid]); #[274] (0) MALpass 1015 <- 866                                                                                                                           |
|     1 | language.pass(X_804=[1537]:bat[:str]); #[276] (0) MALpass 1017 <- 804                                                                                                                        |
|     1 | language.pass(X_828=[1537]:bat[:int]); #[262] (0) MALpass 1003 <- 828                                                                                                                        |
|   724 | X_772=[1537]:bat[:lng] := algebra.projectionpath(C_764=[1537]:bat[:oid], X_681=[457162]:bat[:oid], X_621=[457162]:bat[:oid], X_569=[457162]:bat[:oid], X_525=[457162]:bat[:oid], X_489=[4571 |
:       : 62]:bat[:oid], C_464=[457162]:bat[:oid], X_404=[1500303]:bat[:lng]); #[107] (0) ALGprojectionpath 772 <- 764 681 621 569 525 489 464 404                                                     :
|     2 | language.pass(C_764=[1537]:bat[:oid]); #[264] (0) MALpass 1005 <- 764                                                                                                                        |
|     1 | language.pass(X_681=[457162]:bat[:oid]); #[265] (0) MALpass 1006 <- 681                                                                                                                      |
|    11 | X_836=[1537]:bat[:hge] := batcalc.*(X_772=[1537]:bat[:lng], X_832=[1537]:bat[:lng], nil:BAT, nil:BAT); #[111] (0) CMDbatMULenlarge 836 <- 772 832 86 86                                      |
|     3 | language.pass(C_464=[457162]:bat[:oid]); #[270] (0) MALpass 1011 <- 464                                                                                                                      |
|     1 | language.pass(X_489=[457162]:bat[:oid]); #[269] (0) MALpass 1010 <- 489                                                                                                                      |
|     0 | language.pass(X_525=[457162]:bat[:oid]); #[268] (0) MALpass 1009 <- 525                                                                                                                      |
|    13 | X_940=[4]:bat[:hge] := aggr.subsum(X_836=[1537]:bat[:hge], X_892=[1537]:bat[:oid], C_893=[4]:bat[:oid], true:bit, true:bit); #[112] (0) AGGRsubsum_hge 940 <- 836 892 893 61 61              |
|     1 | language.pass(X_569=[457162]:bat[:oid]); #[267] (0) MALpass 1008 <- 569                                                                                                                      |
|     1 | language.pass(C_893=[4]:bat[:oid]); #[271] (0) MALpass 1012 <- 893                                                                                                                           |
|     1 | language.pass(X_621=[457162]:bat[:oid]); #[266] (0) MALpass 1007 <- 621                                                                                                                      |
|     3 | X_975=[8]:bat[:hge] := mat.packIncrement(X_974=[8]:bat[:hge], X_940=[4]:bat[:hge]); #[229] (0) MATpackIncrement 975 <- 974 940                                                               |
| 13821 | X_725=[457493]:bat[:str] := algebra.projectionpath(X_683=[457493]:bat[:oid], X_623=[457493]:bat[:oid], X_572=[457493]:bat[:oid], X_143=[25]:bat[:str]); #[132] (0) ALGprojectionpath 725 <-  |
:       : 683 623 572 143                                                                                                                                                                              :
|  1172 | C_749=[18426]:bat[:oid] := algebra.thetaselect(X_725=[457493]:bat[:str], "FRANCE":str, "==":str); #[133] (0) ALGthetaselect1 749 <- 725 4 233                                                |
|  1102 | C_757=[18186]:bat[:oid] := algebra.thetaselect(X_725=[457493]:bat[:str], "GERMANY":str, "==":str); #[135] (0) ALGthetaselect1 757 <- 725 6 233                                               |
|   155 | C_753=[765]:bat[:oid] := algebra.thetaselect(X_741=[457493]:bat[:str], C_749=[18426]:bat[:oid], "GERMANY":str, "==":str); #[134] (0) ALGthetaselect2 753 <- 741 749 6 233                    |
|   147 | C_761=[718]:bat[:oid] := algebra.thetaselect(X_741=[457493]:bat[:str], C_757=[18186]:bat[:oid], "FRANCE":str, "==":str); #[136] (0) ALGthetaselect2 761 <- 741 757 4 233                     |
|    13 | C_765=[1483]:bat[:oid] := bat.mergecand(C_753=[765]:bat[:oid], C_761=[718]:bat[:oid]); #[137] (0) BKCmergecand 765 <- 753 761                                                                |
|   141 | X_821=[1483]:bat[:str] := algebra.projection(C_765=[1483]:bat[:oid], X_741=[457493]:bat[:str]); #[140] (0) ALGprojection 821 <- 765 741                                                      |
|     1 | language.pass(X_741=[457493]:bat[:str]); #[278] (0) MALpass 1019 <- 741                                                                                                                      |
|   322 | X_781=[1483]:bat[:date] := algebra.projectionpath(C_765=[1483]:bat[:oid], X_683=[457493]:bat[:oid], X_623=[457493]:bat[:oid], X_571=[457493]:bat[:oid], X_527=[457493]:bat[:oid], X_491=[457 |
:       : 493]:bat[:oid], C_465=[457493]:bat[:oid], X_431=[1500303]:bat[:date]); #[138] (0) ALGprojectionpath 781 <- 765 683 623 571 527 491 465 431                                                   :
|     2 | language.pass(X_431=[1500303]:bat[:date]); #[277] (0) MALpass 1018 <- 431                                                                                                                    |
|   206 | X_777=[1483]:bat[:lng] := algebra.projectionpath(C_765=[1483]:bat[:oid], X_683=[457493]:bat[:oid], X_623=[457493]:bat[:oid], X_571=[457493]:bat[:oid], X_527=[457493]:bat[:oid], X_491=[4574 |
:       : 93]:bat[:oid], C_465=[457493]:bat[:oid], X_419=[1500303]:bat[:lng]); #[152] (0) ALGprojectionpath 777 <- 765 683 623 571 527 491 465 419                                                     :
|    11 | X_833=[1483]:bat[:lng] := batcalc.-(100:lng, X_777=[1483]:bat[:lng], nil:BAT); #[153] (0) CMDbatSUBsignal 833 <- 362 777 86                                                                  |
|   134 | X_805=[1483]:bat[:str] := algebra.projection(C_765=[1483]:bat[:oid], X_725=[457493]:bat[:str]); #[141] (0) ALGprojection 805 <- 765 725                                                      |
|     1 | language.pass(X_725=[457493]:bat[:str]); #[279] (0) MALpass 1020 <- 725                                                                                                                      |
|    23 | X_829=[1483]:bat[:int] := batmtime.year(X_781=[1483]:bat[:date]); #[139] (0) MTIMEdate_extract_year_bulk 829 <- 781                                                                          |
|    16 | (X_850=[1483]:bat[:oid], C_851=[2]:bat[:oid]) := group.group(X_805=[1483]:bat[:str]); #[142] (0) GRPgroup3 850 851 <- 805                                                                    |
|    30 | (X_869=[1483]:bat[:oid], C_870=[2]:bat[:oid]) := group.subgroup(X_821=[1483]:bat[:str], X_850=[1483]:bat[:oid]); #[143] (0) GRPsubgroup6 869 870 <- 821 850                                  |
|    34 | (X_896=[1483]:bat[:oid], C_897=[4]:bat[:oid]) := group.subgroupdone(X_829=[1483]:bat[:int], X_869=[1483]:bat[:oid]); #[144] (0) GRPsubgroup6 896 897 <- 829 869                              |
|     3 | X_899=[4]:bat[:int] := algebra.projection(C_897=[4]:bat[:oid], X_829=[1483]:bat[:int]); #[145] (0) ALGprojection 899 <- 897 829                                                              |
|     3 | X_956=[12]:bat[:int] := mat.packIncrement(X_955=[12]:bat[:int], X_899=[4]:bat[:int]); #[204] (0) MATpackIncrement 956 <- 955 899                                                             |
|    17 | X_908=[4]:bat[:oid] := algebra.projection(C_897=[4]:bat[:oid], X_869=[1483]:bat[:oid]); #[146] (0) ALGprojection 908 <- 897 869                                                              |
|     1 | language.pass(X_869=[1483]:bat[:oid]); #[281] (0) MALpass 1022 <- 869                                                                                                                        |
|     4 | X_926=[4]:bat[:str] := algebra.projection(C_897=[4]:bat[:oid], X_805=[1483]:bat[:str]); #[147] (0) ALGprojection 926 <- 897 805                                                              |
|    10 | X_917=[4]:bat[:str] := algebra.projectionpath(X_908=[4]:bat[:oid], C_870=[2]:bat[:oid], X_850=[1483]:bat[:oid], C_851=[2]:bat[:oid], X_805=[1483]:bat[:str]); #[157] (0) ALGprojectionpath 9 |
:       : 17 <- 908 870 850 851 805                                                                                                                                                                    :
|     3 | X_968=[12]:bat[:str] := mat.packIncrement(X_967=[12]:bat[:str], X_926=[4]:bat[:str]); #[219] (0) MATpackIncrement 968 <- 967 926                                                             |
|     2 | language.pass(X_850=[1483]:bat[:oid]); #[293] (0) MALpass 1034 <- 850                                                                                                                        |
|     3 | X_931=[4]:bat[:str] := algebra.projection(C_897=[4]:bat[:oid], X_821=[1483]:bat[:str]); #[148] (0) ALGprojection 931 <- 897 821                                                              |
|     2 | X_972=[12]:bat[:str] := mat.packIncrement(X_971=[12]:bat[:str], X_931=[4]:bat[:str]); #[224] (0) MATpackIncrement 972 <- 971 931                                                             |
|     4 | X_909=[4]:bat[:str] := algebra.projectionpath(X_908=[4]:bat[:oid], C_870=[2]:bat[:oid], X_821=[1483]:bat[:str]); #[156] (0) ALGprojectionpath 909 <- 908 870 821                             |
|     1 | language.pass(X_908=[4]:bat[:oid]); #[291] (0) MALpass 1032 <- 908                                                                                                                           |
|     3 | X_964=[12]:bat[:str] := mat.packIncrement(X_963=[12]:bat[:str], X_917=[4]:bat[:str]); #[212] (0) MATpackIncrement 964 <- 963 917                                                             |
|     1 | X_960=[12]:bat[:str] := mat.packIncrement(X_959=[12]:bat[:str], X_909=[4]:bat[:str]); #[208] (0) MATpackIncrement 960 <- 959 909                                                             |
|     3 | language.pass(X_829=[1483]:bat[:int]); #[280] (0) MALpass 1021 <- 829                                                                                                                        |
|     1 | language.pass(X_821=[1483]:bat[:str]); #[290] (0) MALpass 1031 <- 821                                                                                                                        |
|     1 | language.pass(C_870=[2]:bat[:oid]); #[292] (0) MALpass 1033 <- 870                                                                                                                           |
|     1 | language.pass(X_805=[1483]:bat[:str]); #[294] (0) MALpass 1035 <- 805                                                                                                                        |
|   793 | X_773=[1483]:bat[:lng] := algebra.projectionpath(C_765=[1483]:bat[:oid], X_683=[457493]:bat[:oid], X_623=[457493]:bat[:oid], X_571=[457493]:bat[:oid], X_527=[457493]:bat[:oid], X_491=[4574 |
:       : 93]:bat[:oid], C_465=[457493]:bat[:oid], X_406=[1500303]:bat[:lng]); #[150] (0) ALGprojectionpath 773 <- 765 683 623 571 527 491 465 406                                                     :
|     3 | language.pass(C_765=[1483]:bat[:oid]); #[282] (0) MALpass 1023 <- 765                                                                                                                        |
|    25 | X_837=[1483]:bat[:hge] := batcalc.*(X_773=[1483]:bat[:lng], X_833=[1483]:bat[:lng], nil:BAT, nil:BAT); #[154] (0) CMDbatMULenlarge 837 <- 773 833 86 86                                      |
|     3 | language.pass(X_683=[457493]:bat[:oid]); #[283] (0) MALpass 1024 <- 683                                                                                                                      |
|     1 | language.pass(X_623=[457493]:bat[:oid]); #[284] (0) MALpass 1025 <- 623                                                                                                                      |
|     3 | language.pass(C_465=[457493]:bat[:oid]); #[288] (0) MALpass 1029 <- 465                                                                                                                      |
|    28 | X_941=[4]:bat[:hge] := aggr.subsum(X_837=[1483]:bat[:hge], X_896=[1483]:bat[:oid], C_897=[4]:bat[:oid], true:bit, true:bit); #[155] (0) AGGRsubsum_hge 941 <- 837 896 897 61 61              |
|     1 | language.pass(X_571=[457493]:bat[:oid]); #[285] (0) MALpass 1026 <- 571                                                                                                                      |
|     1 | language.pass(X_491=[457493]:bat[:oid]); #[287] (0) MALpass 1028 <- 491                                                                                                                      |
|     0 | language.pass(X_527=[457493]:bat[:oid]); #[286] (0) MALpass 1027 <- 527                                                                                                                      |
|     1 | language.pass(C_897=[4]:bat[:oid]); #[289] (0) MALpass 1030 <- 897                                                                                                                           |
|     3 | X_976=[12]:bat[:hge] := mat.packIncrement(X_975=[12]:bat[:hge], X_941=[4]:bat[:hge]); #[230] (0) MATpackIncrement 976 <- 975 941                                                             |
| 14298 | X_726=[455822]:bat[:str] := algebra.projectionpath(X_685=[455822]:bat[:oid], X_625=[455822]:bat[:oid], X_574=[455822]:bat[:oid], X_143=[25]:bat[:str]); #[176] (0) ALGprojectionpath 726 <-  |
:       : 685 625 574 143                                                                                                                                                                              :
|     2 | language.pass(X_143=[25]:bat[:str]); #[302] (0) MALpass 1043 <- 143                                                                                                                          |
|  1198 | C_758=[18089]:bat[:oid] := algebra.thetaselect(X_726=[455822]:bat[:str], "GERMANY":str, "==":str); #[179] (0) ALGthetaselect1 758 <- 726 6 233                                               |
|  1144 | C_750=[18207]:bat[:oid] := algebra.thetaselect(X_726=[455822]:bat[:str], "FRANCE":str, "==":str); #[177] (0) ALGthetaselect1 750 <- 726 4 233                                                |
|   134 | C_762=[714]:bat[:oid] := algebra.thetaselect(X_742=[455822]:bat[:str], C_758=[18089]:bat[:oid], "FRANCE":str, "==":str); #[180] (0) ALGthetaselect2 762 <- 742 758 4 233                     |
|   127 | C_754=[737]:bat[:oid] := algebra.thetaselect(X_742=[455822]:bat[:str], C_750=[18207]:bat[:oid], "GERMANY":str, "==":str); #[178] (0) ALGthetaselect2 754 <- 742 750 6 233                    |
|    12 | C_766=[1451]:bat[:oid] := bat.mergecand(C_754=[737]:bat[:oid], C_762=[714]:bat[:oid]); #[181] (0) BKCmergecand 766 <- 754 762                                                                |
|   153 | X_822=[1451]:bat[:str] := algebra.projection(C_766=[1451]:bat[:oid], X_742=[455822]:bat[:str]); #[184] (0) ALGprojection 822 <- 766 742                                                      |
|     2 | language.pass(X_742=[455822]:bat[:str]); #[304] (0) MALpass 1045 <- 742                                                                                                                      |
|   370 | X_782=[1451]:bat[:date] := algebra.projectionpath(C_766=[1451]:bat[:oid], X_685=[455822]:bat[:oid], X_625=[455822]:bat[:oid], X_573=[455822]:bat[:oid], X_529=[455822]:bat[:oid], X_493=[455 |
:       : 822]:bat[:oid], C_466=[455822]:bat[:oid], X_432=[1500306]:bat[:date]); #[182] (0) ALGprojectionpath 782 <- 766 685 625 573 529 493 466 432                                                   :
|     2 | language.pass(X_432=[1500306]:bat[:date]); #[303] (0) MALpass 1044 <- 432                                                                                                                    |
|   343 | X_778=[1451]:bat[:lng] := algebra.projectionpath(C_766=[1451]:bat[:oid], X_685=[455822]:bat[:oid], X_625=[455822]:bat[:oid], X_573=[455822]:bat[:oid], X_529=[455822]:bat[:oid], X_493=[4558 |
:       : 22]:bat[:oid], C_466=[455822]:bat[:oid], X_420=[1500306]:bat[:lng]); #[196] (0) ALGprojectionpath 778 <- 766 685 625 573 529 493 466 420                                                     :
|   134 | X_806=[1451]:bat[:str] := algebra.projection(C_766=[1451]:bat[:oid], X_726=[455822]:bat[:str]); #[185] (0) ALGprojection 806 <- 766 726                                                      |
|     1 | language.pass(X_726=[455822]:bat[:str]); #[305] (0) MALpass 1046 <- 726                                                                                                                      |
|    25 | X_830=[1451]:bat[:int] := batmtime.year(X_782=[1451]:bat[:date]); #[183] (0) MTIMEdate_extract_year_bulk 830 <- 782                                                                          |
|    36 | X_834=[1451]:bat[:lng] := batcalc.-(100:lng, X_778=[1451]:bat[:lng], nil:BAT); #[197] (0) CMDbatSUBsignal 834 <- 362 778 86                                                                  |
|    17 | (X_854=[1451]:bat[:oid], C_855=[2]:bat[:oid]) := group.group(X_806=[1451]:bat[:str]); #[186] (0) GRPgroup3 854 855 <- 806                                                                    |
|    27 | (X_873=[1451]:bat[:oid], C_874=[2]:bat[:oid]) := group.subgroup(X_822=[1451]:bat[:str], X_854=[1451]:bat[:oid]); #[187] (0) GRPsubgroup6 873 874 <- 822 854                                  |
|    47 | (X_900=[1451]:bat[:oid], C_901=[4]:bat[:oid]) := group.subgroupdone(X_830=[1451]:bat[:int], X_873=[1451]:bat[:oid]); #[188] (0) GRPsubgroup6 900 901 <- 830 873                              |
|     4 | X_903=[4]:bat[:int] := algebra.projection(C_901=[4]:bat[:oid], X_830=[1451]:bat[:int]); #[189] (0) ALGprojection 903 <- 901 830                                                              |
|     3 | X_260=[16]:bat[:int] := mat.packIncrement(X_956=[16]:bat[:int], X_903=[4]:bat[:int]); #[205] (0) MATpackIncrement 260 <- 956 903                                                             |
|     8 | X_927=[4]:bat[:str] := algebra.projection(C_901=[4]:bat[:oid], X_806=[1451]:bat[:str]); #[191] (0) ALGprojection 927 <- 901 806                                                              |
|    27 | X_932=[4]:bat[:str] := algebra.projection(C_901=[4]:bat[:oid], X_822=[1451]:bat[:str]); #[192] (0) ALGprojection 932 <- 901 822                                                              |
|     4 | X_923=[16]:bat[:str] := mat.packIncrement(X_968=[16]:bat[:str], X_927=[4]:bat[:str]); #[220] (0) MATpackIncrement 923 <- 968 927                                                             |
|     9 | X_910=[4]:bat[:oid] := algebra.projection(C_901=[4]:bat[:oid], X_873=[1451]:bat[:oid]); #[190] (0) ALGprojection 910 <- 901 873                                                              |
|     1 | language.pass(X_873=[1451]:bat[:oid]); #[307] (0) MALpass 1048 <- 873                                                                                                                        |
|     1 | language.pass(X_830=[1451]:bat[:int]); #[306] (0) MALpass 1047 <- 830                                                                                                                        |
|     5 | X_928=[16]:bat[:str] := mat.packIncrement(X_972=[16]:bat[:str], X_932=[4]:bat[:str]); #[225] (0) MATpackIncrement 928 <- 972 932                                                             |
|     9 | X_919=[4]:bat[:str] := algebra.projectionpath(X_910=[4]:bat[:oid], C_874=[2]:bat[:oid], X_854=[1451]:bat[:oid], C_855=[2]:bat[:oid], X_806=[1451]:bat[:str]); #[201] (0) ALGprojectionpath 9 |
:       : 19 <- 910 874 854 855 806                                                                                                                                                                    :
|     8 | X_911=[4]:bat[:str] := algebra.projectionpath(X_910=[4]:bat[:oid], C_874=[2]:bat[:oid], X_822=[1451]:bat[:str]); #[200] (0) ALGprojectionpath 911 <- 910 874 822                             |
|     1 | language.pass(X_854=[1451]:bat[:oid]); #[319] (0) MALpass 1060 <- 854                                                                                                                        |
|     1 | language.pass(X_822=[1451]:bat[:str]); #[316] (0) MALpass 1057 <- 822                                                                                                                        |
|     2 | language.pass(X_806=[1451]:bat[:str]); #[320] (0) MALpass 1061 <- 806                                                                                                                        |
|     4 | X_258=[16]:bat[:str] := mat.packIncrement(X_960=[16]:bat[:str], X_911=[4]:bat[:str]); #[209] (0) MATpackIncrement 258 <- 960 911                                                             |
|     1 | language.pass(C_874=[2]:bat[:oid]); #[318] (0) MALpass 1059 <- 874                                                                                                                           |
|     5 | X_254=[16]:bat[:str] := mat.packIncrement(X_964=[16]:bat[:str], X_919=[4]:bat[:str]); #[213] (0) MATpackIncrement 254 <- 964 919                                                             |
|     1 | language.pass(X_910=[4]:bat[:oid]); #[317] (0) MALpass 1058 <- 910                                                                                                                           |
|     8 | (X_272=[16]:bat[:oid], C_273=[2]:bat[:oid]) := group.group(X_254=[16]:bat[:str]); #[214] (1) GRPgroup3 272 273 <- 254                                                                        |
|    20 | (X_275=[16]:bat[:oid], C_276=[2]:bat[:oid]) := group.subgroup(X_258=[16]:bat[:str], X_272=[16]:bat[:oid]); #[215] (1) GRPsubgroup6 275 276 <- 258 272                                        |
|    33 | (X_278=[16]:bat[:oid], C_279=[4]:bat[:oid]) := group.subgroupdone(X_260=[16]:bat[:int], X_275=[16]:bat[:oid]); #[216] (0) GRPsubgroup6 278 279 <- 260 275                                    |
|     5 | X_281=[4]:bat[:str] := algebra.projection(C_279=[4]:bat[:oid], X_923=[16]:bat[:str]); #[221] (0) ALGprojection 281 <- 279 923                                                                |
|  1117 | X_774=[1451]:bat[:lng] := algebra.projectionpath(C_766=[1451]:bat[:oid], X_685=[455822]:bat[:oid], X_625=[455822]:bat[:oid], X_573=[455822]:bat[:oid], X_529=[455822]:bat[:oid], X_493=[4558 |
:       : 22]:bat[:oid], C_466=[455822]:bat[:oid], X_408=[1500306]:bat[:lng]); #[194] (0) ALGprojectionpath 774 <- 766 685 625 573 529 493 466 408                                                     :
|    12 | (X_287=[4]:bat[:str], X_288=[4]:bat[:oid], X_289=[4]:bat[:oid]) := algebra.sort(X_281=[4]:bat[:str], false:bit, false:bit, false:bit); #[233] (0) ALGsort13 287 288 289 <- 281 63 63 63      |
|    22 | X_283=[4]:bat[:int] := algebra.projection(C_279=[4]:bat[:oid], X_260=[16]:bat[:int]); #[227] (0) ALGprojection 283 <- 279 260                                                                |
|    22 | X_282=[4]:bat[:str] := algebra.projection(C_279=[4]:bat[:oid], X_928=[16]:bat[:str]); #[226] (0) ALGprojection 282 <- 279 928                                                                |
|     1 | language.pass(X_260=[16]:bat[:int]); #[321] (0) MALpass 1062 <- 260                                                                                                                          |
|    15 | (X_292=[4]:bat[:str], X_293=[4]:bat[:oid], X_294=[4]:bat[:oid]) := algebra.sort(X_282=[4]:bat[:str], X_288=[4]:bat[:oid], X_289=[4]:bat[:oid], false:bit, false:bit, false:bit); #[234] (0)  |
:       : ALGsort33 292 293 294 <- 282 288 289 63 63 63                                                                                                                                                :
|    25 | (X_295=[4]:bat[:int], X_296=[4]:bat[:oid]) := algebra.sort(X_283=[4]:bat[:int], X_293=[4]:bat[:oid], X_294=[4]:bat[:oid], false:bit, false:bit, false:bit); #[235] (0) ALGsort32 295 296 <-  |
:       : 283 293 294 63 63 63                                                                                                                                                                         :
|     4 | X_298=[4]:bat[:str] := algebra.projection(X_296=[4]:bat[:oid], X_281=[4]:bat[:str]); #[236] (0) ALGprojection 298 <- 296 281                                                                 |
|    23 | language.pass(X_281=[4]:bat[:str]); #[323] (0) MALpass 1064 <- 281                                                                                                                           |
|     3 | X_300=[4]:bat[:int] := algebra.projection(X_296=[4]:bat[:oid], X_283=[4]:bat[:int]); #[238] (0) ALGprojection 300 <- 296 283                                                                 |
|     1 | language.pass(X_283=[4]:bat[:int]); #[325] (0) MALpass 1066 <- 283                                                                                                                           |
|     8 | X_299=[4]:bat[:str] := algebra.projection(X_296=[4]:bat[:oid], X_282=[4]:bat[:str]); #[237] (0) ALGprojection 299 <- 296 282                                                                 |
|     1 | language.pass(X_282=[4]:bat[:str]); #[324] (0) MALpass 1065 <- 282                                                                                                                           |
|     2 | language.pass(C_766=[1451]:bat[:oid]); #[308] (0) MALpass 1049 <- 766                                                                                                                        |
|     2 | language.pass(C_466=[455822]:bat[:oid]); #[314] (0) MALpass 1055 <- 466                                                                                                                      |
|    14 | X_838=[1451]:bat[:hge] := batcalc.*(X_774=[1451]:bat[:lng], X_834=[1451]:bat[:lng], nil:BAT, nil:BAT); #[198] (0) CMDbatMULenlarge 838 <- 774 834 86 86                                      |
|     1 | language.pass(X_493=[455822]:bat[:oid]); #[313] (0) MALpass 1054 <- 493                                                                                                                      |
|     2 | language.pass(X_685=[455822]:bat[:oid]); #[309] (0) MALpass 1050 <- 685                                                                                                                      |
|     1 | language.pass(X_529=[455822]:bat[:oid]); #[312] (0) MALpass 1053 <- 529                                                                                                                      |
|     1 | language.pass(X_625=[455822]:bat[:oid]); #[310] (0) MALpass 1051 <- 625                                                                                                                      |
|     1 | language.pass(X_573=[455822]:bat[:oid]); #[311] (0) MALpass 1052 <- 573                                                                                                                      |
|    15 | X_942=[4]:bat[:hge] := aggr.subsum(X_838=[1451]:bat[:hge], X_900=[1451]:bat[:oid], C_901=[4]:bat[:oid], true:bit, true:bit); #[199] (0) AGGRsubsum_hge 942 <- 838 900 901 61 61              |
|     1 | language.pass(C_901=[4]:bat[:oid]); #[315] (0) MALpass 1056 <- 901                                                                                                                           |
|     3 | X_938=[16]:bat[:hge] := mat.packIncrement(X_976=[16]:bat[:hge], X_942=[4]:bat[:hge]); #[231] (0) MATpackIncrement 938 <- 976 942                                                             |
|    17 | X_284=[4]:bat[:hge] := aggr.subsum(X_938=[16]:bat[:hge], X_278=[16]:bat[:oid], C_279=[4]:bat[:oid], true:bit, true:bit); #[232] (0) AGGRsubsum_hge 284 <- 938 278 279 61 61                  |
|     1 | language.pass(C_279=[4]:bat[:oid]); #[322] (0) MALpass 1063 <- 279                                                                                                                           |
|    29 | X_301=[4]:bat[:hge] := algebra.projection(X_296=[4]:bat[:oid], X_284=[4]:bat[:hge]); #[239] (0) ALGprojection 301 <- 296 284                                                                 |
|     1 | language.pass(X_296=[4]:bat[:oid]); #[326] (0) MALpass 1067 <- 296                                                                                                                           |
| 96068 | barrier X_979=false:bit := language.dataflow(); #[2] (0) MALstartDataflow 979                                                                                                                |
|    46 | sql.resultSet(X_303=[4]:bat[:str], X_304=[4]:bat[:str], X_305=[4]:bat[:str], X_306=[4]:bat[:int], X_307=[4]:bat[:int], X_298=[4]:bat[:str], X_299=[4]:bat[:str], X_300=[4]:bat[:int], X_301= |
:       : [4]:bat[:hge]); #[328] (0) mvc_table_result_wrap 302 <- 303 304 305 306 307 298 299 300 301                                                                                                  :
+-------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
327 tuples
