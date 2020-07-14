operation successful
+--------+------------------------------------------+
| o_year | mkt_share                                |
+========+==========================================+
|   1995 |                                   0.0344 |
|   1996 |                                   0.0414 |
+--------+------------------------------------------+
2 tuples
+-------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| usec  | statement                                                                                                                                                                                    |
+=======+==============================================================================================================================================================================================+
|     3 | X_8=0@0:void := querylog.define("trace select\n o_year,\n sum(case\n when nation = \\'BRAZIL\\' then volume\n else 0\n end) / sum(volume) as mkt_share\nfrom ( select extract(year from o_or |
:       : derdate) as o_year,\n l_extendedprice * (1 - l_discount) as volume,\n n2.n_name as nation\n from part,\n supplier,\n lineitem,\n orders,\n customer,\n nation n1,\n nation n2,\n region\n wh :
:       : ere p_partkey = l_partkey\n and s_suppkey = l_suppkey\n and l_orderkey = o_orderkey\n and o_custkey = c_custkey\n and c_nationkey = n1.n_nationkey\n and n1.n_regionkey = r_regionkey\n and  :
:       : r_name = \\'AMERICA\\'\n and s_nationkey = n2.n_nationkey\n and o_orderdate between date \\'1995-01-01\\' and date \\'1996-12-31\\'\n and p_type = \\'ECONOMY ANODIZED STEEL\\'\n ) as all_n :
:       : ations\ngroup by o_year\norder by o_year;":str, "default_pipe":str, 255:int); #[1] (0) QLOGdefineNaive 8 <- 9 10 395                                                                         :
|     9 | X_382=[2]:bat[:str] := bat.pack("o_year":str, "mkt_share":str); #[4] (0) MATpackValues 382 <- 387 392                                                                                        |
|     1 | X_11=0:int := sql.mvc(); #[8] (0) SQLmvc 11                                                                                                                                                  |
|     5 | C_12=[25]:bat[:oid] := sql.tid(X_11=0:int, "sys":str, "nation":str); #[9] (0) SQLtid 12 <- 11 13 14                                                                                          |
|     3 | X_385=[2]:bat[:int] := bat.pack(0:int, 4:int); #[7] (0) MATpackValues 385 <- 17 354                                                                                                          |
|    33 | X_384=[2]:bat[:int] := bat.pack(32:int, 38:int); #[6] (0) MATpackValues 384 <- 389 368                                                                                                       |
|     6 | X_383=[2]:bat[:str] := bat.pack("int":str, "decimal":str); #[5] (0) MATpackValues 383 <- 388 393                                                                                             |
|    19 | X_381=[2]:bat[:str] := bat.pack("sys.all_nations":str, "sys.":str); #[3] (0) MATpackValues 381 <- 386 391                                                                                    |
|     6 | (X_27=[0]:bat[:oid], X_28=[0]:bat[:oid]) := sql.bind_idxbat(X_11=0:int, "sys":str, "nation":str, "nation_fk1":str, 2:int); #[11] (0) mvc_bind_idxbat_wrap 27 28 <- 11 13 14 16 22            |
|     7 | X_25=[25]:bat[:oid] := sql.bind_idxbat(X_11=0:int, "sys":str, "nation":str, "nation_fk1":str, 0:int); #[10] (0) mvc_bind_idxbat_wrap 25 <- 11 13 14 16 17                                    |
|     7 | X_26=[0]:bat[:oid] := sql.bind_idxbat(X_11=0:int, "sys":str, "nation":str, "nation_fk1":str, 1:int); #[12] (0) mvc_bind_idxbat_wrap 26 <- 11 13 14 16 19                                     |
|    88 | X_494=[1500306]:bat[:lng] := sql.bind(X_11=0:int, "sys":str, "lineitem":str, "l_extendedprice":str, 0:int, 3:int, 4:int); #[154] (0) mvc_bind_wrap 494 <- 11 13 129 148 17 46 354            |
|     3 | X_161=[0]:bat[:oid] := sql.bind_idxbat(X_11=0:int, "sys":str, "lineitem":str, "lineitem_fk1":str, 1:int); #[137] (0) mvc_bind_idxbat_wrap 161 <- 11 13 129 160 19                            |
|    53 | X_482=[1500306]:bat[:int] := sql.bind(X_11=0:int, "sys":str, "lineitem":str, "l_suppkey":str, 0:int, 3:int, 4:int); #[143] (0) mvc_bind_wrap 482 <- 11 13 129 142 17 46 354                  |
|     5 | X_38=[5]:bat[:str] := sql.bind(X_11=0:int, "sys":str, "region":str, "r_name":str, 0:int); #[14] (0) mvc_bind_wrap 38 <- 11 13 31 33 17                                                       |
|    42 | X_465=[1500306]:bat[:int] := sql.bind(X_11=0:int, "sys":str, "lineitem":str, "l_partkey":str, 0:int, 3:int, 4:int); #[140] (0) mvc_bind_wrap 465 <- 11 13 129 131 17 46 354                  |
|     4 | C_30=[5]:bat[:oid] := sql.tid(X_11=0:int, "sys":str, "region":str); #[15] (0) SQLtid 30 <- 11 13 31                                                                                          |
|    29 | (X_530=[0]:bat[:oid], X_531=[0]:bat[:oid]) := sql.bind_idxbat(X_11=0:int, "sys":str, "lineitem":str, "lineitem_fk1":str, 2:int, 3:int, 4:int); #[136] (0) mvc_bind_idxbat_wrap 530 531 <- 11 |
:       :  13 129 160 22 46 354                                                                                                                                                                        :
|     3 | C_63=[150000]:bat[:oid] := sql.tid(X_11=0:int, "sys":str, "customer":str); #[19] (0) SQLtid 63 <- 11 13 64                                                                                   |
|     3 | X_505=[1500303]:bat[:lng] := sql.bind(X_11=0:int, "sys":str, "lineitem":str, "l_discount":str, 0:int, 2:int, 4:int); #[127] (0) mvc_bind_wrap 505 <- 11 13 129 154 17 22 354                 |
|     3 | X_72=[150000]:bat[:oid] := sql.bind_idxbat(X_11=0:int, "sys":str, "customer":str, "customer_fk1":str, 0:int); #[20] (0) mvc_bind_idxbat_wrap 72 <- 11 13 64 66 17                            |
|     3 | X_493=[1500303]:bat[:lng] := sql.bind(X_11=0:int, "sys":str, "lineitem":str, "l_extendedprice":str, 0:int, 2:int, 4:int); #[125] (0) mvc_bind_wrap 493 <- 11 13 129 148 17 22 354            |
|     4 | C_449=[1500306]:bat[:oid] := sql.tid(X_11=0:int, "sys":str, "lineitem":str, 3:int, 4:int); #[134] (0) SQLtid 449 <- 11 13 129 46 354                                                         |
|     3 | (X_74=[0]:bat[:oid], X_75=[0]:bat[:oid]) := sql.bind_idxbat(X_11=0:int, "sys":str, "customer":str, "customer_fk1":str, 2:int); #[21] (0) mvc_bind_idxbat_wrap 74 75 <- 11 13 64 66 22        |
|     3 | X_480=[1500303]:bat[:int] := sql.bind(X_11=0:int, "sys":str, "lineitem":str, "l_suppkey":str, 0:int, 2:int, 4:int); #[114] (0) mvc_bind_wrap 480 <- 11 13 129 142 17 22 354                  |
|    84 | X_523=[1500306]:bat[:oid] := sql.bind_idxbat(X_11=0:int, "sys":str, "lineitem":str, "lineitem_fk1":str, 0:int, 3:int, 4:int); #[135] (0) mvc_bind_idxbat_wrap 523 <- 11 13 129 160 17 46 354 |
:       :                                                                                                                                                                                              :
|     2 | X_73=[0]:bat[:oid] := sql.bind_idxbat(X_11=0:int, "sys":str, "customer":str, "customer_fk1":str, 1:int); #[22] (0) mvc_bind_idxbat_wrap 73 <- 11 13 64 66 19                                 |
|     6 | X_464=[1500303]:bat[:int] := sql.bind(X_11=0:int, "sys":str, "lineitem":str, "l_partkey":str, 0:int, 2:int, 4:int); #[111] (0) mvc_bind_wrap 464 <- 11 13 129 131 17 22 354                  |
|     3 | C_447=[1500303]:bat[:oid] := sql.tid(X_11=0:int, "sys":str, "lineitem":str, 2:int, 4:int); #[106] (0) SQLtid 447 <- 11 13 129 22 354                                                         |
|    10 | X_522=[1500303]:bat[:oid] := sql.bind_idxbat(X_11=0:int, "sys":str, "lineitem":str, "lineitem_fk1":str, 0:int, 2:int, 4:int); #[107] (0) mvc_bind_idxbat_wrap 522 <- 11 13 129 160 17 22 354 |
:       :                                                                                                                                                                                              :
|     6 | X_77=[150000]:bat[:oid] := sql.projectdelta(C_63=[150000]:bat[:oid], X_72=[150000]:bat[:oid], X_74=[0]:bat[:oid], X_75=[0]:bat[:oid], X_73=[0]:bat[:oid]); #[23] (0) DELTAproject 77 <- 63 7 |
:       : 2 74 75 73                                                                                                                                                                                   :
|     4 | (X_528=[0]:bat[:oid], X_529=[0]:bat[:oid]) := sql.bind_idxbat(X_11=0:int, "sys":str, "lineitem":str, "lineitem_fk1":str, 2:int, 2:int, 4:int); #[108] (0) mvc_bind_idxbat_wrap 528 529 <- 11 |
:       :  13 129 160 22 22 354                                                                                                                                                                        :
|     3 | X_504=[1500303]:bat[:lng] := sql.bind(X_11=0:int, "sys":str, "lineitem":str, "l_discount":str, 0:int, 1:int, 4:int); #[99] (0) mvc_bind_wrap 504 <- 11 13 129 154 17 19 354                  |
|     4 | X_492=[1500303]:bat[:lng] := sql.bind(X_11=0:int, "sys":str, "lineitem":str, "l_extendedprice":str, 0:int, 1:int, 4:int); #[97] (0) mvc_bind_wrap 492 <- 11 13 129 148 17 19 354             |
|     2 | X_94=[1500000]:bat[:date] := sql.bind(X_11=0:int, "sys":str, "orders":str, "o_orderdate":str, 0:int); #[26] (0) mvc_bind_wrap 94 <- 11 13 87 89 17                                           |
|     3 | X_463=[1500303]:bat[:int] := sql.bind(X_11=0:int, "sys":str, "lineitem":str, "l_partkey":str, 0:int, 1:int, 4:int); #[83] (0) mvc_bind_wrap 463 <- 11 13 129 131 17 19 354                   |
|     2 | C_86=[1500000]:bat[:oid] := sql.tid(X_11=0:int, "sys":str, "orders":str); #[27] (0) SQLtid 86 <- 11 13 87                                                                                    |
|     6 | X_478=[1500303]:bat[:int] := sql.bind(X_11=0:int, "sys":str, "lineitem":str, "l_suppkey":str, 0:int, 1:int, 4:int); #[86] (0) mvc_bind_wrap 478 <- 11 13 129 142 17 19 354                   |
|     6 | (X_526=[0]:bat[:oid], X_527=[0]:bat[:oid]) := sql.bind_idxbat(X_11=0:int, "sys":str, "lineitem":str, "lineitem_fk1":str, 2:int, 1:int, 4:int); #[80] (0) mvc_bind_idxbat_wrap 526 527 <- 11  |
:       : 13 129 160 22 19 354                                                                                                                                                                         :
|     2 | X_100=[1500000]:bat[:oid] := sql.bind_idxbat(X_11=0:int, "sys":str, "orders":str, "orders_fk1":str, 0:int); #[29] (0) mvc_bind_idxbat_wrap 100 <- 11 13 87 101 17                            |
|     3 | C_445=[1500303]:bat[:oid] := sql.tid(X_11=0:int, "sys":str, "lineitem":str, 1:int, 4:int); #[78] (0) SQLtid 445 <- 11 13 129 19 354                                                          |
|     2 | X_503=[1500303]:bat[:lng] := sql.bind(X_11=0:int, "sys":str, "lineitem":str, "l_discount":str, 0:int, 0:int, 4:int); #[71] (0) mvc_bind_wrap 503 <- 11 13 129 154 17 17 354                  |
|     2 | (X_103=[0]:bat[:oid], X_104=[0]:bat[:oid]) := sql.bind_idxbat(X_11=0:int, "sys":str, "orders":str, "orders_fk1":str, 2:int); #[30] (0) mvc_bind_idxbat_wrap 103 104 <- 11 13 87 101 22       |
|     3 | X_491=[1500303]:bat[:lng] := sql.bind(X_11=0:int, "sys":str, "lineitem":str, "l_extendedprice":str, 0:int, 0:int, 4:int); #[69] (0) mvc_bind_wrap 491 <- 11 13 129 148 17 17 354             |
|     1 | X_102=[0]:bat[:oid] := sql.bind_idxbat(X_11=0:int, "sys":str, "orders":str, "orders_fk1":str, 1:int); #[31] (0) mvc_bind_idxbat_wrap 102 <- 11 13 87 101 19                                  |
|     2 | X_295=[25]:bat[:str] := sql.bind(X_11=0:int, "sys":str, "nation":str, "n_name":str, 0:int); #[65] (0) mvc_bind_wrap 295 <- 11 13 14 290 17                                                   |
|     3 | X_257=[0]:bat[:oid] := sql.bind_idxbat(X_11=0:int, "sys":str, "supplier":str, "supplier_fk1":str, 1:int); #[56] (0) mvc_bind_idxbat_wrap 257 <- 11 13 243 256 19                             |
|     2 | C_443=[1500303]:bat[:oid] := sql.tid(X_11=0:int, "sys":str, "lineitem":str, 0:int, 4:int); #[35] (0) SQLtid 443 <- 11 13 129 17 354                                                          |
|    13 | X_521=[1500303]:bat[:oid] := sql.bind_idxbat(X_11=0:int, "sys":str, "lineitem":str, "lineitem_fk1":str, 0:int, 1:int, 4:int); #[79] (0) mvc_bind_idxbat_wrap 521 <- 11 13 129 160 17 19 354  |
|     4 | X_301=[25]:bat[:str] := algebra.projection(C_12=[25]:bat[:oid], X_295=[25]:bat[:str]); #[66] (0) ALGprojection 301 <- 12 295                                                                 |
|     2 | (X_258=[0]:bat[:oid], X_259=[0]:bat[:oid]) := sql.bind_idxbat(X_11=0:int, "sys":str, "supplier":str, "supplier_fk1":str, 2:int); #[55] (0) mvc_bind_idxbat_wrap 258 259 <- 11 13 243 256 22  |
|     3 | C_242=[10000]:bat[:oid] := sql.tid(X_11=0:int, "sys":str, "supplier":str); #[50] (0) SQLtid 242 <- 11 13 243                                                                                 |
|     3 | X_250=[10000]:bat[:int] := sql.bind(X_11=0:int, "sys":str, "supplier":str, "s_suppkey":str, 0:int); #[51] (0) mvc_bind_wrap 250 <- 11 13 243 245 17                                          |
|    12 | X_520=[1500303]:bat[:oid] := sql.bind_idxbat(X_11=0:int, "sys":str, "lineitem":str, "lineitem_fk1":str, 0:int, 0:int, 4:int); #[36] (0) mvc_bind_idxbat_wrap 520 <- 11 13 129 160 17 17 354  |
|     3 | X_476=[1500303]:bat[:int] := sql.bind(X_11=0:int, "sys":str, "lineitem":str, "l_suppkey":str, 0:int, 0:int, 4:int); #[48] (0) mvc_bind_wrap 476 <- 11 13 129 142 17 17 354                   |
|     2 | X_198=[200000]:bat[:int] := sql.bind(X_11=0:int, "sys":str, "part":str, "p_partkey":str, 0:int); #[45] (0) mvc_bind_wrap 198 <- 11 13 191 193 17                                             |
|     5 | X_255=[10000]:bat[:oid] := sql.bind_idxbat(X_11=0:int, "sys":str, "supplier":str, "supplier_fk1":str, 0:int); #[54] (0) mvc_bind_idxbat_wrap 255 <- 11 13 243 256 17                         |
|     3 | C_190=[200000]:bat[:oid] := sql.tid(X_11=0:int, "sys":str, "part":str); #[43] (0) SQLtid 190 <- 11 13 191                                                                                    |
|     6 | (X_524=[0]:bat[:oid], X_525=[0]:bat[:oid]) := sql.bind_idxbat(X_11=0:int, "sys":str, "lineitem":str, "lineitem_fk1":str, 2:int, 0:int, 4:int); #[37] (0) mvc_bind_idxbat_wrap 524 525 <- 11  |
:       : 13 129 160 22 17 354                                                                                                                                                                         :
|     2 | X_203=[200000]:bat[:str] := sql.bind(X_11=0:int, "sys":str, "part":str, "p_type":str, 0:int); #[42] (0) mvc_bind_wrap 203 <- 11 13 191 204 17                                                |
|     7 | X_462=[1500303]:bat[:int] := sql.bind(X_11=0:int, "sys":str, "lineitem":str, "l_partkey":str, 0:int, 0:int, 4:int); #[40] (0) mvc_bind_wrap 462 <- 11 13 129 131 17 17 354                   |
|     3 | X_261=[10000]:bat[:int] := algebra.projection(C_242=[10000]:bat[:oid], X_250=[10000]:bat[:int]); #[52] (0) ALGprojection 261 <- 242 250                                                      |
|     7 | X_506=[1500306]:bat[:lng] := sql.bind(X_11=0:int, "sys":str, "lineitem":str, "l_discount":str, 0:int, 3:int, 4:int); #[156] (0) mvc_bind_wrap 506 <- 11 13 129 154 17 46 354                 |
|     6 | X_51=[25]:bat[:oid] := sql.projectdelta(C_12=[25]:bat[:oid], X_25=[25]:bat[:oid], X_27=[0]:bat[:oid], X_28=[0]:bat[:oid], X_26=[0]:bat[:oid]); #[13] (0) DELTAproject 51 <- 12 25 27 28 26   |
|     4 | X_556=[1500306]:bat[:oid] := sql.projectdelta(C_449=[1500306]:bat[:oid], X_523=[1500306]:bat[:oid], X_530=[0]:bat[:oid], X_531=[0]:bat[:oid], X_161=[0]:bat[:oid]); #[138] (0) DELTAproject  |
:       : 556 <- 449 523 530 531 161                                                                                                                                                                   :
|    10 | C_49=[1]:bat[:oid] := algebra.thetaselect(X_38=[5]:bat[:str], C_30=[5]:bat[:oid], "AMERICA":str, "==":str); #[16] (1) ALGthetaselect2 49 <- 38 30 4 50                                       |
|     3 | X_555=[1500303]:bat[:oid] := sql.projectdelta(C_447=[1500303]:bat[:oid], X_522=[1500303]:bat[:oid], X_528=[0]:bat[:oid], X_529=[0]:bat[:oid]); #[109] (0) DELTAproject2 555 <- 447 522 528 5 |
:       : 29                                                                                                                                                                                           :
|    23 | X_53=[5]:bat[:oid] := algebra.join(X_51=[25]:bat[:oid], C_49=[1]:bat[:oid], nil:BAT, nil:BAT, false:bit, nil:lng); #[17] (0) ALGjoin1 53 <- 51 49 55 55 57 58                                |
|     5 | X_554=[1500303]:bat[:oid] := sql.projectdelta(C_445=[1500303]:bat[:oid], X_521=[1500303]:bat[:oid], X_526=[0]:bat[:oid], X_527=[0]:bat[:oid]); #[81] (0) DELTAproject2 554 <- 445 521 526 52 |
:       : 7                                                                                                                                                                                            :
|     3 | X_59=[5]:bat[:oid] := algebra.projection(X_53=[5]:bat[:oid], C_12=[25]:bat[:oid]); #[18] (0) ALGprojection 59 <- 53 12                                                                       |
|     3 | X_262=[10000]:bat[:oid] := sql.projectdelta(C_242=[10000]:bat[:oid], X_255=[10000]:bat[:oid], X_258=[0]:bat[:oid], X_259=[0]:bat[:oid], X_257=[0]:bat[:oid]); #[57] (0) DELTAproject 262 <-  |
:       : 242 255 258 259 257                                                                                                                                                                          :
|     1 | language.pass(C_242=[10000]:bat[:oid]); #[185] (0) MALpass 951 <- 242                                                                                                                        |
|     3 | X_553=[1500303]:bat[:oid] := sql.projectdelta(C_443=[1500303]:bat[:oid], X_520=[1500303]:bat[:oid], X_524=[0]:bat[:oid], X_525=[0]:bat[:oid]); #[38] (0) DELTAproject2 553 <- 443 520 524 52 |
:       : 5                                                                                                                                                                                            :
|   514 | C_216=[1451]:bat[:oid] := algebra.thetaselect(X_203=[200000]:bat[:str], C_190=[200000]:bat[:oid], "ECONOMY ANODIZED STEEL":str, "==":str); #[44] (1) ALGthetaselect2 216 <- 203 190 7 50     |
|   104 | X_218=[1451]:bat[:int] := algebra.projection(C_216=[1451]:bat[:oid], X_198=[200000]:bat[:int]); #[46] (0) ALGprojection 218 <- 216 198                                                       |
|  1934 | (X_78=[29952]:bat[:oid], X_79=[29952]:bat[:oid]) := algebra.join(X_59=[5]:bat[:oid], X_77=[150000]:bat[:oid], nil:BAT, nil:BAT, false:bit, nil:lng); #[24] (0) ALGjoin 78 79 <- 59 77 55 55  |
:       : 57 58                                                                                                                                                                                        :
|    82 | X_84=[29952]:bat[:oid] := algebra.projection(X_79=[29952]:bat[:oid], C_63=[150000]:bat[:oid]); #[25] (0) ALGprojection 84 <- 79 63                                                           |
|     1 | language.pass(C_63=[150000]:bat[:oid]); #[184] (0) MALpass 950 <- 63                                                                                                                         |
|  4523 | C_108=[457263]:bat[:oid] := algebra.select(X_94=[1500000]:bat[:date], C_86=[1500000]:bat[:oid], "1995-01-01":date, "1996-12-31":date, true:bit, true:bit, false:bit, true:bit); #[28] (1) AL |
:       : Gselect2nil 108 <- 94 86 5 6 109 109 57 109                                                                                                                                                  :
|  1827 | X_113=[457263]:bat[:oid] := sql.projectdelta(C_108=[457263]:bat[:oid], X_100=[1500000]:bat[:oid], X_103=[0]:bat[:oid], X_104=[0]:bat[:oid], X_102=[0]:bat[:oid]); #[32] (0) DELTAproject 113 |
:       :  <- 108 100 103 104 102                                                                                                                                                                      :
| 14805 | (X_114=[91179]:bat[:oid], X_115=[91179]:bat[:oid]) := algebra.join(X_84=[29952]:bat[:oid], X_113=[457263]:bat[:oid], nil:BAT, nil:BAT, false:bit, nil:lng); #[33] (0) ALGjoin 114 115 <- 84  |
:       : 113 55 55 57 58                                                                                                                                                                              :
|   577 | X_126=[91179]:bat[:oid] := algebra.projection(X_115=[91179]:bat[:oid], C_108=[457263]:bat[:oid]); #[34] (0) ALGprojection 126 <- 115 108                                                     |
|  3271 | X_125=[91179]:bat[:date] := algebra.projectionpath(X_115=[91179]:bat[:oid], C_108=[457263]:bat[:oid], X_94=[1500000]:bat[:date]); #[60] (0) ALGprojectionpath 125 <- 115 108 94              |
|     4 | language.pass(X_115=[91179]:bat[:oid]); #[186] (0) MALpass 952 <- 115                                                                                                                        |
| 14010 | (X_563=[91677]:bat[:oid], X_564=[91677]:bat[:oid]) := algebra.join(X_126=[91179]:bat[:oid], X_556=[1500306]:bat[:oid], nil:BAT, nil:BAT, false:bit, nil:lng); #[139] (0) ALGjoin 563 564 <-  |
:       : 126 556 55 55 57 58                                                                                                                                                                          :
| 14180 | (X_559=[91122]:bat[:oid], X_560=[91122]:bat[:oid]) := algebra.join(X_126=[91179]:bat[:oid], X_554=[1500303]:bat[:oid], nil:BAT, nil:BAT, false:bit, nil:lng); #[82] (0) ALGjoin 559 560 <- 1 |
:       : 26 554 55 55 57 58                                                                                                                                                                           :
| 14697 | (X_557=[90777]:bat[:oid], X_558=[90777]:bat[:oid]) := algebra.join(X_126=[91179]:bat[:oid], X_553=[1500303]:bat[:oid], nil:BAT, nil:BAT, false:bit, nil:lng); #[39] (0) ALGjoin 557 558 <- 1 |
:       : 26 553 55 55 57 58                                                                                                                                                                           :
| 13371 | (X_561=[91515]:bat[:oid], X_562=[91515]:bat[:oid]) := algebra.join(X_126=[91179]:bat[:oid], X_555=[1500303]:bat[:oid], nil:BAT, nil:BAT, false:bit, nil:lng); #[110] (0) ALGjoin 561 562 <-  |
:       : 126 555 55 55 57 58                                                                                                                                                                          :
|     4 | language.pass(X_126=[91179]:bat[:oid]); #[216] (0) MALpass 982 <- 126                                                                                                                        |
|  3313 | X_604=[91677]:bat[:int] := algebra.projectionpath(X_564=[91677]:bat[:oid], C_449=[1500306]:bat[:oid], X_465=[1500306]:bat[:int]); #[141] (0) ALGprojectionpath 604 <- 564 449 465            |
|  3080 | X_602=[91122]:bat[:int] := algebra.projectionpath(X_560=[91122]:bat[:oid], C_445=[1500303]:bat[:oid], X_463=[1500303]:bat[:int]); #[84] (0) ALGprojectionpath 602 <- 560 445 463             |
|  3057 | X_601=[90777]:bat[:int] := algebra.projectionpath(X_558=[90777]:bat[:oid], C_443=[1500303]:bat[:oid], X_462=[1500303]:bat[:int]); #[41] (0) ALGprojectionpath 601 <- 558 443 462             |
|  1677 | X_623=[655]:bat[:oid] := algebra.join(X_602=[91122]:bat[:int], X_218=[1451]:bat[:int], nil:BAT, nil:BAT, false:bit, nil:lng); #[85] (0) ALGjoin1 623 <- 602 218 55 55 57 58                  |
|  1746 | X_627=[652]:bat[:oid] := algebra.join(X_604=[91677]:bat[:int], X_218=[1451]:bat[:int], nil:BAT, nil:BAT, false:bit, nil:lng); #[142] (0) ALGjoin1 627 <- 604 218 55 55 57 58                 |
|  1625 | X_621=[635]:bat[:oid] := algebra.join(X_601=[90777]:bat[:int], X_218=[1451]:bat[:int], nil:BAT, nil:BAT, false:bit, nil:lng); #[47] (0) ALGjoin1 621 <- 601 218 55 55 57 58                  |
|   306 | X_670=[655]:bat[:int] := algebra.projectionpath(X_623=[655]:bat[:oid], X_560=[91122]:bat[:oid], C_445=[1500303]:bat[:oid], X_478=[1500303]:bat[:int]); #[87] (0) ALGprojectionpath 670 <- 62 |
:       : 3 560 445 478                                                                                                                                                                                :
|    32 | (X_695=[655]:bat[:oid], X_696=[655]:bat[:oid]) := algebra.join(X_670=[655]:bat[:int], X_261=[10000]:bat[:int], nil:BAT, nil:BAT, false:bit, nil:lng); #[88] (0) ALGjoin 695 696 <- 670 261 5 |
:       : 5 55 57 58                                                                                                                                                                                   :
|    14 | X_770=[655]:bat[:oid] := algebra.projection(X_696=[655]:bat[:oid], X_262=[10000]:bat[:oid]); #[89] (0) ALGprojection 770 <- 696 262                                                          |
|    16 | (X_775=[655]:bat[:oid], X_776=[655]:bat[:oid]) := algebra.join(X_770=[655]:bat[:oid], C_12=[25]:bat[:oid], nil:BAT, nil:BAT, false:bit, nil:lng); #[90] (0) ALGjoin 775 776 <- 770 12 55 55  |
:       : 57 58                                                                                                                                                                                        :
|    52 | X_806=[655]:bat[:date] := algebra.projectionpath(X_775=[655]:bat[:oid], X_695=[655]:bat[:oid], X_623=[655]:bat[:oid], X_559=[91122]:bat[:oid], X_125=[91179]:bat[:date]); #[91] (0) ALGproje |
:       : ctionpath 806 <- 775 695 623 559 125                                                                                                                                                         :
|    12 | X_862=[655]:bat[:int] := batmtime.year(X_806=[655]:bat[:date]); #[92] (0) MTIMEdate_extract_year_bulk 862 <- 806                                                                             |
|    53 | (X_896=[655]:bat[:oid], C_897=[2]:bat[:oid]) := group.groupdone(X_862=[655]:bat[:int]); #[93] (0) GRPgroup3 896 897 <- 862                                                                   |
|     4 | X_899=[2]:bat[:int] := algebra.projection(C_897=[2]:bat[:oid], X_862=[655]:bat[:int]); #[94] (0) ALGprojection 899 <- 897 862                                                                |
|     6 | X_854=[655]:bat[:str] := algebra.projection(X_776=[655]:bat[:oid], X_301=[25]:bat[:str]); #[95] (0) ALGprojection 854 <- 776 301                                                             |
|   344 | X_669=[635]:bat[:int] := algebra.projectionpath(X_621=[635]:bat[:oid], X_558=[90777]:bat[:oid], C_443=[1500303]:bat[:oid], X_476=[1500303]:bat[:int]); #[49] (0) ALGprojectionpath 669 <- 62 |
:       : 1 558 443 476                                                                                                                                                                                :
|   583 | X_672=[652]:bat[:int] := algebra.projectionpath(X_627=[652]:bat[:oid], X_564=[91677]:bat[:oid], C_449=[1500306]:bat[:oid], X_482=[1500306]:bat[:int]); #[144] (0) ALGprojectionpath 672 <- 6 |
:       : 27 564 449 482                                                                                                                                                                               :
|    36 | X_874=[655]:bat[:bit] := batcalc.==(X_854=[655]:bat[:str], "BRAZIL":str); #[96] (0) CMDbatEQ 874 <- 854 1                                                                                    |
|    43 | (X_693=[635]:bat[:oid], X_694=[635]:bat[:oid]) := algebra.join(X_669=[635]:bat[:int], X_261=[10000]:bat[:int], nil:BAT, nil:BAT, false:bit, nil:lng); #[53] (0) ALGjoin 693 694 <- 669 261 5 |
:       : 5 55 57 58                                                                                                                                                                                   :
|    13 | X_769=[635]:bat[:oid] := algebra.projection(X_694=[635]:bat[:oid], X_262=[10000]:bat[:oid]); #[58] (0) ALGprojection 769 <- 694 262                                                          |
|    14 | (X_773=[635]:bat[:oid], X_774=[635]:bat[:oid]) := algebra.join(X_769=[635]:bat[:oid], C_12=[25]:bat[:oid], nil:BAT, nil:BAT, false:bit, nil:lng); #[59] (0) ALGjoin 773 774 <- 769 12 55 55  |
:       : 57 58                                                                                                                                                                                        :
|    64 | (X_699=[652]:bat[:oid], X_700=[652]:bat[:oid]) := algebra.join(X_672=[652]:bat[:int], X_261=[10000]:bat[:int], nil:BAT, nil:BAT, false:bit, nil:lng); #[145] (0) ALGjoin 699 700 <- 672 261  |
:       : 55 55 57 58                                                                                                                                                                                  :
|    12 | X_772=[652]:bat[:oid] := algebra.projection(X_700=[652]:bat[:oid], X_262=[10000]:bat[:oid]); #[146] (0) ALGprojection 772 <- 700 262                                                         |
|    59 | X_805=[635]:bat[:date] := algebra.projectionpath(X_773=[635]:bat[:oid], X_693=[635]:bat[:oid], X_621=[635]:bat[:oid], X_557=[90777]:bat[:oid], X_125=[91179]:bat[:date]); #[61] (0) ALGproje |
:       : ctionpath 805 <- 773 693 621 557 125                                                                                                                                                         :
|    11 | X_861=[635]:bat[:int] := batmtime.year(X_805=[635]:bat[:date]); #[62] (0) MTIMEdate_extract_year_bulk 861 <- 805                                                                             |
|    13 | (X_779=[652]:bat[:oid], X_780=[652]:bat[:oid]) := algebra.join(X_772=[652]:bat[:oid], C_12=[25]:bat[:oid], nil:BAT, nil:BAT, false:bit, nil:lng); #[147] (0) ALGjoin 779 780 <- 772 12 55 55 |
:       :  57 58                                                                                                                                                                                       :
|    41 | (X_892=[635]:bat[:oid], C_893=[2]:bat[:oid]) := group.groupdone(X_861=[635]:bat[:int]); #[63] (0) GRPgroup3 892 893 <- 861                                                                   |
|     4 | X_895=[2]:bat[:int] := algebra.projection(C_893=[2]:bat[:oid], X_861=[635]:bat[:int]); #[64] (0) ALGprojection 895 <- 893 861                                                                |
|     4 | X_934=[2]:bat[:int] := mat.packIncrement(X_895=[2]:bat[:int], 4:int); #[163] (0) MATpackIncrement 934 <- 895 935                                                                             |
|  2784 | X_603=[91515]:bat[:int] := algebra.projectionpath(X_562=[91515]:bat[:oid], C_447=[1500303]:bat[:oid], X_464=[1500303]:bat[:int]); #[112] (0) ALGprojectionpath 603 <- 562 447 464            |
|     2 | X_936=[4]:bat[:int] := mat.packIncrement(X_934=[4]:bat[:int], X_899=[2]:bat[:int]); #[164] (0) MATpackIncrement 936 <- 934 899                                                               |
|     1 | language.pass(X_861=[635]:bat[:int]); #[189] (0) MALpass 955 <- 861                                                                                                                          |
|   126 | X_808=[652]:bat[:date] := algebra.projectionpath(X_779=[652]:bat[:oid], X_699=[652]:bat[:oid], X_627=[652]:bat[:oid], X_563=[91677]:bat[:oid], X_125=[91179]:bat[:date]); #[148] (0) ALGproj |
:       : ectionpath 808 <- 779 699 627 563 125                                                                                                                                                        :
|    13 | X_864=[652]:bat[:int] := batmtime.year(X_808=[652]:bat[:date]); #[149] (0) MTIMEdate_extract_year_bulk 864 <- 808                                                                            |
|    97 | X_832=[652]:bat[:lng] := algebra.projectionpath(X_779=[652]:bat[:oid], X_699=[652]:bat[:oid], X_627=[652]:bat[:oid], X_564=[91677]:bat[:oid], C_449=[1500306]:bat[:oid], X_506=[1500306]:bat |
:       : [:lng]); #[157] (0) ALGprojectionpath 832 <- 779 699 627 564 449 506                                                                                                                         :
|     7 | X_868=[652]:bat[:lng] := batcalc.-(100:lng, X_832=[652]:bat[:lng], nil:BAT); #[158] (0) CMDbatSUBsignal 868 <- 434 832 55                                                                    |
|    91 | (X_904=[652]:bat[:oid], C_905=[2]:bat[:oid]) := group.groupdone(X_864=[652]:bat[:int]); #[150] (0) GRPgroup3 904 905 <- 864                                                                  |
|   543 | X_826=[655]:bat[:lng] := algebra.projectionpath(X_775=[655]:bat[:oid], X_695=[655]:bat[:oid], X_623=[655]:bat[:oid], X_560=[91122]:bat[:oid], C_445=[1500303]:bat[:oid], X_492=[1500303]:bat |
:       : [:lng]); #[98] (0) ALGprojectionpath 826 <- 775 695 623 560 445 492                                                                                                                          :
|     6 | X_853=[635]:bat[:str] := algebra.projection(X_774=[635]:bat[:oid], X_301=[25]:bat[:str]); #[67] (0) ALGprojection 853 <- 774 301                                                             |
|     5 | X_907=[2]:bat[:int] := algebra.projection(C_905=[2]:bat[:oid], X_864=[652]:bat[:int]); #[151] (0) ALGprojection 907 <- 905 864                                                               |
|    19 | X_873=[635]:bat[:bit] := batcalc.==(X_853=[635]:bat[:str], "BRAZIL":str); #[68] (0) CMDbatEQ 873 <- 853 1                                                                                    |
|     2 | language.pass(X_864=[652]:bat[:int]); #[222] (0) MALpass 988 <- 864                                                                                                                          |
|     7 | X_856=[652]:bat[:str] := algebra.projection(X_780=[652]:bat[:oid], X_301=[25]:bat[:str]); #[152] (0) ALGprojection 856 <- 780 301                                                            |
|    19 | X_876=[652]:bat[:bit] := batcalc.==(X_856=[652]:bat[:str], "BRAZIL":str); #[153] (0) CMDbatEQ 876 <- 856 1                                                                                   |
|    92 | X_829=[635]:bat[:lng] := algebra.projectionpath(X_773=[635]:bat[:oid], X_693=[635]:bat[:oid], X_621=[635]:bat[:oid], X_558=[90777]:bat[:oid], C_443=[1500303]:bat[:oid], X_503=[1500303]:bat |
:       : [:lng]); #[72] (0) ALGprojectionpath 829 <- 773 693 621 558 443 503                                                                                                                          :
|     6 | X_865=[635]:bat[:lng] := batcalc.-(100:lng, X_829=[635]:bat[:lng], nil:BAT); #[73] (0) CMDbatSUBsignal 865 <- 434 829 55                                                                     |
|     1 | language.pass(X_862=[655]:bat[:int]); #[198] (0) MALpass 964 <- 862                                                                                                                          |
|   105 | X_830=[655]:bat[:lng] := algebra.projectionpath(X_775=[655]:bat[:oid], X_695=[655]:bat[:oid], X_623=[655]:bat[:oid], X_560=[91122]:bat[:oid], C_445=[1500303]:bat[:oid], X_504=[1500303]:bat |
:       : [:lng]); #[100] (0) ALGprojectionpath 830 <- 775 695 623 560 445 504                                                                                                                         :
|     2 | language.pass(X_775=[655]:bat[:oid]); #[199] (0) MALpass 965 <- 775                                                                                                                          |
|    33 | X_866=[655]:bat[:lng] := batcalc.-(100:lng, X_830=[655]:bat[:lng], nil:BAT); #[101] (0) CMDbatSUBsignal 866 <- 434 830 55                                                                    |
|     8 | X_870=[655]:bat[:hge] := batcalc.*(X_826=[655]:bat[:lng], X_866=[655]:bat[:lng], nil:BAT, nil:BAT); #[102] (0) CMDbatMULenlarge 870 <- 826 866 55 55                                         |
|     5 | X_886=[655]:bat[:hge] := batcalc.ifthenelse(X_874=[655]:bat[:bit], X_870=[655]:bat[:hge], 0:hge); #[103] (0) CMDifthen 886 <- 874 870 436                                                    |
|     9 | X_916=[2]:bat[:hge] := aggr.subsum(X_886=[655]:bat[:hge], X_896=[655]:bat[:oid], C_897=[2]:bat[:oid], true:bit, true:bit); #[104] (0) AGGRsubsum_hge 916 <- 886 896 897 109 109              |
|     6 | X_923=[2]:bat[:hge] := aggr.subsum(X_870=[655]:bat[:hge], X_896=[655]:bat[:oid], C_897=[2]:bat[:oid], true:bit, true:bit); #[105] (0) AGGRsubsum_hge 923 <- 870 896 897 109 109              |
|     1 | language.pass(X_870=[655]:bat[:hge]); #[204] (0) MALpass 970 <- 870                                                                                                                          |
|     1 | language.pass(C_897=[2]:bat[:oid]); #[206] (0) MALpass 972 <- 897                                                                                                                            |
|     1 | language.pass(X_896=[655]:bat[:oid]); #[205] (0) MALpass 971 <- 896                                                                                                                          |
|   771 | X_828=[652]:bat[:lng] := algebra.projectionpath(X_779=[652]:bat[:oid], X_699=[652]:bat[:oid], X_627=[652]:bat[:oid], X_564=[91677]:bat[:oid], C_449=[1500306]:bat[:oid], X_494=[1500306]:bat |
:       : [:lng]); #[155] (0) ALGprojectionpath 828 <- 779 699 627 564 449 494                                                                                                                         :
|   622 | X_825=[635]:bat[:lng] := algebra.projectionpath(X_773=[635]:bat[:oid], X_693=[635]:bat[:oid], X_621=[635]:bat[:oid], X_558=[90777]:bat[:oid], C_443=[1500303]:bat[:oid], X_491=[1500303]:bat |
:       : [:lng]); #[70] (0) ALGprojectionpath 825 <- 773 693 621 558 443 491                                                                                                                          :
|     1 | language.pass(C_445=[1500303]:bat[:oid]); #[203] (0) MALpass 969 <- 445                                                                                                                      |
|     3 | language.pass(X_773=[635]:bat[:oid]); #[190] (0) MALpass 956 <- 773                                                                                                                          |
|     2 | language.pass(X_779=[652]:bat[:oid]); #[224] (0) MALpass 990 <- 779                                                                                                                          |
|     1 | language.pass(C_108=[457263]:bat[:oid]); #[187] (0) MALpass 953 <- 108                                                                                                                       |
|     1 | language.pass(X_623=[655]:bat[:oid]); #[201] (0) MALpass 967 <- 623                                                                                                                          |
|     2 | language.pass(X_94=[1500000]:bat[:date]); #[188] (0) MALpass 954 <- 94                                                                                                                       |
|     6 | X_869=[635]:bat[:hge] := batcalc.*(X_825=[635]:bat[:lng], X_865=[635]:bat[:lng], nil:BAT, nil:BAT); #[74] (0) CMDbatMULenlarge 869 <- 825 865 55 55                                          |
|     6 | X_872=[652]:bat[:hge] := batcalc.*(X_828=[652]:bat[:lng], X_868=[652]:bat[:lng], nil:BAT, nil:BAT); #[159] (0) CMDbatMULenlarge 872 <- 828 868 55 55                                         |
|    28 | language.pass(X_560=[91122]:bat[:oid]); #[202] (0) MALpass 968 <- 560                                                                                                                        |
|     5 | X_888=[652]:bat[:hge] := batcalc.ifthenelse(X_876=[652]:bat[:bit], X_872=[652]:bat[:hge], 0:hge); #[160] (0) CMDifthen 888 <- 876 872 436                                                    |
|     5 | X_885=[635]:bat[:hge] := batcalc.ifthenelse(X_873=[635]:bat[:bit], X_869=[635]:bat[:hge], 0:hge); #[75] (0) CMDifthen 885 <- 873 869 436                                                     |
|    10 | X_918=[2]:bat[:hge] := aggr.subsum(X_888=[652]:bat[:hge], X_904=[652]:bat[:oid], C_905=[2]:bat[:oid], true:bit, true:bit); #[161] (0) AGGRsubsum_hge 918 <- 888 904 905 109 109              |
|     6 | X_925=[2]:bat[:hge] := aggr.subsum(X_872=[652]:bat[:hge], X_904=[652]:bat[:oid], C_905=[2]:bat[:oid], true:bit, true:bit); #[162] (0) AGGRsubsum_hge 925 <- 872 904 905 109 109              |
|     9 | X_915=[2]:bat[:hge] := aggr.subsum(X_885=[635]:bat[:hge], X_892=[635]:bat[:oid], C_893=[2]:bat[:oid], true:bit, true:bit); #[76] (0) AGGRsubsum_hge 915 <- 885 892 893 109 109               |
|     1 | language.pass(X_872=[652]:bat[:hge]); #[229] (0) MALpass 995 <- 872                                                                                                                          |
|     3 | X_939=[2]:bat[:hge] := mat.packIncrement(X_915=[2]:bat[:hge], 4:int); #[169] (0) MATpackIncrement 939 <- 915 935                                                                             |
|     1 | language.pass(C_449=[1500306]:bat[:oid]); #[228] (0) MALpass 994 <- 449                                                                                                                      |
|     1 | language.pass(C_905=[2]:bat[:oid]); #[231] (0) MALpass 997 <- 905                                                                                                                            |
|     1 | language.pass(X_904=[652]:bat[:oid]); #[230] (0) MALpass 996 <- 904                                                                                                                          |
|     2 | X_940=[4]:bat[:hge] := mat.packIncrement(X_939=[4]:bat[:hge], X_916=[2]:bat[:hge]); #[170] (0) MATpackIncrement 940 <- 939 916                                                               |
|     1 | language.pass(X_564=[91677]:bat[:oid]); #[227] (0) MALpass 993 <- 564                                                                                                                        |
|     1 | language.pass(X_693=[635]:bat[:oid]); #[191] (0) MALpass 957 <- 693                                                                                                                          |
|     1 | language.pass(X_621=[635]:bat[:oid]); #[192] (0) MALpass 958 <- 621                                                                                                                          |
|     1 | language.pass(X_627=[652]:bat[:oid]); #[226] (0) MALpass 992 <- 627                                                                                                                          |
|     1 | language.pass(X_558=[90777]:bat[:oid]); #[193] (0) MALpass 959 <- 558                                                                                                                        |
|     1 | language.pass(X_699=[652]:bat[:oid]); #[225] (0) MALpass 991 <- 699                                                                                                                          |
|     1 | language.pass(C_443=[1500303]:bat[:oid]); #[194] (0) MALpass 960 <- 443                                                                                                                      |
|     1 | language.pass(X_695=[655]:bat[:oid]); #[200] (0) MALpass 966 <- 695                                                                                                                          |
|    74 | X_922=[2]:bat[:hge] := aggr.subsum(X_869=[635]:bat[:hge], X_892=[635]:bat[:oid], C_893=[2]:bat[:oid], true:bit, true:bit); #[77] (0) AGGRsubsum_hge 922 <- 869 892 893 109 109               |
|     2 | language.pass(X_869=[635]:bat[:hge]); #[195] (0) MALpass 961 <- 869                                                                                                                          |
|     4 | X_943=[2]:bat[:hge] := mat.packIncrement(X_922=[2]:bat[:hge], 4:int); #[174] (0) MATpackIncrement 943 <- 922 935                                                                             |
|     2 | language.pass(X_892=[635]:bat[:oid]); #[196] (0) MALpass 962 <- 892                                                                                                                          |
|     3 | language.pass(C_893=[2]:bat[:oid]); #[197] (0) MALpass 963 <- 893                                                                                                                            |
|     2 | X_944=[4]:bat[:hge] := mat.packIncrement(X_943=[4]:bat[:hge], X_923=[2]:bat[:hge]); #[175] (0) MATpackIncrement 944 <- 943 923                                                               |
|  1714 | X_625=[661]:bat[:oid] := algebra.join(X_603=[91515]:bat[:int], X_218=[1451]:bat[:int], nil:BAT, nil:BAT, false:bit, nil:lng); #[113] (0) ALGjoin1 625 <- 603 218 55 55 57 58                 |
|     2 | language.pass(X_218=[1451]:bat[:int]); #[217] (0) MALpass 983 <- 218                                                                                                                         |
|   319 | X_671=[661]:bat[:int] := algebra.projectionpath(X_625=[661]:bat[:oid], X_562=[91515]:bat[:oid], C_447=[1500303]:bat[:oid], X_480=[1500303]:bat[:int]); #[115] (0) ALGprojectionpath 671 <- 6 |
:       : 25 562 447 480                                                                                                                                                                               :
|    46 | (X_697=[661]:bat[:oid], X_698=[661]:bat[:oid]) := algebra.join(X_671=[661]:bat[:int], X_261=[10000]:bat[:int], nil:BAT, nil:BAT, false:bit, nil:lng); #[116] (0) ALGjoin 697 698 <- 671 261  |
:       : 55 55 57 58                                                                                                                                                                                  :
|     2 | language.pass(X_261=[10000]:bat[:int]); #[218] (0) MALpass 984 <- 261                                                                                                                        |
|    26 | X_771=[661]:bat[:oid] := algebra.projection(X_698=[661]:bat[:oid], X_262=[10000]:bat[:oid]); #[117] (0) ALGprojection 771 <- 698 262                                                         |
|     1 | language.pass(X_262=[10000]:bat[:oid]); #[219] (0) MALpass 985 <- 262                                                                                                                        |
|    55 | (X_777=[661]:bat[:oid], X_778=[661]:bat[:oid]) := algebra.join(X_771=[661]:bat[:oid], C_12=[25]:bat[:oid], nil:BAT, nil:BAT, false:bit, nil:lng); #[118] (0) ALGjoin 777 778 <- 771 12 55 55 |
:       :  57 58                                                                                                                                                                                       :
|     2 | language.pass(C_12=[25]:bat[:oid]); #[220] (0) MALpass 986 <- 12                                                                                                                             |
|    11 | X_855=[661]:bat[:str] := algebra.projection(X_778=[661]:bat[:oid], X_301=[25]:bat[:str]); #[123] (0) ALGprojection 855 <- 778 301                                                            |
|   115 | X_831=[661]:bat[:lng] := algebra.projectionpath(X_777=[661]:bat[:oid], X_697=[661]:bat[:oid], X_625=[661]:bat[:oid], X_562=[91515]:bat[:oid], C_447=[1500303]:bat[:oid], X_505=[1500303]:bat |
:       : [:lng]); #[128] (0) ALGprojectionpath 831 <- 777 697 625 562 447 505                                                                                                                         :
|    73 | X_807=[661]:bat[:date] := algebra.projectionpath(X_777=[661]:bat[:oid], X_697=[661]:bat[:oid], X_625=[661]:bat[:oid], X_561=[91515]:bat[:oid], X_125=[91179]:bat[:date]); #[119] (0) ALGproj |
:       : ectionpath 807 <- 777 697 625 561 125                                                                                                                                                        :
|     1 | language.pass(X_301=[25]:bat[:str]); #[223] (0) MALpass 989 <- 301                                                                                                                           |
|     1 | language.pass(X_125=[91179]:bat[:date]); #[221] (0) MALpass 987 <- 125                                                                                                                       |
|     8 | X_867=[661]:bat[:lng] := batcalc.-(100:lng, X_831=[661]:bat[:lng], nil:BAT); #[129] (0) CMDbatSUBsignal 867 <- 434 831 55                                                                    |
|    23 | X_875=[661]:bat[:bit] := batcalc.==(X_855=[661]:bat[:str], "BRAZIL":str); #[124] (0) CMDbatEQ 875 <- 855 1                                                                                   |
|    12 | X_863=[661]:bat[:int] := batmtime.year(X_807=[661]:bat[:date]); #[120] (0) MTIMEdate_extract_year_bulk 863 <- 807                                                                            |
|    35 | (X_900=[661]:bat[:oid], C_901=[2]:bat[:oid]) := group.groupdone(X_863=[661]:bat[:int]); #[121] (0) GRPgroup3 900 901 <- 863                                                                  |
|     4 | X_903=[2]:bat[:int] := algebra.projection(C_901=[2]:bat[:oid], X_863=[661]:bat[:int]); #[122] (0) ALGprojection 903 <- 901 863                                                               |
|     2 | X_937=[6]:bat[:int] := mat.packIncrement(X_936=[6]:bat[:int], X_903=[2]:bat[:int]); #[165] (0) MATpackIncrement 937 <- 936 903                                                               |
|     3 | X_328=[8]:bat[:int] := mat.packIncrement(X_937=[8]:bat[:int], X_907=[2]:bat[:int]); #[166] (0) MATpackIncrement 328 <- 937 907                                                               |
|    27 | language.pass(X_863=[661]:bat[:int]); #[207] (0) MALpass 973 <- 863                                                                                                                          |
|    33 | (X_358=[8]:bat[:oid], C_359=[2]:bat[:oid]) := group.groupdone(X_328=[8]:bat[:int]); #[167] (0) GRPgroup3 358 359 <- 328                                                                      |
|     5 | X_361=[2]:bat[:int] := algebra.projection(C_359=[2]:bat[:oid], X_328=[8]:bat[:int]); #[168] (0) ALGprojection 361 <- 359 328                                                                 |
|     1 | language.pass(X_328=[8]:bat[:int]); #[232] (0) MALpass 998 <- 328                                                                                                                            |
|    11 | (X_373=[2]:bat[:int], X_374=[2]:bat[:oid]) := algebra.sort(X_361=[2]:bat[:int], false:bit, false:bit, false:bit); #[179] (0) ALGsort12 373 374 <- 361 57 57 57                               |
|     4 | X_378=[2]:bat[:int] := algebra.projection(X_374=[2]:bat[:oid], X_361=[2]:bat[:int]); #[180] (0) ALGprojection 378 <- 374 361                                                                 |
|     3 | language.pass(X_361=[2]:bat[:int]); #[235] (0) MALpass 1001 <- 361                                                                                                                           |
|   749 | X_827=[661]:bat[:lng] := algebra.projectionpath(X_777=[661]:bat[:oid], X_697=[661]:bat[:oid], X_625=[661]:bat[:oid], X_562=[91515]:bat[:oid], C_447=[1500303]:bat[:oid], X_493=[1500303]:bat |
:       : [:lng]); #[126] (0) ALGprojectionpath 827 <- 777 697 625 562 447 493                                                                                                                         :
|     3 | language.pass(X_777=[661]:bat[:oid]); #[208] (0) MALpass 974 <- 777                                                                                                                          |
|    22 | language.pass(X_697=[661]:bat[:oid]); #[209] (0) MALpass 975 <- 697                                                                                                                          |
|     1 | language.pass(X_625=[661]:bat[:oid]); #[210] (0) MALpass 976 <- 625                                                                                                                          |
|     3 | language.pass(C_447=[1500303]:bat[:oid]); #[212] (0) MALpass 978 <- 447                                                                                                                      |
|     9 | X_871=[661]:bat[:hge] := batcalc.*(X_827=[661]:bat[:lng], X_867=[661]:bat[:lng], nil:BAT, nil:BAT); #[130] (0) CMDbatMULenlarge 871 <- 827 867 55 55                                         |
|     3 | language.pass(X_562=[91515]:bat[:oid]); #[211] (0) MALpass 977 <- 562                                                                                                                        |
|     6 | X_887=[661]:bat[:hge] := batcalc.ifthenelse(X_875=[661]:bat[:bit], X_871=[661]:bat[:hge], 0:hge); #[131] (0) CMDifthen 887 <- 875 871 436                                                    |
|     8 | X_917=[2]:bat[:hge] := aggr.subsum(X_887=[661]:bat[:hge], X_900=[661]:bat[:oid], C_901=[2]:bat[:oid], true:bit, true:bit); #[132] (0) AGGRsubsum_hge 917 <- 887 900 901 109 109              |
|     2 | X_941=[6]:bat[:hge] := mat.packIncrement(X_940=[6]:bat[:hge], X_917=[2]:bat[:hge]); #[171] (0) MATpackIncrement 941 <- 940 917                                                               |
|     2 | X_914=[8]:bat[:hge] := mat.packIncrement(X_941=[8]:bat[:hge], X_918=[2]:bat[:hge]); #[172] (0) MATpackIncrement 914 <- 941 918                                                               |
|    40 | X_924=[2]:bat[:hge] := aggr.subsum(X_871=[661]:bat[:hge], X_900=[661]:bat[:oid], C_901=[2]:bat[:oid], true:bit, true:bit); #[133] (0) AGGRsubsum_hge 924 <- 871 900 901 109 109              |
|     2 | language.pass(X_871=[661]:bat[:hge]); #[213] (0) MALpass 979 <- 871                                                                                                                          |
|    57 | X_362=[2]:bat[:hge] := aggr.subsum(X_914=[8]:bat[:hge], X_358=[8]:bat[:oid], C_359=[2]:bat[:oid], true:bit, true:bit); #[173] (0) AGGRsubsum_hge 362 <- 914 358 359 109 109                  |
|     4 | X_945=[6]:bat[:hge] := mat.packIncrement(X_944=[6]:bat[:hge], X_924=[2]:bat[:hge]); #[176] (0) MATpackIncrement 945 <- 944 924                                                               |
|     3 | language.pass(C_901=[2]:bat[:oid]); #[215] (0) MALpass 981 <- 901                                                                                                                            |
|     2 | X_921=[8]:bat[:hge] := mat.packIncrement(X_945=[8]:bat[:hge], X_925=[2]:bat[:hge]); #[177] (0) MATpackIncrement 921 <- 945 925                                                               |
|     2 | language.pass(X_900=[661]:bat[:oid]); #[214] (0) MALpass 980 <- 900                                                                                                                          |
|     6 | X_366=[2]:bat[:hge] := batcalc.hge(4:int, X_362=[2]:bat[:hge], 38:int, 8:int); #[181] (0) bathge_dec2dec_hge 366 <- 354 362 368 369                                                          |
|     5 | X_365=[2]:bat[:hge] := aggr.subsum(X_921=[8]:bat[:hge], X_358=[8]:bat[:oid], C_359=[2]:bat[:oid], true:bit, true:bit); #[178] (0) AGGRsubsum_hge 365 <- 921 358 359 109 109                  |
|     3 | language.pass(X_358=[8]:bat[:oid]); #[233] (0) MALpass 999 <- 358                                                                                                                            |
|    28 | X_370=[2]:bat[:hge] := batcalc./(X_366=[2]:bat[:hge], X_365=[2]:bat[:hge], nil:BAT, nil:BAT); #[182] (0) CMDbatDIVsignal 370 <- 366 365 55 55                                                |
|     3 | X_379=[2]:bat[:hge] := algebra.projection(X_374=[2]:bat[:oid], X_370=[2]:bat[:hge]); #[183] (0) ALGprojection 379 <- 374 370                                                                 |
|     3 | language.pass(C_359=[2]:bat[:oid]); #[234] (0) MALpass 1000 <- 359                                                                                                                           |
|     1 | language.pass(X_374=[2]:bat[:oid]); #[236] (0) MALpass 1002 <- 374                                                                                                                           |
| 50494 | barrier X_948=false:bit := language.dataflow(); #[2] (0) MALstartDataflow 948                                                                                                                |
|    23 | sql.resultSet(X_381=[2]:bat[:str], X_382=[2]:bat[:str], X_383=[2]:bat[:str], X_384=[2]:bat[:int], X_385=[2]:bat[:int], X_378=[2]:bat[:int], X_379=[2]:bat[:hge]); #[238] (0) mvc_table_resul |
:       : t_wrap 380 <- 381 382 383 384 385 378 379                                                                                                                                                    :
+-------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
237 tuples
