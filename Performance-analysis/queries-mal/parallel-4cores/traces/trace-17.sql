operation successful
+------------------------------------------+
| avg_yearly                               |
+==========================================+
|                               348406.054 |
+------------------------------------------+
1 tuple
+-------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| usec  | statement                                                                                                                                                                                    |
+=======+==============================================================================================================================================================================================+
|     4 | X_9=0@0:void := querylog.define("trace select sum(l_extendedprice) / 7.0 as avg_yearly\nfrom lineitem, part\nwhere p_partkey = l_partkey\n and p_brand = \\'Brand#23\\'\n and p_container =  |
:       : \\'MED BOX\\'\n and l_quantity < (\n select 0.2 * avg(l_quantity)\n from lineitem\n where l_partkey = p_partkey\n );":str, "default_pipe":str, 169:int); #[1] (0) QLOGdefineNaive 9 <- 10 11 :
:       :  255                                                                                                                                                                                         :
|     1 | X_12=0:int := sql.mvc(); #[3] (0) SQLmvc 12                                                                                                                                                  |
|     6 | X_60=[200000]:bat[:str] := sql.bind(X_12=0:int, "sys":str, "part":str, "p_container":str, 0:int); #[4] (200000) mvc_bind_wrap 60 <- 12 14 15 61 18                                           |
|     2 | X_25=[200000]:bat[:int] := sql.bind(X_12=0:int, "sys":str, "part":str, "p_partkey":str, 0:int); #[9] (200000) mvc_bind_wrap 25 <- 12 14 15 17 18                                             |
|    25 | X_42=[200000]:bat[:str] := sql.bind(X_12=0:int, "sys":str, "part":str, "p_brand":str, 0:int); #[5] (200000) mvc_bind_wrap 42 <- 12 14 15 43 18                                               |
|     5 | C_13=[200000]:bat[:oid] := sql.tid(X_12=0:int, "sys":str, "part":str); #[6] (200000) SQLtid 13 <- 12 14 15                                                                                   |
|     2 | C_301=[1500303]:bat[:oid] := sql.tid(X_12=0:int, "sys":str, "lineitem":str, 0:int, 4:int); #[11] (0) SQLtid 301 <- 12 14 93 18 300                                                           |
|    74 | X_396=[1500303]:bat[:lng] := sql.bind(X_12=0:int, "sys":str, "lineitem":str, "l_extendedprice":str, 0:int, 2:int, 4:int); #[111] (0) mvc_bind_wrap 396 <- 12 14 93 195 18 23 300             |
|     7 | X_394=[1500303]:bat[:lng] := sql.bind(X_12=0:int, "sys":str, "lineitem":str, "l_extendedprice":str, 0:int, 0:int, 4:int); #[91] (0) mvc_bind_wrap 394 <- 12 14 93 195 18 18 300              |
|     5 | X_340=[1500306]:bat[:lng] := sql.bind(X_12=0:int, "sys":str, "lineitem":str, "l_quantity":str, 0:int, 3:int, 4:int); #[54] (0) mvc_bind_wrap 340 <- 12 14 93 106 18 81 300                   |
|     8 | X_323=[1500306]:bat[:int] := sql.bind(X_12=0:int, "sys":str, "lineitem":str, "l_partkey":str, 0:int, 3:int, 4:int); #[48] (0) mvc_bind_wrap 323 <- 12 14 93 95 18 81 300                     |
|     3 | C_307=[1500306]:bat[:oid] := sql.tid(X_12=0:int, "sys":str, "lineitem":str, 3:int, 4:int); #[47] (0) SQLtid 307 <- 12 14 93 81 300                                                           |
|    48 | X_320=[1500303]:bat[:int] := sql.bind(X_12=0:int, "sys":str, "lineitem":str, "l_partkey":str, 0:int, 0:int, 4:int); #[12] (0) mvc_bind_wrap 320 <- 12 14 93 95 18 18 300                     |
|    41 | X_338=[1500303]:bat[:lng] := sql.bind(X_12=0:int, "sys":str, "lineitem":str, "l_quantity":str, 0:int, 2:int, 4:int); #[42] (0) mvc_bind_wrap 338 <- 12 14 93 106 18 23 300                   |
|     9 | X_412=[1500303]:bat[:int] := algebra.projection(C_301=[1500303]:bat[:oid], X_320=[1500303]:bat[:int]); #[13] (0) ALGprojection 412 <- 301 320                                                |
|     5 | X_322=[1500303]:bat[:int] := sql.bind(X_12=0:int, "sys":str, "lineitem":str, "l_partkey":str, 0:int, 2:int, 4:int); #[36] (0) mvc_bind_wrap 322 <- 12 14 93 95 18 23 300                     |
|     5 | X_334=[1500303]:bat[:lng] := sql.bind(X_12=0:int, "sys":str, "lineitem":str, "l_quantity":str, 0:int, 0:int, 4:int); #[18] (0) mvc_bind_wrap 334 <- 12 14 93 106 18 18 300                   |
|     3 | C_305=[1500303]:bat[:oid] := sql.tid(X_12=0:int, "sys":str, "lineitem":str, 2:int, 4:int); #[35] (0) SQLtid 305 <- 12 14 93 23 300                                                           |
|     3 | X_416=[1500303]:bat[:lng] := algebra.projection(C_301=[1500303]:bat[:oid], X_334=[1500303]:bat[:lng]); #[19] (0) ALGprojection 416 <- 301 334                                                |
|     4 | X_336=[1500303]:bat[:lng] := sql.bind(X_12=0:int, "sys":str, "lineitem":str, "l_quantity":str, 0:int, 1:int, 4:int); #[30] (0) mvc_bind_wrap 336 <- 12 14 93 106 18 20 300                   |
|     2 | C_303=[1500303]:bat[:oid] := sql.tid(X_12=0:int, "sys":str, "lineitem":str, 1:int, 4:int); #[23] (0) SQLtid 303 <- 12 14 93 20 300                                                           |
|     3 | X_321=[1500303]:bat[:int] := sql.bind(X_12=0:int, "sys":str, "lineitem":str, "l_partkey":str, 0:int, 1:int, 4:int); #[24] (0) mvc_bind_wrap 321 <- 12 14 93 95 18 20 300                     |
|     4 | X_417=[1500303]:bat[:lng] := algebra.projection(C_303=[1500303]:bat[:oid], X_336=[1500303]:bat[:lng]); #[31] (0) ALGprojection 417 <- 303 336                                                |
|     2 | X_413=[1500303]:bat[:int] := algebra.projection(C_303=[1500303]:bat[:oid], X_321=[1500303]:bat[:int]); #[25] (0) ALGprojection 413 <- 303 321                                                |
|     3 | X_418=[1500303]:bat[:lng] := algebra.projection(C_305=[1500303]:bat[:oid], X_338=[1500303]:bat[:lng]); #[43] (0) ALGprojection 418 <- 305 338                                                |
|     8 | X_414=[1500303]:bat[:int] := algebra.projection(C_305=[1500303]:bat[:oid], X_322=[1500303]:bat[:int]); #[37] (0) ALGprojection 414 <- 305 322                                                |
|     2 | X_415=[1500306]:bat[:int] := algebra.projection(C_307=[1500306]:bat[:oid], X_323=[1500306]:bat[:int]); #[49] (0) ALGprojection 415 <- 307 323                                                |
|   548 | X_395=[1500303]:bat[:lng] := sql.bind(X_12=0:int, "sys":str, "lineitem":str, "l_extendedprice":str, 0:int, 1:int, 4:int); #[101] (0) mvc_bind_wrap 395 <- 12 14 93 195 18 20 300             |
|     5 | X_397=[1500306]:bat[:lng] := sql.bind(X_12=0:int, "sys":str, "lineitem":str, "l_extendedprice":str, 0:int, 3:int, 4:int); #[121] (0) mvc_bind_wrap 397 <- 12 14 93 195 18 81 300             |
|     3 | X_419=[1500306]:bat[:lng] := algebra.projection(C_307=[1500306]:bat[:oid], X_340=[1500306]:bat[:lng]); #[55] (0) ALGprojection 419 <- 307 340                                                |
|   761 | C_86=[7870]:bat[:oid] := algebra.thetaselect(X_42=[200000]:bat[:str], C_13=[200000]:bat[:oid], "Brand#23":str, "==":str); #[7] (1) ALGthetaselect2 86 <- 42 13 4 87                          |
|   123 | C_91=[204]:bat[:oid] := algebra.thetaselect(X_60=[200000]:bat[:str], C_86=[7870]:bat[:oid], "MED BOX":str, "==":str); #[8] (1) ALGthetaselect2 91 <- 60 86 6 87                              |
|    13 | X_113=[204]:bat[:int] := algebra.projection(C_91=[204]:bat[:oid], X_25=[200000]:bat[:int]); #[10] (0) ALGprojection 113 <- 91 25                                                             |
| 30023 | (X_420=[1621]:bat[:oid], X_421=[1621]:bat[:oid]) := algebra.join(X_412=[1500303]:bat[:int], X_113=[204]:bat[:int], nil:BAT, nil:BAT, false:bit, nil:lng); #[14] (0) ALGjoin 420 421 <- 412 1 |
:       : 13 124 124 126 127                                                                                                                                                                           :
|    11 | X_436=[1621]:bat[:int] := algebra.projection(X_421=[1621]:bat[:oid], X_113=[204]:bat[:int]); #[15] (0) ALGprojection 436 <- 421 113                                                          |
| 30042 | (X_422=[1553]:bat[:oid], X_423=[1553]:bat[:oid]) := algebra.join(X_413=[1500303]:bat[:int], X_113=[204]:bat[:int], nil:BAT, nil:BAT, false:bit, nil:lng); #[26] (0) ALGjoin 422 423 <- 413 1 |
:       : 13 124 124 126 127                                                                                                                                                                           :
|    69 | (X_479=[1621]:bat[:oid], C_480=[204]:bat[:oid]) := group.groupdone(X_436=[1621]:bat[:int]); #[16] (0) GRPgroup3 479 480 <- 436                                                               |
|     4 | X_482=[204]:bat[:int] := algebra.projection(C_480=[204]:bat[:oid], X_436=[1621]:bat[:int]); #[17] (0) ALGprojection 482 <- 480 436                                                           |
|     5 | X_650=[204]:bat[:int] := mat.packIncrement(X_482=[204]:bat[:int], 4:int); #[59] (0) MATpackIncrement 650 <- 482 651                                                                          |
|    15 | X_437=[1553]:bat[:int] := algebra.projection(X_423=[1553]:bat[:oid], X_113=[204]:bat[:int]); #[27] (0) ALGprojection 437 <- 423 113                                                          |
|    47 | X_433=[1553]:bat[:lng] := algebra.projection(X_422=[1553]:bat[:oid], X_417=[1500303]:bat[:lng]); #[32] (0) ALGprojection 433 <- 422 417                                                      |
|    57 | (X_483=[1553]:bat[:oid], C_484=[204]:bat[:oid]) := group.groupdone(X_437=[1553]:bat[:int]); #[28] (0) GRPgroup3 483 484 <- 437                                                               |
|     6 | X_486=[204]:bat[:int] := algebra.projection(C_484=[204]:bat[:oid], X_437=[1553]:bat[:int]); #[29] (0) ALGprojection 486 <- 484 437                                                           |
|     8 | X_497=[1553]:bat[:dbl] := batcalc.dbl(2:int, X_433=[1553]:bat[:lng]); #[33] (0) batlng_dec2_dbl 497 <- 23 433                                                                                |
|     3 | X_652=[408]:bat[:int] := mat.packIncrement(X_650=[408]:bat[:int], X_486=[204]:bat[:int]); #[60] (0) MATpackIncrement 652 <- 650 486                                                          |
|    16 | (X_504=[204]:bat[:dbl], X_505=[204]:bat[:lng]) := aggr.subavg(X_497=[1553]:bat[:dbl], X_483=[1553]:bat[:oid], C_484=[204]:bat[:oid], true:bit, true:bit); #[34] (0) AGGRsubavg2_dbl 504 505  |
:       : <- 497 483 484 148 148                                                                                                                                                                       :
|     1 | language.pass(C_484=[204]:bat[:oid]); #[132] (0) MALpass 669 <- 484                                                                                                                          |
|     1 | language.pass(X_437=[1553]:bat[:int]); #[131] (0) MALpass 668 <- 437                                                                                                                         |
|    48 | X_432=[1621]:bat[:lng] := algebra.projection(X_420=[1621]:bat[:oid], X_416=[1500303]:bat[:lng]); #[20] (0) ALGprojection 432 <- 420 416                                                      |
|     1 | language.pass(X_436=[1621]:bat[:int]); #[129] (0) MALpass 666 <- 436                                                                                                                         |
|     6 | X_496=[1621]:bat[:dbl] := batcalc.dbl(2:int, X_432=[1621]:bat[:lng]); #[21] (0) batlng_dec2_dbl 496 <- 23 432                                                                                |
|    18 | (X_502=[204]:bat[:dbl], X_503=[204]:bat[:lng]) := aggr.subavg(X_496=[1621]:bat[:dbl], X_479=[1621]:bat[:oid], C_480=[204]:bat[:oid], true:bit, true:bit); #[22] (0) AGGRsubavg2_dbl 502 503  |
:       : <- 496 479 480 148 148                                                                                                                                                                       :
| 30397 | (X_426=[1506]:bat[:oid], X_427=[1506]:bat[:oid]) := algebra.join(X_415=[1500306]:bat[:int], X_113=[204]:bat[:int], nil:BAT, nil:BAT, false:bit, nil:lng); #[50] (0) ALGjoin 426 427 <- 415 1 |
:       : 13 124 124 126 127                                                                                                                                                                           :
|     1 | language.pass(C_480=[204]:bat[:oid]); #[130] (0) MALpass 667 <- 480                                                                                                                          |
|     8 | X_439=[1506]:bat[:int] := algebra.projection(X_427=[1506]:bat[:oid], X_113=[204]:bat[:int]); #[51] (0) ALGprojection 439 <- 427 113                                                          |
|     8 | X_659=[204]:bat[:dbl] := mat.packIncrement(X_502=[204]:bat[:dbl], 4:int); #[72] (0) MATpackIncrement 659 <- 502 651                                                                          |
|     3 | X_660=[408]:bat[:dbl] := mat.packIncrement(X_659=[408]:bat[:dbl], X_504=[204]:bat[:dbl]); #[73] (0) MATpackIncrement 660 <- 659 504                                                          |
|    78 | X_435=[1506]:bat[:lng] := algebra.projection(X_426=[1506]:bat[:oid], X_419=[1500306]:bat[:lng]); #[56] (0) ALGprojection 435 <- 426 419                                                      |
|     3 | X_655=[204]:bat[:lng] := mat.packIncrement(X_503=[204]:bat[:lng], 4:int); #[64] (0) MATpackIncrement 655 <- 503 651                                                                          |
|     6 | X_499=[1506]:bat[:dbl] := batcalc.dbl(2:int, X_435=[1506]:bat[:lng]); #[57] (0) batlng_dec2_dbl 499 <- 23 435                                                                                |
|     2 | X_656=[408]:bat[:lng] := mat.packIncrement(X_655=[408]:bat[:lng], X_505=[204]:bat[:lng]); #[65] (0) MATpackIncrement 656 <- 655 505                                                          |
|   150 | (X_491=[1506]:bat[:oid], C_492=[204]:bat[:oid]) := group.groupdone(X_439=[1506]:bat[:int]); #[52] (0) GRPgroup3 491 492 <- 439                                                               |
|     6 | X_494=[204]:bat[:int] := algebra.projection(C_492=[204]:bat[:oid], X_439=[1506]:bat[:int]); #[53] (0) ALGprojection 494 <- 492 439                                                           |
|     1 | language.pass(X_439=[1506]:bat[:int]); #[135] (0) MALpass 672 <- 439                                                                                                                         |
|    14 | (X_508=[204]:bat[:dbl], X_509=[204]:bat[:lng]) := aggr.subavg(X_499=[1506]:bat[:dbl], X_491=[1506]:bat[:oid], C_492=[204]:bat[:oid], true:bit, true:bit); #[58] (0) AGGRsubavg2_dbl 508 509  |
:       : <- 499 491 492 148 148                                                                                                                                                                       :
|     1 | language.pass(C_492=[204]:bat[:oid]); #[136] (0) MALpass 673 <- 492                                                                                                                          |
| 30432 | (X_424=[1408]:bat[:oid], X_425=[1408]:bat[:oid]) := algebra.join(X_414=[1500303]:bat[:int], X_113=[204]:bat[:int], nil:BAT, nil:BAT, false:bit, nil:lng); #[38] (0) ALGjoin 424 425 <- 414 1 |
:       : 13 124 124 126 127                                                                                                                                                                           :
|    25 | X_438=[1408]:bat[:int] := algebra.projection(X_425=[1408]:bat[:oid], X_113=[204]:bat[:int]); #[39] (0) ALGprojection 438 <- 425 113                                                          |
|    82 | (X_487=[1408]:bat[:oid], C_488=[204]:bat[:oid]) := group.groupdone(X_438=[1408]:bat[:int]); #[40] (0) GRPgroup3 487 488 <- 438                                                               |
|    23 | X_490=[204]:bat[:int] := algebra.projection(C_488=[204]:bat[:oid], X_438=[1408]:bat[:int]); #[41] (0) ALGprojection 490 <- 488 438                                                           |
|    69 | X_434=[1408]:bat[:lng] := algebra.projection(X_424=[1408]:bat[:oid], X_418=[1500303]:bat[:lng]); #[44] (0) ALGprojection 434 <- 424 418                                                      |
|     2 | X_653=[612]:bat[:int] := mat.packIncrement(X_652=[612]:bat[:int], X_490=[204]:bat[:int]); #[61] (0) MATpackIncrement 653 <- 652 490                                                          |
|     2 | X_130=[816]:bat[:int] := mat.packIncrement(X_653=[816]:bat[:int], X_494=[204]:bat[:int]); #[62] (0) MATpackIncrement 130 <- 653 494                                                          |
|     6 | X_498=[1408]:bat[:dbl] := batcalc.dbl(2:int, X_434=[1408]:bat[:lng]); #[45] (0) batlng_dec2_dbl 498 <- 23 434                                                                                |
|    14 | (X_506=[204]:bat[:dbl], X_507=[204]:bat[:lng]) := aggr.subavg(X_498=[1408]:bat[:dbl], X_487=[1408]:bat[:oid], C_488=[204]:bat[:oid], true:bit, true:bit); #[46] (0) AGGRsubavg2_dbl 506 507  |
:       : <- 498 487 488 148 148                                                                                                                                                                       :
|     3 | language.pass(X_438=[1408]:bat[:int]); #[133] (0) MALpass 670 <- 438                                                                                                                         |
|    42 | (X_140=[816]:bat[:oid], C_141=[204]:bat[:oid]) := group.groupdone(X_130=[816]:bat[:int]); #[63] (0) GRPgroup3 140 141 <- 130                                                                 |
|     1 | language.pass(C_488=[204]:bat[:oid]); #[134] (0) MALpass 671 <- 488                                                                                                                          |
|     5 | X_150=[204]:bat[:int] := algebra.projection(C_141=[204]:bat[:oid], X_130=[816]:bat[:int]); #[80] (0) ALGprojection 150 <- 141 130                                                            |
|    13 | (X_160=[204]:bat[:oid], X_161=[204]:bat[:oid]) := algebra.join(X_113=[204]:bat[:int], X_150=[204]:bat[:int], nil:BAT, nil:BAT, true:bit, nil:lng); #[81] (0) ALGjoin 160 161 <- 113 150 124  |
:       : 124 148 127                                                                                                                                                                                  :
|     1 | language.pass(X_130=[816]:bat[:int]); #[141] (0) MALpass 678 <- 130                                                                                                                          |
|     4 | X_661=[612]:bat[:dbl] := mat.packIncrement(X_660=[612]:bat[:dbl], X_506=[204]:bat[:dbl]); #[74] (0) MATpackIncrement 661 <- 660 506                                                          |
|    26 | X_657=[612]:bat[:lng] := mat.packIncrement(X_656=[612]:bat[:lng], X_507=[204]:bat[:lng]); #[66] (0) MATpackIncrement 657 <- 656 507                                                          |
|     2 | X_500=[816]:bat[:dbl] := mat.packIncrement(X_661=[816]:bat[:dbl], X_508=[204]:bat[:dbl]); #[75] (0) MATpackIncrement 500 <- 661 508                                                          |
|     4 | X_165=[204]:bat[:int] := algebra.projection(X_160=[204]:bat[:oid], X_113=[204]:bat[:int]); #[82] (0) ALGprojection 165 <- 160 113                                                            |
|     3 | X_501=[816]:bat[:lng] := mat.packIncrement(X_657=[816]:bat[:lng], X_509=[204]:bat[:lng]); #[67] (0) MATpackIncrement 501 <- 657 509                                                          |
|     1 | language.pass(X_113=[204]:bat[:int]); #[142] (0) MALpass 679 <- 113                                                                                                                          |
|     8 | X_510=[204]:bat[:lng] := aggr.subsum(X_501=[816]:bat[:lng], X_140=[816]:bat[:oid], C_141=[204]:bat[:oid], true:bit, true:bit); #[68] (0) AGGRsubsum_lng 510 <- 501 140 141 148 148           |
|    27 | X_518=[816]:bat[:dbl] := batcalc.dbl(X_501=[816]:bat[:lng]); #[76] (0) CMDconvertsignal_dbl 518 <- 501                                                                                       |
|     8 | X_513=[204]:bat[:bit] := batcalc.==(X_510=[204]:bat[:lng], 0:lng); #[69] (0) CMDbatEQ 513 <- 510 514                                                                                         |
|     9 | X_515=[204]:bat[:lng] := batcalc.ifthenelse(X_513=[204]:bat[:bit], nil:lng, X_510=[204]:bat[:lng]); #[70] (0) CMDifthen 515 <- 513 127 510                                                   |
|     1 | language.pass(X_510=[204]:bat[:lng]); #[137] (0) MALpass 674 <- 510                                                                                                                          |
|     6 | X_517=[816]:bat[:lng] := algebra.projection(X_140=[816]:bat[:oid], X_515=[204]:bat[:lng]); #[71] (0) ALGprojection 517 <- 140 515                                                            |
|    11 | X_519=[816]:bat[:dbl] := batcalc./(X_518=[816]:bat[:dbl], X_517=[816]:bat[:lng], nil:BAT, nil:BAT); #[77] (0) CMDbatDIVsignal 519 <- 518 517 124 124                                         |
|    11 | X_522=[816]:bat[:dbl] := batcalc.*(X_500=[816]:bat[:dbl], X_519=[816]:bat[:dbl], nil:BAT, nil:BAT); #[78] (0) CMDbatMULsignal 522 <- 500 519 124 124                                         |
|    56 | X_147=[204]:bat[:dbl] := aggr.subsum(X_522=[816]:bat[:dbl], X_140=[816]:bat[:oid], C_141=[204]:bat[:oid], true:bit, true:bit); #[79] (0) AGGRsubsum_dbl 147 <- 522 140 141 148 148           |
|     1 | language.pass(X_140=[816]:bat[:oid]); #[139] (0) MALpass 676 <- 140                                                                                                                          |
|     4 | X_175=[204]:bat[:dbl] := algebra.projection(X_161=[204]:bat[:oid], X_147=[204]:bat[:dbl]); #[86] (0) ALGprojection 175 <- 161 147                                                            |
|     2 | language.pass(C_141=[204]:bat[:oid]); #[140] (0) MALpass 677 <- 141                                                                                                                          |
|     1 | language.pass(X_501=[816]:bat[:lng]); #[138] (0) MALpass 675 <- 501                                                                                                                          |
| 30235 | (X_546=[1506]:bat[:oid], X_547=[1506]:bat[:oid]) := algebra.join(X_165=[204]:bat[:int], X_415=[1500306]:bat[:int], nil:BAT, nil:BAT, false:bit, nil:lng); #[114] (0) ALGjoin 546 547 <- 165  |
:       : 415 124 124 126 127                                                                                                                                                                          :
|     3 | language.pass(X_415=[1500306]:bat[:int]); #[156] (0) MALpass 693 <- 415                                                                                                                      |
|     8 | X_591=[1506]:bat[:dbl] := algebra.projection(X_546=[1506]:bat[:oid], X_175=[204]:bat[:dbl]); #[117] (0) ALGprojection 591 <- 546 175                                                         |
|    10 | X_611=[1506]:bat[:dbl] := batcalc.*(X_591=[1506]:bat[:dbl], 0.2:dbl, nil:BAT); #[118] (0) CMDbatMULsignal 611 <- 591 293 124                                                                 |
|    93 | X_603=[1506]:bat[:lng] := algebra.projection(X_547=[1506]:bat[:oid], X_419=[1500306]:bat[:lng]); #[115] (0) ALGprojection 603 <- 547 419                                                     |
|     2 | language.pass(X_419=[1500306]:bat[:lng]); #[157] (0) MALpass 694 <- 419                                                                                                                      |
|     7 | X_615=[1506]:bat[:dbl] := batcalc.dbl(2:int, X_603=[1506]:bat[:lng]); #[116] (0) batlng_dec2_dbl 615 <- 23 603                                                                               |
|     8 | X_619=[1506]:bat[:bit] := batcalc.<(X_615=[1506]:bat[:dbl], X_611=[1506]:bat[:dbl]); #[119] (0) CMDbatLT 619 <- 615 611                                                                      |
| 30551 | (X_540=[1621]:bat[:oid], X_541=[1621]:bat[:oid]) := algebra.join(X_165=[204]:bat[:int], X_412=[1500303]:bat[:int], nil:BAT, nil:BAT, false:bit, nil:lng); #[83] (0) ALGjoin 540 541 <- 165 4 |
:       : 12 124 124 126 127                                                                                                                                                                           :
|    11 | C_623=[132]:bat[:oid] := algebra.select(X_619=[1506]:bat[:bit], true:bit, true:bit, true:bit, true:bit, false:bit); #[120] (0) ALGselect1 623 <- 619 148 148 148 148 126                     |
|     3 | language.pass(X_412=[1500303]:bat[:int]); #[143] (0) MALpass 680 <- 412                                                                                                                      |
|    53 | X_600=[1621]:bat[:lng] := algebra.projection(X_541=[1621]:bat[:oid], X_416=[1500303]:bat[:lng]); #[84] (0) ALGprojection 600 <- 541 416                                                      |
|     2 | language.pass(X_416=[1500303]:bat[:lng]); #[144] (0) MALpass 681 <- 416                                                                                                                      |
|     5 | X_588=[1621]:bat[:dbl] := algebra.projection(X_540=[1621]:bat[:oid], X_175=[204]:bat[:dbl]); #[87] (0) ALGprojection 588 <- 540 175                                                          |
|    10 | X_608=[1621]:bat[:dbl] := batcalc.*(X_588=[1621]:bat[:dbl], 0.2:dbl, nil:BAT); #[88] (0) CMDbatMULsignal 608 <- 588 293 124                                                                  |
|     6 | X_612=[1621]:bat[:dbl] := batcalc.dbl(2:int, X_600=[1621]:bat[:lng]); #[85] (0) batlng_dec2_dbl 612 <- 23 600                                                                                |
|     8 | X_616=[1621]:bat[:bit] := batcalc.<(X_612=[1621]:bat[:dbl], X_608=[1621]:bat[:dbl]); #[89] (0) CMDbatLT 616 <- 612 608                                                                       |
|     8 | C_620=[167]:bat[:oid] := algebra.select(X_616=[1621]:bat[:bit], true:bit, true:bit, true:bit, true:bit, false:bit); #[90] (0) ALGselect1 620 <- 616 148 148 148 148 126                      |
|   450 | X_631=[132]:bat[:lng] := algebra.projectionpath(C_623=[132]:bat[:oid], X_547=[1506]:bat[:oid], C_307=[1500306]:bat[:oid], X_397=[1500306]:bat[:lng]); #[122] (0) ALGprojectionpath 631 <- 62 |
:       : 3 547 307 397                                                                                                                                                                                :
|     3 | language.pass(X_547=[1506]:bat[:oid]); #[159] (0) MALpass 696 <- 547                                                                                                                         |
|     4 | X_640=55051028:hge := aggr.sum(X_631=[132]:bat[:lng]); #[123] (0) CMDBATsum 640 <- 631                                                                                                       |
|     1 | language.pass(C_307=[1500306]:bat[:oid]); #[160] (0) MALpass 697 <- 307                                                                                                                      |
|   404 | X_628=[167]:bat[:lng] := algebra.projectionpath(C_620=[167]:bat[:oid], X_541=[1621]:bat[:oid], C_301=[1500303]:bat[:oid], X_394=[1500303]:bat[:lng]); #[92] (0) ALGprojectionpath 628 <- 620 |
:       :  541 301 394                                                                                                                                                                                 :
|     2 | language.pass(X_541=[1621]:bat[:oid]); #[145] (0) MALpass 682 <- 541                                                                                                                         |
|     2 | X_637=69147404:hge := aggr.sum(X_628=[167]:bat[:lng]); #[93] (0) CMDBATsum 637 <- 628                                                                                                        |
|     1 | language.pass(C_301=[1500303]:bat[:oid]); #[146] (0) MALpass 683 <- 301                                                                                                                      |
| 32185 | (X_544=[1408]:bat[:oid], X_545=[1408]:bat[:oid]) := algebra.join(X_165=[204]:bat[:int], X_414=[1500303]:bat[:int], nil:BAT, nil:BAT, false:bit, nil:lng); #[104] (0) ALGjoin 544 545 <- 165  |
:       : 414 124 124 126 127                                                                                                                                                                          :
|     3 | language.pass(X_414=[1500303]:bat[:int]); #[151] (0) MALpass 688 <- 414                                                                                                                      |
|    10 | X_590=[1408]:bat[:dbl] := algebra.projection(X_544=[1408]:bat[:oid], X_175=[204]:bat[:dbl]); #[107] (0) ALGprojection 590 <- 544 175                                                         |
|    48 | X_602=[1408]:bat[:lng] := algebra.projection(X_545=[1408]:bat[:oid], X_418=[1500303]:bat[:lng]); #[105] (0) ALGprojection 602 <- 545 418                                                     |
|     1 | language.pass(X_418=[1500303]:bat[:lng]); #[152] (0) MALpass 689 <- 418                                                                                                                      |
|     9 | X_610=[1408]:bat[:dbl] := batcalc.*(X_590=[1408]:bat[:dbl], 0.2:dbl, nil:BAT); #[108] (0) CMDbatMULsignal 610 <- 590 293 124                                                                 |
|     5 | X_614=[1408]:bat[:dbl] := batcalc.dbl(2:int, X_602=[1408]:bat[:lng]); #[106] (0) batlng_dec2_dbl 614 <- 23 602                                                                               |
|     7 | X_618=[1408]:bat[:bit] := batcalc.<(X_614=[1408]:bat[:dbl], X_610=[1408]:bat[:dbl]); #[109] (0) CMDbatLT 618 <- 614 610                                                                      |
|     9 | C_622=[122]:bat[:oid] := algebra.select(X_618=[1408]:bat[:bit], true:bit, true:bit, true:bit, true:bit, false:bit); #[110] (0) ALGselect1 622 <- 618 148 148 148 148 126                     |
|   306 | X_630=[122]:bat[:lng] := algebra.projectionpath(C_622=[122]:bat[:oid], X_545=[1408]:bat[:oid], C_305=[1500303]:bat[:oid], X_396=[1500303]:bat[:lng]); #[112] (0) ALGprojectionpath 630 <- 62 |
:       : 2 545 305 396                                                                                                                                                                                :
|     1 | language.pass(X_545=[1408]:bat[:oid]); #[153] (0) MALpass 690 <- 545                                                                                                                         |
|     5 | X_639=51266082:hge := aggr.sum(X_630=[122]:bat[:lng]); #[113] (0) CMDBATsum 639 <- 630                                                                                                       |
|     3 | language.pass(C_305=[1500303]:bat[:oid]); #[154] (0) MALpass 691 <- 305                                                                                                                      |
| 32606 | (X_542=[1553]:bat[:oid], X_543=[1553]:bat[:oid]) := algebra.join(X_165=[204]:bat[:int], X_413=[1500303]:bat[:int], nil:BAT, nil:BAT, false:bit, nil:lng); #[94] (0) ALGjoin 542 543 <- 165 4 |
:       : 13 124 124 126 127                                                                                                                                                                           :
|     2 | language.pass(X_165=[204]:bat[:int]); #[155] (0) MALpass 692 <- 165                                                                                                                          |
|    49 | X_589=[1553]:bat[:dbl] := algebra.projection(X_542=[1553]:bat[:oid], X_175=[204]:bat[:dbl]); #[97] (0) ALGprojection 589 <- 542 175                                                          |
|     3 | language.pass(X_413=[1500303]:bat[:int]); #[147] (0) MALpass 684 <- 413                                                                                                                      |
|     2 | language.pass(X_175=[204]:bat[:dbl]); #[158] (0) MALpass 695 <- 175                                                                                                                          |
|    15 | X_609=[1553]:bat[:dbl] := batcalc.*(X_589=[1553]:bat[:dbl], 0.2:dbl, nil:BAT); #[98] (0) CMDbatMULsignal 609 <- 589 293 124                                                                  |
|    50 | X_601=[1553]:bat[:lng] := algebra.projection(X_543=[1553]:bat[:oid], X_417=[1500303]:bat[:lng]); #[95] (0) ALGprojection 601 <- 543 417                                                      |
|     2 | language.pass(X_417=[1500303]:bat[:lng]); #[148] (0) MALpass 685 <- 417                                                                                                                      |
|     9 | X_613=[1553]:bat[:dbl] := batcalc.dbl(2:int, X_601=[1553]:bat[:lng]); #[96] (0) batlng_dec2_dbl 613 <- 23 601                                                                                |
|     7 | X_617=[1553]:bat[:bit] := batcalc.<(X_613=[1553]:bat[:dbl], X_609=[1553]:bat[:dbl]); #[99] (0) CMDbatLT 617 <- 613 609                                                                       |
|     8 | C_621=[166]:bat[:oid] := algebra.select(X_617=[1553]:bat[:bit], true:bit, true:bit, true:bit, true:bit, false:bit); #[100] (0) ALGselect1 621 <- 617 148 148 148 148 126                     |
|   296 | X_629=[166]:bat[:lng] := algebra.projectionpath(C_621=[166]:bat[:oid], X_543=[1553]:bat[:oid], C_303=[1500303]:bat[:oid], X_395=[1500303]:bat[:lng]); #[102] (0) ALGprojectionpath 629 <- 62 |
:       : 1 543 303 395                                                                                                                                                                                :
|     3 | language.pass(X_543=[1553]:bat[:oid]); #[149] (0) MALpass 686 <- 543                                                                                                                         |
|     2 | language.pass(C_303=[1500303]:bat[:oid]); #[150] (0) MALpass 687 <- 303                                                                                                                      |
|     5 | X_638=68419724:hge := aggr.sum(X_629=[166]:bat[:lng]); #[103] (0) CMDBATsum 638 <- 629                                                                                                       |
|     5 | X_636=[4]:bat[:hge] := mat.pack(X_637=69147404:hge, X_638=68419724:hge, X_639=51266082:hge, X_640=55051028:hge); #[124] (0) MATpackValues 636 <- 637 638 639 640                             |
|     2 | X_641=[4]:bat[:hge] := algebra.selectNotNil(X_636=[4]:bat[:hge]); #[125] (0) ALGselectNotNil 641 <- 636                                                                                      |
|     2 | X_241=243884238:hge := aggr.sum(X_641=[4]:bat[:hge]); #[126] (1) CMDBATsum 241 <- 641                                                                                                        |
|     1 | X_242=243884238000:hge := calc.hge(2:int, X_241=243884238:hge, 38:int, 5:int); #[127] (0) hge_dec2dec_hge 242 <- 23 241 243 244                                                              |
|    15 | X_247=348406054:hge := calc./(X_242=243884238000:hge, 700:hge); #[128] (0) CMDvarDIVsignal 247 <- 242 294                                                                                    |
| 72724 | barrier X_664=false:bit := language.dataflow(); #[2] (0) MALstartDataflow 664                                                                                                                |
|    33 | sql.resultSet("sys.":str, "avg_yearly":str, "decimal":str, 38:int, 3:int, 10:int, X_247=348406054:hge); #[162] (0) mvc_scalar_value_wrap 249 <- 250 251 252 243 81 85 247                    |
+-------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
161 tuples
