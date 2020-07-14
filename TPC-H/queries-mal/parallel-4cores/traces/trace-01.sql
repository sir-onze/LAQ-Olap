operation successful
+------------+------------+------------------------------------------+------------------------------------------+------------------------------------------+------------------------------------------+
| l_returnfl | l_linestat | sum_qty                                  | sum_base_price                           | sum_disc_price                           | sum_charge                               |>
: ag         : us         :                                          :                                          :                                          :                                          :>
+============+============+==========================================+==========================================+==========================================+==========================================+
| A          | F          |                              37734107.00 |                           56586554400.73 |                         53758257134.8700 |                       55909065222.827692 |
| N          | F          |                                991417.00 |                            1487504710.38 |                          1413082168.0541 |                        1469649223.194375 |
| N          | O          |                              74476040.00 |                          111701729697.74 |                        106118230307.6056 |                      110367043872.497010 |
| R          | F          |                              37719753.00 |                           56568041380.90 |                         53741292684.6040 |                       55889619119.831932 |
+------------+------------+------------------------------------------+------------------------------------------+------------------------------------------+------------------------------------------+
4 tuples !4 columns dropped!
note: to disable dropping columns and/or truncating fields use \w-1
+--------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| usec   | statement                                                                                                                                                                                   |
+========+=============================================================================================================================================================================================+
|      3 | X_9=0@0:void := querylog.define("trace select\n l_returnflag,\n l_linestatus,\n sum(l_quantity) as sum_qty,\n sum(l_extendedprice) as sum_base_price,\n sum(l_extendedprice * (1 - l_discou |
:        : nt)) as sum_disc_price,\n sum(l_extendedprice * (1 - l_discount) * (1 + l_tax)) as sum_charge,\n avg(l_quantity) as avg_qty,\n avg(l_extendedprice) as avg_price,\n avg(l_discount) as avg_ :
:        : disc,\n count(*) as count_order\nfrom\n lineitem\nwhere\n l_shipdate <= date \\'1998-12-01\\' - interval \\'90\\' day (3)\ngroup by\n l_returnflag,\n l_linestatus\norder by\n l_returnflag :
:        : ,\n l_linestatus;":str, "default_pipe":str, 97:int); #[1] (0) QLOGdefineNaive 9 <- 10 11 167                                                                                                :
|     34 | X_139=[10]:bat[:str] := bat.pack("l_returnflag":str, "l_linestatus":str, "sum_qty":str, "sum_base_price":str, "sum_disc_price":str, "sum_charge":str, "avg_qty":str, "avg_price":str, "avg_ |
:        : disc":str, "count_order":str); #[4] (0) MATpackValues 139 <- 49 55 150 154 155 157 159 162 163 164                                                                                          :
|      1 | X_12=0:int := sql.mvc(); #[8] (0) SQLmvc 12                                                                                                                                                 |
|     25 | X_316=[1500303]:bat[:date] := sql.bind(X_12=0:int, "sys":str, "lineitem":str, "l_shipdate":str, 0:int, 0:int, 4:int); #[9] (0) mvc_bind_wrap 316 <- 12 14 15 61 18 18 156                   |
|     33 | X_142=[10]:bat[:int] := bat.pack(0:int, 0:int, 2:int, 2:int, 4:int, 6:int, 0:int, 0:int, 0:int, 0:int); #[7] (0) MATpackValues 142 <- 18 18 23 23 156 158 18 18 18 18                       |
|      5 | X_141=[10]:bat[:int] := bat.pack(1:int, 1:int, 38:int, 38:int, 38:int, 38:int, 53:int, 53:int, 53:int, 64:int); #[6] (0) MATpackValues 141 <- 20 20 152 152 152 152 161 161 161 166         |
|      8 | X_140=[10]:bat[:str] := bat.pack("char":str, "char":str, "decimal":str, "decimal":str, "decimal":str, "decimal":str, "double":str, "double":str, "double":str, "bigint":str); #[5] (0) MATp |
:        : ackValues 140 <- 145 145 151 151 151 151 160 160 160 165                                                                                                                                    :
|      3 | C_213=[1500303]:bat[:oid] := sql.tid(X_12=0:int, "sys":str, "lineitem":str, 0:int, 4:int); #[10] (0) SQLtid 213 <- 12 14 15 18 156                                                          |
|     39 | X_138=[10]:bat[:str] := bat.pack("sys.lineitem":str, "sys.lineitem":str, "sys.":str, "sys.":str, "sys.":str, "sys.":str, "sys.":str, "sys.":str, "sys.":str, "sys.":str); #[3] (0) MATpackV |
:        : alues 138 <- 143 143 149 149 149 149 149 149 149 149                                                                                                                                        :
|      7 | X_264=[1500306]:bat[:lng] := sql.bind(X_12=0:int, "sys":str, "lineitem":str, "l_discount":str, 0:int, 3:int, 4:int); #[132] (0) mvc_bind_wrap 264 <- 12 14 15 37 18 218 156                 |
|      7 | X_235=[1500306]:bat[:lng] := sql.bind(X_12=0:int, "sys":str, "lineitem":str, "l_quantity":str, 0:int, 3:int, 4:int); #[126] (0) mvc_bind_wrap 235 <- 12 14 15 17 18 218 156                 |
|     40 | X_252=[1500306]:bat[:lng] := sql.bind(X_12=0:int, "sys":str, "lineitem":str, "l_extendedprice":str, 0:int, 3:int, 4:int); #[129] (0) mvc_bind_wrap 252 <- 12 14 15 31 18 218 156            |
|     49 | X_293=[1500306]:bat[:str] := sql.bind(X_12=0:int, "sys":str, "lineitem":str, "l_returnflag":str, 0:int, 3:int, 4:int); #[119] (0) mvc_bind_wrap 293 <- 12 14 15 49 18 218 156               |
|     34 | X_305=[1500306]:bat[:str] := sql.bind(X_12=0:int, "sys":str, "lineitem":str, "l_linestatus":str, 0:int, 3:int, 4:int); #[117] (0) mvc_bind_wrap 305 <- 12 14 15 55 18 218 156               |
|      3 | C_219=[1500306]:bat[:oid] := sql.tid(X_12=0:int, "sys":str, "lineitem":str, 3:int, 4:int); #[115] (0) SQLtid 219 <- 12 14 15 218 156                                                        |
|      4 | X_322=[1500306]:bat[:date] := sql.bind(X_12=0:int, "sys":str, "lineitem":str, "l_shipdate":str, 0:int, 3:int, 4:int); #[114] (0) mvc_bind_wrap 322 <- 12 14 15 61 18 218 156                |
|      3 | X_263=[1500303]:bat[:lng] := sql.bind(X_12=0:int, "sys":str, "lineitem":str, "l_discount":str, 0:int, 2:int, 4:int); #[97] (0) mvc_bind_wrap 263 <- 12 14 15 37 18 23 156                   |
|     19 | X_275=[1500303]:bat[:lng] := sql.bind(X_12=0:int, "sys":str, "lineitem":str, "l_tax":str, 0:int, 2:int, 4:int); #[102] (0) mvc_bind_wrap 275 <- 12 14 15 43 18 23 156                       |
|      3 | X_250=[1500303]:bat[:lng] := sql.bind(X_12=0:int, "sys":str, "lineitem":str, "l_extendedprice":str, 0:int, 2:int, 4:int); #[94] (0) mvc_bind_wrap 250 <- 12 14 15 31 18 23 156              |
|      3 | X_234=[1500303]:bat[:lng] := sql.bind(X_12=0:int, "sys":str, "lineitem":str, "l_quantity":str, 0:int, 2:int, 4:int); #[91] (0) mvc_bind_wrap 234 <- 12 14 15 17 18 23 156                   |
|      4 | X_292=[1500303]:bat[:str] := sql.bind(X_12=0:int, "sys":str, "lineitem":str, "l_returnflag":str, 0:int, 2:int, 4:int); #[84] (0) mvc_bind_wrap 292 <- 12 14 15 49 18 23 156                 |
|      3 | X_304=[1500303]:bat[:str] := sql.bind(X_12=0:int, "sys":str, "lineitem":str, "l_linestatus":str, 0:int, 2:int, 4:int); #[82] (0) mvc_bind_wrap 304 <- 12 14 15 55 18 23 156                 |
|      3 | C_217=[1500303]:bat[:oid] := sql.tid(X_12=0:int, "sys":str, "lineitem":str, 2:int, 4:int); #[80] (0) SQLtid 217 <- 12 14 15 23 156                                                          |
|      3 | X_320=[1500303]:bat[:date] := sql.bind(X_12=0:int, "sys":str, "lineitem":str, "l_shipdate":str, 0:int, 2:int, 4:int); #[79] (0) mvc_bind_wrap 320 <- 12 14 15 61 18 23 156                  |
|      3 | X_274=[1500303]:bat[:lng] := sql.bind(X_12=0:int, "sys":str, "lineitem":str, "l_tax":str, 0:int, 1:int, 4:int); #[67] (0) mvc_bind_wrap 274 <- 12 14 15 43 18 20 156                        |
|      2 | X_262=[1500303]:bat[:lng] := sql.bind(X_12=0:int, "sys":str, "lineitem":str, "l_discount":str, 0:int, 1:int, 4:int); #[62] (0) mvc_bind_wrap 262 <- 12 14 15 37 18 20 156                   |
|      3 | X_248=[1500303]:bat[:lng] := sql.bind(X_12=0:int, "sys":str, "lineitem":str, "l_extendedprice":str, 0:int, 1:int, 4:int); #[59] (0) mvc_bind_wrap 248 <- 12 14 15 31 18 20 156              |
|      3 | X_233=[1500303]:bat[:lng] := sql.bind(X_12=0:int, "sys":str, "lineitem":str, "l_quantity":str, 0:int, 1:int, 4:int); #[56] (0) mvc_bind_wrap 233 <- 12 14 15 17 18 20 156                   |
|      3 | X_291=[1500303]:bat[:str] := sql.bind(X_12=0:int, "sys":str, "lineitem":str, "l_returnflag":str, 0:int, 1:int, 4:int); #[49] (0) mvc_bind_wrap 291 <- 12 14 15 49 18 20 156                 |
|      3 | X_303=[1500303]:bat[:str] := sql.bind(X_12=0:int, "sys":str, "lineitem":str, "l_linestatus":str, 0:int, 1:int, 4:int); #[47] (0) mvc_bind_wrap 303 <- 12 14 15 55 18 20 156                 |
|      2 | C_215=[1500303]:bat[:oid] := sql.tid(X_12=0:int, "sys":str, "lineitem":str, 1:int, 4:int); #[45] (0) SQLtid 215 <- 12 14 15 20 156                                                          |
|      3 | X_318=[1500303]:bat[:date] := sql.bind(X_12=0:int, "sys":str, "lineitem":str, "l_shipdate":str, 0:int, 1:int, 4:int); #[44] (0) mvc_bind_wrap 318 <- 12 14 15 61 18 20 156                  |
|      3 | X_273=[1500303]:bat[:lng] := sql.bind(X_12=0:int, "sys":str, "lineitem":str, "l_tax":str, 0:int, 0:int, 4:int); #[32] (0) mvc_bind_wrap 273 <- 12 14 15 43 18 18 156                        |
|      3 | X_261=[1500303]:bat[:lng] := sql.bind(X_12=0:int, "sys":str, "lineitem":str, "l_discount":str, 0:int, 0:int, 4:int); #[27] (0) mvc_bind_wrap 261 <- 12 14 15 37 18 18 156                   |
|      3 | X_246=[1500303]:bat[:lng] := sql.bind(X_12=0:int, "sys":str, "lineitem":str, "l_extendedprice":str, 0:int, 0:int, 4:int); #[24] (0) mvc_bind_wrap 246 <- 12 14 15 31 18 18 156              |
|      3 | X_232=[1500303]:bat[:lng] := sql.bind(X_12=0:int, "sys":str, "lineitem":str, "l_quantity":str, 0:int, 0:int, 4:int); #[21] (0) mvc_bind_wrap 232 <- 12 14 15 17 18 18 156                   |
|      3 | X_290=[1500303]:bat[:str] := sql.bind(X_12=0:int, "sys":str, "lineitem":str, "l_returnflag":str, 0:int, 0:int, 4:int); #[14] (0) mvc_bind_wrap 290 <- 12 14 15 49 18 18 156                 |
|      3 | X_302=[1500303]:bat[:str] := sql.bind(X_12=0:int, "sys":str, "lineitem":str, "l_linestatus":str, 0:int, 0:int, 4:int); #[12] (0) mvc_bind_wrap 302 <- 12 14 15 55 18 18 156                 |
|     10 | X_276=[1500306]:bat[:lng] := sql.bind(X_12=0:int, "sys":str, "lineitem":str, "l_tax":str, 0:int, 3:int, 4:int); #[137] (0) mvc_bind_wrap 276 <- 12 14 15 43 18 218 156                      |
|   4677 | C_332=[1479143]:bat[:oid] := algebra.thetaselect(X_316=[1500303]:bat[:date], C_213=[1500303]:bat[:oid], "1998-09-02":date, "<=":str); #[11] (0) ALGthetaselect2 332 <- 316 213 204 70       |
|   6974 | C_333=[1478912]:bat[:oid] := algebra.thetaselect(X_318=[1500303]:bat[:date], C_215=[1500303]:bat[:oid], "1998-09-02":date, "<=":str); #[46] (0) ALGthetaselect2 333 <- 318 215 204 70       |
|   6423 | X_356=[1479143]:bat[:str] := algebra.projection(C_332=[1479143]:bat[:oid], X_302=[1500303]:bat[:str]); #[13] (0) ALGprojection 356 <- 332 302                                               |
|   8781 | C_335=[1479209]:bat[:oid] := algebra.thetaselect(X_322=[1500306]:bat[:date], C_219=[1500306]:bat[:oid], "1998-09-02":date, "<=":str); #[116] (0) ALGthetaselect2 335 <- 322 219 204 70      |
|   5159 | X_357=[1478912]:bat[:str] := algebra.projection(C_333=[1478912]:bat[:oid], X_303=[1500303]:bat[:str]); #[48] (0) ALGprojection 357 <- 333 303                                               |
|   5353 | X_359=[1479209]:bat[:str] := algebra.projection(C_335=[1479209]:bat[:oid], X_305=[1500306]:bat[:str]); #[118] (0) ALGprojection 359 <- 335 305                                              |
|  14651 | C_334=[1479327]:bat[:oid] := algebra.thetaselect(X_320=[1500303]:bat[:date], C_217=[1500303]:bat[:oid], "1998-09-02":date, "<=":str); #[81] (0) ALGthetaselect2 334 <- 320 217 204 70       |
|   8809 | X_348=[1479143]:bat[:lng] := algebra.projection(C_332=[1479143]:bat[:oid], X_273=[1500303]:bat[:lng]); #[33] (0) ALGprojection 348 <- 332 273                                               |
|   6443 | X_352=[1479143]:bat[:str] := algebra.projection(C_332=[1479143]:bat[:oid], X_290=[1500303]:bat[:str]); #[15] (0) ALGprojection 352 <- 332 290                                               |
|   5357 | X_358=[1479327]:bat[:str] := algebra.projection(C_334=[1479327]:bat[:oid], X_304=[1500303]:bat[:str]); #[83] (0) ALGprojection 358 <- 334 304                                               |
|  10115 | X_351=[1479209]:bat[:lng] := algebra.projection(C_335=[1479209]:bat[:oid], X_276=[1500306]:bat[:lng]); #[138] (0) ALGprojection 351 <- 335 276                                              |
|   8638 | X_380=[1479143]:bat[:lng] := batcalc.+(X_348=[1479143]:bat[:lng], 100:lng, nil:BAT); #[34] (0) CMDbatADDsignal 380 <- 348 205 198                                                           |
|  11895 | (X_391=[1479143]:bat[:oid], C_392=[3]:bat[:oid]) := group.group(X_352=[1479143]:bat[:str]); #[16] (0) GRPgroup3 391 392 <- 352                                                              |
|   7911 | X_346=[1479327]:bat[:lng] := algebra.projection(C_334=[1479327]:bat[:oid], X_263=[1500303]:bat[:lng]); #[98] (0) ALGprojection 346 <- 334 263                                               |
|  11208 | X_383=[1479209]:bat[:lng] := batcalc.+(X_351=[1479209]:bat[:lng], 100:lng, nil:BAT); #[139] (0) CMDbatADDsignal 383 <- 351 205 198                                                          |
|  20017 | X_350=[1479327]:bat[:lng] := algebra.projection(C_334=[1479327]:bat[:oid], X_275=[1500303]:bat[:lng]); #[103] (0) ALGprojection 350 <- 334 275                                              |
|   5305 | X_518=[1479327]:bat[:dbl] := batcalc.dbl(2:int, X_346=[1479327]:bat[:lng]); #[111] (0) batlng_dec2_dbl 518 <- 23 346                                                                        |
|  13714 | X_366=[1479327]:bat[:lng] := batcalc.-(100:lng, X_346=[1479327]:bat[:lng], nil:BAT); #[99] (0) CMDbatSUBsignal 366 <- 205 346 198                                                           |
|     11 | language.pass(X_346=[1479327]:bat[:lng]); #[277] (0) MALpass 644 <- 346                                                                                                                     |
|  16983 | (X_410=[1479143]:bat[:oid], C_411=[4]:bat[:oid]) := group.subgroupdone(X_356=[1479143]:bat[:str], X_391=[1479143]:bat[:oid]); #[17] (0) GRPsubgroup6 410 411 <- 356 391                     |
|     20 | X_413=[4]:bat[:str] := algebra.projection(C_411=[4]:bat[:oid], X_356=[1479143]:bat[:str]); #[18] (0) ALGprojection 413 <- 411 356                                                           |
|      2 | language.pass(X_356=[1479143]:bat[:str]); #[250] (0) MALpass 617 <- 356                                                                                                                     |
|     13 | X_427=[4]:bat[:str] := algebra.projectionpath(C_411=[4]:bat[:oid], X_391=[1479143]:bat[:oid], C_392=[3]:bat[:oid], X_352=[1479143]:bat[:str]); #[19] (0) ALGprojectionpath 427 <- 411 391 3 |
:        : 92 352                                                                                                                                                                                      :
|      1 | language.pass(X_391=[1479143]:bat[:oid]); #[251] (0) MALpass 618 <- 391                                                                                                                     |
|      6 | X_437=[4]:bat[:str] := algebra.projection(C_411=[4]:bat[:oid], X_352=[1479143]:bat[:str]); #[20] (0) ALGprojection 437 <- 411 352                                                           |
|      1 | language.pass(X_352=[1479143]:bat[:str]); #[252] (0) MALpass 619 <- 352                                                                                                                     |
|   8684 | X_342=[1479327]:bat[:lng] := algebra.projection(C_334=[1479327]:bat[:oid], X_250=[1500303]:bat[:lng]); #[95] (0) ALGprojection 342 <- 334 250                                               |
|   9400 | X_338=[1479327]:bat[:lng] := algebra.projection(C_334=[1479327]:bat[:oid], X_234=[1500303]:bat[:lng]); #[92] (0) ALGprojection 338 <- 334 234                                               |
|  15956 | X_382=[1479327]:bat[:lng] := batcalc.+(X_350=[1479327]:bat[:lng], 100:lng, nil:BAT); #[104] (0) CMDbatADDsignal 382 <- 350 205 198                                                          |
|   9499 | X_336=[1479143]:bat[:lng] := algebra.projection(C_332=[1479143]:bat[:oid], X_232=[1500303]:bat[:lng]); #[22] (0) ALGprojection 336 <- 332 232                                               |
|   5747 | X_497=[1479327]:bat[:dbl] := batcalc.dbl(2:int, X_342=[1479327]:bat[:lng]); #[109] (0) batlng_dec2_dbl 497 <- 23 342                                                                        |
|   7272 | X_447=[4]:bat[:hge] := aggr.subsum(X_336=[1479143]:bat[:lng], X_410=[1479143]:bat[:oid], C_411=[4]:bat[:oid], true:bit, true:bit); #[23] (0) AGGRsubsum_hge 447 <- 336 410 411 105 105      |
|     14 | X_569=[4]:bat[:hge] := mat.packIncrement(X_447=[4]:bat[:hge], 4:int); #[165] (0) MATpackIncrement 569 <- 447 557                                                                            |
|  11297 | X_470=[1479327]:bat[:dbl] := batcalc.dbl(2:int, X_338=[1479327]:bat[:lng]); #[107] (0) batlng_dec2_dbl 470 <- 23 338                                                                        |
|     22 | X_565=[4]:bat[:str] := mat.packIncrement(X_437=[4]:bat[:str], 4:int); #[159] (0) MATpackIncrement 565 <- 437 557                                                                            |
|      5 | X_561=[4]:bat[:str] := mat.packIncrement(X_427=[4]:bat[:str], 4:int); #[153] (0) MATpackIncrement 561 <- 427 557                                                                            |
|      5 | X_556=[4]:bat[:str] := mat.packIncrement(X_413=[4]:bat[:str], 4:int); #[149] (0) MATpackIncrement 556 <- 413 557                                                                            |
|  10042 | X_468=[1479143]:bat[:dbl] := batcalc.dbl(2:int, X_336=[1479143]:bat[:lng]); #[37] (0) batlng_dec2_dbl 468 <- 23 336                                                                         |
|  22358 | X_370=[1479327]:bat[:hge] := batcalc.*(X_342=[1479327]:bat[:lng], X_366=[1479327]:bat[:lng], nil:BAT, nil:BAT); #[100] (0) CMDbatMULenlarge 370 <- 342 366 198 198                          |
|     10 | language.pass(X_336=[1479143]:bat[:lng]); #[255] (0) MALpass 622 <- 336                                                                                                                     |
|   8172 | X_340=[1479143]:bat[:lng] := algebra.projection(C_332=[1479143]:bat[:oid], X_246=[1500303]:bat[:lng]); #[25] (0) ALGprojection 340 <- 332 246                                               |
|   5654 | X_544=[4]:bat[:lng] := aggr.subcount(X_410=[1479143]:bat[:oid], X_410=[1479143]:bat[:oid], C_411=[4]:bat[:oid], false:bit); #[43] (0) AGGRsubcount 544 <- 410 410 411 120                   |
|      9 | X_610=[4]:bat[:lng] := mat.packIncrement(X_544=[4]:bat[:lng], 4:int); #[233] (0) MATpackIncrement 610 <- 544 590                                                                            |
|   5137 | X_495=[1479143]:bat[:dbl] := batcalc.dbl(2:int, X_340=[1479143]:bat[:lng]); #[39] (0) batlng_dec2_dbl 495 <- 23 340                                                                         |
|   7034 | X_454=[4]:bat[:hge] := aggr.subsum(X_340=[1479143]:bat[:lng], X_410=[1479143]:bat[:oid], C_411=[4]:bat[:oid], true:bit, true:bit); #[26] (0) AGGRsubsum_hge 454 <- 340 410 411 105 105      |
|     11 | X_573=[4]:bat[:hge] := mat.packIncrement(X_454=[4]:bat[:hge], 4:int); #[170] (0) MATpackIncrement 573 <- 454 557                                                                            |
|  10639 | (X_474=[4]:bat[:dbl], X_475=[4]:bat[:lng]) := aggr.subavg(X_468=[1479143]:bat[:dbl], X_410=[1479143]:bat[:oid], C_411=[4]:bat[:oid], true:bit, true:bit); #[38] (0) AGGRsubavg2_dbl 474 475 |
:        :  <- 468 410 411 105 105                                                                                                                                                                     :
|     12 | X_585=[4]:bat[:lng] := mat.packIncrement(X_475=[4]:bat[:lng], 4:int); #[185] (0) MATpackIncrement 585 <- 475 557                                                                            |
|      3 | X_589=[4]:bat[:dbl] := mat.packIncrement(X_474=[4]:bat[:dbl], 4:int); #[193] (0) MATpackIncrement 589 <- 474 590                                                                            |
|   7196 | X_344=[1479143]:bat[:lng] := algebra.projection(C_332=[1479143]:bat[:oid], X_261=[1500303]:bat[:lng]); #[28] (0) ALGprojection 344 <- 332 261                                               |
|      7 | language.pass(C_332=[1479143]:bat[:oid]); #[253] (0) MALpass 620 <- 332                                                                                                                     |
|   5270 | X_354=[1479327]:bat[:str] := algebra.projection(C_334=[1479327]:bat[:oid], X_292=[1500303]:bat[:str]); #[85] (0) ALGprojection 354 <- 334 292                                               |
|      3 | language.pass(C_334=[1479327]:bat[:oid]); #[273] (0) MALpass 640 <- 334                                                                                                                     |
|  10792 | (X_501=[4]:bat[:dbl], X_502=[4]:bat[:lng]) := aggr.subavg(X_495=[1479143]:bat[:dbl], X_410=[1479143]:bat[:oid], C_411=[4]:bat[:oid], true:bit, true:bit); #[40] (0) AGGRsubavg2_dbl 501 502 |
:        :  <- 495 410 411 105 105                                                                                                                                                                     :
|      8 | X_594=[4]:bat[:lng] := mat.packIncrement(X_502=[4]:bat[:lng], 4:int); #[201] (0) MATpackIncrement 594 <- 502 590                                                                            |
|      3 | X_598=[4]:bat[:dbl] := mat.packIncrement(X_501=[4]:bat[:dbl], 4:int); #[209] (0) MATpackIncrement 598 <- 501 590                                                                            |
|   6103 | X_516=[1479143]:bat[:dbl] := batcalc.dbl(2:int, X_344=[1479143]:bat[:lng]); #[41] (0) batlng_dec2_dbl 516 <- 23 344                                                                         |
|   8112 | X_364=[1479143]:bat[:lng] := batcalc.-(100:lng, X_344=[1479143]:bat[:lng], nil:BAT); #[29] (0) CMDbatSUBsignal 364 <- 205 344 198                                                           |
|      5 | language.pass(X_344=[1479143]:bat[:lng]); #[257] (0) MALpass 624 <- 344                                                                                                                     |
|  25543 | X_386=[1479327]:bat[:hge] := batcalc.*(X_370=[1479327]:bat[:hge], X_382=[1479327]:bat[:lng], nil:BAT, nil:BAT); #[105] (0) CMDbatMULsignal 386 <- 370 382 198 198                           |
|   9787 | (X_399=[1479327]:bat[:oid], C_400=[3]:bat[:oid]) := group.group(X_354=[1479327]:bat[:str]); #[86] (0) GRPgroup3 399 400 <- 354                                                              |
|   7634 | X_347=[1479209]:bat[:lng] := algebra.projection(C_335=[1479209]:bat[:oid], X_264=[1500306]:bat[:lng]); #[133] (0) ALGprojection 347 <- 335 264                                              |
|  13736 | (X_522=[4]:bat[:dbl], X_523=[4]:bat[:lng]) := aggr.subavg(X_516=[1479143]:bat[:dbl], X_410=[1479143]:bat[:oid], C_411=[4]:bat[:oid], true:bit, true:bit); #[42] (0) AGGRsubavg2_dbl 522 523 |
:        :  <- 516 410 411 105 105                                                                                                                                                                     :
|     15 | X_602=[4]:bat[:lng] := mat.packIncrement(X_523=[4]:bat[:lng], 4:int); #[217] (0) MATpackIncrement 602 <- 523 590                                                                            |
|   5095 | X_519=[1479209]:bat[:dbl] := batcalc.dbl(2:int, X_347=[1479209]:bat[:lng]); #[146] (0) batlng_dec2_dbl 519 <- 23 347                                                                        |
|     15 | X_606=[4]:bat[:dbl] := mat.packIncrement(X_522=[4]:bat[:dbl], 4:int); #[225] (0) MATpackIncrement 606 <- 522 590                                                                            |
|  16535 | (X_418=[1479327]:bat[:oid], C_419=[4]:bat[:oid]) := group.subgroupdone(X_358=[1479327]:bat[:str], X_399=[1479327]:bat[:oid]); #[87] (0) GRPsubgroup6 418 419 <- 358 399                     |
|     60 | X_421=[4]:bat[:str] := algebra.projection(C_419=[4]:bat[:oid], X_358=[1479327]:bat[:str]); #[88] (0) ALGprojection 421 <- 419 358                                                           |
|      2 | language.pass(X_358=[1479327]:bat[:str]); #[270] (0) MALpass 637 <- 358                                                                                                                     |
|  21103 | X_368=[1479143]:bat[:hge] := batcalc.*(X_340=[1479143]:bat[:lng], X_364=[1479143]:bat[:lng], nil:BAT, nil:BAT); #[30] (0) CMDbatMULenlarge 368 <- 340 364 198 198                           |
|      8 | language.pass(X_340=[1479143]:bat[:lng]); #[256] (0) MALpass 623 <- 340                                                                                                                     |
|  12641 | X_367=[1479209]:bat[:lng] := batcalc.-(100:lng, X_347=[1479209]:bat[:lng], nil:BAT); #[134] (0) CMDbatSUBsignal 367 <- 205 347 198                                                          |
|      6 | language.pass(X_347=[1479209]:bat[:lng]); #[287] (0) MALpass 654 <- 347                                                                                                                     |
|   5445 | X_546=[4]:bat[:lng] := aggr.subcount(X_418=[1479327]:bat[:oid], X_418=[1479327]:bat[:oid], C_419=[4]:bat[:oid], false:bit); #[113] (0) AGGRsubcount 546 <- 418 418 419 120                  |
|   7947 | X_343=[1479209]:bat[:lng] := algebra.projection(C_335=[1479209]:bat[:oid], X_252=[1500306]:bat[:lng]); #[130] (0) ALGprojection 343 <- 335 252                                              |
|  10822 | X_459=[4]:bat[:hge] := aggr.subsum(X_368=[1479143]:bat[:hge], X_410=[1479143]:bat[:oid], C_411=[4]:bat[:oid], true:bit, true:bit); #[31] (0) AGGRsubsum_hge 459 <- 368 410 411 105 105      |
|     16 | X_577=[4]:bat[:hge] := mat.packIncrement(X_459=[4]:bat[:hge], 4:int); #[175] (0) MATpackIncrement 577 <- 459 557                                                                            |
|   3176 | X_353=[1478912]:bat[:str] := algebra.projection(C_333=[1478912]:bat[:oid], X_291=[1500303]:bat[:str]); #[50] (0) ALGprojection 353 <- 333 291                                               |
|  12169 | (X_526=[4]:bat[:dbl], X_527=[4]:bat[:lng]) := aggr.subavg(X_518=[1479327]:bat[:dbl], X_418=[1479327]:bat[:oid], C_419=[4]:bat[:oid], true:bit, true:bit); #[112] (0) AGGRsubavg2_dbl 526 52 |
:        : 7 <- 518 418 419 105 105                                                                                                                                                                    :
|   5523 | X_498=[1479209]:bat[:dbl] := batcalc.dbl(2:int, X_343=[1479209]:bat[:lng]); #[144] (0) batlng_dec2_dbl 498 <- 23 343                                                                        |
|  21875 | X_384=[1479143]:bat[:hge] := batcalc.*(X_368=[1479143]:bat[:hge], X_380=[1479143]:bat[:lng], nil:BAT, nil:BAT); #[35] (0) CMDbatMULsignal 384 <- 368 380 198 198                            |
|  17506 | X_371=[1479209]:bat[:hge] := batcalc.*(X_343=[1479209]:bat[:lng], X_367=[1479209]:bat[:lng], nil:BAT, nil:BAT); #[135] (0) CMDbatMULenlarge 371 <- 343 367 198 198                          |
|      6 | language.pass(X_368=[1479143]:bat[:hge]); #[254] (0) MALpass 621 <- 368                                                                                                                     |
|   9742 | (X_395=[1478912]:bat[:oid], C_396=[3]:bat[:oid]) := group.group(X_353=[1478912]:bat[:str]); #[51] (0) GRPgroup3 395 396 <- 353                                                              |
|  11421 | (X_505=[4]:bat[:dbl], X_506=[4]:bat[:lng]) := aggr.subavg(X_497=[1479327]:bat[:dbl], X_418=[1479327]:bat[:oid], C_419=[4]:bat[:oid], true:bit, true:bit); #[110] (0) AGGRsubavg2_dbl 505 50 |
:        : 6 <- 497 418 419 105 105                                                                                                                                                                    :
|  11630 | (X_478=[4]:bat[:dbl], X_479=[4]:bat[:lng]) := aggr.subavg(X_470=[1479327]:bat[:dbl], X_418=[1479327]:bat[:oid], C_419=[4]:bat[:oid], true:bit, true:bit); #[108] (0) AGGRsubavg2_dbl 478 47 |
:        : 9 <- 470 418 419 105 105                                                                                                                                                                    :
|  13770 | X_387=[1479209]:bat[:hge] := batcalc.*(X_371=[1479209]:bat[:hge], X_383=[1479209]:bat[:lng], nil:BAT, nil:BAT); #[140] (0) CMDbatMULsignal 387 <- 371 383 198 198                           |
|  16582 | (X_414=[1478912]:bat[:oid], C_415=[4]:bat[:oid]) := group.subgroupdone(X_357=[1478912]:bat[:str], X_395=[1478912]:bat[:oid]); #[52] (0) GRPsubgroup6 414 415 <- 357 395                     |
|     14 | X_417=[4]:bat[:str] := algebra.projection(C_415=[4]:bat[:oid], X_357=[1478912]:bat[:str]); #[53] (0) ALGprojection 417 <- 415 357                                                           |
|      2 | language.pass(X_357=[1478912]:bat[:str]); #[260] (0) MALpass 627 <- 357                                                                                                                     |
|     11 | X_429=[4]:bat[:str] := algebra.projectionpath(C_415=[4]:bat[:oid], X_395=[1478912]:bat[:oid], C_396=[3]:bat[:oid], X_353=[1478912]:bat[:str]); #[54] (0) ALGprojectionpath 429 <- 415 395 3 |
:        : 96 353                                                                                                                                                                                      :
|      1 | language.pass(X_395=[1478912]:bat[:oid]); #[261] (0) MALpass 628 <- 395                                                                                                                     |
|     11 | X_438=[4]:bat[:str] := algebra.projection(C_415=[4]:bat[:oid], X_353=[1478912]:bat[:str]); #[55] (0) ALGprojection 438 <- 415 353                                                           |
|      1 | language.pass(X_353=[1478912]:bat[:str]); #[262] (0) MALpass 629 <- 353                                                                                                                     |
|  11365 | X_464=[4]:bat[:hge] := aggr.subsum(X_384=[1479143]:bat[:hge], X_410=[1479143]:bat[:oid], C_411=[4]:bat[:oid], true:bit, true:bit); #[36] (0) AGGRsubsum_hge 464 <- 384 410 411 105 105      |
|      3 | language.pass(X_410=[1479143]:bat[:oid]); #[258] (0) MALpass 625 <- 410                                                                                                                     |
|      7 | X_566=[8]:bat[:str] := mat.packIncrement(X_565=[8]:bat[:str], X_438=[4]:bat[:str]); #[160] (0) MATpackIncrement 566 <- 565 438                                                              |
|      4 | X_581=[4]:bat[:hge] := mat.packIncrement(X_464=[4]:bat[:hge], 4:int); #[180] (0) MATpackIncrement 581 <- 464 557                                                                            |
|      1 | language.pass(C_411=[4]:bat[:oid]); #[259] (0) MALpass 626 <- 411                                                                                                                           |
|      4 | X_562=[8]:bat[:str] := mat.packIncrement(X_561=[8]:bat[:str], X_429=[4]:bat[:str]); #[154] (0) MATpackIncrement 562 <- 561 429                                                              |
|      3 | X_558=[8]:bat[:str] := mat.packIncrement(X_556=[8]:bat[:str], X_417=[4]:bat[:str]); #[150] (0) MATpackIncrement 558 <- 556 417                                                              |
|      3 | X_559=[12]:bat[:str] := mat.packIncrement(X_558=[12]:bat[:str], X_421=[4]:bat[:str]); #[151] (0) MATpackIncrement 559 <- 558 421                                                            |
|  11247 | X_466=[4]:bat[:hge] := aggr.subsum(X_386=[1479327]:bat[:hge], X_418=[1479327]:bat[:oid], C_419=[4]:bat[:oid], true:bit, true:bit); #[106] (0) AGGRsubsum_hge 466 <- 386 418 419 105 105     |
|   7294 | X_337=[1478912]:bat[:lng] := algebra.projection(C_333=[1478912]:bat[:oid], X_233=[1500303]:bat[:lng]); #[57] (0) ALGprojection 337 <- 333 233                                               |
|  11701 | X_461=[4]:bat[:hge] := aggr.subsum(X_370=[1479327]:bat[:hge], X_418=[1479327]:bat[:oid], C_419=[4]:bat[:oid], true:bit, true:bit); #[101] (0) AGGRsubsum_hge 461 <- 370 418 419 105 105     |
|      3 | language.pass(X_370=[1479327]:bat[:hge]); #[274] (0) MALpass 641 <- 370                                                                                                                     |
|   5883 | X_545=[4]:bat[:lng] := aggr.subcount(X_414=[1478912]:bat[:oid], X_414=[1478912]:bat[:oid], C_415=[4]:bat[:oid], false:bit); #[78] (0) AGGRsubcount 545 <- 414 414 415 120                   |
|      9 | X_611=[8]:bat[:lng] := mat.packIncrement(X_610=[8]:bat[:lng], X_545=[4]:bat[:lng]); #[234] (0) MATpackIncrement 611 <- 610 545                                                              |
|      2 | X_612=[12]:bat[:lng] := mat.packIncrement(X_611=[12]:bat[:lng], X_546=[4]:bat[:lng]); #[235] (0) MATpackIncrement 612 <- 611 546                                                            |
|   8280 | X_456=[4]:bat[:hge] := aggr.subsum(X_342=[1479327]:bat[:lng], X_418=[1479327]:bat[:oid], C_419=[4]:bat[:oid], true:bit, true:bit); #[96] (0) AGGRsubsum_hge 456 <- 342 418 419 105 105      |
|      5 | language.pass(X_342=[1479327]:bat[:lng]); #[276] (0) MALpass 643 <- 342                                                                                                                     |
|   5787 | X_469=[1478912]:bat[:dbl] := batcalc.dbl(2:int, X_337=[1478912]:bat[:lng]); #[72] (0) batlng_dec2_dbl 469 <- 23 337                                                                         |
|     11 | X_439=[4]:bat[:str] := algebra.projection(C_419=[4]:bat[:oid], X_354=[1479327]:bat[:str]); #[90] (0) ALGprojection 439 <- 419 354                                                           |
|      4 | X_567=[12]:bat[:str] := mat.packIncrement(X_566=[12]:bat[:str], X_439=[4]:bat[:str]); #[161] (0) MATpackIncrement 567 <- 566 439                                                            |
|      6 | X_431=[4]:bat[:str] := algebra.projectionpath(C_419=[4]:bat[:oid], X_399=[1479327]:bat[:oid], C_400=[3]:bat[:oid], X_354=[1479327]:bat[:str]); #[89] (0) ALGprojectionpath 431 <- 419 399 4 |
:        : 00 354                                                                                                                                                                                      :
|      1 | language.pass(X_399=[1479327]:bat[:oid]); #[271] (0) MALpass 638 <- 399                                                                                                                     |
|   8581 | X_448=[4]:bat[:hge] := aggr.subsum(X_337=[1478912]:bat[:lng], X_414=[1478912]:bat[:oid], C_415=[4]:bat[:oid], true:bit, true:bit); #[58] (0) AGGRsubsum_hge 448 <- 337 414 415 105 105      |
|      4 | language.pass(X_337=[1478912]:bat[:lng]); #[265] (0) MALpass 632 <- 337                                                                                                                     |
|   8358 | X_449=[4]:bat[:hge] := aggr.subsum(X_338=[1479327]:bat[:lng], X_418=[1479327]:bat[:oid], C_419=[4]:bat[:oid], true:bit, true:bit); #[93] (0) AGGRsubsum_hge 449 <- 338 418 419 105 105      |
|      4 | language.pass(X_338=[1479327]:bat[:lng]); #[275] (0) MALpass 642 <- 338                                                                                                                     |
|      4 | X_570=[8]:bat[:hge] := mat.packIncrement(X_569=[8]:bat[:hge], X_448=[4]:bat[:hge]); #[166] (0) MATpackIncrement 570 <- 569 448                                                              |
|      5 | X_571=[12]:bat[:hge] := mat.packIncrement(X_570=[12]:bat[:hge], X_449=[4]:bat[:hge]); #[167] (0) MATpackIncrement 571 <- 570 449                                                            |
|      1 | language.pass(C_419=[4]:bat[:oid]); #[279] (0) MALpass 646 <- 419                                                                                                                           |
|      1 | language.pass(X_418=[1479327]:bat[:oid]); #[278] (0) MALpass 645 <- 418                                                                                                                     |
|      6 | X_563=[12]:bat[:str] := mat.packIncrement(X_562=[12]:bat[:str], X_431=[4]:bat[:str]); #[155] (0) MATpackIncrement 563 <- 562 431                                                            |
|      3 | language.pass(X_354=[1479327]:bat[:str]); #[272] (0) MALpass 639 <- 354                                                                                                                     |
|   8178 | X_339=[1479209]:bat[:lng] := algebra.projection(C_335=[1479209]:bat[:oid], X_235=[1500306]:bat[:lng]); #[127] (0) ALGprojection 339 <- 335 235                                              |
|   6939 | X_355=[1479209]:bat[:str] := algebra.projection(C_335=[1479209]:bat[:oid], X_293=[1500306]:bat[:str]); #[120] (0) ALGprojection 355 <- 335 293                                              |
|      4 | language.pass(C_335=[1479209]:bat[:oid]); #[283] (0) MALpass 650 <- 335                                                                                                                     |
|  12046 | (X_476=[4]:bat[:dbl], X_477=[4]:bat[:lng]) := aggr.subavg(X_469=[1478912]:bat[:dbl], X_414=[1478912]:bat[:oid], C_415=[4]:bat[:oid], true:bit, true:bit); #[73] (0) AGGRsubavg2_dbl 476 477 |
:        :  <- 469 414 415 105 105                                                                                                                                                                     :
|      7 | X_586=[8]:bat[:lng] := mat.packIncrement(X_585=[8]:bat[:lng], X_477=[4]:bat[:lng]); #[186] (0) MATpackIncrement 586 <- 585 477                                                              |
|      4 | X_587=[12]:bat[:lng] := mat.packIncrement(X_586=[12]:bat[:lng], X_479=[4]:bat[:lng]); #[187] (0) MATpackIncrement 587 <- 586 479                                                            |
|      4 | X_591=[8]:bat[:dbl] := mat.packIncrement(X_589=[8]:bat[:dbl], X_476=[4]:bat[:dbl]); #[194] (0) MATpackIncrement 591 <- 589 476                                                              |
|      2 | X_592=[12]:bat[:dbl] := mat.packIncrement(X_591=[12]:bat[:dbl], X_478=[4]:bat[:dbl]); #[195] (0) MATpackIncrement 592 <- 591 478                                                            |
|  11337 | X_341=[1478912]:bat[:lng] := algebra.projection(C_333=[1478912]:bat[:oid], X_248=[1500303]:bat[:lng]); #[60] (0) ALGprojection 341 <- 333 248                                               |
|   6796 | X_471=[1479209]:bat[:dbl] := batcalc.dbl(2:int, X_339=[1479209]:bat[:lng]); #[142] (0) batlng_dec2_dbl 471 <- 23 339                                                                        |
|  11166 | X_349=[1478912]:bat[:lng] := algebra.projection(C_333=[1478912]:bat[:oid], X_274=[1500303]:bat[:lng]); #[68] (0) ALGprojection 349 <- 333 274                                               |
|  11083 | (X_403=[1479209]:bat[:oid], C_404=[3]:bat[:oid]) := group.group(X_355=[1479209]:bat[:str]); #[121] (0) GRPgroup3 403 404 <- 355                                                             |
|   8674 | X_345=[1478912]:bat[:lng] := algebra.projection(C_333=[1478912]:bat[:oid], X_262=[1500303]:bat[:lng]); #[63] (0) ALGprojection 345 <- 333 262                                               |
|      4 | language.pass(C_333=[1478912]:bat[:oid]); #[263] (0) MALpass 630 <- 333                                                                                                                     |
|  10387 | X_455=[4]:bat[:hge] := aggr.subsum(X_341=[1478912]:bat[:lng], X_414=[1478912]:bat[:oid], C_415=[4]:bat[:oid], true:bit, true:bit); #[61] (0) AGGRsubsum_hge 455 <- 341 414 415 105 105      |
|     11 | X_574=[8]:bat[:hge] := mat.packIncrement(X_573=[8]:bat[:hge], X_455=[4]:bat[:hge]); #[171] (0) MATpackIncrement 574 <- 573 455                                                              |
|      5 | X_575=[12]:bat[:hge] := mat.packIncrement(X_574=[12]:bat[:hge], X_456=[4]:bat[:hge]); #[172] (0) MATpackIncrement 575 <- 574 456                                                            |
|   9811 | X_365=[1478912]:bat[:lng] := batcalc.-(100:lng, X_345=[1478912]:bat[:lng], nil:BAT); #[64] (0) CMDbatSUBsignal 365 <- 205 345 198                                                           |
|   8270 | X_496=[1478912]:bat[:dbl] := batcalc.dbl(2:int, X_341=[1478912]:bat[:lng]); #[74] (0) batlng_dec2_dbl 496 <- 23 341                                                                         |
|  11477 | X_381=[1478912]:bat[:lng] := batcalc.+(X_349=[1478912]:bat[:lng], 100:lng, nil:BAT); #[69] (0) CMDbatADDsignal 381 <- 349 205 198                                                           |
|  19145 | (X_422=[1479209]:bat[:oid], C_423=[4]:bat[:oid]) := group.subgroupdone(X_359=[1479209]:bat[:str], X_403=[1479209]:bat[:oid]); #[122] (0) GRPsubgroup6 422 423 <- 359 403                    |
|     17 | X_425=[4]:bat[:str] := algebra.projection(C_423=[4]:bat[:oid], X_359=[1479209]:bat[:str]); #[123] (0) ALGprojection 425 <- 423 359                                                          |
|      3 | language.pass(X_359=[1479209]:bat[:str]); #[280] (0) MALpass 647 <- 359                                                                                                                     |
|     13 | X_76=[16]:bat[:str] := mat.packIncrement(X_559=[16]:bat[:str], X_425=[4]:bat[:str]); #[152] (0) MATpackIncrement 76 <- 559 425                                                              |
|   7820 | X_517=[1478912]:bat[:dbl] := batcalc.dbl(2:int, X_345=[1478912]:bat[:lng]); #[76] (0) batlng_dec2_dbl 517 <- 23 345                                                                         |
|      3 | language.pass(X_345=[1478912]:bat[:lng]); #[267] (0) MALpass 634 <- 345                                                                                                                     |
|  12466 | X_369=[1478912]:bat[:hge] := batcalc.*(X_341=[1478912]:bat[:lng], X_365=[1478912]:bat[:lng], nil:BAT, nil:BAT); #[65] (0) CMDbatMULenlarge 369 <- 341 365 198 198                           |
|      3 | language.pass(X_341=[1478912]:bat[:lng]); #[266] (0) MALpass 633 <- 341                                                                                                                     |
|   4783 | X_547=[4]:bat[:lng] := aggr.subcount(X_422=[1479209]:bat[:oid], X_422=[1479209]:bat[:oid], C_423=[4]:bat[:oid], false:bit); #[148] (0) AGGRsubcount 547 <- 422 422 423 120                  |
|      6 | X_543=[16]:bat[:lng] := mat.packIncrement(X_612=[16]:bat[:lng], X_547=[4]:bat[:lng]); #[236] (0) MATpackIncrement 543 <- 612 547                                                            |
|  12680 | (X_503=[4]:bat[:dbl], X_504=[4]:bat[:lng]) := aggr.subavg(X_496=[1478912]:bat[:dbl], X_414=[1478912]:bat[:oid], C_415=[4]:bat[:oid], true:bit, true:bit); #[75] (0) AGGRsubavg2_dbl 503 504 |
:        :  <- 496 414 415 105 105                                                                                                                                                                     :
|      6 | X_595=[8]:bat[:lng] := mat.packIncrement(X_594=[8]:bat[:lng], X_504=[4]:bat[:lng]); #[202] (0) MATpackIncrement 595 <- 594 504                                                              |
|      4 | X_596=[12]:bat[:lng] := mat.packIncrement(X_595=[12]:bat[:lng], X_506=[4]:bat[:lng]); #[203] (0) MATpackIncrement 596 <- 595 506                                                            |
|  12749 | (X_528=[4]:bat[:dbl], X_529=[4]:bat[:lng]) := aggr.subavg(X_519=[1479209]:bat[:dbl], X_422=[1479209]:bat[:oid], C_423=[4]:bat[:oid], true:bit, true:bit); #[147] (0) AGGRsubavg2_dbl 528 52 |
:        : 9 <- 519 422 423 105 105                                                                                                                                                                    :
|     10 | X_599=[8]:bat[:dbl] := mat.packIncrement(X_598=[8]:bat[:dbl], X_503=[4]:bat[:dbl]); #[210] (0) MATpackIncrement 599 <- 598 503                                                              |
|      2 | X_600=[12]:bat[:dbl] := mat.packIncrement(X_599=[12]:bat[:dbl], X_505=[4]:bat[:dbl]); #[211] (0) MATpackIncrement 600 <- 599 505                                                            |
|  10865 | X_385=[1478912]:bat[:hge] := batcalc.*(X_369=[1478912]:bat[:hge], X_381=[1478912]:bat[:lng], nil:BAT, nil:BAT); #[70] (0) CMDbatMULsignal 385 <- 369 381 198 198                            |
|  13256 | (X_524=[4]:bat[:dbl], X_525=[4]:bat[:lng]) := aggr.subavg(X_517=[1478912]:bat[:dbl], X_414=[1478912]:bat[:oid], C_415=[4]:bat[:oid], true:bit, true:bit); #[77] (0) AGGRsubavg2_dbl 524 525 |
:        :  <- 517 414 415 105 105                                                                                                                                                                     :
|      6 | X_603=[8]:bat[:lng] := mat.packIncrement(X_602=[8]:bat[:lng], X_525=[4]:bat[:lng]); #[218] (0) MATpackIncrement 603 <- 602 525                                                              |
|      3 | X_604=[12]:bat[:lng] := mat.packIncrement(X_603=[12]:bat[:lng], X_527=[4]:bat[:lng]); #[219] (0) MATpackIncrement 604 <- 603 527                                                            |
|      2 | X_521=[16]:bat[:lng] := mat.packIncrement(X_604=[16]:bat[:lng], X_529=[4]:bat[:lng]); #[220] (0) MATpackIncrement 521 <- 604 529                                                            |
|      5 | X_538=[16]:bat[:dbl] := batcalc.dbl(X_521=[16]:bat[:lng]); #[229] (0) CMDconvertsignal_dbl 538 <- 521                                                                                       |
|      2 | X_607=[8]:bat[:dbl] := mat.packIncrement(X_606=[8]:bat[:dbl], X_524=[4]:bat[:dbl]); #[226] (0) MATpackIncrement 607 <- 606 524                                                              |
|      2 | X_608=[12]:bat[:dbl] := mat.packIncrement(X_607=[12]:bat[:dbl], X_526=[4]:bat[:dbl]); #[227] (0) MATpackIncrement 608 <- 607 526                                                            |
|      2 | X_520=[16]:bat[:dbl] := mat.packIncrement(X_608=[16]:bat[:dbl], X_528=[4]:bat[:dbl]); #[228] (0) MATpackIncrement 520 <- 608 528                                                            |
|  11253 | X_460=[4]:bat[:hge] := aggr.subsum(X_369=[1478912]:bat[:hge], X_414=[1478912]:bat[:oid], C_415=[4]:bat[:oid], true:bit, true:bit); #[66] (0) AGGRsubsum_hge 460 <- 369 414 415 105 105      |
|      3 | language.pass(X_369=[1478912]:bat[:hge]); #[264] (0) MALpass 631 <- 369                                                                                                                     |
|     10 | X_433=[4]:bat[:str] := algebra.projectionpath(C_423=[4]:bat[:oid], X_403=[1479209]:bat[:oid], C_404=[3]:bat[:oid], X_355=[1479209]:bat[:str]); #[124] (0) ALGprojectionpath 433 <- 423 403  |
:        : 404 355                                                                                                                                                                                     :
|      1 | language.pass(X_403=[1479209]:bat[:oid]); #[281] (0) MALpass 648 <- 403                                                                                                                     |
|      7 | X_440=[4]:bat[:str] := algebra.projection(C_423=[4]:bat[:oid], X_355=[1479209]:bat[:str]); #[125] (0) ALGprojection 440 <- 423 355                                                          |
|      1 | language.pass(X_355=[1479209]:bat[:str]); #[282] (0) MALpass 649 <- 355                                                                                                                     |
|   5409 | X_450=[4]:bat[:hge] := aggr.subsum(X_339=[1479209]:bat[:lng], X_422=[1479209]:bat[:oid], C_423=[4]:bat[:oid], true:bit, true:bit); #[128] (0) AGGRsubsum_hge 450 <- 339 422 423 105 105     |
|      5 | language.pass(X_339=[1479209]:bat[:lng]); #[285] (0) MALpass 652 <- 339                                                                                                                     |
|   9742 | (X_507=[4]:bat[:dbl], X_508=[4]:bat[:lng]) := aggr.subavg(X_498=[1479209]:bat[:dbl], X_422=[1479209]:bat[:oid], C_423=[4]:bat[:oid], true:bit, true:bit); #[145] (0) AGGRsubavg2_dbl 507 50 |
:        : 8 <- 498 422 423 105 105                                                                                                                                                                    :
|      6 | X_500=[16]:bat[:lng] := mat.packIncrement(X_596=[16]:bat[:lng], X_508=[4]:bat[:lng]); #[204] (0) MATpackIncrement 500 <- 596 508                                                            |
|      5 | X_513=[16]:bat[:dbl] := batcalc.dbl(X_500=[16]:bat[:lng]); #[213] (0) CMDconvertsignal_dbl 513 <- 500                                                                                       |
|      2 | X_499=[16]:bat[:dbl] := mat.packIncrement(X_600=[16]:bat[:dbl], X_507=[4]:bat[:dbl]); #[212] (0) MATpackIncrement 499 <- 600 507                                                            |
|      2 | X_446=[16]:bat[:hge] := mat.packIncrement(X_571=[16]:bat[:hge], X_450=[4]:bat[:hge]); #[168] (0) MATpackIncrement 446 <- 571 450                                                            |
|      4 | X_436=[16]:bat[:str] := mat.packIncrement(X_567=[16]:bat[:str], X_440=[4]:bat[:str]); #[162] (0) MATpackIncrement 436 <- 567 440                                                            |
|      3 | X_75=[16]:bat[:str] := mat.packIncrement(X_563=[16]:bat[:str], X_433=[4]:bat[:str]); #[156] (0) MATpackIncrement 75 <- 563 433                                                              |
|     14 | (X_96=[16]:bat[:oid], C_97=[3]:bat[:oid]) := group.group(X_75=[16]:bat[:str]); #[157] (1) GRPgroup3 96 97 <- 75                                                                             |
|     21 | (X_99=[16]:bat[:oid], C_100=[4]:bat[:oid]) := group.subgroupdone(X_76=[16]:bat[:str], X_96=[16]:bat[:oid]); #[158] (0) GRPsubgroup6 99 100 <- 76 96                                         |
|      6 | X_102=[4]:bat[:str] := algebra.projection(C_100=[4]:bat[:oid], X_436=[16]:bat[:str]); #[163] (0) ALGprojection 102 <- 100 436                                                               |
|     14 | (X_121=[4]:bat[:str], X_122=[4]:bat[:oid], X_123=[4]:bat[:oid]) := algebra.sort(X_102=[4]:bat[:str], false:bit, false:bit, false:bit); #[238] (0) ALGsort13 121 122 123 <- 102 120 120 120  |
|      5 | X_119=[4]:bat[:lng] := aggr.subsum(X_543=[16]:bat[:lng], X_99=[16]:bat[:oid], C_100=[4]:bat[:oid], true:bit, true:bit); #[237] (0) AGGRsubsum_lng 119 <- 543 99 100 105 105                 |
|      4 | X_530=[4]:bat[:lng] := aggr.subsum(X_521=[16]:bat[:lng], X_99=[16]:bat[:oid], C_100=[4]:bat[:oid], true:bit, true:bit); #[221] (0) AGGRsubsum_lng 530 <- 521 99 100 105 105                 |
|      1 | language.pass(X_521=[16]:bat[:lng]); #[296] (0) MALpass 663 <- 521                                                                                                                          |
|      4 | X_533=[4]:bat[:bit] := batcalc.==(X_530=[4]:bat[:lng], 0:lng); #[222] (0) CMDbatEQ 533 <- 530 484                                                                                           |
|      3 | X_535=[4]:bat[:lng] := batcalc.ifthenelse(X_533=[4]:bat[:bit], nil:lng, X_530=[4]:bat[:lng]); #[223] (0) CMDifthen 535 <- 533 486 530                                                       |
|      1 | language.pass(X_530=[4]:bat[:lng]); #[295] (0) MALpass 662 <- 530                                                                                                                           |
|      3 | X_509=[4]:bat[:lng] := aggr.subsum(X_500=[16]:bat[:lng], X_99=[16]:bat[:oid], C_100=[4]:bat[:oid], true:bit, true:bit); #[205] (0) AGGRsubsum_lng 509 <- 500 99 100 105 105                 |
|      1 | language.pass(X_500=[16]:bat[:lng]); #[294] (0) MALpass 661 <- 500                                                                                                                          |
|      3 | X_537=[16]:bat[:lng] := algebra.projection(X_99=[16]:bat[:oid], X_535=[4]:bat[:lng]); #[224] (0) ALGprojection 537 <- 99 535                                                                |
|      5 | X_539=[16]:bat[:dbl] := batcalc./(X_538=[16]:bat[:dbl], X_537=[16]:bat[:lng], nil:BAT, nil:BAT); #[230] (0) CMDbatDIVsignal 539 <- 538 537 198 198                                          |
|      4 | X_542=[16]:bat[:dbl] := batcalc.*(X_520=[16]:bat[:dbl], X_539=[16]:bat[:dbl], nil:BAT, nil:BAT); #[231] (0) CMDbatMULsignal 542 <- 520 539 198 198                                          |
|      5 | X_118=[4]:bat[:dbl] := aggr.subsum(X_542=[16]:bat[:dbl], X_99=[16]:bat[:oid], C_100=[4]:bat[:oid], true:bit, true:bit); #[232] (0) AGGRsubsum_dbl 118 <- 542 99 100 105 105                 |
|      3 | X_510=[4]:bat[:bit] := batcalc.==(X_509=[4]:bat[:lng], 0:lng); #[206] (0) CMDbatEQ 510 <- 509 484                                                                                           |
|      3 | X_511=[4]:bat[:lng] := batcalc.ifthenelse(X_510=[4]:bat[:bit], nil:lng, X_509=[4]:bat[:lng]); #[207] (0) CMDifthen 511 <- 510 486 509                                                       |
|      1 | language.pass(X_509=[4]:bat[:lng]); #[293] (0) MALpass 660 <- 509                                                                                                                           |
|      3 | X_104=[4]:bat[:hge] := aggr.subsum(X_446=[16]:bat[:hge], X_99=[16]:bat[:oid], C_100=[4]:bat[:oid], true:bit, true:bit); #[169] (0) AGGRsubsum_hge 104 <- 446 99 100 105 105                 |
|      3 | X_512=[16]:bat[:lng] := algebra.projection(X_99=[16]:bat[:oid], X_511=[4]:bat[:lng]); #[208] (0) ALGprojection 512 <- 99 511                                                                |
|      3 | X_514=[16]:bat[:dbl] := batcalc./(X_513=[16]:bat[:dbl], X_512=[16]:bat[:lng], nil:BAT, nil:BAT); #[214] (0) CMDbatDIVsignal 514 <- 513 512 198 198                                          |
|      3 | X_515=[16]:bat[:dbl] := batcalc.*(X_499=[16]:bat[:dbl], X_514=[16]:bat[:dbl], nil:BAT, nil:BAT); #[215] (0) CMDbatMULsignal 515 <- 499 514 198 198                                          |
|      6 | X_115=[4]:bat[:dbl] := aggr.subsum(X_515=[16]:bat[:dbl], X_99=[16]:bat[:oid], C_100=[4]:bat[:oid], true:bit, true:bit); #[216] (0) AGGRsubsum_dbl 115 <- 515 99 100 105 105                 |
|      4 | X_103=[4]:bat[:str] := algebra.projection(C_100=[4]:bat[:oid], X_76=[16]:bat[:str]); #[164] (0) ALGprojection 103 <- 100 76                                                                 |
|      1 | language.pass(X_76=[16]:bat[:str]); #[290] (0) MALpass 657 <- 76                                                                                                                            |
|     11 | (X_124=[4]:bat[:str], X_125=[4]:bat[:oid]) := algebra.sort(X_103=[4]:bat[:str], X_122=[4]:bat[:oid], X_123=[4]:bat[:oid], false:bit, false:bit, false:bit); #[239] (0) ALGsort32 124 125 <- |
:        :  103 122 123 120 120 120                                                                                                                                                                    :
|      3 | X_127=[4]:bat[:str] := algebra.projection(X_125=[4]:bat[:oid], X_102=[4]:bat[:str]); #[240] (0) ALGprojection 127 <- 125 102                                                                |
|      1 | language.pass(X_102=[4]:bat[:str]); #[299] (0) MALpass 666 <- 102                                                                                                                           |
|      3 | X_136=[4]:bat[:lng] := algebra.projection(X_125=[4]:bat[:oid], X_119=[4]:bat[:lng]); #[249] (0) ALGprojection 136 <- 125 119                                                                |
|      3 | X_135=[4]:bat[:dbl] := algebra.projection(X_125=[4]:bat[:oid], X_118=[4]:bat[:dbl]); #[248] (0) ALGprojection 135 <- 125 118                                                                |
|      2 | X_134=[4]:bat[:dbl] := algebra.projection(X_125=[4]:bat[:oid], X_115=[4]:bat[:dbl]); #[247] (0) ALGprojection 134 <- 125 115                                                                |
|      2 | X_129=[4]:bat[:hge] := algebra.projection(X_125=[4]:bat[:oid], X_104=[4]:bat[:hge]); #[242] (0) ALGprojection 129 <- 125 104                                                                |
|      3 | X_128=[4]:bat[:str] := algebra.projection(X_125=[4]:bat[:oid], X_103=[4]:bat[:str]); #[241] (0) ALGprojection 128 <- 125 103                                                                |
|      1 | language.pass(X_103=[4]:bat[:str]); #[300] (0) MALpass 667 <- 103                                                                                                                           |
|      2 | X_578=[8]:bat[:hge] := mat.packIncrement(X_577=[8]:bat[:hge], X_460=[4]:bat[:hge]); #[176] (0) MATpackIncrement 578 <- 577 460                                                              |
|      2 | X_579=[12]:bat[:hge] := mat.packIncrement(X_578=[12]:bat[:hge], X_461=[4]:bat[:hge]); #[177] (0) MATpackIncrement 579 <- 578 461                                                            |
|  10437 | X_465=[4]:bat[:hge] := aggr.subsum(X_385=[1478912]:bat[:hge], X_414=[1478912]:bat[:oid], C_415=[4]:bat[:oid], true:bit, true:bit); #[71] (0) AGGRsubsum_hge 465 <- 385 414 415 105 105      |
|      4 | language.pass(X_414=[1478912]:bat[:oid]); #[268] (0) MALpass 635 <- 414                                                                                                                     |
|  11496 | (X_480=[4]:bat[:dbl], X_481=[4]:bat[:lng]) := aggr.subavg(X_471=[1479209]:bat[:dbl], X_422=[1479209]:bat[:oid], C_423=[4]:bat[:oid], true:bit, true:bit); #[143] (0) AGGRsubavg2_dbl 480 48 |
:        : 1 <- 471 422 423 105 105                                                                                                                                                                    :
|      5 | X_473=[16]:bat[:lng] := mat.packIncrement(X_587=[16]:bat[:lng], X_481=[4]:bat[:lng]); #[188] (0) MATpackIncrement 473 <- 587 481                                                            |
|      7 | X_482=[4]:bat[:lng] := aggr.subsum(X_473=[16]:bat[:lng], X_99=[16]:bat[:oid], C_100=[4]:bat[:oid], true:bit, true:bit); #[189] (0) AGGRsubsum_lng 482 <- 473 99 100 105 105                 |
|      5 | X_483=[4]:bat[:bit] := batcalc.==(X_482=[4]:bat[:lng], 0:lng); #[190] (0) CMDbatEQ 483 <- 482 484                                                                                           |
|      5 | X_488=[16]:bat[:dbl] := batcalc.dbl(X_473=[16]:bat[:lng]); #[197] (0) CMDconvertsignal_dbl 488 <- 473                                                                                       |
|      1 | language.pass(X_473=[16]:bat[:lng]); #[292] (0) MALpass 659 <- 473                                                                                                                          |
|      3 | X_485=[4]:bat[:lng] := batcalc.ifthenelse(X_483=[4]:bat[:bit], nil:lng, X_482=[4]:bat[:lng]); #[191] (0) CMDifthen 485 <- 483 486 482                                                       |
|      1 | language.pass(X_482=[4]:bat[:lng]); #[291] (0) MALpass 658 <- 482                                                                                                                           |
|      3 | X_472=[16]:bat[:dbl] := mat.packIncrement(X_592=[16]:bat[:dbl], X_480=[4]:bat[:dbl]); #[196] (0) MATpackIncrement 472 <- 592 480                                                            |
|      5 | X_487=[16]:bat[:lng] := algebra.projection(X_99=[16]:bat[:oid], X_485=[4]:bat[:lng]); #[192] (0) ALGprojection 487 <- 99 485                                                                |
|      5 | X_489=[16]:bat[:dbl] := batcalc./(X_488=[16]:bat[:dbl], X_487=[16]:bat[:lng], nil:BAT, nil:BAT); #[198] (0) CMDbatDIVsignal 489 <- 488 487 198 198                                          |
|      5 | X_492=[16]:bat[:dbl] := batcalc.*(X_472=[16]:bat[:dbl], X_489=[16]:bat[:dbl], nil:BAT, nil:BAT); #[199] (0) CMDbatMULsignal 492 <- 472 489 198 198                                          |
|      6 | X_112=[4]:bat[:dbl] := aggr.subsum(X_492=[16]:bat[:dbl], X_99=[16]:bat[:oid], C_100=[4]:bat[:oid], true:bit, true:bit); #[200] (0) AGGRsubsum_dbl 112 <- 492 99 100 105 105                 |
|      4 | X_133=[4]:bat[:dbl] := algebra.projection(X_125=[4]:bat[:oid], X_112=[4]:bat[:dbl]); #[246] (0) ALGprojection 133 <- 125 112                                                                |
|      4 | X_582=[8]:bat[:hge] := mat.packIncrement(X_581=[8]:bat[:hge], X_465=[4]:bat[:hge]); #[181] (0) MATpackIncrement 582 <- 581 465                                                              |
|      3 | X_583=[12]:bat[:hge] := mat.packIncrement(X_582=[12]:bat[:hge], X_466=[4]:bat[:hge]); #[182] (0) MATpackIncrement 583 <- 582 466                                                            |
|      1 | language.pass(C_415=[4]:bat[:oid]); #[269] (0) MALpass 636 <- 415                                                                                                                           |
|   6208 | X_457=[4]:bat[:hge] := aggr.subsum(X_343=[1479209]:bat[:lng], X_422=[1479209]:bat[:oid], C_423=[4]:bat[:oid], true:bit, true:bit); #[131] (0) AGGRsubsum_hge 457 <- 343 422 423 105 105     |
|      2 | language.pass(X_343=[1479209]:bat[:lng]); #[286] (0) MALpass 653 <- 343                                                                                                                     |
|      6 | X_453=[16]:bat[:hge] := mat.packIncrement(X_575=[16]:bat[:hge], X_457=[4]:bat[:hge]); #[173] (0) MATpackIncrement 453 <- 575 457                                                            |
|      4 | X_107=[4]:bat[:hge] := aggr.subsum(X_453=[16]:bat[:hge], X_99=[16]:bat[:oid], C_100=[4]:bat[:oid], true:bit, true:bit); #[174] (0) AGGRsubsum_hge 107 <- 453 99 100 105 105                 |
|      5 | X_130=[4]:bat[:hge] := algebra.projection(X_125=[4]:bat[:oid], X_107=[4]:bat[:hge]); #[243] (0) ALGprojection 130 <- 125 107                                                                |
|   8009 | X_467=[4]:bat[:hge] := aggr.subsum(X_387=[1479209]:bat[:hge], X_422=[1479209]:bat[:oid], C_423=[4]:bat[:oid], true:bit, true:bit); #[141] (0) AGGRsubsum_hge 467 <- 387 422 423 105 105     |
|      4 | X_463=[16]:bat[:hge] := mat.packIncrement(X_583=[16]:bat[:hge], X_467=[4]:bat[:hge]); #[183] (0) MATpackIncrement 463 <- 583 467                                                            |
|     21 | X_109=[4]:bat[:hge] := aggr.subsum(X_463=[16]:bat[:hge], X_99=[16]:bat[:oid], C_100=[4]:bat[:oid], true:bit, true:bit); #[184] (0) AGGRsubsum_hge 109 <- 463 99 100 105 105                 |
|      3 | X_132=[4]:bat[:hge] := algebra.projection(X_125=[4]:bat[:oid], X_109=[4]:bat[:hge]); #[245] (0) ALGprojection 132 <- 125 109                                                                |
|   8810 | X_462=[4]:bat[:hge] := aggr.subsum(X_371=[1479209]:bat[:hge], X_422=[1479209]:bat[:oid], C_423=[4]:bat[:oid], true:bit, true:bit); #[136] (0) AGGRsubsum_hge 462 <- 371 422 423 105 105     |
|      2 | language.pass(X_371=[1479209]:bat[:hge]); #[284] (0) MALpass 651 <- 371                                                                                                                     |
|      4 | X_458=[16]:bat[:hge] := mat.packIncrement(X_579=[16]:bat[:hge], X_462=[4]:bat[:hge]); #[178] (0) MATpackIncrement 458 <- 579 462                                                            |
|      2 | language.pass(C_423=[4]:bat[:oid]); #[289] (0) MALpass 656 <- 423                                                                                                                           |
|      3 | language.pass(X_422=[1479209]:bat[:oid]); #[288] (0) MALpass 655 <- 422                                                                                                                     |
|      5 | X_108=[4]:bat[:hge] := aggr.subsum(X_458=[16]:bat[:hge], X_99=[16]:bat[:oid], C_100=[4]:bat[:oid], true:bit, true:bit); #[179] (0) AGGRsubsum_hge 108 <- 458 99 100 105 105                 |
|      2 | language.pass(X_99=[16]:bat[:oid]); #[297] (0) MALpass 664 <- 99                                                                                                                            |
|      1 | language.pass(C_100=[4]:bat[:oid]); #[298] (0) MALpass 665 <- 100                                                                                                                           |
|      6 | X_131=[4]:bat[:hge] := algebra.projection(X_125=[4]:bat[:oid], X_108=[4]:bat[:hge]); #[244] (0) ALGprojection 131 <- 125 108                                                                |
|      1 | language.pass(X_125=[4]:bat[:oid]); #[301] (0) MALpass 668 <- 125                                                                                                                           |
| 262838 | barrier X_615=false:bit := language.dataflow(); #[2] (0) MALstartDataflow 615                                                                                                               |
|    267 | sql.resultSet(X_138=[10]:bat[:str], X_139=[10]:bat[:str], X_140=[10]:bat[:str], X_141=[10]:bat[:int], X_142=[10]:bat[:int], X_127=[4]:bat[:str], X_128=[4]:bat[:str], X_129=[4]:bat[:hge],  |
:        : X_130=[4]:bat[:hge], X_131=[4]:bat[:hge], X_132=[4]:bat[:hge], X_133=[4]:bat[:dbl], X_134=[4]:bat[:dbl], X_135=[4]:bat[:dbl], X_136=[4]:bat[:lng]); #[303] (0) mvc_table_result_wrap 137 <- :
:        :  138 139 140 141 142 127 128 129 130 131 132 133 134 135 136                                                                                                                                :
+--------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
302 tuples
