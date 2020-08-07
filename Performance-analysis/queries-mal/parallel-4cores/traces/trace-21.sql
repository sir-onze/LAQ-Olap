operation successful
+---------------------------+---------+
| s_name                    | numwait |
+===========================+=========+
| Supplier#000002829        |      20 |
| Supplier#000005808        |      18 |
| Supplier#000000262        |      17 |
| Supplier#000000496        |      17 |
| Supplier#000002160        |      17 |
| Supplier#000002301        |      17 |
| Supplier#000002540        |      17 |
| Supplier#000003063        |      17 |
| Supplier#000005178        |      17 |
| Supplier#000008331        |      17 |
| Supplier#000002005        |      16 |
| Supplier#000002095        |      16 |
| Supplier#000005799        |      16 |
| Supplier#000005842        |      16 |
| Supplier#000006450        |      16 |
| Supplier#000006939        |      16 |
| Supplier#000009200        |      16 |
| Supplier#000009727        |      16 |
| Supplier#000000486        |      15 |
| Supplier#000000565        |      15 |
| Supplier#000001046        |      15 |
| Supplier#000001047        |      15 |
| Supplier#000001161        |      15 |
| Supplier#000001336        |      15 |
| Supplier#000001435        |      15 |
| Supplier#000003075        |      15 |
| Supplier#000003335        |      15 |
| Supplier#000005649        |      15 |
| Supplier#000006027        |      15 |
| Supplier#000006795        |      15 |
| Supplier#000006800        |      15 |
| Supplier#000006824        |      15 |
| Supplier#000007131        |      15 |
| Supplier#000007382        |      15 |
| Supplier#000008913        |      15 |
| Supplier#000009787        |      15 |
| Supplier#000000633        |      14 |
| Supplier#000001960        |      14 |
| Supplier#000002323        |      14 |
| Supplier#000002490        |      14 |
| Supplier#000002993        |      14 |
| Supplier#000003101        |      14 |
| Supplier#000004489        |      14 |
| Supplier#000005435        |      14 |
| Supplier#000005583        |      14 |
| Supplier#000005774        |      14 |
| Supplier#000007579        |      14 |
| Supplier#000008180        |      14 |
| Supplier#000008695        |      14 |
| Supplier#000009224        |      14 |
| Supplier#000000357        |      13 |
| Supplier#000000436        |      13 |
| Supplier#000000610        |      13 |
| Supplier#000000788        |      13 |
| Supplier#000000889        |      13 |
| Supplier#000001062        |      13 |
| Supplier#000001498        |      13 |
| Supplier#000002056        |      13 |
| Supplier#000002312        |      13 |
| Supplier#000002344        |      13 |
| Supplier#000002596        |      13 |
| Supplier#000002615        |      13 |
| Supplier#000002978        |      13 |
| Supplier#000003048        |      13 |
| Supplier#000003234        |      13 |
| Supplier#000003727        |      13 |
| Supplier#000003806        |      13 |
| Supplier#000004472        |      13 |
| Supplier#000005236        |      13 |
| Supplier#000005906        |      13 |
| Supplier#000006241        |      13 |
| Supplier#000006326        |      13 |
| Supplier#000006384        |      13 |
| Supplier#000006394        |      13 |
| Supplier#000006624        |      13 |
| Supplier#000006629        |      13 |
| Supplier#000006682        |      13 |
| Supplier#000006737        |      13 |
| Supplier#000006825        |      13 |
| Supplier#000007021        |      13 |
| Supplier#000007417        |      13 |
| Supplier#000007497        |      13 |
| Supplier#000007602        |      13 |
| Supplier#000008134        |      13 |
| Supplier#000008234        |      13 |
| Supplier#000009435        |      13 |
| Supplier#000009436        |      13 |
| Supplier#000009564        |      13 |
| Supplier#000009896        |      13 |
| Supplier#000000379        |      12 |
| Supplier#000000673        |      12 |
| Supplier#000000762        |      12 |
| Supplier#000000811        |      12 |
| Supplier#000000821        |      12 |
| Supplier#000001337        |      12 |
| Supplier#000001916        |      12 |
| Supplier#000001925        |      12 |
| Supplier#000002039        |      12 |
| Supplier#000002357        |      12 |
| Supplier#000002483        |      12 |
+---------------------------+---------+
100 tuples
+--------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| usec   | statement                                                                                                                                                                                   |
+========+=============================================================================================================================================================================================+
|      3 | X_5=0@0:void := querylog.define("trace select s_name, count(*) as numwait\nfrom supplier, lineitem l1, orders, nation\nwhere s_suppkey = l1.l_suppkey\n and o_orderkey = l1.l_orderkey\n an |
:        : d o_orderstatus = \\'F\\'\n and l1.l_receiptdate > l1.l_commitdate\n and exists (\n select *\n from lineitem l2\n where l2.l_orderkey = l1.l_orderkey\n and l2.l_suppkey <> l1.l_suppkey\n  :
:        : )\n and not exists (\n select *\n from lineitem l3\n where l3.l_orderkey = l1.l_orderkey\n and l3.l_suppkey <> l1.l_suppkey\n and l3.l_receiptdate > l3.l_commitdate\n )\n and s_nationkey  :
:        : = n_nationkey\n and n_name = \\'SAUDI ARABIA\\'\ngroup by s_name\norder by numwait desc, s_name\nlimit 100;":str, "default_pipe":str, 255:int); #[1] (0) QLOGdefineNaive 5 <- 6 7 368       :
|      4 | X_8=0:int := sql.mvc(); #[8] (0) SQLmvc 8                                                                                                                                                   |
|     13 | X_358=[2]:bat[:int] := bat.pack(0:int, 0:int); #[7] (0) MATpackValues 358 <- 16 16                                                                                                          |
|     11 | X_357=[2]:bat[:int] := bat.pack(25:int, 64:int); #[6] (0) MATpackValues 357 <- 158 367                                                                                                      |
|     10 | X_473=[1500303]:bat[:date] := sql.bind(X_8=0:int, "sys":str, "lineitem":str, "l_receiptdate":str, 0:int, 0:int, 4:int); #[9] (0) mvc_bind_wrap 473 <- 8 12 13 41 16 16 412                  |
|      4 | X_356=[2]:bat[:str] := bat.pack("char":str, "bigint":str); #[5] (0) MATpackValues 356 <- 361 366                                                                                            |
|     93 | (X_500=[0]:bat[:oid], X_501=[0]:bat[:oid]) := sql.bind_idxbat(X_8=0:int, "sys":str, "lineitem":str, "lineitem_fk1":str, 2:int, 3:int, 4:int); #[301] (0) mvc_bind_idxbat_wrap 500 501 <- 8  |
:        : 12 13 47 21 154 412                                                                                                                                                                         :
|     81 | (X_498=[0]:bat[:oid], X_499=[0]:bat[:oid]) := sql.bind_idxbat(X_8=0:int, "sys":str, "lineitem":str, "lineitem_fk1":str, 2:int, 2:int, 4:int); #[224] (0) mvc_bind_idxbat_wrap 498 499 <- 8  |
:        : 12 13 47 21 21 412                                                                                                                                                                          :
|     44 | X_492=[1500303]:bat[:oid] := sql.bind_idxbat(X_8=0:int, "sys":str, "lineitem":str, "lineitem_fk1":str, 0:int, 2:int, 4:int); #[223] (0) mvc_bind_idxbat_wrap 492 <- 8 12 13 47 16 21 412    |
|     52 | (X_496=[0]:bat[:oid], X_497=[0]:bat[:oid]) := sql.bind_idxbat(X_8=0:int, "sys":str, "lineitem":str, "lineitem_fk1":str, 2:int, 1:int, 4:int); #[147] (0) mvc_bind_idxbat_wrap 496 497 <- 8  |
:        : 12 13 47 21 18 412                                                                                                                                                                          :
|      2 | X_629=[1500303]:bat[:oid] := sql.delta(X_492=[1500303]:bat[:oid], X_498=[0]:bat[:oid], X_499=[0]:bat[:oid]); #[225] (0) DELTAbat2 629 <- 492 498 499                                        |
|    277 | X_493=[1500306]:bat[:oid] := sql.bind_idxbat(X_8=0:int, "sys":str, "lineitem":str, "lineitem_fk1":str, 0:int, 3:int, 4:int); #[300] (0) mvc_bind_idxbat_wrap 493 <- 8 12 13 47 16 154 412   |
|      3 | X_107=[10000]:bat[:str] := sql.bind(X_8=0:int, "sys":str, "supplier":str, "s_name":str, 0:int); #[140] (0) mvc_bind_wrap 107 <- 8 12 95 108 16                                              |
|     13 | X_491=[1500303]:bat[:oid] := sql.bind_idxbat(X_8=0:int, "sys":str, "lineitem":str, "lineitem_fk1":str, 0:int, 1:int, 4:int); #[146] (0) mvc_bind_idxbat_wrap 491 <- 8 12 13 47 16 18 412    |
|      3 | X_476=[1500306]:bat[:date] := sql.bind(X_8=0:int, "sys":str, "lineitem":str, "l_receiptdate":str, 0:int, 3:int, 4:int); #[123] (0) mvc_bind_wrap 476 <- 8 12 13 41 16 154 412               |
|      2 | X_628=[1500303]:bat[:oid] := sql.delta(X_491=[1500303]:bat[:oid], X_496=[0]:bat[:oid], X_497=[0]:bat[:oid]); #[148] (0) DELTAbat2 628 <- 491 496 497                                        |
|     42 | X_464=[1500306]:bat[:date] := sql.bind(X_8=0:int, "sys":str, "lineitem":str, "l_commitdate":str, 0:int, 3:int, 4:int); #[124] (0) mvc_bind_wrap 464 <- 8 12 13 35 16 154 412                |
|     10 | X_354=[2]:bat[:str] := bat.pack("sys.supplier":str, "sys.":str); #[3] (0) MATpackValues 354 <- 359 364                                                                                      |
|      4 | X_355=[2]:bat[:str] := bat.pack("s_name":str, "numwait":str); #[4] (0) MATpackValues 355 <- 108 365                                                                                         |
|      5 | X_475=[1500303]:bat[:date] := sql.bind(X_8=0:int, "sys":str, "lineitem":str, "l_receiptdate":str, 0:int, 2:int, 4:int); #[111] (0) mvc_bind_wrap 475 <- 8 12 13 41 16 21 412                |
|      3 | X_461=[1500303]:bat[:date] := sql.bind(X_8=0:int, "sys":str, "lineitem":str, "l_commitdate":str, 0:int, 0:int, 4:int); #[10] (0) mvc_bind_wrap 461 <- 8 12 13 35 16 16 412                  |
|      3 | X_462=[1500303]:bat[:date] := sql.bind(X_8=0:int, "sys":str, "lineitem":str, "l_commitdate":str, 0:int, 1:int, 4:int); #[100] (0) mvc_bind_wrap 462 <- 8 12 13 35 16 18 412                 |
|      2 | X_474=[1500303]:bat[:date] := sql.bind(X_8=0:int, "sys":str, "lineitem":str, "l_receiptdate":str, 0:int, 1:int, 4:int); #[99] (0) mvc_bind_wrap 474 <- 8 12 13 41 16 18 412                 |
|    113 | X_463=[1500303]:bat[:date] := sql.bind(X_8=0:int, "sys":str, "lineitem":str, "l_commitdate":str, 0:int, 2:int, 4:int); #[112] (0) mvc_bind_wrap 463 <- 8 12 13 35 16 21 412                 |
|     33 | X_452=[1500306]:bat[:int] := sql.bind(X_8=0:int, "sys":str, "lineitem":str, "l_suppkey":str, 0:int, 3:int, 4:int); #[78] (0) mvc_bind_wrap 452 <- 8 12 13 29 16 154 412                     |
|   4575 | X_632=[1500303]:bat[:bit] := batcalc.>(X_474=[1500303]:bat[:date], X_462=[1500303]:bat[:date]); #[101] (0) CMDbatGT 632 <- 474 462                                                          |
|   4627 | X_633=[1500303]:bat[:bit] := batcalc.>(X_475=[1500303]:bat[:date], X_463=[1500303]:bat[:date]); #[113] (0) CMDbatGT 633 <- 475 463                                                          |
|      6 | C_419=[1500306]:bat[:oid] := sql.tid(X_8=0:int, "sys":str, "lineitem":str, 3:int, 4:int); #[74] (0) SQLtid 419 <- 8 12 13 154 412                                                           |
|      5 | X_806=[1500306]:bat[:int] := algebra.projection(C_419=[1500306]:bat[:oid], X_452=[1500306]:bat[:int]); #[79] (0) ALGprojection 806 <- 419 452                                               |
|   4800 | X_634=[1500306]:bat[:bit] := batcalc.>(X_476=[1500306]:bat[:date], X_464=[1500306]:bat[:date]); #[125] (0) CMDbatGT 634 <- 476 464                                                          |
|      3 | X_450=[1500303]:bat[:int] := sql.bind(X_8=0:int, "sys":str, "lineitem":str, "l_suppkey":str, 0:int, 2:int, 4:int); #[67] (0) mvc_bind_wrap 450 <- 8 12 13 29 16 21 412                      |
|     47 | X_435=[1500306]:bat[:lng] := sql.bind(X_8=0:int, "sys":str, "lineitem":str, "l_orderkey":str, 0:int, 3:int, 4:int); #[75] (0) mvc_bind_wrap 435 <- 8 12 13 15 16 154 412                    |
|      7 | X_434=[1500303]:bat[:lng] := sql.bind(X_8=0:int, "sys":str, "lineitem":str, "l_orderkey":str, 0:int, 2:int, 4:int); #[64] (0) mvc_bind_wrap 434 <- 8 12 13 15 16 21 412                     |
|      3 | C_417=[1500303]:bat[:oid] := sql.tid(X_8=0:int, "sys":str, "lineitem":str, 2:int, 4:int); #[63] (0) SQLtid 417 <- 8 12 13 21 412                                                            |
|      3 | X_448=[1500303]:bat[:int] := sql.bind(X_8=0:int, "sys":str, "lineitem":str, "l_suppkey":str, 0:int, 1:int, 4:int); #[56] (0) mvc_bind_wrap 448 <- 8 12 13 29 16 18 412                      |
|      2 | C_415=[1500303]:bat[:oid] := sql.tid(X_8=0:int, "sys":str, "lineitem":str, 1:int, 4:int); #[52] (0) SQLtid 415 <- 8 12 13 18 412                                                            |
|      3 | X_433=[1500303]:bat[:lng] := sql.bind(X_8=0:int, "sys":str, "lineitem":str, "l_orderkey":str, 0:int, 1:int, 4:int); #[53] (0) mvc_bind_wrap 433 <- 8 12 13 15 16 18 412                     |
|      3 | X_432=[1500303]:bat[:lng] := sql.bind(X_8=0:int, "sys":str, "lineitem":str, "l_orderkey":str, 0:int, 0:int, 4:int); #[39] (0) mvc_bind_wrap 432 <- 8 12 13 15 16 16 412                     |
|      3 | X_146=[25]:bat[:str] := sql.bind(X_8=0:int, "sys":str, "nation":str, "n_name":str, 0:int); #[35] (0) mvc_bind_wrap 146 <- 8 12 139 141 16                                                   |
|      4 | X_115=[0]:bat[:oid] := sql.bind_idxbat(X_8=0:int, "sys":str, "supplier":str, "supplier_fk1":str, 1:int); #[31] (0) mvc_bind_idxbat_wrap 115 <- 8 12 95 114 18                               |
|      3 | (X_116=[0]:bat[:oid], X_117=[0]:bat[:oid]) := sql.bind_idxbat(X_8=0:int, "sys":str, "supplier":str, "supplier_fk1":str, 2:int); #[30] (0) mvc_bind_idxbat_wrap 116 117 <- 8 12 95 114 21    |
|      1 | X_113=[10000]:bat[:oid] := sql.bind_idxbat(X_8=0:int, "sys":str, "supplier":str, "supplier_fk1":str, 0:int); #[29] (0) mvc_bind_idxbat_wrap 113 <- 8 12 95 114 16                           |
|     37 | C_138=[25]:bat[:oid] := sql.tid(X_8=0:int, "sys":str, "nation":str); #[36] (0) SQLtid 138 <- 8 12 139                                                                                       |
|      3 | X_102=[10000]:bat[:int] := sql.bind(X_8=0:int, "sys":str, "supplier":str, "s_suppkey":str, 0:int); #[26] (0) mvc_bind_wrap 102 <- 8 12 95 97 16                                             |
|      3 | C_94=[10000]:bat[:oid] := sql.tid(X_8=0:int, "sys":str, "supplier":str); #[25] (0) SQLtid 94 <- 8 12 95                                                                                     |
|     29 | X_446=[1500303]:bat[:int] := sql.bind(X_8=0:int, "sys":str, "lineitem":str, "l_suppkey":str, 0:int, 0:int, 4:int); #[22] (0) mvc_bind_wrap 446 <- 8 12 13 29 16 16 412                      |
|     45 | X_120=[10000]:bat[:str] := algebra.projection(C_94=[10000]:bat[:oid], X_107=[10000]:bat[:str]); #[141] (0) ALGprojection 120 <- 94 107                                                      |
|     75 | C_59=[1500000]:bat[:oid] := sql.tid(X_8=0:int, "sys":str, "orders":str); #[19] (0) SQLtid 59 <- 8 12 60                                                                                     |
|   8461 | X_631=[1500303]:bat[:bit] := batcalc.>(X_473=[1500303]:bat[:date], X_461=[1500303]:bat[:date]); #[11] (0) CMDbatGT 631 <- 473 461                                                           |
|      8 | C_413=[1500303]:bat[:oid] := sql.tid(X_8=0:int, "sys":str, "lineitem":str, 0:int, 4:int); #[12] (0) SQLtid 413 <- 8 12 13 16 412                                                            |
|      5 | X_799=[1500303]:bat[:lng] := algebra.projection(C_413=[1500303]:bat[:oid], X_432=[1500303]:bat[:lng]); #[43] (0) ALGprojection 799 <- 413 432                                               |
|     14 | X_490=[1500303]:bat[:oid] := sql.bind_idxbat(X_8=0:int, "sys":str, "lineitem":str, "lineitem_fk1":str, 0:int, 0:int, 4:int); #[14] (0) mvc_bind_idxbat_wrap 490 <- 8 12 13 47 16 16 412     |
|      6 | (X_494=[0]:bat[:oid], X_495=[0]:bat[:oid]) := sql.bind_idxbat(X_8=0:int, "sys":str, "lineitem":str, "lineitem_fk1":str, 2:int, 0:int, 4:int); #[15] (0) mvc_bind_idxbat_wrap 494 495 <- 8 1 |
:        : 2 13 47 21 16 412                                                                                                                                                                           :
|      3 | X_67=[1500000]:bat[:str] := sql.bind(X_8=0:int, "sys":str, "orders":str, "o_orderstatus":str, 0:int); #[18] (0) mvc_bind_wrap 67 <- 8 12 60 62 16                                           |
|      3 | X_119=[10000]:bat[:int] := algebra.projection(C_94=[10000]:bat[:oid], X_102=[10000]:bat[:int]); #[27] (0) ALGprojection 119 <- 94 102                                                       |
|      1 | X_118=[10000]:bat[:oid] := sql.delta(X_113=[10000]:bat[:oid], X_116=[0]:bat[:oid], X_117=[0]:bat[:oid], X_115=[0]:bat[:oid]); #[32] (0) DELTAbat 118 <- 113 116 117 115                     |
|      3 | X_121=[10000]:bat[:oid] := algebra.projection(C_94=[10000]:bat[:oid], X_118=[10000]:bat[:oid]); #[33] (0) ALGprojection 121 <- 94 118                                                       |
|     41 | C_159=[1]:bat[:oid] := algebra.thetaselect(X_146=[25]:bat[:str], C_138=[25]:bat[:oid], "SAUDI ARABIA":str, "==":str); #[37] (1) ALGthetaselect2 159 <- 146 138 4 75                         |
|      4 | X_800=[1500303]:bat[:lng] := algebra.projection(C_415=[1500303]:bat[:oid], X_433=[1500303]:bat[:lng]); #[54] (0) ALGprojection 800 <- 415 433                                               |
|      3 | X_804=[1500303]:bat[:int] := algebra.projection(C_415=[1500303]:bat[:oid], X_448=[1500303]:bat[:int]); #[57] (0) ALGprojection 804 <- 415 448                                               |
|      2 | X_801=[1500303]:bat[:lng] := algebra.projection(C_417=[1500303]:bat[:oid], X_434=[1500303]:bat[:lng]); #[65] (0) ALGprojection 801 <- 417 434                                               |
|      3 | X_805=[1500303]:bat[:int] := algebra.projection(C_417=[1500303]:bat[:oid], X_450=[1500303]:bat[:int]); #[68] (0) ALGprojection 805 <- 417 450                                               |
|      3 | X_802=[1500306]:bat[:lng] := algebra.projection(C_419=[1500306]:bat[:oid], X_435=[1500306]:bat[:lng]); #[76] (0) ALGprojection 802 <- 419 435                                               |
|   8590 | C_636=[947455]:bat[:oid] := algebra.select(X_632=[1500303]:bat[:bit], C_415=[1500303]:bat[:oid], true:bit, true:bit, true:bit, true:bit, false:bit); #[102] (0) ALGselect2 636 <- 632 415 5 |
:        : 6 56 56 56 58                                                                                                                                                                               :
|      3 | language.pass(C_415=[1500303]:bat[:oid]); #[413] (0) MALpass 1690 <- 415                                                                                                                    |
|   8602 | C_638=[948712]:bat[:oid] := algebra.select(X_634=[1500306]:bat[:bit], C_419=[1500306]:bat[:oid], true:bit, true:bit, true:bit, true:bit, false:bit); #[126] (0) ALGselect2 638 <- 634 419 5 |
:        : 6 56 56 56 58                                                                                                                                                                               :
|      4 | X_803=[1500303]:bat[:int] := algebra.projection(C_413=[1500303]:bat[:oid], X_446=[1500303]:bat[:int]); #[45] (0) ALGprojection 803 <- 413 446                                               |
|      3 | language.pass(C_419=[1500306]:bat[:oid]); #[421] (0) MALpass 1698 <- 419                                                                                                                    |
|   8638 | C_637=[948203]:bat[:oid] := algebra.select(X_633=[1500303]:bat[:bit], C_417=[1500303]:bat[:oid], true:bit, true:bit, true:bit, true:bit, false:bit); #[114] (0) ALGselect2 637 <- 633 417 5 |
:        : 6 56 56 56 58                                                                                                                                                                               :
|      5 | X_48=[0]:bat[:oid] := sql.bind_idxbat(X_8=0:int, "sys":str, "lineitem":str, "lineitem_fk1":str, 1:int); #[302] (0) mvc_bind_idxbat_wrap 48 <- 8 12 13 47 18                                 |
|      2 | language.pass(C_417=[1500303]:bat[:oid]); #[417] (0) MALpass 1694 <- 417                                                                                                                    |
|      3 | X_630=[1500306]:bat[:oid] := sql.delta(X_493=[1500306]:bat[:oid], X_500=[0]:bat[:oid], X_501=[0]:bat[:oid], X_48=[0]:bat[:oid]); #[303] (0) DELTAbat 630 <- 493 500 501 48                  |
|   5545 | X_644=[947455]:bat[:int] := algebra.projection(C_636=[947455]:bat[:oid], X_448=[1500303]:bat[:int]); #[105] (0) ALGprojection 644 <- 636 448                                                |
|      6 | language.pass(X_448=[1500303]:bat[:int]); #[415] (0) MALpass 1692 <- 448                                                                                                                    |
|   9800 | C_635=[948926]:bat[:oid] := algebra.select(X_631=[1500303]:bat[:bit], C_413=[1500303]:bat[:oid], true:bit, true:bit, true:bit, true:bit, false:bit); #[13] (0) ALGselect2 635 <- 631 413 56 |
:        :  56 56 56 58                                                                                                                                                                                :
|      4 | language.pass(C_413=[1500303]:bat[:oid]); #[402] (0) MALpass 1679 <- 413                                                                                                                    |
|      4 | X_627=[1500303]:bat[:oid] := sql.delta(X_490=[1500303]:bat[:oid], X_494=[0]:bat[:oid], X_495=[0]:bat[:oid]); #[16] (0) DELTAbat2 627 <- 490 494 495                                         |
|   8670 | X_658=[948712]:bat[:oid] := algebra.projection(C_638=[948712]:bat[:oid], X_630=[1500306]:bat[:oid]); #[304] (0) ALGprojection 658 <- 638 630                                                |
|   9021 | X_656=[947455]:bat[:oid] := algebra.projection(C_636=[947455]:bat[:oid], X_628=[1500303]:bat[:oid]); #[149] (0) ALGprojection 656 <- 636 628                                                |
|   9554 | X_657=[948203]:bat[:oid] := algebra.projection(C_637=[948203]:bat[:oid], X_629=[1500303]:bat[:oid]); #[226] (0) ALGprojection 657 <- 637 629                                                |
|   6446 | X_643=[948926]:bat[:int] := algebra.projection(C_635=[948926]:bat[:oid], X_446=[1500303]:bat[:int]); #[23] (0) ALGprojection 643 <- 635 446                                                 |
|      6 | language.pass(X_446=[1500303]:bat[:int]); #[403] (0) MALpass 1680 <- 446                                                                                                                    |
|  10829 | X_655=[948926]:bat[:oid] := algebra.projection(C_635=[948926]:bat[:oid], X_627=[1500303]:bat[:oid]); #[17] (0) ALGprojection 655 <- 635 627                                                 |
|   4339 | X_645=[948203]:bat[:int] := algebra.projection(C_637=[948203]:bat[:oid], X_450=[1500303]:bat[:int]); #[117] (0) ALGprojection 645 <- 637 450                                                |
|      4 | language.pass(X_450=[1500303]:bat[:int]); #[419] (0) MALpass 1696 <- 450                                                                                                                    |
|  12166 | X_639=[948926]:bat[:lng] := algebra.projection(C_635=[948926]:bat[:oid], X_432=[1500303]:bat[:lng]); #[40] (0) ALGprojection 639 <- 635 432                                                 |
|      7 | language.pass(X_432=[1500303]:bat[:lng]); #[401] (0) MALpass 1678 <- 432                                                                                                                    |
|      5 | language.pass(C_635=[948926]:bat[:oid]); #[399] (0) MALpass 1676 <- 635                                                                                                                     |
|   6467 | X_641=[948203]:bat[:lng] := algebra.projection(C_637=[948203]:bat[:oid], X_434=[1500303]:bat[:lng]); #[115] (0) ALGprojection 641 <- 637 434                                                |
|      4 | language.pass(C_637=[948203]:bat[:oid]); #[456] (0) MALpass 1733 <- 637                                                                                                                     |
|      2 | language.pass(X_434=[1500303]:bat[:lng]); #[418] (0) MALpass 1695 <- 434                                                                                                                    |
|   5490 | X_646=[948712]:bat[:int] := algebra.projection(C_638=[948712]:bat[:oid], X_452=[1500306]:bat[:int]); #[129] (0) ALGprojection 646 <- 638 452                                                |
|      6 | language.pass(X_452=[1500306]:bat[:int]); #[424] (0) MALpass 1701 <- 452                                                                                                                    |
|      2 | language.pass(C_94=[10000]:bat[:oid]); #[427] (0) MALpass 1704 <- 94                                                                                                                        |
|   7633 | X_640=[947455]:bat[:lng] := algebra.projection(C_636=[947455]:bat[:oid], X_433=[1500303]:bat[:lng]); #[103] (0) ALGprojection 640 <- 636 433                                                |
|      3 | language.pass(C_636=[947455]:bat[:oid]); #[434] (0) MALpass 1711 <- 636                                                                                                                     |
|      1 | language.pass(X_433=[1500303]:bat[:lng]); #[414] (0) MALpass 1691 <- 433                                                                                                                    |
|   6621 | X_642=[948712]:bat[:lng] := algebra.projection(C_638=[948712]:bat[:oid], X_435=[1500306]:bat[:lng]); #[127] (0) ALGprojection 642 <- 638 435                                                |
|      3 | language.pass(C_638=[948712]:bat[:oid]); #[478] (0) MALpass 1755 <- 638                                                                                                                     |
|      1 | language.pass(X_435=[1500306]:bat[:lng]); #[422] (0) MALpass 1699 <- 435                                                                                                                    |
|  10626 | C_74=[729413]:bat[:oid] := algebra.thetaselect(X_67=[1500000]:bat[:str], C_59=[1500000]:bat[:oid], "F":str, "==":str); #[20] (1) ALGthetaselect2 74 <- 67 59 2 75                           |
|   8898 | X_665=[458076]:bat[:oid] := algebra.join(X_658=[948712]:bat[:oid], C_74=[729413]:bat[:oid], nil:BAT, nil:BAT, false:bit, nil:lng); #[305] (0) ALGjoin1 665 <- 658 74 84 84 58 86            |
|   8957 | X_663=[456299]:bat[:oid] := algebra.join(X_657=[948203]:bat[:oid], C_74=[729413]:bat[:oid], nil:BAT, nil:BAT, false:bit, nil:lng); #[227] (0) ALGjoin1 663 <- 657 74 84 84 58 86            |
|   8973 | X_661=[457126]:bat[:oid] := algebra.join(X_656=[947455]:bat[:oid], C_74=[729413]:bat[:oid], nil:BAT, nil:BAT, false:bit, nil:lng); #[150] (0) ALGjoin1 661 <- 656 74 84 84 58 86            |
|   9587 | X_659=[457410]:bat[:oid] := algebra.join(X_655=[948926]:bat[:oid], C_74=[729413]:bat[:oid], nil:BAT, nil:BAT, false:bit, nil:lng); #[21] (0) ALGjoin1 659 <- 655 74 84 84 58 86             |
|      7 | language.pass(C_74=[729413]:bat[:oid]); #[479] (0) MALpass 1756 <- 74                                                                                                                       |
|   2939 | X_674=[458076]:bat[:int] := algebra.projection(X_665=[458076]:bat[:oid], X_646=[948712]:bat[:int]); #[306] (0) ALGprojection 674 <- 665 646                                                 |
|   2910 | X_673=[456299]:bat[:int] := algebra.projection(X_663=[456299]:bat[:oid], X_645=[948203]:bat[:int]); #[228] (0) ALGprojection 673 <- 663 645                                                 |
|   3007 | X_672=[457126]:bat[:int] := algebra.projection(X_661=[457126]:bat[:oid], X_644=[947455]:bat[:int]); #[151] (0) ALGprojection 672 <- 661 644                                                 |
|   2847 | X_671=[457410]:bat[:int] := algebra.projection(X_659=[457410]:bat[:oid], X_643=[948926]:bat[:int]); #[24] (0) ALGprojection 671 <- 659 643                                                  |
|   8202 | (X_695=[457410]:bat[:oid], X_696=[457410]:bat[:oid]) := algebra.join(X_671=[457410]:bat[:int], X_119=[10000]:bat[:int], nil:BAT, nil:BAT, false:bit, nil:lng); #[28] (0) ALGjoin 695 696 <- |
:        :  671 119 84 84 58 86                                                                                                                                                                        :
|  10092 | (X_699=[456299]:bat[:oid], X_700=[456299]:bat[:oid]) := algebra.join(X_673=[456299]:bat[:int], X_119=[10000]:bat[:int], nil:BAT, nil:BAT, false:bit, nil:lng); #[229] (0) ALGjoin 699 700 < |
:        : - 673 119 84 84 58 86                                                                                                                                                                       :
|  10419 | (X_701=[458076]:bat[:oid], X_702=[458076]:bat[:oid]) := algebra.join(X_674=[458076]:bat[:int], X_119=[10000]:bat[:int], nil:BAT, nil:BAT, false:bit, nil:lng); #[307] (0) ALGjoin 701 702 < |
:        : - 674 119 84 84 58 86                                                                                                                                                                       :
|  11286 | (X_697=[457126]:bat[:oid], X_698=[457126]:bat[:oid]) := algebra.join(X_672=[457126]:bat[:int], X_119=[10000]:bat[:int], nil:BAT, nil:BAT, false:bit, nil:lng); #[152] (0) ALGjoin 697 698 < |
:        : - 672 119 84 84 58 86                                                                                                                                                                       :
|      5 | language.pass(X_119=[10000]:bat[:int]); #[480] (0) MALpass 1757 <- 119                                                                                                                      |
|   3179 | X_739=[457410]:bat[:oid] := algebra.projection(X_696=[457410]:bat[:oid], X_121=[10000]:bat[:oid]); #[34] (0) ALGprojection 739 <- 696 121                                                   |
|   3108 | X_741=[456299]:bat[:oid] := algebra.projection(X_700=[456299]:bat[:oid], X_121=[10000]:bat[:oid]); #[230] (0) ALGprojection 741 <- 700 121                                                  |
|   3149 | X_742=[458076]:bat[:oid] := algebra.projection(X_702=[458076]:bat[:oid], X_121=[10000]:bat[:oid]); #[308] (0) ALGprojection 742 <- 702 121                                                  |
|   2765 | X_740=[457126]:bat[:oid] := algebra.projection(X_698=[457126]:bat[:oid], X_121=[10000]:bat[:oid]); #[153] (0) ALGprojection 740 <- 698 121                                                  |
|      4 | language.pass(X_121=[10000]:bat[:oid]); #[481] (0) MALpass 1758 <- 121                                                                                                                      |
|   2341 | X_743=[18928]:bat[:oid] := algebra.join(X_739=[457410]:bat[:oid], C_159=[1]:bat[:oid], nil:BAT, nil:BAT, false:bit, nil:lng); #[38] (0) ALGjoin1 743 <- 739 159 84 84 58 86                 |
|   1546 | X_747=[18959]:bat[:oid] := algebra.join(X_741=[456299]:bat[:oid], C_159=[1]:bat[:oid], nil:BAT, nil:BAT, false:bit, nil:lng); #[231] (0) ALGjoin1 747 <- 741 159 84 84 58 86                |
|   1604 | X_749=[19095]:bat[:oid] := algebra.join(X_742=[458076]:bat[:oid], C_159=[1]:bat[:oid], nil:BAT, nil:BAT, false:bit, nil:lng); #[309] (0) ALGjoin1 749 <- 742 159 84 84 58 86                |
|   1451 | X_745=[18889]:bat[:oid] := algebra.join(X_740=[457126]:bat[:oid], C_159=[1]:bat[:oid], nil:BAT, nil:BAT, false:bit, nil:lng); #[154] (0) ALGjoin1 745 <- 740 159 84 84 58 86                |
|      2 | language.pass(C_159=[1]:bat[:oid]); #[482] (0) MALpass 1759 <- 159                                                                                                                          |
|   1966 | X_751=[18928]:bat[:lng] := algebra.projectionpath(X_743=[18928]:bat[:oid], X_695=[457410]:bat[:oid], X_659=[457410]:bat[:oid], X_639=[948926]:bat[:lng]); #[41] (0) ALGprojectionpath 751 < |
:        : - 743 695 659 639                                                                                                                                                                           :
|      2 | language.pass(X_659=[457410]:bat[:oid]); #[400] (0) MALpass 1677 <- 659                                                                                                                     |
|      3 | C_1111=[18928]:bat[:oid] := bat.mirror(X_751=[18928]:bat[:lng]); #[42] (0) BKCmirror 1111 <- 751                                                                                            |
|   1726 | X_753=[18959]:bat[:lng] := algebra.projectionpath(X_747=[18959]:bat[:oid], X_699=[456299]:bat[:oid], X_663=[456299]:bat[:oid], X_641=[948203]:bat[:lng]); #[232] (0) ALGprojectionpath 753  |
:        : <- 747 699 663 641                                                                                                                                                                          :
|      2 | language.pass(X_663=[456299]:bat[:oid]); #[457] (0) MALpass 1734 <- 663                                                                                                                     |
|      8 | (X_813=[0]:bat[:oid], X_814=[0]:bat[:oid]) := algebra.join(X_751=[18928]:bat[:lng], X_802=[1500306]:bat[:lng], nil:BAT, nil:BAT, false:bit, nil:lng); #[77] (0) ALGjoin 813 814 <- 751 802  |
:        : 84 84 58 86                                                                                                                                                                                 :
|      4 | X_1050=[0]:bat[:int] := algebra.projection(X_814=[0]:bat[:oid], X_806=[1500306]:bat[:int]); #[80] (0) ALGprojection 1050 <- 814 806                                                         |
|    756 | X_758=[19095]:bat[:int] := algebra.projectionpath(X_749=[19095]:bat[:oid], X_701=[458076]:bat[:oid], X_674=[458076]:bat[:int]); #[314] (0) ALGprojectionpath 758 <- 749 701 674             |
|      3 | language.pass(X_674=[458076]:bat[:int]); #[487] (0) MALpass 1764 <- 674                                                                                                                     |
|     23 | (X_829=[0]:bat[:oid], X_830=[0]:bat[:oid]) := algebra.join(X_753=[18959]:bat[:lng], X_802=[1500306]:bat[:lng], nil:BAT, nil:BAT, false:bit, nil:lng); #[253] (0) ALGjoin 829 830 <- 753 802 |
:        :  84 84 58 86                                                                                                                                                                                :
|      9 | X_1058=[0]:bat[:int] := algebra.projection(X_830=[0]:bat[:oid], X_806=[1500306]:bat[:int]); #[254] (0) ALGprojection 1058 <- 830 806                                                        |
|     11 | (X_825=[0]:bat[:oid], X_826=[0]:bat[:oid]) := algebra.join(X_753=[18959]:bat[:lng], X_800=[1500303]:bat[:lng], nil:BAT, nil:BAT, false:bit, nil:lng); #[241] (0) ALGjoin 825 826 <- 753 800 |
:        :  84 84 58 86                                                                                                                                                                                :
|      9 | X_1056=[0]:bat[:int] := algebra.projection(X_826=[0]:bat[:oid], X_804=[1500303]:bat[:int]); #[242] (0) ALGprojection 1056 <- 826 804                                                        |
|     10 | (X_823=[0]:bat[:oid], X_824=[0]:bat[:oid]) := algebra.join(X_753=[18959]:bat[:lng], X_799=[1500303]:bat[:lng], nil:BAT, nil:BAT, false:bit, nil:lng); #[234] (0) ALGjoin 823 824 <- 753 799 |
:        :  84 84 58 86                                                                                                                                                                                :
|     12 | X_1055=[0]:bat[:int] := algebra.projection(X_824=[0]:bat[:oid], X_803=[1500303]:bat[:int]); #[235] (0) ALGprojection 1055 <- 824 803                                                        |
|      3 | C_1113=[18959]:bat[:oid] := bat.mirror(X_753=[18959]:bat[:lng]); #[233] (0) BKCmirror 1113 <- 753                                                                                           |
|     16 | (X_811=[0]:bat[:oid], X_812=[0]:bat[:oid]) := algebra.join(X_751=[18928]:bat[:lng], X_801=[1500303]:bat[:lng], nil:BAT, nil:BAT, false:bit, nil:lng); #[66] (0) ALGjoin 811 812 <- 751 801  |
:        : 84 84 58 86                                                                                                                                                                                 :
|      8 | X_1049=[0]:bat[:int] := algebra.projection(X_812=[0]:bat[:oid], X_805=[1500303]:bat[:int]); #[69] (0) ALGprojection 1049 <- 812 805                                                         |
|      9 | (X_809=[0]:bat[:oid], X_810=[0]:bat[:oid]) := algebra.join(X_751=[18928]:bat[:lng], X_800=[1500303]:bat[:lng], nil:BAT, nil:BAT, false:bit, nil:lng); #[55] (0) ALGjoin 809 810 <- 751 800  |
:        : 84 84 58 86                                                                                                                                                                                 :
|      7 | X_1048=[0]:bat[:int] := algebra.projection(X_810=[0]:bat[:oid], X_804=[1500303]:bat[:int]); #[58] (0) ALGprojection 1048 <- 810 804                                                         |
|    570 | X_756=[18889]:bat[:int] := algebra.projectionpath(X_745=[18889]:bat[:oid], X_697=[457126]:bat[:oid], X_672=[457126]:bat[:int]); #[159] (0) ALGprojectionpath 756 <- 745 697 672             |
|      2 | language.pass(X_672=[457126]:bat[:int]); #[437] (0) MALpass 1714 <- 672                                                                                                                     |
|   2322 | X_754=[19095]:bat[:lng] := algebra.projectionpath(X_749=[19095]:bat[:oid], X_701=[458076]:bat[:oid], X_665=[458076]:bat[:oid], X_642=[948712]:bat[:lng]); #[310] (0) ALGprojectionpath 754  |
:        : <- 749 701 665 642                                                                                                                                                                          :
|      2 | language.pass(X_701=[458076]:bat[:oid]); #[486] (0) MALpass 1763 <- 701                                                                                                                     |
|      9 | (X_831=[0]:bat[:oid], X_832=[0]:bat[:oid]) := algebra.join(X_754=[19095]:bat[:lng], X_799=[1500303]:bat[:lng], nil:BAT, nil:BAT, false:bit, nil:lng); #[312] (0) ALGjoin 831 832 <- 754 799 |
:        :  84 84 58 86                                                                                                                                                                                :
|      8 | X_1059=[0]:bat[:int] := algebra.projection(X_832=[0]:bat[:oid], X_803=[1500303]:bat[:int]); #[313] (0) ALGprojection 1059 <- 832 803                                                        |
|      5 | X_867=[0]:bat[:int] := algebra.projection(X_831=[0]:bat[:oid], X_758=[19095]:bat[:int]); #[315] (0) ALGprojection 867 <- 831 758                                                            |
|   1352 | X_752=[18889]:bat[:lng] := algebra.projectionpath(X_745=[18889]:bat[:oid], X_697=[457126]:bat[:oid], X_661=[457126]:bat[:oid], X_640=[947455]:bat[:lng]); #[155] (0) ALGprojectionpath 752  |
:        : <- 745 697 661 640                                                                                                                                                                          :
|      3 | language.pass(X_697=[457126]:bat[:oid]); #[436] (0) MALpass 1713 <- 697                                                                                                                     |
|      4 | X_1075=[0]:bat[:bit] := batcalc.!=(X_1059=[0]:bat[:int], X_867=[0]:bat[:int]); #[316] (0) CMDbatNE 1075 <- 1059 867                                                                         |
|      4 | C_1091=[0]:bat[:oid] := algebra.select(X_1075=[0]:bat[:bit], true:bit, true:bit, true:bit, true:bit, false:bit); #[317] (0) ALGselect1 1091 <- 1075 56 56 56 56 58                          |
|      3 | X_1107=[0]:bat[:oid] := algebra.projection(C_1091=[0]:bat[:oid], X_831=[0]:bat[:oid]); #[318] (0) ALGprojection 1107 <- 1091 831                                                            |
|      1 | language.pass(X_831=[0]:bat[:oid]); #[488] (0) MALpass 1765 <- 831                                                                                                                          |
|      3 | X_1656=[0]:bat[:oid] := mat.packIncrement(X_1107=[0]:bat[:oid], 4:int); #[337] (0) MATpackIncrement 1656 <- 1107 1632                                                                       |
|      6 | (X_821=[0]:bat[:oid], X_822=[0]:bat[:oid]) := algebra.join(X_752=[18889]:bat[:lng], X_802=[1500306]:bat[:lng], nil:BAT, nil:BAT, false:bit, nil:lng); #[176] (0) ALGjoin 821 822 <- 752 802 |
:        :  84 84 58 86                                                                                                                                                                                :
|      4 | X_1054=[0]:bat[:int] := algebra.projection(X_822=[0]:bat[:oid], X_806=[1500306]:bat[:int]); #[177] (0) ALGprojection 1054 <- 822 806                                                        |
|      3 | X_862=[0]:bat[:int] := algebra.projection(X_821=[0]:bat[:oid], X_756=[18889]:bat[:int]); #[178] (0) ALGprojection 862 <- 821 756                                                            |
|     20 | X_1070=[0]:bat[:bit] := batcalc.!=(X_1054=[0]:bat[:int], X_862=[0]:bat[:int]); #[179] (0) CMDbatNE 1070 <- 1054 862                                                                         |
|      5 | C_1086=[0]:bat[:oid] := algebra.select(X_1070=[0]:bat[:bit], true:bit, true:bit, true:bit, true:bit, false:bit); #[180] (0) ALGselect1 1086 <- 1070 56 56 56 56 58                          |
|      3 | X_1102=[0]:bat[:oid] := algebra.projection(C_1086=[0]:bat[:oid], X_821=[0]:bat[:oid]); #[181] (0) ALGprojection 1102 <- 1086 821                                                            |
|      1 | language.pass(X_821=[0]:bat[:oid]); #[441] (0) MALpass 1718 <- 821                                                                                                                          |
|      5 | (X_819=[0]:bat[:oid], X_820=[0]:bat[:oid]) := algebra.join(X_752=[18889]:bat[:lng], X_801=[1500303]:bat[:lng], nil:BAT, nil:BAT, false:bit, nil:lng); #[170] (0) ALGjoin 819 820 <- 752 801 |
:        :  84 84 58 86                                                                                                                                                                                :
|      2 | X_1053=[0]:bat[:int] := algebra.projection(X_820=[0]:bat[:oid], X_805=[1500303]:bat[:int]); #[171] (0) ALGprojection 1053 <- 820 805                                                        |
|  11288 | (X_807=[94842]:bat[:oid], X_808=[94842]:bat[:oid]) := algebra.join(X_751=[18928]:bat[:lng], X_799=[1500303]:bat[:lng], nil:BAT, nil:BAT, false:bit, nil:lng); #[44] (0) ALGjoin 807 808 <-  |
:        : 751 799 84 84 58 86                                                                                                                                                                         :
|    673 | X_1047=[94842]:bat[:int] := algebra.projection(X_808=[94842]:bat[:oid], X_803=[1500303]:bat[:int]); #[46] (0) ALGprojection 1047 <- 808 803                                                 |
|  12220 | (X_827=[94894]:bat[:oid], X_828=[94894]:bat[:oid]) := algebra.join(X_753=[18959]:bat[:lng], X_801=[1500303]:bat[:lng], nil:BAT, nil:BAT, false:bit, nil:lng); #[247] (0) ALGjoin 827 828 <- |
:        :  753 801 84 84 58 86                                                                                                                                                                        :
|    655 | X_755=[18928]:bat[:int] := algebra.projectionpath(X_743=[18928]:bat[:oid], X_695=[457410]:bat[:oid], X_671=[457410]:bat[:int]); #[47] (0) ALGprojectionpath 755 <- 743 695 671              |
|      4 | language.pass(X_695=[457410]:bat[:oid]); #[404] (0) MALpass 1681 <- 695                                                                                                                     |
|    199 | X_855=[94842]:bat[:int] := algebra.projection(X_807=[94842]:bat[:oid], X_755=[18928]:bat[:int]); #[48] (0) ALGprojection 855 <- 807 755                                                     |
|  11802 | (X_837=[94861]:bat[:oid], X_838=[94861]:bat[:oid]) := algebra.join(X_754=[19095]:bat[:lng], X_802=[1500306]:bat[:lng], nil:BAT, nil:BAT, false:bit, nil:lng); #[331] (0) ALGjoin 837 838 <- |
:        :  754 802 84 84 58 86                                                                                                                                                                        :
|      3 | language.pass(X_802=[1500306]:bat[:lng]); #[495] (0) MALpass 1772 <- 802                                                                                                                    |
|      5 | X_858=[0]:bat[:int] := algebra.projection(X_813=[0]:bat[:oid], X_755=[18928]:bat[:int]); #[81] (0) ALGprojection 858 <- 813 755                                                             |
|      6 | X_1066=[0]:bat[:bit] := batcalc.!=(X_1050=[0]:bat[:int], X_858=[0]:bat[:int]); #[82] (0) CMDbatNE 1066 <- 1050 858                                                                          |
|      4 | C_1082=[0]:bat[:oid] := algebra.select(X_1066=[0]:bat[:bit], true:bit, true:bit, true:bit, true:bit, false:bit); #[83] (0) ALGselect1 1082 <- 1066 56 56 56 56 58                           |
|      3 | X_1098=[0]:bat[:oid] := algebra.projection(C_1082=[0]:bat[:oid], X_813=[0]:bat[:oid]); #[84] (0) ALGprojection 1098 <- 1082 813                                                             |
|      1 | language.pass(X_813=[0]:bat[:oid]); #[409] (0) MALpass 1686 <- 813                                                                                                                          |
|    223 | X_870=[94861]:bat[:int] := algebra.projection(X_837=[94861]:bat[:oid], X_758=[19095]:bat[:int]); #[333] (0) ALGprojection 870 <- 837 758                                                    |
|    502 | X_1063=[94842]:bat[:bit] := batcalc.!=(X_1047=[94842]:bat[:int], X_855=[94842]:bat[:int]); #[49] (0) CMDbatNE 1063 <- 1047 855                                                              |
|   1006 | X_1057=[94894]:bat[:int] := algebra.projection(X_828=[94894]:bat[:oid], X_805=[1500303]:bat[:int]); #[248] (0) ALGprojection 1057 <- 828 805                                                |
|      7 | X_857=[0]:bat[:int] := algebra.projection(X_811=[0]:bat[:oid], X_755=[18928]:bat[:int]); #[70] (0) ALGprojection 857 <- 811 755                                                             |
|      5 | X_1065=[0]:bat[:bit] := batcalc.!=(X_1049=[0]:bat[:int], X_857=[0]:bat[:int]); #[71] (0) CMDbatNE 1065 <- 1049 857                                                                          |
|      4 | C_1081=[0]:bat[:oid] := algebra.select(X_1065=[0]:bat[:bit], true:bit, true:bit, true:bit, true:bit, false:bit); #[72] (0) ALGselect1 1081 <- 1065 56 56 56 56 58                           |
|      4 | X_1097=[0]:bat[:oid] := algebra.projection(C_1081=[0]:bat[:oid], X_811=[0]:bat[:oid]); #[73] (0) ALGprojection 1097 <- 1081 811                                                             |
|      1 | language.pass(X_811=[0]:bat[:oid]); #[408] (0) MALpass 1685 <- 811                                                                                                                          |
|      6 | X_856=[0]:bat[:int] := algebra.projection(X_809=[0]:bat[:oid], X_755=[18928]:bat[:int]); #[59] (0) ALGprojection 856 <- 809 755                                                             |
|      4 | X_1064=[0]:bat[:bit] := batcalc.!=(X_1048=[0]:bat[:int], X_856=[0]:bat[:int]); #[60] (0) CMDbatNE 1064 <- 1048 856                                                                          |
|      3 | C_1080=[0]:bat[:oid] := algebra.select(X_1064=[0]:bat[:bit], true:bit, true:bit, true:bit, true:bit, false:bit); #[61] (0) ALGselect1 1080 <- 1064 56 56 56 56 58                           |
|      3 | X_1096=[0]:bat[:oid] := algebra.projection(C_1080=[0]:bat[:oid], X_809=[0]:bat[:oid]); #[62] (0) ALGprojection 1096 <- 1080 809                                                             |
|      2 | language.pass(X_809=[0]:bat[:oid]); #[407] (0) MALpass 1684 <- 809                                                                                                                          |
|      2 | language.pass(X_671=[457410]:bat[:int]); #[405] (0) MALpass 1682 <- 671                                                                                                                     |
|      4 | X_861=[0]:bat[:int] := algebra.projection(X_819=[0]:bat[:oid], X_756=[18889]:bat[:int]); #[172] (0) ALGprojection 861 <- 819 756                                                            |
|      4 | X_1069=[0]:bat[:bit] := batcalc.!=(X_1053=[0]:bat[:int], X_861=[0]:bat[:int]); #[173] (0) CMDbatNE 1069 <- 1053 861                                                                         |
|      3 | C_1085=[0]:bat[:oid] := algebra.select(X_1069=[0]:bat[:bit], true:bit, true:bit, true:bit, true:bit, false:bit); #[174] (0) ALGselect1 1085 <- 1069 56 56 56 56 58                          |
|      4 | X_1101=[0]:bat[:oid] := algebra.projection(C_1085=[0]:bat[:oid], X_819=[0]:bat[:oid]); #[175] (0) ALGprojection 1101 <- 1085 819                                                            |
|      1 | language.pass(X_819=[0]:bat[:oid]); #[440] (0) MALpass 1717 <- 819                                                                                                                          |
|     11 | (X_815=[0]:bat[:oid], X_816=[0]:bat[:oid]) := algebra.join(X_752=[18889]:bat[:lng], X_799=[1500303]:bat[:lng], nil:BAT, nil:BAT, false:bit, nil:lng); #[157] (0) ALGjoin 815 816 <- 752 799 |
:        :  84 84 58 86                                                                                                                                                                                :
|      1 | language.pass(X_799=[1500303]:bat[:lng]); #[484] (0) MALpass 1761 <- 799                                                                                                                    |
|      3 | C_1112=[18889]:bat[:oid] := bat.mirror(X_752=[18889]:bat[:lng]); #[156] (0) BKCmirror 1112 <- 752                                                                                           |
|      4 | X_859=[0]:bat[:int] := algebra.projection(X_815=[0]:bat[:oid], X_756=[18889]:bat[:int]); #[160] (0) ALGprojection 859 <- 815 756                                                            |
|      4 | X_1051=[0]:bat[:int] := algebra.projection(X_816=[0]:bat[:oid], X_803=[1500303]:bat[:int]); #[158] (0) ALGprojection 1051 <- 816 803                                                        |
|      1 | language.pass(X_803=[1500303]:bat[:int]); #[485] (0) MALpass 1762 <- 803                                                                                                                    |
|      1 | language.pass(X_661=[457126]:bat[:oid]); #[435] (0) MALpass 1712 <- 661                                                                                                                     |
|      4 | X_1067=[0]:bat[:bit] := batcalc.!=(X_1051=[0]:bat[:int], X_859=[0]:bat[:int]); #[161] (0) CMDbatNE 1067 <- 1051 859                                                                         |
|    654 | X_1062=[94861]:bat[:int] := algebra.projection(X_838=[94861]:bat[:oid], X_806=[1500306]:bat[:int]); #[332] (0) ALGprojection 1062 <- 838 806                                                |
|      2 | language.pass(X_806=[1500306]:bat[:int]); #[496] (0) MALpass 1773 <- 806                                                                                                                    |
|      3 | C_1083=[0]:bat[:oid] := algebra.select(X_1067=[0]:bat[:bit], true:bit, true:bit, true:bit, true:bit, false:bit); #[162] (0) ALGselect1 1083 <- 1067 56 56 56 56 58                          |
|      6 | (X_835=[0]:bat[:oid], X_836=[0]:bat[:oid]) := algebra.join(X_754=[19095]:bat[:lng], X_801=[1500303]:bat[:lng], nil:BAT, nil:BAT, false:bit, nil:lng); #[325] (0) ALGjoin 835 836 <- 754 801 |
:        :  84 84 58 86                                                                                                                                                                                :
|      3 | X_1099=[0]:bat[:oid] := algebra.projection(C_1083=[0]:bat[:oid], X_815=[0]:bat[:oid]); #[163] (0) ALGprojection 1099 <- 1083 815                                                            |
|      1 | language.pass(X_801=[1500303]:bat[:lng]); #[492] (0) MALpass 1769 <- 801                                                                                                                    |
|      1 | language.pass(X_815=[0]:bat[:oid]); #[438] (0) MALpass 1715 <- 815                                                                                                                          |
|    603 | C_1079=[75910]:bat[:oid] := algebra.select(X_1063=[94842]:bat[:bit], true:bit, true:bit, true:bit, true:bit, false:bit); #[50] (0) ALGselect1 1079 <- 1063 56 56 56 56 58                   |
|      4 | X_869=[0]:bat[:int] := algebra.projection(X_835=[0]:bat[:oid], X_758=[19095]:bat[:int]); #[327] (0) ALGprojection 869 <- 835 758                                                            |
|      3 | X_1061=[0]:bat[:int] := algebra.projection(X_836=[0]:bat[:oid], X_805=[1500303]:bat[:int]); #[326] (0) ALGprojection 1061 <- 836 805                                                        |
|      2 | language.pass(X_805=[1500303]:bat[:int]); #[493] (0) MALpass 1770 <- 805                                                                                                                    |
|      4 | X_1640=[0]:bat[:oid] := mat.packIncrement(X_1099=[0]:bat[:oid], 4:int); #[182] (0) MATpackIncrement 1640 <- 1099 1632                                                                       |
|      3 | X_1077=[0]:bat[:bit] := batcalc.!=(X_1061=[0]:bat[:int], X_869=[0]:bat[:int]); #[328] (0) CMDbatNE 1077 <- 1061 869                                                                         |
|      3 | C_1093=[0]:bat[:oid] := algebra.select(X_1077=[0]:bat[:bit], true:bit, true:bit, true:bit, true:bit, false:bit); #[329] (0) ALGselect1 1093 <- 1077 56 56 56 56 58                          |
|      3 | X_1109=[0]:bat[:oid] := algebra.projection(C_1093=[0]:bat[:oid], X_835=[0]:bat[:oid]); #[330] (0) ALGprojection 1109 <- 1093 835                                                            |
|      1 | language.pass(X_835=[0]:bat[:oid]); #[494] (0) MALpass 1771 <- 835                                                                                                                          |
|      6 | (X_833=[0]:bat[:oid], X_834=[0]:bat[:oid]) := algebra.join(X_754=[19095]:bat[:lng], X_800=[1500303]:bat[:lng], nil:BAT, nil:BAT, false:bit, nil:lng); #[319] (0) ALGjoin 833 834 <- 754 800 |
:        :  84 84 58 86                                                                                                                                                                                :
|      4 | X_1060=[0]:bat[:int] := algebra.projection(X_834=[0]:bat[:oid], X_804=[1500303]:bat[:int]); #[320] (0) ALGprojection 1060 <- 834 804                                                        |
|      5 | X_868=[0]:bat[:int] := algebra.projection(X_833=[0]:bat[:oid], X_758=[19095]:bat[:int]); #[321] (0) ALGprojection 868 <- 833 758                                                            |
|      3 | C_1114=[19095]:bat[:oid] := bat.mirror(X_754=[19095]:bat[:lng]); #[311] (0) BKCmirror 1114 <- 754                                                                                           |
|      4 | X_1076=[0]:bat[:bit] := batcalc.!=(X_1060=[0]:bat[:int], X_868=[0]:bat[:int]); #[322] (0) CMDbatNE 1076 <- 1060 868                                                                         |
|    310 | X_1078=[94861]:bat[:bit] := batcalc.!=(X_1062=[94861]:bat[:int], X_870=[94861]:bat[:int]); #[334] (0) CMDbatNE 1078 <- 1062 870                                                             |
|      3 | C_1092=[0]:bat[:oid] := algebra.select(X_1076=[0]:bat[:bit], true:bit, true:bit, true:bit, true:bit, false:bit); #[323] (0) ALGselect1 1092 <- 1076 56 56 56 56 58                          |
|      3 | X_1108=[0]:bat[:oid] := algebra.projection(C_1092=[0]:bat[:oid], X_833=[0]:bat[:oid]); #[324] (0) ALGprojection 1108 <- 1092 833                                                            |
|      2 | language.pass(X_833=[0]:bat[:oid]); #[491] (0) MALpass 1768 <- 833                                                                                                                          |
|      1 | language.pass(X_665=[458076]:bat[:oid]); #[483] (0) MALpass 1760 <- 665                                                                                                                     |
|      3 | X_1657=[0]:bat[:oid] := mat.packIncrement(X_1656=[0]:bat[:oid], X_1108=[0]:bat[:oid]); #[338] (0) MATpackIncrement 1657 <- 1656 1108                                                        |
|      2 | X_1658=[0]:bat[:oid] := mat.packIncrement(X_1657=[0]:bat[:oid], X_1109=[0]:bat[:oid]); #[339] (0) MATpackIncrement 1658 <- 1657 1109                                                        |
|    214 | C_1094=[75762]:bat[:oid] := algebra.select(X_1078=[94861]:bat[:bit], true:bit, true:bit, true:bit, true:bit, false:bit); #[335] (0) ALGselect1 1094 <- 1078 56 56 56 56 58                  |
|    642 | X_1095=[75910]:bat[:oid] := algebra.projection(C_1079=[75910]:bat[:oid], X_807=[94842]:bat[:oid]); #[51] (0) ALGprojection 1095 <- 1079 807                                                 |
|      3 | language.pass(X_807=[94842]:bat[:oid]); #[406] (0) MALpass 1683 <- 807                                                                                                                      |
|    322 | X_1110=[75762]:bat[:oid] := algebra.projection(C_1094=[75762]:bat[:oid], X_837=[94861]:bat[:oid]); #[336] (0) ALGprojection 1110 <- 1094 837                                                |
|      2 | language.pass(X_837=[94861]:bat[:oid]); #[497] (0) MALpass 1774 <- 837                                                                                                                      |
|    241 | X_1631=[75910]:bat[:oid] := mat.packIncrement(X_1095=[75910]:bat[:oid], 4:int); #[85] (0) MATpackIncrement 1631 <- 1095 1632                                                                |
|      3 | X_1633=[75910]:bat[:oid] := mat.packIncrement(X_1631=[75910]:bat[:oid], X_1096=[0]:bat[:oid]); #[86] (0) MATpackIncrement 1633 <- 1631 1096                                                 |
|      2 | X_1634=[75910]:bat[:oid] := mat.packIncrement(X_1633=[75910]:bat[:oid], X_1097=[0]:bat[:oid]); #[87] (0) MATpackIncrement 1634 <- 1633 1097                                                 |
|      3 | X_1115=[75910]:bat[:oid] := mat.packIncrement(X_1634=[75910]:bat[:oid], X_1098=[0]:bat[:oid]); #[88] (0) MATpackIncrement 1115 <- 1634 1098                                                 |
|     86 | X_1121=[75762]:bat[:oid] := mat.packIncrement(X_1658=[75762]:bat[:oid], X_1110=[75762]:bat[:oid]); #[340] (0) MATpackIncrement 1121 <- 1658 1110                                            |
|  12689 | (X_817=[93677]:bat[:oid], X_818=[93677]:bat[:oid]) := algebra.join(X_752=[18889]:bat[:lng], X_800=[1500303]:bat[:lng], nil:BAT, nil:BAT, false:bit, nil:lng); #[164] (0) ALGjoin 817 818 <- |
:        :  752 800 84 84 58 86                                                                                                                                                                        :
|      2 | language.pass(X_800=[1500303]:bat[:lng]); #[489] (0) MALpass 1766 <- 800                                                                                                                    |
|   1019 | X_757=[18959]:bat[:int] := algebra.projectionpath(X_747=[18959]:bat[:oid], X_699=[456299]:bat[:oid], X_673=[456299]:bat[:int]); #[236] (0) ALGprojectionpath 757 <- 747 699 673             |
|      2 | language.pass(X_699=[456299]:bat[:oid]); #[458] (0) MALpass 1735 <- 699                                                                                                                     |
|      4 | X_866=[0]:bat[:int] := algebra.projection(X_829=[0]:bat[:oid], X_757=[18959]:bat[:int]); #[255] (0) ALGprojection 866 <- 829 757                                                            |
|      3 | X_1074=[0]:bat[:bit] := batcalc.!=(X_1058=[0]:bat[:int], X_866=[0]:bat[:int]); #[256] (0) CMDbatNE 1074 <- 1058 866                                                                         |
|      4 | C_1090=[0]:bat[:oid] := algebra.select(X_1074=[0]:bat[:bit], true:bit, true:bit, true:bit, true:bit, false:bit); #[257] (0) ALGselect1 1090 <- 1074 56 56 56 56 58                          |
|      3 | X_1106=[0]:bat[:oid] := algebra.projection(C_1090=[0]:bat[:oid], X_829=[0]:bat[:oid]); #[258] (0) ALGprojection 1106 <- 1090 829                                                            |
|      1 | language.pass(X_829=[0]:bat[:oid]); #[463] (0) MALpass 1740 <- 829                                                                                                                          |
|    199 | X_865=[94894]:bat[:int] := algebra.projection(X_827=[94894]:bat[:oid], X_757=[18959]:bat[:int]); #[249] (0) ALGprojection 865 <- 827 757                                                    |
|    465 | X_1073=[94894]:bat[:bit] := batcalc.!=(X_1057=[94894]:bat[:int], X_865=[94894]:bat[:int]); #[250] (0) CMDbatNE 1073 <- 1057 865                                                             |
|    289 | C_1089=[75932]:bat[:oid] := algebra.select(X_1073=[94894]:bat[:bit], true:bit, true:bit, true:bit, true:bit, false:bit); #[251] (0) ALGselect1 1089 <- 1073 56 56 56 56 58                  |
|    241 | X_1105=[75932]:bat[:oid] := algebra.projection(C_1089=[75932]:bat[:oid], X_827=[94894]:bat[:oid]); #[252] (0) ALGprojection 1105 <- 1089 827                                                |
|      2 | language.pass(X_827=[94894]:bat[:oid]); #[462] (0) MALpass 1739 <- 827                                                                                                                      |
|      4 | X_864=[0]:bat[:int] := algebra.projection(X_825=[0]:bat[:oid], X_757=[18959]:bat[:int]); #[243] (0) ALGprojection 864 <- 825 757                                                            |
|      4 | X_1072=[0]:bat[:bit] := batcalc.!=(X_1056=[0]:bat[:int], X_864=[0]:bat[:int]); #[244] (0) CMDbatNE 1072 <- 1056 864                                                                         |
|      3 | C_1088=[0]:bat[:oid] := algebra.select(X_1072=[0]:bat[:bit], true:bit, true:bit, true:bit, true:bit, false:bit); #[245] (0) ALGselect1 1088 <- 1072 56 56 56 56 58                          |
|      3 | X_1104=[0]:bat[:oid] := algebra.projection(C_1088=[0]:bat[:oid], X_825=[0]:bat[:oid]); #[246] (0) ALGprojection 1104 <- 1088 825                                                            |
|      1 | language.pass(X_825=[0]:bat[:oid]); #[461] (0) MALpass 1738 <- 825                                                                                                                          |
|      4 | X_863=[0]:bat[:int] := algebra.projection(X_823=[0]:bat[:oid], X_757=[18959]:bat[:int]); #[237] (0) ALGprojection 863 <- 823 757                                                            |
|      3 | X_1071=[0]:bat[:bit] := batcalc.!=(X_1055=[0]:bat[:int], X_863=[0]:bat[:int]); #[238] (0) CMDbatNE 1071 <- 1055 863                                                                         |
|      3 | C_1087=[0]:bat[:oid] := algebra.select(X_1071=[0]:bat[:bit], true:bit, true:bit, true:bit, true:bit, false:bit); #[239] (0) ALGselect1 1087 <- 1071 56 56 56 56 58                          |
|      3 | X_1103=[0]:bat[:oid] := algebra.projection(C_1087=[0]:bat[:oid], X_823=[0]:bat[:oid]); #[240] (0) ALGprojection 1103 <- 1087 823                                                            |
|      1 | language.pass(X_823=[0]:bat[:oid]); #[460] (0) MALpass 1737 <- 823                                                                                                                          |
|      8 | X_1648=[0]:bat[:oid] := mat.packIncrement(X_1103=[0]:bat[:oid], 4:int); #[259] (0) MATpackIncrement 1648 <- 1103 1632                                                                       |
|      4 | X_1649=[0]:bat[:oid] := mat.packIncrement(X_1648=[0]:bat[:oid], X_1104=[0]:bat[:oid]); #[260] (0) MATpackIncrement 1649 <- 1648 1104                                                        |
|      3 | language.pass(X_673=[456299]:bat[:int]); #[459] (0) MALpass 1736 <- 673                                                                                                                     |
|     85 | X_1650=[75932]:bat[:oid] := mat.packIncrement(X_1649=[75932]:bat[:oid], X_1105=[75932]:bat[:oid]); #[261] (0) MATpackIncrement 1650 <- 1649 1105                                            |
|      3 | X_1119=[75932]:bat[:oid] := mat.packIncrement(X_1650=[75932]:bat[:oid], X_1106=[0]:bat[:oid]); #[262] (0) MATpackIncrement 1119 <- 1650 1106                                                |
|    204 | X_860=[93677]:bat[:int] := algebra.projection(X_817=[93677]:bat[:oid], X_756=[18889]:bat[:int]); #[166] (0) ALGprojection 860 <- 817 756                                                    |
|    676 | X_1052=[93677]:bat[:int] := algebra.projection(X_818=[93677]:bat[:oid], X_804=[1500303]:bat[:int]); #[165] (0) ALGprojection 1052 <- 818 804                                                |
|      2 | language.pass(X_804=[1500303]:bat[:int]); #[490] (0) MALpass 1767 <- 804                                                                                                                    |
|   3946 | C_1122=[18413]:bat[:oid] := algebra.intersect(C_1114=[19095]:bat[:oid], X_1121=[75762]:bat[:oid], nil:BAT, nil:BAT, false:bit, false:bit, nil:lng); #[341] (0) ALGintersect 1122 <- 1114 11 |
:        : 21 84 84 58 58 86                                                                                                                                                                           :
|     68 | X_1126=[18413]:bat[:lng] := algebra.projection(C_1122=[18413]:bat[:oid], X_754=[19095]:bat[:lng]); #[342] (0) ALGprojection 1126 <- 1122 754                                                |
|      3 | language.pass(X_754=[19095]:bat[:lng]); #[498] (0) MALpass 1775 <- 754                                                                                                                      |
|     52 | X_1130=[18413]:bat[:int] := algebra.projection(C_1122=[18413]:bat[:oid], X_758=[19095]:bat[:int]); #[346] (0) ALGprojection 1130 <- 1122 758                                                |
|      1 | language.pass(X_758=[19095]:bat[:int]); #[501] (0) MALpass 1778 <- 758                                                                                                                      |
|     11 | (X_1223=[0]:bat[:oid], X_1224=[0]:bat[:oid]) := algebra.join(X_1126=[18413]:bat[:lng], X_641=[948203]:bat[:lng], nil:BAT, nil:BAT, false:bit, nil:lng); #[357] (0) ALGjoin 1223 1224 <- 112 |
:        : 6 641 84 84 58 86                                                                                                                                                                           :
|     30 | X_1449=[0]:bat[:int] := algebra.projection(X_1224=[0]:bat[:oid], X_645=[948203]:bat[:int]); #[358] (0) ALGprojection 1449 <- 1224 645                                                       |
|      3 | X_1257=[0]:bat[:int] := algebra.projection(X_1223=[0]:bat[:oid], X_1130=[18413]:bat[:int]); #[359] (0) ALGprojection 1257 <- 1223 1130                                                      |
|     19 | (X_1221=[0]:bat[:oid], X_1222=[0]:bat[:oid]) := algebra.join(X_1126=[18413]:bat[:lng], X_640=[947455]:bat[:lng], nil:BAT, nil:BAT, false:bit, nil:lng); #[351] (0) ALGjoin 1221 1222 <- 112 |
:        : 6 640 84 84 58 86                                                                                                                                                                           :
|      9 | X_1448=[0]:bat[:int] := algebra.projection(X_1222=[0]:bat[:oid], X_644=[947455]:bat[:int]); #[352] (0) ALGprojection 1448 <- 1222 644                                                       |
|      3 | X_1256=[0]:bat[:int] := algebra.projection(X_1221=[0]:bat[:oid], X_1130=[18413]:bat[:int]); #[353] (0) ALGprojection 1256 <- 1221 1130                                                      |
|     10 | X_1497=[0]:bat[:bit] := batcalc.!=(X_1449=[0]:bat[:int], X_1257=[0]:bat[:int]); #[360] (0) CMDbatNE 1497 <- 1449 1257                                                                       |
|      4 | C_1513=[0]:bat[:oid] := algebra.select(X_1497=[0]:bat[:bit], true:bit, true:bit, true:bit, true:bit, false:bit); #[361] (0) ALGselect1 1513 <- 1497 56 56 56 56 58                          |
|      3 | X_1529=[0]:bat[:oid] := algebra.projection(C_1513=[0]:bat[:oid], X_1223=[0]:bat[:oid]); #[362] (0) ALGprojection 1529 <- 1513 1223                                                          |
|      1 | language.pass(X_1223=[0]:bat[:oid]); #[508] (0) MALpass 1785 <- 1223                                                                                                                        |
|      3 | X_1496=[0]:bat[:bit] := batcalc.!=(X_1448=[0]:bat[:int], X_1256=[0]:bat[:int]); #[354] (0) CMDbatNE 1496 <- 1448 1256                                                                       |
|      3 | C_1512=[0]:bat[:oid] := algebra.select(X_1496=[0]:bat[:bit], true:bit, true:bit, true:bit, true:bit, false:bit); #[355] (0) ALGselect1 1512 <- 1496 56 56 56 56 58                          |
|      3 | X_1528=[0]:bat[:oid] := algebra.projection(C_1512=[0]:bat[:oid], X_1221=[0]:bat[:oid]); #[356] (0) ALGprojection 1528 <- 1512 1221                                                          |
|      1 | language.pass(X_1221=[0]:bat[:oid]); #[505] (0) MALpass 1782 <- 1221                                                                                                                        |
|      6 | (X_1219=[0]:bat[:oid], X_1220=[0]:bat[:oid]) := algebra.join(X_1126=[18413]:bat[:lng], X_639=[948926]:bat[:lng], nil:BAT, nil:BAT, false:bit, nil:lng); #[344] (0) ALGjoin 1219 1220 <- 112 |
:        : 6 639 84 84 58 86                                                                                                                                                                           :
|      4 | X_1447=[0]:bat[:int] := algebra.projection(X_1220=[0]:bat[:oid], X_643=[948926]:bat[:int]); #[345] (0) ALGprojection 1447 <- 1220 643                                                       |
|      3 | X_1255=[0]:bat[:int] := algebra.projection(X_1219=[0]:bat[:oid], X_1130=[18413]:bat[:int]); #[347] (0) ALGprojection 1255 <- 1219 1130                                                      |
|      3 | C_1534=[18413]:bat[:oid] := bat.mirror(X_1126=[18413]:bat[:lng]); #[343] (0) BKCmirror 1534 <- 1126                                                                                         |
|      2 | X_1495=[0]:bat[:bit] := batcalc.!=(X_1447=[0]:bat[:int], X_1255=[0]:bat[:int]); #[348] (0) CMDbatNE 1495 <- 1447 1255                                                                       |
|      3 | C_1511=[0]:bat[:oid] := algebra.select(X_1495=[0]:bat[:bit], true:bit, true:bit, true:bit, true:bit, false:bit); #[349] (0) ALGselect1 1511 <- 1495 56 56 56 56 58                          |
|      3 | X_1527=[0]:bat[:oid] := algebra.projection(C_1511=[0]:bat[:oid], X_1219=[0]:bat[:oid]); #[350] (0) ALGprojection 1527 <- 1511 1219                                                          |
|      1 | language.pass(X_1219=[0]:bat[:oid]); #[502] (0) MALpass 1779 <- 1219                                                                                                                        |
|      3 | X_1660=[0]:bat[:oid] := mat.packIncrement(X_1527=[0]:bat[:oid], 4:int); #[369] (0) MATpackIncrement 1660 <- 1527 1632                                                                       |
|      2 | X_1661=[0]:bat[:oid] := mat.packIncrement(X_1660=[0]:bat[:oid], X_1528=[0]:bat[:oid]); #[370] (0) MATpackIncrement 1661 <- 1660 1528                                                        |
|      1 | X_1662=[0]:bat[:oid] := mat.packIncrement(X_1661=[0]:bat[:oid], X_1529=[0]:bat[:oid]); #[371] (0) MATpackIncrement 1662 <- 1661 1529                                                        |
|   4791 | C_1116=[18220]:bat[:oid] := algebra.intersect(C_1111=[18928]:bat[:oid], X_1115=[75910]:bat[:oid], nil:BAT, nil:BAT, false:bit, false:bit, nil:lng); #[89] (0) ALGintersect 1116 <- 1111 111 |
:        : 5 84 84 58 58 86                                                                                                                                                                            :
|     54 | X_1123=[18220]:bat[:lng] := algebra.projection(C_1116=[18220]:bat[:oid], X_751=[18928]:bat[:lng]); #[90] (0) ALGprojection 1123 <- 1116 751                                                 |
|      2 | language.pass(X_751=[18928]:bat[:lng]); #[410] (0) MALpass 1687 <- 751                                                                                                                      |
|      3 | C_1531=[18220]:bat[:oid] := bat.mirror(X_1123=[18220]:bat[:lng]); #[91] (0) BKCmirror 1531 <- 1123                                                                                          |
|    513 | X_1068=[93677]:bat[:bit] := batcalc.!=(X_1052=[93677]:bat[:int], X_860=[93677]:bat[:int]); #[167] (0) CMDbatNE 1068 <- 1052 860                                                             |
|    283 | C_1084=[74779]:bat[:oid] := algebra.select(X_1068=[93677]:bat[:bit], true:bit, true:bit, true:bit, true:bit, false:bit); #[168] (0) ALGselect1 1084 <- 1068 56 56 56 56 58                  |
|    233 | X_1100=[74779]:bat[:oid] := algebra.projection(C_1084=[74779]:bat[:oid], X_817=[93677]:bat[:oid]); #[169] (0) ALGprojection 1100 <- 1084 817                                                |
|      2 | language.pass(X_817=[93677]:bat[:oid]); #[439] (0) MALpass 1716 <- 817                                                                                                                      |
|     82 | X_1641=[74779]:bat[:oid] := mat.packIncrement(X_1640=[74779]:bat[:oid], X_1100=[74779]:bat[:oid]); #[183] (0) MATpackIncrement 1641 <- 1640 1100                                            |
|      3 | X_1642=[74779]:bat[:oid] := mat.packIncrement(X_1641=[74779]:bat[:oid], X_1101=[0]:bat[:oid]); #[184] (0) MATpackIncrement 1642 <- 1641 1101                                                |
|      3 | X_1117=[74779]:bat[:oid] := mat.packIncrement(X_1642=[74779]:bat[:oid], X_1102=[0]:bat[:oid]); #[185] (0) MATpackIncrement 1117 <- 1642 1102                                                |
|   4700 | C_1120=[18284]:bat[:oid] := algebra.intersect(C_1113=[18959]:bat[:oid], X_1119=[75932]:bat[:oid], nil:BAT, nil:BAT, false:bit, false:bit, nil:lng); #[263] (0) ALGintersect 1120 <- 1113 11 |
:        : 19 84 84 58 58 86                                                                                                                                                                           :
|     70 | X_1125=[18284]:bat[:lng] := algebra.projection(C_1120=[18284]:bat[:oid], X_753=[18959]:bat[:lng]); #[264] (0) ALGprojection 1125 <- 1120 753                                                |
|      2 | language.pass(X_753=[18959]:bat[:lng]); #[464] (0) MALpass 1741 <- 753                                                                                                                      |
|     43 | X_1129=[18284]:bat[:int] := algebra.projection(C_1120=[18284]:bat[:oid], X_757=[18959]:bat[:int]); #[268] (0) ALGprojection 1129 <- 1120 757                                                |
|      1 | language.pass(X_757=[18959]:bat[:int]); #[465] (0) MALpass 1742 <- 757                                                                                                                      |
|      8 | (X_1217=[0]:bat[:oid], X_1218=[0]:bat[:oid]) := algebra.join(X_1125=[18284]:bat[:lng], X_642=[948712]:bat[:lng], nil:BAT, nil:BAT, false:bit, nil:lng); #[285] (0) ALGjoin 1217 1218 <- 112 |
:        : 5 642 84 84 58 86                                                                                                                                                                           :
|      4 | X_1446=[0]:bat[:int] := algebra.projection(X_1218=[0]:bat[:oid], X_646=[948712]:bat[:int]); #[286] (0) ALGprojection 1446 <- 1218 646                                                       |
|      3 | X_1254=[0]:bat[:int] := algebra.projection(X_1217=[0]:bat[:oid], X_1129=[18284]:bat[:int]); #[287] (0) ALGprojection 1254 <- 1217 1129                                                      |
|   4332 | C_1118=[18172]:bat[:oid] := algebra.intersect(C_1112=[18889]:bat[:oid], X_1117=[74779]:bat[:oid], nil:BAT, nil:BAT, false:bit, false:bit, nil:lng); #[186] (0) ALGintersect 1118 <- 1112 11 |
:        : 17 84 84 58 58 86                                                                                                                                                                           :
|     55 | X_1124=[18172]:bat[:lng] := algebra.projection(C_1118=[18172]:bat[:oid], X_752=[18889]:bat[:lng]); #[187] (0) ALGprojection 1124 <- 1118 752                                                |
|      2 | language.pass(X_752=[18889]:bat[:lng]); #[442] (0) MALpass 1719 <- 752                                                                                                                      |
|   6413 | (X_1225=[66374]:bat[:oid], X_1226=[66374]:bat[:oid]) := algebra.join(X_1126=[18413]:bat[:lng], X_642=[948712]:bat[:lng], nil:BAT, nil:BAT, false:bit, nil:lng); #[363] (0) ALGjoin 1225 122 |
:        : 6 <- 1126 642 84 84 58 86                                                                                                                                                                   :
|      3 | language.pass(X_1126=[18413]:bat[:lng]); #[509] (0) MALpass 1786 <- 1126                                                                                                                    |
|     27 | X_1128=[18172]:bat[:int] := algebra.projection(C_1118=[18172]:bat[:oid], X_756=[18889]:bat[:int]); #[191] (0) ALGprojection 1128 <- 1118 756                                                |
|      1 | language.pass(X_756=[18889]:bat[:int]); #[443] (0) MALpass 1720 <- 756                                                                                                                      |
|      9 | (X_1209=[0]:bat[:oid], X_1210=[0]:bat[:oid]) := algebra.join(X_1124=[18172]:bat[:lng], X_642=[948712]:bat[:lng], nil:BAT, nil:BAT, false:bit, nil:lng); #[208] (0) ALGjoin 1209 1210 <- 112 |
:        : 4 642 84 84 58 86                                                                                                                                                                           :
|      4 | X_1442=[0]:bat[:int] := algebra.projection(X_1210=[0]:bat[:oid], X_646=[948712]:bat[:int]); #[209] (0) ALGprojection 1442 <- 1210 646                                                       |
|      6 | (X_1207=[0]:bat[:oid], X_1208=[0]:bat[:oid]) := algebra.join(X_1124=[18172]:bat[:lng], X_641=[948203]:bat[:lng], nil:BAT, nil:BAT, false:bit, nil:lng); #[202] (0) ALGjoin 1207 1208 <- 112 |
:        : 4 641 84 84 58 86                                                                                                                                                                           :
|      6 | X_1441=[0]:bat[:int] := algebra.projection(X_1208=[0]:bat[:oid], X_645=[948203]:bat[:int]); #[203] (0) ALGprojection 1441 <- 1208 645                                                       |
|      3 | X_1249=[0]:bat[:int] := algebra.projection(X_1207=[0]:bat[:oid], X_1128=[18172]:bat[:int]); #[204] (0) ALGprojection 1249 <- 1207 1128                                                      |
|      2 | X_1250=[0]:bat[:int] := algebra.projection(X_1209=[0]:bat[:oid], X_1128=[18172]:bat[:int]); #[210] (0) ALGprojection 1250 <- 1209 1128                                                      |
|      3 | X_1490=[0]:bat[:bit] := batcalc.!=(X_1442=[0]:bat[:int], X_1250=[0]:bat[:int]); #[211] (0) CMDbatNE 1490 <- 1442 1250                                                                       |
|      4 | C_1506=[0]:bat[:oid] := algebra.select(X_1490=[0]:bat[:bit], true:bit, true:bit, true:bit, true:bit, false:bit); #[212] (0) ALGselect1 1506 <- 1490 56 56 56 56 58                          |
|      2 | X_1522=[0]:bat[:oid] := algebra.projection(C_1506=[0]:bat[:oid], X_1209=[0]:bat[:oid]); #[213] (0) ALGprojection 1522 <- 1506 1209                                                          |
|      3 | language.pass(X_1209=[0]:bat[:oid]); #[449] (0) MALpass 1726 <- 1209                                                                                                                        |
|      3 | X_1489=[0]:bat[:bit] := batcalc.!=(X_1441=[0]:bat[:int], X_1249=[0]:bat[:int]); #[205] (0) CMDbatNE 1489 <- 1441 1249                                                                       |
|      3 | C_1505=[0]:bat[:oid] := algebra.select(X_1489=[0]:bat[:bit], true:bit, true:bit, true:bit, true:bit, false:bit); #[206] (0) ALGselect1 1505 <- 1489 56 56 56 56 58                          |
|      3 | X_1521=[0]:bat[:oid] := algebra.projection(C_1505=[0]:bat[:oid], X_1207=[0]:bat[:oid]); #[207] (0) ALGprojection 1521 <- 1505 1207                                                          |
|      1 | language.pass(X_1207=[0]:bat[:oid]); #[446] (0) MALpass 1723 <- 1207                                                                                                                        |
|      5 | (X_1203=[0]:bat[:oid], X_1204=[0]:bat[:oid]) := algebra.join(X_1124=[18172]:bat[:lng], X_639=[948926]:bat[:lng], nil:BAT, nil:BAT, false:bit, nil:lng); #[189] (0) ALGjoin 1203 1204 <- 112 |
:        : 4 639 84 84 58 86                                                                                                                                                                           :
|      3 | X_1439=[0]:bat[:int] := algebra.projection(X_1204=[0]:bat[:oid], X_643=[948926]:bat[:int]); #[190] (0) ALGprojection 1439 <- 1204 643                                                       |
|      3 | C_1532=[18172]:bat[:oid] := bat.mirror(X_1124=[18172]:bat[:lng]); #[188] (0) BKCmirror 1532 <- 1124                                                                                         |
|      2 | X_1247=[0]:bat[:int] := algebra.projection(X_1203=[0]:bat[:oid], X_1128=[18172]:bat[:int]); #[192] (0) ALGprojection 1247 <- 1203 1128                                                      |
|      2 | X_1487=[0]:bat[:bit] := batcalc.!=(X_1439=[0]:bat[:int], X_1247=[0]:bat[:int]); #[193] (0) CMDbatNE 1487 <- 1439 1247                                                                       |
|      2 | C_1503=[0]:bat[:oid] := algebra.select(X_1487=[0]:bat[:bit], true:bit, true:bit, true:bit, true:bit, false:bit); #[194] (0) ALGselect1 1503 <- 1487 56 56 56 56 58                          |
|      3 | X_1519=[0]:bat[:oid] := algebra.projection(C_1503=[0]:bat[:oid], X_1203=[0]:bat[:oid]); #[195] (0) ALGprojection 1519 <- 1503 1203                                                          |
|      1 | language.pass(X_1203=[0]:bat[:oid]); #[444] (0) MALpass 1721 <- 1203                                                                                                                        |
|     99 | X_1258=[66374]:bat[:int] := algebra.projection(X_1225=[66374]:bat[:oid], X_1130=[18413]:bat[:int]); #[365] (0) ALGprojection 1258 <- 1225 1130                                              |
|      2 | language.pass(X_1130=[18413]:bat[:int]); #[512] (0) MALpass 1789 <- 1130                                                                                                                    |
|      4 | X_1644=[0]:bat[:oid] := mat.packIncrement(X_1519=[0]:bat[:oid], 4:int); #[214] (0) MATpackIncrement 1644 <- 1519 1632                                                                       |
|    474 | X_1450=[66374]:bat[:int] := algebra.projection(X_1226=[66374]:bat[:oid], X_646=[948712]:bat[:int]); #[364] (0) ALGprojection 1450 <- 1226 646                                               |
|    197 | X_1498=[66374]:bat[:bit] := batcalc.!=(X_1450=[66374]:bat[:int], X_1258=[66374]:bat[:int]); #[366] (0) CMDbatNE 1498 <- 1450 1258                                                           |
|    148 | C_1514=[47959]:bat[:oid] := algebra.select(X_1498=[66374]:bat[:bit], true:bit, true:bit, true:bit, true:bit, false:bit); #[367] (0) ALGselect1 1514 <- 1498 56 56 56 56 58                  |
|    112 | X_1530=[47959]:bat[:oid] := algebra.projection(C_1514=[47959]:bat[:oid], X_1225=[66374]:bat[:oid]); #[368] (0) ALGprojection 1530 <- 1514 1225                                              |
|      2 | language.pass(X_1225=[66374]:bat[:oid]); #[513] (0) MALpass 1790 <- 1225                                                                                                                    |
|      3 | X_1494=[0]:bat[:bit] := batcalc.!=(X_1446=[0]:bat[:int], X_1254=[0]:bat[:int]); #[288] (0) CMDbatNE 1494 <- 1446 1254                                                                       |
|      2 | C_1510=[0]:bat[:oid] := algebra.select(X_1494=[0]:bat[:bit], true:bit, true:bit, true:bit, true:bit, false:bit); #[289] (0) ALGselect1 1510 <- 1494 56 56 56 56 58                          |
|      3 | X_1526=[0]:bat[:oid] := algebra.projection(C_1510=[0]:bat[:oid], X_1217=[0]:bat[:oid]); #[290] (0) ALGprojection 1526 <- 1510 1217                                                          |
|      1 | language.pass(X_1217=[0]:bat[:oid]); #[471] (0) MALpass 1748 <- 1217                                                                                                                        |
|     88 | X_1541=[47959]:bat[:oid] := mat.packIncrement(X_1662=[47959]:bat[:oid], X_1530=[47959]:bat[:oid]); #[372] (0) MATpackIncrement 1541 <- 1662 1530                                            |
|   7985 | (X_1195=[66127]:bat[:oid], X_1196=[66127]:bat[:oid]) := algebra.join(X_1123=[18220]:bat[:lng], X_639=[948926]:bat[:lng], nil:BAT, nil:BAT, false:bit, nil:lng); #[92] (0) ALGjoin 1195 1196 |
:        :  <- 1123 639 84 84 58 86                                                                                                                                                                    :
|    428 | X_1435=[66127]:bat[:int] := algebra.projection(X_1196=[66127]:bat[:oid], X_643=[948926]:bat[:int]); #[93] (0) ALGprojection 1435 <- 1196 643                                                |
|     64 | X_1127=[18220]:bat[:int] := algebra.projection(C_1116=[18220]:bat[:oid], X_755=[18928]:bat[:int]); #[94] (0) ALGprojection 1127 <- 1116 755                                                 |
|      4 | language.pass(X_755=[18928]:bat[:int]); #[411] (0) MALpass 1688 <- 755                                                                                                                      |
|     87 | X_1243=[66127]:bat[:int] := algebra.projection(X_1195=[66127]:bat[:oid], X_1127=[18220]:bat[:int]); #[95] (0) ALGprojection 1243 <- 1195 1127                                               |
|    200 | X_1483=[66127]:bat[:bit] := batcalc.!=(X_1435=[66127]:bat[:int], X_1243=[66127]:bat[:int]); #[96] (0) CMDbatNE 1483 <- 1435 1243                                                            |
|    155 | C_1499=[47903]:bat[:oid] := algebra.select(X_1483=[66127]:bat[:bit], true:bit, true:bit, true:bit, true:bit, false:bit); #[97] (0) ALGselect1 1499 <- 1483 56 56 56 56 58                   |
|    101 | X_1515=[47903]:bat[:oid] := algebra.projection(C_1499=[47903]:bat[:oid], X_1195=[66127]:bat[:oid]); #[98] (0) ALGprojection 1515 <- 1499 1195                                               |
|      2 | language.pass(X_1195=[66127]:bat[:oid]); #[412] (0) MALpass 1689 <- 1195                                                                                                                    |
|      9 | (X_1197=[0]:bat[:oid], X_1198=[0]:bat[:oid]) := algebra.join(X_1123=[18220]:bat[:lng], X_640=[947455]:bat[:lng], nil:BAT, nil:BAT, false:bit, nil:lng); #[104] (0) ALGjoin 1197 1198 <- 112 |
:        : 3 640 84 84 58 86                                                                                                                                                                           :
|      4 | X_1436=[0]:bat[:int] := algebra.projection(X_1198=[0]:bat[:oid], X_644=[947455]:bat[:int]); #[106] (0) ALGprojection 1436 <- 1198 644                                                       |
|      3 | X_1244=[0]:bat[:int] := algebra.projection(X_1197=[0]:bat[:oid], X_1127=[18220]:bat[:int]); #[107] (0) ALGprojection 1244 <- 1197 1127                                                      |
|      5 | X_1484=[0]:bat[:bit] := batcalc.!=(X_1436=[0]:bat[:int], X_1244=[0]:bat[:int]); #[108] (0) CMDbatNE 1484 <- 1436 1244                                                                       |
|      3 | C_1500=[0]:bat[:oid] := algebra.select(X_1484=[0]:bat[:bit], true:bit, true:bit, true:bit, true:bit, false:bit); #[109] (0) ALGselect1 1500 <- 1484 56 56 56 56 58                          |
|      7 | X_1516=[0]:bat[:oid] := algebra.projection(C_1500=[0]:bat[:oid], X_1197=[0]:bat[:oid]); #[110] (0) ALGprojection 1516 <- 1500 1197                                                          |
|      1 | language.pass(X_1197=[0]:bat[:oid]); #[416] (0) MALpass 1693 <- 1197                                                                                                                        |
|      7 | (X_1199=[0]:bat[:oid], X_1200=[0]:bat[:oid]) := algebra.join(X_1123=[18220]:bat[:lng], X_641=[948203]:bat[:lng], nil:BAT, nil:BAT, false:bit, nil:lng); #[116] (0) ALGjoin 1199 1200 <- 112 |
:        : 3 641 84 84 58 86                                                                                                                                                                           :
|      4 | X_1437=[0]:bat[:int] := algebra.projection(X_1200=[0]:bat[:oid], X_645=[948203]:bat[:int]); #[118] (0) ALGprojection 1437 <- 1200 645                                                       |
|      3 | X_1245=[0]:bat[:int] := algebra.projection(X_1199=[0]:bat[:oid], X_1127=[18220]:bat[:int]); #[119] (0) ALGprojection 1245 <- 1199 1127                                                      |
|      5 | X_1485=[0]:bat[:bit] := batcalc.!=(X_1437=[0]:bat[:int], X_1245=[0]:bat[:int]); #[120] (0) CMDbatNE 1485 <- 1437 1245                                                                       |
|      4 | C_1501=[0]:bat[:oid] := algebra.select(X_1485=[0]:bat[:bit], true:bit, true:bit, true:bit, true:bit, false:bit); #[121] (0) ALGselect1 1501 <- 1485 56 56 56 56 58                          |
|   7361 | (X_1215=[66266]:bat[:oid], X_1216=[66266]:bat[:oid]) := algebra.join(X_1125=[18284]:bat[:lng], X_641=[948203]:bat[:lng], nil:BAT, nil:BAT, false:bit, nil:lng); #[279] (0) ALGjoin 1215 121 |
:        : 6 <- 1125 641 84 84 58 86                                                                                                                                                                   :
|      3 | language.pass(X_641=[948203]:bat[:lng]); #[506] (0) MALpass 1783 <- 641                                                                                                                     |
|      3 | X_1517=[0]:bat[:oid] := algebra.projection(C_1501=[0]:bat[:oid], X_1199=[0]:bat[:oid]); #[122] (0) ALGprojection 1517 <- 1501 1199                                                          |
|      3 | language.pass(X_1199=[0]:bat[:oid]); #[420] (0) MALpass 1697 <- 1199                                                                                                                        |
|     96 | X_1636=[47903]:bat[:oid] := mat.packIncrement(X_1515=[47903]:bat[:oid], 4:int); #[135] (0) MATpackIncrement 1636 <- 1515 1632                                                               |
|      8 | (X_1201=[0]:bat[:oid], X_1202=[0]:bat[:oid]) := algebra.join(X_1123=[18220]:bat[:lng], X_642=[948712]:bat[:lng], nil:BAT, nil:BAT, false:bit, nil:lng); #[128] (0) ALGjoin 1201 1202 <- 112 |
:        : 3 642 84 84 58 86                                                                                                                                                                           :
|      3 | X_1637=[47903]:bat[:oid] := mat.packIncrement(X_1636=[47903]:bat[:oid], X_1516=[0]:bat[:oid]); #[136] (0) MATpackIncrement 1637 <- 1636 1516                                                |
|      2 | X_1638=[47903]:bat[:oid] := mat.packIncrement(X_1637=[47903]:bat[:oid], X_1517=[0]:bat[:oid]); #[137] (0) MATpackIncrement 1638 <- 1637 1517                                                |
|     31 | language.pass(X_1123=[18220]:bat[:lng]); #[423] (0) MALpass 1700 <- 1123                                                                                                                    |
|      6 | X_1438=[0]:bat[:int] := algebra.projection(X_1202=[0]:bat[:oid], X_646=[948712]:bat[:int]); #[130] (0) ALGprojection 1438 <- 1202 646                                                       |
|      1 | language.pass(X_646=[948712]:bat[:int]); #[511] (0) MALpass 1788 <- 646                                                                                                                     |
|      3 | X_1246=[0]:bat[:int] := algebra.projection(X_1201=[0]:bat[:oid], X_1127=[18220]:bat[:int]); #[131] (0) ALGprojection 1246 <- 1201 1127                                                      |
|    101 | X_1253=[66266]:bat[:int] := algebra.projection(X_1215=[66266]:bat[:oid], X_1129=[18284]:bat[:int]); #[281] (0) ALGprojection 1253 <- 1215 1129                                              |
|      1 | language.pass(X_1127=[18220]:bat[:int]); #[425] (0) MALpass 1702 <- 1127                                                                                                                    |
|      4 | X_1486=[0]:bat[:bit] := batcalc.!=(X_1438=[0]:bat[:int], X_1246=[0]:bat[:int]); #[132] (0) CMDbatNE 1486 <- 1438 1246                                                                       |
|      3 | C_1502=[0]:bat[:oid] := algebra.select(X_1486=[0]:bat[:bit], true:bit, true:bit, true:bit, true:bit, false:bit); #[133] (0) ALGselect1 1502 <- 1486 56 56 56 56 58                          |
|      2 | X_1518=[0]:bat[:oid] := algebra.projection(C_1502=[0]:bat[:oid], X_1201=[0]:bat[:oid]); #[134] (0) ALGprojection 1518 <- 1502 1201                                                          |
|      1 | language.pass(X_1201=[0]:bat[:oid]); #[426] (0) MALpass 1703 <- 1201                                                                                                                        |
|      1 | language.pass(X_642=[948712]:bat[:lng]); #[510] (0) MALpass 1787 <- 642                                                                                                                     |
|      3 | X_1535=[47903]:bat[:oid] := mat.packIncrement(X_1638=[47903]:bat[:oid], X_1518=[0]:bat[:oid]); #[138] (0) MATpackIncrement 1535 <- 1638 1518                                                |
|     49 | C_1533=[18284]:bat[:oid] := bat.mirror(X_1125=[18284]:bat[:lng]); #[265] (0) BKCmirror 1533 <- 1125                                                                                         |
|      9 | (X_1211=[0]:bat[:oid], X_1212=[0]:bat[:oid]) := algebra.join(X_1125=[18284]:bat[:lng], X_639=[948926]:bat[:lng], nil:BAT, nil:BAT, false:bit, nil:lng); #[266] (0) ALGjoin 1211 1212 <- 112 |
:        : 5 639 84 84 58 86                                                                                                                                                                           :
|      2 | language.pass(X_639=[948926]:bat[:lng]); #[499] (0) MALpass 1776 <- 639                                                                                                                     |
|      4 | X_1443=[0]:bat[:int] := algebra.projection(X_1212=[0]:bat[:oid], X_643=[948926]:bat[:int]); #[267] (0) ALGprojection 1443 <- 1212 643                                                       |
|      1 | language.pass(X_643=[948926]:bat[:int]); #[500] (0) MALpass 1777 <- 643                                                                                                                     |
|      3 | X_1251=[0]:bat[:int] := algebra.projection(X_1211=[0]:bat[:oid], X_1129=[18284]:bat[:int]); #[269] (0) ALGprojection 1251 <- 1211 1129                                                      |
|      3 | X_1491=[0]:bat[:bit] := batcalc.!=(X_1443=[0]:bat[:int], X_1251=[0]:bat[:int]); #[270] (0) CMDbatNE 1491 <- 1443 1251                                                                       |
|      4 | C_1507=[0]:bat[:oid] := algebra.select(X_1491=[0]:bat[:bit], true:bit, true:bit, true:bit, true:bit, false:bit); #[271] (0) ALGselect1 1507 <- 1491 56 56 56 56 58                          |
|      3 | X_1523=[0]:bat[:oid] := algebra.projection(C_1507=[0]:bat[:oid], X_1211=[0]:bat[:oid]); #[272] (0) ALGprojection 1523 <- 1507 1211                                                          |
|      1 | language.pass(X_1211=[0]:bat[:oid]); #[466] (0) MALpass 1743 <- 1211                                                                                                                        |
|      6 | (X_1213=[0]:bat[:oid], X_1214=[0]:bat[:oid]) := algebra.join(X_1125=[18284]:bat[:lng], X_640=[947455]:bat[:lng], nil:BAT, nil:BAT, false:bit, nil:lng); #[273] (0) ALGjoin 1213 1214 <- 112 |
:        : 5 640 84 84 58 86                                                                                                                                                                           :
|      1 | language.pass(X_1125=[18284]:bat[:lng]); #[469] (0) MALpass 1746 <- 1125                                                                                                                    |
|      4 | X_1444=[0]:bat[:int] := algebra.projection(X_1214=[0]:bat[:oid], X_644=[947455]:bat[:int]); #[274] (0) ALGprojection 1444 <- 1214 644                                                       |
|      3 | X_1252=[0]:bat[:int] := algebra.projection(X_1213=[0]:bat[:oid], X_1129=[18284]:bat[:int]); #[275] (0) ALGprojection 1252 <- 1213 1129                                                      |
|      1 | language.pass(X_1129=[18284]:bat[:int]); #[470] (0) MALpass 1747 <- 1129                                                                                                                    |
|      3 | X_1492=[0]:bat[:bit] := batcalc.!=(X_1444=[0]:bat[:int], X_1252=[0]:bat[:int]); #[276] (0) CMDbatNE 1492 <- 1444 1252                                                                       |
|      3 | C_1508=[0]:bat[:oid] := algebra.select(X_1492=[0]:bat[:bit], true:bit, true:bit, true:bit, true:bit, false:bit); #[277] (0) ALGselect1 1508 <- 1492 56 56 56 56 58                          |
|      3 | X_1524=[0]:bat[:oid] := algebra.projection(C_1508=[0]:bat[:oid], X_1213=[0]:bat[:oid]); #[278] (0) ALGprojection 1524 <- 1508 1213                                                          |
|      1 | language.pass(X_1213=[0]:bat[:oid]); #[467] (0) MALpass 1744 <- 1213                                                                                                                        |
|   3083 | C_1542=[1051]:bat[:oid] := algebra.difference(C_1534=[18413]:bat[:oid], X_1541=[47959]:bat[:oid], nil:BAT, nil:BAT, false:bit, false:bit, nil:lng); #[373] (0) ALGdifference 1542 <- 1534 1 |
:        : 541 84 84 58 58 86                                                                                                                                                                          :
|    224 | X_1578=[1051]:bat[:str] := algebra.projectionpath(C_1542=[1051]:bat[:oid], C_1122=[18413]:bat[:oid], X_749=[19095]:bat[:oid], X_702=[458076]:bat[:oid], X_120=[10000]:bat[:str]); #[374] (0 |
:        : ) ALGprojectionpath 1578 <- 1542 1122 749 702 120                                                                                                                                           :
|      2 | language.pass(C_1122=[18413]:bat[:oid]); #[514] (0) MALpass 1791 <- 1122                                                                                                                    |
|      3 | X_1652=[0]:bat[:oid] := mat.packIncrement(X_1523=[0]:bat[:oid], 4:int); #[291] (0) MATpackIncrement 1652 <- 1523 1632                                                                       |
|      1 | X_1653=[0]:bat[:oid] := mat.packIncrement(X_1652=[0]:bat[:oid], X_1524=[0]:bat[:oid]); #[292] (0) MATpackIncrement 1653 <- 1652 1524                                                        |
|    146 | (X_1606=[1051]:bat[:oid], C_1607=[382]:bat[:oid]) := group.groupdone(X_1578=[1051]:bat[:str]); #[375] (0) GRPgroup3 1606 1607 <- 1578                                                       |
|     39 | X_1609=[382]:bat[:str] := algebra.projection(C_1607=[382]:bat[:oid], X_1578=[1051]:bat[:str]); #[376] (0) ALGprojection 1609 <- 1607 1578                                                   |
|      2 | language.pass(X_1578=[1051]:bat[:str]); #[518] (0) MALpass 1795 <- 1578                                                                                                                     |
|      7 | X_1620=[382]:bat[:lng] := aggr.subcount(X_1606=[1051]:bat[:oid], X_1606=[1051]:bat[:oid], C_1607=[382]:bat[:oid], false:bit); #[377] (0) AGGRsubcount 1620 <- 1606 1606 1607 58             |
|      1 | language.pass(C_1607=[382]:bat[:oid]); #[520] (0) MALpass 1797 <- 1607                                                                                                                      |
|      1 | language.pass(X_702=[458076]:bat[:oid]); #[516] (0) MALpass 1793 <- 702                                                                                                                     |
|      1 | language.pass(X_1606=[1051]:bat[:oid]); #[519] (0) MALpass 1796 <- 1606                                                                                                                     |
|      1 | language.pass(X_749=[19095]:bat[:oid]); #[515] (0) MALpass 1792 <- 749                                                                                                                      |
|    747 | X_1445=[66266]:bat[:int] := algebra.projection(X_1216=[66266]:bat[:oid], X_645=[948203]:bat[:int]); #[280] (0) ALGprojection 1445 <- 1216 645                                               |
|      2 | language.pass(X_645=[948203]:bat[:int]); #[507] (0) MALpass 1784 <- 645                                                                                                                     |
|    197 | X_1493=[66266]:bat[:bit] := batcalc.!=(X_1445=[66266]:bat[:int], X_1253=[66266]:bat[:int]); #[282] (0) CMDbatNE 1493 <- 1445 1253                                                           |
|    197 | C_1509=[47980]:bat[:oid] := algebra.select(X_1493=[66266]:bat[:bit], true:bit, true:bit, true:bit, true:bit, false:bit); #[283] (0) ALGselect1 1509 <- 1493 56 56 56 56 58                  |
|    138 | X_1525=[47980]:bat[:oid] := algebra.projection(C_1509=[47980]:bat[:oid], X_1215=[66266]:bat[:oid]); #[284] (0) ALGprojection 1525 <- 1509 1215                                              |
|      1 | language.pass(X_1215=[66266]:bat[:oid]); #[468] (0) MALpass 1745 <- 1215                                                                                                                    |
|     49 | X_1654=[47980]:bat[:oid] := mat.packIncrement(X_1653=[47980]:bat[:oid], X_1525=[47980]:bat[:oid]); #[293] (0) MATpackIncrement 1654 <- 1653 1525                                            |
|      2 | X_1539=[47980]:bat[:oid] := mat.packIncrement(X_1654=[47980]:bat[:oid], X_1526=[0]:bat[:oid]); #[294] (0) MATpackIncrement 1539 <- 1654 1526                                                |
|   7411 | (X_1205=[65264]:bat[:oid], X_1206=[65264]:bat[:oid]) := algebra.join(X_1124=[18172]:bat[:lng], X_640=[947455]:bat[:lng], nil:BAT, nil:BAT, false:bit, nil:lng); #[196] (0) ALGjoin 1205 120 |
:        : 6 <- 1124 640 84 84 58 86                                                                                                                                                                   :
|      3 | language.pass(X_1124=[18172]:bat[:lng]); #[447] (0) MALpass 1724 <- 1124                                                                                                                    |
|   3071 | C_1536=[1035]:bat[:oid] := algebra.difference(C_1531=[18220]:bat[:oid], X_1535=[47903]:bat[:oid], nil:BAT, nil:BAT, false:bit, false:bit, nil:lng); #[139] (0) ALGdifference 1536 <- 1531 1 |
:        : 535 84 84 58 58 86                                                                                                                                                                          :
|    127 | X_1248=[65264]:bat[:int] := algebra.projection(X_1205=[65264]:bat[:oid], X_1128=[18172]:bat[:int]); #[198] (0) ALGprojection 1248 <- 1205 1128                                              |
|      1 | language.pass(X_1128=[18172]:bat[:int]); #[448] (0) MALpass 1725 <- 1128                                                                                                                    |
|      1 | language.pass(X_640=[947455]:bat[:lng]); #[503] (0) MALpass 1780 <- 640                                                                                                                     |
|    324 | X_1575=[1035]:bat[:str] := algebra.projectionpath(C_1536=[1035]:bat[:oid], C_1116=[18220]:bat[:oid], X_743=[18928]:bat[:oid], X_696=[457410]:bat[:oid], X_120=[10000]:bat[:str]); #[142] (0 |
:        : ) ALGprojectionpath 1575 <- 1536 1116 743 696 120                                                                                                                                           :
|      2 | language.pass(C_1116=[18220]:bat[:oid]); #[428] (0) MALpass 1705 <- 1116                                                                                                                    |
|      3 | language.pass(X_696=[457410]:bat[:oid]); #[430] (0) MALpass 1707 <- 696                                                                                                                     |
|      2 | language.pass(X_743=[18928]:bat[:oid]); #[429] (0) MALpass 1706 <- 743                                                                                                                      |
|    535 | X_1440=[65264]:bat[:int] := algebra.projection(X_1206=[65264]:bat[:oid], X_644=[947455]:bat[:int]); #[197] (0) ALGprojection 1440 <- 1206 644                                               |
|      2 | language.pass(X_644=[947455]:bat[:int]); #[504] (0) MALpass 1781 <- 644                                                                                                                     |
|    185 | (X_1594=[1035]:bat[:oid], C_1595=[387]:bat[:oid]) := group.groupdone(X_1575=[1035]:bat[:str]); #[143] (0) GRPgroup3 1594 1595 <- 1575                                                       |
|     33 | X_1597=[387]:bat[:str] := algebra.projection(C_1595=[387]:bat[:oid], X_1575=[1035]:bat[:str]); #[144] (0) ALGprojection 1597 <- 1595 1575                                                   |
|      2 | language.pass(X_1575=[1035]:bat[:str]); #[431] (0) MALpass 1708 <- 1575                                                                                                                     |
|     10 | X_1617=[387]:bat[:lng] := aggr.subcount(X_1594=[1035]:bat[:oid], X_1594=[1035]:bat[:oid], C_1595=[387]:bat[:oid], false:bit); #[145] (0) AGGRsubcount 1617 <- 1594 1594 1595 58             |
|      2 | language.pass(C_1595=[387]:bat[:oid]); #[433] (0) MALpass 1710 <- 1595                                                                                                                      |
|     11 | X_1664=[387]:bat[:str] := mat.packIncrement(X_1597=[387]:bat[:str], 4:int); #[378] (0) MATpackIncrement 1664 <- 1597 1665                                                                   |
|      1 | language.pass(X_1594=[1035]:bat[:oid]); #[432] (0) MALpass 1709 <- 1594                                                                                                                     |
|      3 | X_1669=[387]:bat[:lng] := mat.packIncrement(X_1617=[387]:bat[:lng], 4:int); #[384] (0) MATpackIncrement 1669 <- 1617 1665                                                                   |
|    212 | X_1488=[65264]:bat[:bit] := batcalc.!=(X_1440=[65264]:bat[:int], X_1248=[65264]:bat[:int]); #[199] (0) CMDbatNE 1488 <- 1440 1248                                                           |
|    142 | C_1504=[47086]:bat[:oid] := algebra.select(X_1488=[65264]:bat[:bit], true:bit, true:bit, true:bit, true:bit, false:bit); #[200] (0) ALGselect1 1504 <- 1488 56 56 56 56 58                  |
|     79 | X_1520=[47086]:bat[:oid] := algebra.projection(C_1504=[47086]:bat[:oid], X_1205=[65264]:bat[:oid]); #[201] (0) ALGprojection 1520 <- 1504 1205                                              |
|      1 | language.pass(X_1205=[65264]:bat[:oid]); #[445] (0) MALpass 1722 <- 1205                                                                                                                    |
|     35 | X_1645=[47086]:bat[:oid] := mat.packIncrement(X_1644=[47086]:bat[:oid], X_1520=[47086]:bat[:oid]); #[215] (0) MATpackIncrement 1645 <- 1644 1520                                            |
|      2 | X_1646=[47086]:bat[:oid] := mat.packIncrement(X_1645=[47086]:bat[:oid], X_1521=[0]:bat[:oid]); #[216] (0) MATpackIncrement 1646 <- 1645 1521                                                |
|      2 | X_1537=[47086]:bat[:oid] := mat.packIncrement(X_1646=[47086]:bat[:oid], X_1522=[0]:bat[:oid]); #[217] (0) MATpackIncrement 1537 <- 1646 1522                                                |
|   2537 | C_1540=[1029]:bat[:oid] := algebra.difference(C_1533=[18284]:bat[:oid], X_1539=[47980]:bat[:oid], nil:BAT, nil:BAT, false:bit, false:bit, nil:lng); #[295] (0) ALGdifference 1540 <- 1533 1 |
:        : 539 84 84 58 58 86                                                                                                                                                                          :
|    154 | X_1577=[1029]:bat[:str] := algebra.projectionpath(C_1540=[1029]:bat[:oid], C_1120=[18284]:bat[:oid], X_747=[18959]:bat[:oid], X_700=[456299]:bat[:oid], X_120=[10000]:bat[:str]); #[296] (0 |
:        : ) ALGprojectionpath 1577 <- 1540 1120 747 700 120                                                                                                                                           :
|      1 | language.pass(C_1120=[18284]:bat[:oid]); #[472] (0) MALpass 1749 <- 1120                                                                                                                    |
|      3 | language.pass(X_700=[456299]:bat[:oid]); #[474] (0) MALpass 1751 <- 700                                                                                                                     |
|      3 | language.pass(X_747=[18959]:bat[:oid]); #[473] (0) MALpass 1750 <- 747                                                                                                                      |
|    235 | (X_1602=[1029]:bat[:oid], C_1603=[378]:bat[:oid]) := group.groupdone(X_1577=[1029]:bat[:str]); #[297] (0) GRPgroup3 1602 1603 <- 1577                                                       |
|     42 | X_1605=[378]:bat[:str] := algebra.projection(C_1603=[378]:bat[:oid], X_1577=[1029]:bat[:str]); #[298] (0) ALGprojection 1605 <- 1603 1577                                                   |
|     10 | X_1619=[378]:bat[:lng] := aggr.subcount(X_1602=[1029]:bat[:oid], X_1602=[1029]:bat[:oid], C_1603=[378]:bat[:oid], false:bit); #[299] (0) AGGRsubcount 1619 <- 1602 1602 1603 58             |
|      1 | language.pass(X_1577=[1029]:bat[:str]); #[475] (0) MALpass 1752 <- 1577                                                                                                                     |
|      1 | language.pass(C_1603=[378]:bat[:oid]); #[477] (0) MALpass 1754 <- 1603                                                                                                                      |
|      2 | language.pass(X_1602=[1029]:bat[:oid]); #[476] (0) MALpass 1753 <- 1602                                                                                                                     |
|   3025 | C_1538=[1026]:bat[:oid] := algebra.difference(C_1532=[18172]:bat[:oid], X_1537=[47086]:bat[:oid], nil:BAT, nil:BAT, false:bit, false:bit, nil:lng); #[218] (0) ALGdifference 1538 <- 1532 1 |
:        : 537 84 84 58 58 86                                                                                                                                                                          :
|    197 | X_1576=[1026]:bat[:str] := algebra.projectionpath(C_1538=[1026]:bat[:oid], C_1118=[18172]:bat[:oid], X_745=[18889]:bat[:oid], X_698=[457126]:bat[:oid], X_120=[10000]:bat[:str]); #[219] (0 |
:        : ) ALGprojectionpath 1576 <- 1538 1118 745 698 120                                                                                                                                           :
|      2 | language.pass(C_1118=[18172]:bat[:oid]); #[450] (0) MALpass 1727 <- 1118                                                                                                                    |
|      3 | language.pass(X_120=[10000]:bat[:str]); #[517] (0) MALpass 1794 <- 120                                                                                                                      |
|      3 | language.pass(X_698=[457126]:bat[:oid]); #[452] (0) MALpass 1729 <- 698                                                                                                                     |
|      1 | language.pass(X_745=[18889]:bat[:oid]); #[451] (0) MALpass 1728 <- 745                                                                                                                      |
|    193 | (X_1598=[1026]:bat[:oid], C_1599=[385]:bat[:oid]) := group.groupdone(X_1576=[1026]:bat[:str]); #[220] (0) GRPgroup3 1598 1599 <- 1576                                                       |
|     39 | X_1601=[385]:bat[:str] := algebra.projection(C_1599=[385]:bat[:oid], X_1576=[1026]:bat[:str]); #[221] (0) ALGprojection 1601 <- 1599 1576                                                   |
|     10 | X_1618=[385]:bat[:lng] := aggr.subcount(X_1598=[1026]:bat[:oid], X_1598=[1026]:bat[:oid], C_1599=[385]:bat[:oid], false:bit); #[222] (0) AGGRsubcount 1618 <- 1598 1598 1599 58             |
|      1 | language.pass(C_1599=[385]:bat[:oid]); #[455] (0) MALpass 1732 <- 1599                                                                                                                      |
|      1 | language.pass(X_1576=[1026]:bat[:str]); #[453] (0) MALpass 1730 <- 1576                                                                                                                     |
|      5 | X_1670=[772]:bat[:lng] := mat.packIncrement(X_1669=[772]:bat[:lng], X_1618=[385]:bat[:lng]); #[385] (0) MATpackIncrement 1670 <- 1669 1618                                                  |
|      3 | language.pass(X_1598=[1026]:bat[:oid]); #[454] (0) MALpass 1731 <- 1598                                                                                                                     |
|      2 | X_1671=[1150]:bat[:lng] := mat.packIncrement(X_1670=[1150]:bat[:lng], X_1619=[378]:bat[:lng]); #[386] (0) MATpackIncrement 1671 <- 1670 1619                                                |
|     71 | X_1666=[772]:bat[:str] := mat.packIncrement(X_1664=[772]:bat[:str], X_1601=[385]:bat[:str]); #[379] (0) MATpackIncrement 1666 <- 1664 1601                                                  |
|      4 | X_1616=[1532]:bat[:lng] := mat.packIncrement(X_1671=[1532]:bat[:lng], X_1620=[382]:bat[:lng]); #[387] (0) MATpackIncrement 1616 <- 1671 1620                                                |
|     21 | X_1667=[1150]:bat[:str] := mat.packIncrement(X_1666=[1150]:bat[:str], X_1605=[378]:bat[:str]); #[380] (0) MATpackIncrement 1667 <- 1666 1605                                                |
|     19 | X_313=[1532]:bat[:str] := mat.packIncrement(X_1667=[1532]:bat[:str], X_1609=[382]:bat[:str]); #[381] (0) MATpackIncrement 313 <- 1667 1609                                                  |
|    175 | (X_317=[1532]:bat[:oid], C_318=[411]:bat[:oid]) := group.groupdone(X_313=[1532]:bat[:str]); #[382] (0) GRPgroup3 317 318 <- 313                                                             |
|      5 | X_320=[411]:bat[:str] := algebra.projection(C_318=[411]:bat[:oid], X_313=[1532]:bat[:str]); #[383] (0) ALGprojection 320 <- 318 313                                                         |
|      1 | language.pass(X_313=[1532]:bat[:str]); #[521] (0) MALpass 1798 <- 313                                                                                                                       |
|     10 | X_321=[411]:bat[:lng] := aggr.subsum(X_1616=[1532]:bat[:lng], X_317=[1532]:bat[:oid], C_318=[411]:bat[:oid], true:bit, true:bit); #[388] (0) AGGRsubsum_lng 321 <- 1616 317 318 56 56       |
|      1 | language.pass(C_318=[411]:bat[:oid]); #[522] (0) MALpass 1799 <- 318                                                                                                                        |
|    115 | (C_326=[134]:bat[:oid], X_327=[134]:bat[:oid]) := algebra.firstn(X_321=[411]:bat[:lng], 100:lng, false:bit, true:bit, false:bit); #[389] (0) ALGfirstn 326 327 <- 321 10 58 56 58           |
|     39 | C_331=[100]:bat[:oid] := algebra.firstn(X_320=[411]:bat[:str], C_326=[134]:bat[:oid], X_327=[134]:bat[:oid], 100:lng, true:bit, false:bit, false:bit); #[390] (0) ALGfirstn 331 <- 320 326  |
:        : 327 10 56 58 58                                                                                                                                                                             :
|     38 | X_332=[100]:bat[:str] := algebra.projection(C_331=[100]:bat[:oid], X_320=[411]:bat[:str]); #[391] (0) ALGprojection 332 <- 331 320                                                          |
|      1 | language.pass(X_320=[411]:bat[:str]); #[523] (0) MALpass 1800 <- 320                                                                                                                        |
|     21 | X_333=[100]:bat[:lng] := algebra.projection(C_331=[100]:bat[:oid], X_321=[411]:bat[:lng]); #[392] (0) ALGprojection 333 <- 331 321                                                          |
|      2 | language.pass(C_331=[100]:bat[:oid]); #[524] (0) MALpass 1801 <- 331                                                                                                                        |
|      3 | language.pass(X_321=[411]:bat[:lng]); #[525] (0) MALpass 1802 <- 321                                                                                                                        |
|     18 | (X_336=[100]:bat[:lng], X_337=[100]:bat[:oid], X_338=[100]:bat[:oid]) := algebra.sort(X_333=[100]:bat[:lng], true:bit, true:bit, false:bit); #[393] (0) ALGsort13 336 337 338 <- 333 56 56  |
:        : 58                                                                                                                                                                                          :
|     77 | (X_339=[100]:bat[:str], X_340=[100]:bat[:oid]) := algebra.sort(X_332=[100]:bat[:str], X_337=[100]:bat[:oid], X_338=[100]:bat[:oid], false:bit, false:bit, false:bit); #[394] (0) ALGsort32  |
:        : 339 340 <- 332 337 338 58 58 58                                                                                                                                                             :
|     21 | X_342=[100]:bat[:str] := algebra.projection(X_340=[100]:bat[:oid], X_332=[100]:bat[:str]); #[395] (0) ALGprojection 342 <- 340 332                                                          |
|      1 | language.pass(X_332=[100]:bat[:str]); #[526] (0) MALpass 1803 <- 332                                                                                                                        |
|     20 | C_350=[100]:bat[:oid] := algebra.subslice(X_342=[100]:bat[:str], 0:lng, 99:lng); #[396] (0) ALGsubslice_lng 350 <- 342 324 406                                                              |
|     19 | X_351=[100]:bat[:str] := algebra.projection(C_350=[100]:bat[:oid], X_342=[100]:bat[:str]); #[397] (0) ALGprojection 351 <- 350 342                                                          |
|     24 | X_352=[100]:bat[:lng] := algebra.projectionpath(C_350=[100]:bat[:oid], X_340=[100]:bat[:oid], X_333=[100]:bat[:lng]); #[398] (0) ALGprojectionpath 352 <- 350 340 333                       |
|      2 | language.pass(X_340=[100]:bat[:oid]); #[529] (0) MALpass 1806 <- 340                                                                                                                        |
|      1 | language.pass(C_350=[100]:bat[:oid]); #[528] (0) MALpass 1805 <- 350                                                                                                                        |
|      2 | language.pass(X_333=[100]:bat[:lng]); #[530] (0) MALpass 1807 <- 333                                                                                                                        |
|     46 | language.pass(X_342=[100]:bat[:str]); #[527] (0) MALpass 1804 <- 342                                                                                                                        |
| 114787 | barrier X_1674=false:bit := language.dataflow(); #[2] (0) MALstartDataflow 1674                                                                                                             |
|    196 | sql.resultSet(X_354=[2]:bat[:str], X_355=[2]:bat[:str], X_356=[2]:bat[:str], X_357=[2]:bat[:int], X_358=[2]:bat[:int], X_351=[100]:bat[:str], X_352=[100]:bat[:lng]); #[532] (0) mvc_table_ |
:        : result_wrap 353 <- 354 355 356 357 358 351 352                                                                                                                                              :
+--------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
531 tuples
