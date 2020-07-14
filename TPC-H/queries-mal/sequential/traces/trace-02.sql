operation successful
+-------------------+---------------------------+---------------------------+--------+---------------------------+---------------------------------+-----------------+---------------------------------+
| s_acctbal         | s_name                    | n_name                    | p_part | p_mfgr                    | s_address                       | s_phone         | s_comment                       |
:                   :                           :                           : key    :                           :                                 :                 :                                 :
+===================+===========================+===========================+========+===========================+=================================+=================+=================================+
|           9938.53 | Supplier#000005359        | UNITED KINGDOM            | 185358 | Manufacturer#4            | QKuHYh,vZGiwu2FWEJoLDx04        | 33-429-790-6131 | uriously regular requests hag   |
|           9937.84 | Supplier#000005969        | ROMANIA                   | 108438 | Manufacturer#1            | ANDENSOSmk,miq23Xfb5RWt6dvUcvt6 | 29-520-692-3537 | efully express instructions. re |
:                   :                           :                           :        :                           : Qa                              :                 : gular requests against the slyl :
:                   :                           :                           :        :                           :                                 :                 : y fin                           :
|           9936.22 | Supplier#000005250        | UNITED KINGDOM            |    249 | Manufacturer#4            | B3rqp0xbSEim4Mpy2RH J           | 33-320-228-2957 | etect about the furiously final |
:                   :                           :                           :        :                           :                                 :                 :  accounts. slyly ironic pinto b :
:                   :                           :                           :        :                           :                                 :                 : eans sleep inside the furiously :
|           9923.77 | Supplier#000002324        | GERMANY                   |  29821 | Manufacturer#4            | y3OD9UywSTOk                    | 17-779-299-1839 | ackages boost blithely. blithel |
:                   :                           :                           :        :                           :                                 :                 : y regular deposits c            :
|           9871.22 | Supplier#000006373        | GERMANY                   |  43868 | Manufacturer#5            | J8fcXWsTqM                      | 17-813-485-8637 | etect blithely bold asymptotes. |
:                   :                           :                           :        :                           :                                 :                 :  fluffily ironic platelets wake :
:                   :                           :                           :        :                           :                                 :                 :  furiously; blit                :
|           9870.78 | Supplier#000001286        | GERMANY                   |  81285 | Manufacturer#2            | YKA,E2fjiVd7eUrzp2Ef8j1QxGo2DFn | 17-516-924-4574 |  regular accounts. furiously un |
:                   :                           :                           :        :                           : osaTEH                          :                 : usual courts above the fi       :
|           9870.78 | Supplier#000001286        | GERMANY                   | 181285 | Manufacturer#4            | YKA,E2fjiVd7eUrzp2Ef8j1QxGo2DFn | 17-516-924-4574 |  regular accounts. furiously un |
:                   :                           :                           :        :                           : osaTEH                          :                 : usual courts above the fi       :
|           9852.52 | Supplier#000008973        | RUSSIA                    |  18972 | Manufacturer#2            | t5L67YdBYYH6o,Vz24jpDyQ9        | 32-188-594-7038 | rns wake final foxes. carefully |
:                   :                           :                           :        :                           :                                 :                 :  unusual depende                :
|           9847.83 | Supplier#000008097        | RUSSIA                    | 130557 | Manufacturer#2            | xMe97bpE69NzdwLoX               | 32-375-640-3593 |  the special excuses. silent se |
:                   :                           :                           :        :                           :                                 :                 : ntiments serve carefully final  :
:                   :                           :                           :        :                           :                                 :                 : ac                              :
|           9847.57 | Supplier#000006345        | FRANCE                    |  86344 | Manufacturer#1            | VSt3rzk3qG698u6ld8HhOByvrTcSTSv | 16-886-766-7945 | ges. slyly regular requests are |
:                   :                           :                           :        :                           : QlDQDag                         :                 : . ruthless, express excuses caj :
:                   :                           :                           :        :                           :                                 :                 : ole blithely across the unu     :
+-------------------+---------------------------+---------------------------+--------+---------------------------+---------------------------------+-----------------+---------------------------------+
10 tuples
+------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| usec | statement                                                                                                                                                                                     |
+======+===============================================================================================================================================================================================+
|    3 | X_5=0@0:void := querylog.define("trace select\n s_acctbal, s_name, n_name, p_partkey, p_mfgr, s_address,\n s_phone, s_comment\nfrom part,\n supplier,\n partsupp,\n nation,\n region\nwhere p |
:      : _partkey = ps_partkey\n and s_suppkey = ps_suppkey\n and p_size = 15\n and p_type like \\'%BRASS\\'\n and s_nationkey = n_nationkey\n and n_regionkey = r_regionkey\n and r_name = \\'EUROPE\ :
:      : \'\n and ps_supplycost = (\n select\n min(ps_supplycost)\n from partsupp,\n supplier,\n nation,\n region\n where p_partkey = ps_partkey\n and s_suppkey = ps_suppkey\n and s_nationkey = n_na :
:      : tionkey\n and n_regionkey = r_regionkey\n and r_name = \\'EUROPE\\'\n )\norder by s_acctbal desc,\n n_name,\n s_name,\n p_partkey\nlimit 10;":str, "default_pipe":str, 548:int); #[1] (0) QLO :
:      : GdefineNaive 5 <- 6 7 756                                                                                                                                                                     :
|    7 | X_729=[8]:bat[:str] := bat.pack("sys.supplier":str, "sys.supplier":str, "sys.nation":str, "sys.part":str, "sys.part":str, "sys.supplier":str, "sys.supplier":str, "sys.supplier":str); #[2] ( |
:      : 0) MATpackValues 729 <- 734 734 743 745 745 734 734 734                                                                                                                                       :
|    6 | X_730=[8]:bat[:str] := bat.pack("s_acctbal":str, "s_name":str, "n_name":str, "p_partkey":str, "p_mfgr":str, "s_address":str, "s_phone":str, "s_comment":str); #[3] (0) MATpackValues 730 <- 2 |
:      : 21 197 295 74 91 203 215 227                                                                                                                                                                  :
|    6 | X_731=[8]:bat[:str] := bat.pack("decimal":str, "char":str, "char":str, "int":str, "char":str, "varchar":str, "char":str, "varchar":str); #[4] (0) MATpackValues 731 <- 736 740 740 747 740 75 |
:      : 1 740 751                                                                                                                                                                                     :
|    4 | X_732=[8]:bat[:int] := bat.pack(15:int, 25:int, 25:int, 32:int, 25:int, 40:int, 15:int, 101:int); #[5] (0) MATpackValues 732 <- 737 396 396 748 396 752 737 755                               |
|    3 | X_733=[8]:bat[:int] := bat.pack(2:int, 0:int, 0:int, 0:int, 0:int, 0:int, 0:int, 0:int); #[6] (0) MATpackValues 733 <- 21 16 16 16 16 16 16 16                                                |
|    0 | X_8=0:int := sql.mvc(); #[7] (0) SQLmvc 8                                                                                                                                                     |
|   12 | C_11=[800000]:bat[:oid] := sql.tid(X_8=0:int, "sys":str, "partsupp":str); #[8] (800000) SQLtid 11 <- 8 12 13                                                                                  |
|   34 | X_65=[800000]:bat[:oid] := sql.bind_idxbat(X_8=0:int, "sys":str, "partsupp":str, "partsupp_fk2":str, 0:int); #[9] (800000) mvc_bind_idxbat_wrap 65 <- 8 12 13 66 16                           |
|    2 | (X_68=[0]:bat[:oid], X_69=[0]:bat[:oid]) := sql.bind_idxbat(X_8=0:int, "sys":str, "partsupp":str, "partsupp_fk2":str, 2:int); #[10] (800000) mvc_bind_idxbat_wrap 68 69 <- 8 12 13 66 21      |
|    0 | X_67=[0]:bat[:oid] := sql.bind_idxbat(X_8=0:int, "sys":str, "partsupp":str, "partsupp_fk2":str, 1:int); #[11] (0) mvc_bind_idxbat_wrap 67 <- 8 12 13 66 18                                    |
|   16 | X_149=[800000]:bat[:oid] := sql.projectdelta(C_11=[800000]:bat[:oid], X_65=[800000]:bat[:oid], X_68=[0]:bat[:oid], X_69=[0]:bat[:oid], X_67=[0]:bat[:oid]); #[12] (0) DELTAproject 149 <- 11  |
:      : 65 68 69 67                                                                                                                                                                                   :
|   32 | X_102=[200000]:bat[:str] := sql.bind(X_8=0:int, "sys":str, "part":str, "p_type":str, 0:int); #[13] (0) mvc_bind_wrap 102 <- 8 12 72 103 16                                                    |
|   16 | X_108=[200000]:bat[:int] := sql.bind(X_8=0:int, "sys":str, "part":str, "p_size":str, 0:int); #[14] (0) mvc_bind_wrap 108 <- 8 12 72 109 16                                                    |
|    5 | C_71=[200000]:bat[:oid] := sql.tid(X_8=0:int, "sys":str, "part":str); #[15] (0) SQLtid 71 <- 8 12 72                                                                                          |
|  640 | C_135=[3907]:bat[:oid] := algebra.thetaselect(X_108=[200000]:bat[:int], C_71=[200000]:bat[:oid], 15:int, "==":str); #[16] (1) ALGthetaselect2 135 <- 108 71 737 136                           |
|  779 | C_140=[747]:bat[:oid] := algebra.likeselect(X_102=[200000]:bat[:str], C_135=[3907]:bat[:oid], "%BRASS":str, "":str, false:bit); #[17] (0) PCRElikeselect3 140 <- 102 135 2 139 141            |
| 2482 | (X_159=[2988]:bat[:oid], X_160=[2988]:bat[:oid]) := algebra.join(X_149=[800000]:bat[:oid], C_140=[747]:bat[:oid], nil:BAT, nil:BAT, false:bit, nil:lng); #[18] (0) ALGjoin 159 160 <- 149 140 |
:      :  161 161 141 163                                                                                                                                                                              :
|  223 | X_59=[800000]:bat[:oid] := sql.bind_idxbat(X_8=0:int, "sys":str, "partsupp":str, "partsupp_fk1":str, 0:int); #[19] (800000) mvc_bind_idxbat_wrap 59 <- 8 12 13 60 16                          |
|    9 | (X_62=[0]:bat[:oid], X_63=[0]:bat[:oid]) := sql.bind_idxbat(X_8=0:int, "sys":str, "partsupp":str, "partsupp_fk1":str, 2:int); #[20] (800000) mvc_bind_idxbat_wrap 62 63 <- 8 12 13 60 21      |
|    1 | X_61=[0]:bat[:oid] := sql.bind_idxbat(X_8=0:int, "sys":str, "partsupp":str, "partsupp_fk1":str, 1:int); #[21] (0) mvc_bind_idxbat_wrap 61 <- 8 12 13 60 18                                    |
|   17 | X_148=[800000]:bat[:oid] := sql.projectdelta(C_11=[800000]:bat[:oid], X_59=[800000]:bat[:oid], X_62=[0]:bat[:oid], X_63=[0]:bat[:oid], X_61=[0]:bat[:oid]); #[22] (0) DELTAproject 148 <- 11  |
:      : 59 62 63 61                                                                                                                                                                                   :
|  777 | X_171=[2988]:bat[:oid] := algebra.projection(X_159=[2988]:bat[:oid], X_148=[800000]:bat[:oid]); #[23] (0) ALGprojection 171 <- 159 148                                                        |
|   12 | C_183=[10000]:bat[:oid] := sql.tid(X_8=0:int, "sys":str, "supplier":str); #[24] (0) SQLtid 183 <- 8 12 184                                                                                    |
|   44 | (X_247=[2988]:bat[:oid], X_248=[2988]:bat[:oid]) := algebra.join(X_171=[2988]:bat[:oid], C_183=[10000]:bat[:oid], nil:BAT, nil:BAT, false:bit, nil:lng); #[25] (0) ALGjoin 247 248 <- 171 183 |
:      :  161 161 141 163                                                                                                                                                                              :
|   60 | X_233=[10000]:bat[:oid] := sql.bind_idxbat(X_8=0:int, "sys":str, "supplier":str, "supplier_fk1":str, 0:int); #[26] (0) mvc_bind_idxbat_wrap 233 <- 8 12 184 234 16                            |
|    1 | (X_236=[0]:bat[:oid], X_237=[0]:bat[:oid]) := sql.bind_idxbat(X_8=0:int, "sys":str, "supplier":str, "supplier_fk1":str, 2:int); #[27] (0) mvc_bind_idxbat_wrap 236 237 <- 8 12 184 234 21     |
|    1 | X_235=[0]:bat[:oid] := sql.bind_idxbat(X_8=0:int, "sys":str, "supplier":str, "supplier_fk1":str, 1:int); #[28] (0) mvc_bind_idxbat_wrap 235 <- 8 12 184 234 18                                |
|    2 | X_246=[10000]:bat[:oid] := sql.projectdelta(C_183=[10000]:bat[:oid], X_233=[10000]:bat[:oid], X_236=[0]:bat[:oid], X_237=[0]:bat[:oid], X_235=[0]:bat[:oid]); #[29] (0) DELTAproject 246 <- 1 |
:      : 83 233 236 237 235                                                                                                                                                                            :
|   11 | X_280=[2988]:bat[:oid] := algebra.projection(X_248=[2988]:bat[:oid], X_246=[10000]:bat[:oid]); #[30] (0) ALGprojection 280 <- 248 246                                                         |
|    4 | C_281=[25]:bat[:oid] := sql.tid(X_8=0:int, "sys":str, "nation":str); #[31] (0) SQLtid 281 <- 8 12 282                                                                                         |
|   32 | (X_324=[2988]:bat[:oid], X_325=[2988]:bat[:oid]) := algebra.join(X_280=[2988]:bat[:oid], C_281=[25]:bat[:oid], nil:BAT, nil:BAT, false:bit, nil:lng); #[32] (0) ALGjoin 324 325 <- 280 281 16 |
:      : 1 161 141 163                                                                                                                                                                                 :
|   13 | X_300=[25]:bat[:int] := sql.bind(X_8=0:int, "sys":str, "nation":str, "n_regionkey":str, 0:int); #[33] (0) mvc_bind_wrap 300 <- 8 12 282 301 16                                                |
|   68 | X_360=[2988]:bat[:int] := algebra.projectionpath(X_325=[2988]:bat[:oid], C_281=[25]:bat[:oid], X_300=[25]:bat[:int]); #[34] (0) ALGprojectionpath 360 <- 325 281 300                          |
|   21 | X_377=[5]:bat[:str] := sql.bind(X_8=0:int, "sys":str, "region":str, "r_name":str, 0:int); #[35] (0) mvc_bind_wrap 377 <- 8 12 365 378 16                                                      |
|    4 | C_364=[5]:bat[:oid] := sql.tid(X_8=0:int, "sys":str, "region":str); #[36] (0) SQLtid 364 <- 8 12 365                                                                                          |
|    7 | C_397=[1]:bat[:oid] := algebra.thetaselect(X_377=[5]:bat[:str], C_364=[5]:bat[:oid], "EUROPE":str, "==":str); #[37] (1) ALGthetaselect2 397 <- 377 364 3 136                                  |
|   11 | X_372=[5]:bat[:int] := sql.bind(X_8=0:int, "sys":str, "region":str, "r_regionkey":str, 0:int); #[38] (0) mvc_bind_wrap 372 <- 8 12 365 367 16                                                 |
|    2 | X_399=[1]:bat[:int] := algebra.projection(C_397=[1]:bat[:oid], X_372=[5]:bat[:int]); #[39] (0) ALGprojection 399 <- 397 372                                                                   |
|   33 | X_402=[642]:bat[:oid] := algebra.join(X_360=[2988]:bat[:int], X_399=[1]:bat[:int], nil:BAT, nil:BAT, false:bit, nil:lng); #[40] (0) ALGjoin1 402 <- 360 399 161 161 141 163                   |
|   22 | X_79=[200000]:bat[:int] := sql.bind(X_8=0:int, "sys":str, "part":str, "p_partkey":str, 0:int); #[41] (0) mvc_bind_wrap 79 <- 8 12 72 74 16                                                    |
|   99 | X_417=[642]:bat[:int] := algebra.projectionpath(X_402=[642]:bat[:oid], X_324=[2988]:bat[:oid], X_247=[2988]:bat[:oid], X_160=[2988]:bat[:oid], C_140=[747]:bat[:oid], X_79=[200000]:bat[:int] |
:      : ); #[42] (0) ALGprojectionpath 417 <- 402 324 247 160 140 79                                                                                                                                  :
|    2 | X_586=[642]:bat[:lng] := batmkey.hash(X_417=[642]:bat[:int]); #[43] (0) MKEYbathash 586 <- 417                                                                                                |
|   19 | X_40=[800000]:bat[:lng] := sql.bind(X_8=0:int, "sys":str, "partsupp":str, "ps_supplycost":str, 0:int); #[44] (800000) mvc_bind_wrap 40 <- 8 12 13 41 16                                       |
|    2 | X_145=[800000]:bat[:lng] := algebra.projection(C_11=[800000]:bat[:oid], X_40=[800000]:bat[:lng]); #[45] (0) ALGprojection 145 <- 11 40                                                        |
|  435 | X_411=[642]:bat[:lng] := algebra.projectionpath(X_402=[642]:bat[:oid], X_324=[2988]:bat[:oid], X_247=[2988]:bat[:oid], X_159=[2988]:bat[:oid], X_145=[800000]:bat[:lng]); #[46] (0) ALGprojec |
:      : tionpath 411 <- 402 324 247 159 145                                                                                                                                                           :
|    5 | X_589=[642]:bat[:lng] := mkey.bulk_rotate_xor_hash(X_586=[642]:bat[:lng], 22:int, X_411=[642]:bat[:lng]); #[47] (0) MKEYbulk_rotate_xor_hash 589 <- 586 585 411                               |
|   23 | X_453=[800000]:bat[:int] := sql.bind(X_8=0:int, "sys":str, "partsupp":str, "ps_partkey":str, 0:int); #[48] (800000) mvc_bind_wrap 453 <- 8 12 13 15 16                                        |
|    2 | X_472=[800000]:bat[:int] := algebra.projection(C_11=[800000]:bat[:oid], X_453=[800000]:bat[:int]); #[49] (0) ALGprojection 472 <- 11 453                                                      |
|   21 | (X_468=[642]:bat[:oid], C_469=[460]:bat[:oid]) := group.groupdone(X_417=[642]:bat[:int]); #[50] (0) GRPgroup3 468 469 <- 417                                                                  |
|    3 | X_471=[460]:bat[:int] := algebra.projection(C_469=[460]:bat[:oid], X_417=[642]:bat[:int]); #[51] (0) ALGprojection 471 <- 469 417                                                             |
|  820 | (X_475=[1840]:bat[:oid], X_476=[1840]:bat[:oid]) := algebra.join(X_472=[800000]:bat[:int], X_471=[460]:bat[:int], nil:BAT, nil:BAT, false:bit, nil:lng); #[52] (0) ALGjoin 475 476 <- 472 471 |
:      :  161 161 141 163                                                                                                                                                                              :
|   52 | X_483=[1840]:bat[:oid] := algebra.projection(X_475=[1840]:bat[:oid], X_148=[800000]:bat[:oid]); #[53] (0) ALGprojection 483 <- 475 148                                                        |
|   54 | (X_499=[1840]:bat[:oid], X_500=[1840]:bat[:oid]) := algebra.join(X_483=[1840]:bat[:oid], C_183=[10000]:bat[:oid], nil:BAT, nil:BAT, false:bit, nil:lng); #[54] (0) ALGjoin 499 500 <- 483 183 |
:      :  161 161 141 163                                                                                                                                                                              :
|    7 | X_506=[1840]:bat[:oid] := algebra.projection(X_500=[1840]:bat[:oid], X_246=[10000]:bat[:oid]); #[55] (0) ALGprojection 506 <- 500 246                                                         |
|   12 | (X_521=[1840]:bat[:oid], X_522=[1840]:bat[:oid]) := algebra.join(X_506=[1840]:bat[:oid], C_281=[25]:bat[:oid], nil:BAT, nil:BAT, false:bit, nil:lng); #[56] (0) ALGjoin 521 522 <- 506 281 16 |
:      : 1 161 141 163                                                                                                                                                                                 :
|   33 | X_515=[25]:bat[:oid] := sql.bind_idxbat(X_8=0:int, "sys":str, "nation":str, "nation_fk1":str, 0:int); #[57] (25) mvc_bind_idxbat_wrap 515 <- 8 12 282 314 16                                  |
|    1 | (X_517=[0]:bat[:oid], X_518=[0]:bat[:oid]) := sql.bind_idxbat(X_8=0:int, "sys":str, "nation":str, "nation_fk1":str, 2:int); #[58] (25) mvc_bind_idxbat_wrap 517 518 <- 8 12 282 314 21        |
|    1 | X_516=[0]:bat[:oid] := sql.bind_idxbat(X_8=0:int, "sys":str, "nation":str, "nation_fk1":str, 1:int); #[59] (0) mvc_bind_idxbat_wrap 516 <- 8 12 282 314 18                                    |
|    3 | X_520=[25]:bat[:oid] := sql.projectdelta(C_281=[25]:bat[:oid], X_515=[25]:bat[:oid], X_517=[0]:bat[:oid], X_518=[0]:bat[:oid], X_516=[0]:bat[:oid]); #[60] (0) DELTAproject 520 <- 281 515 51 |
:      : 7 518 516                                                                                                                                                                                     :
|    7 | X_534=[1840]:bat[:oid] := algebra.projection(X_522=[1840]:bat[:oid], X_520=[25]:bat[:oid]); #[61] (0) ALGprojection 534 <- 522 520                                                            |
|   18 | X_558=[642]:bat[:oid] := algebra.join(X_534=[1840]:bat[:oid], C_397=[1]:bat[:oid], nil:BAT, nil:BAT, false:bit, nil:lng); #[62] (0) ALGjoin1 558 <- 534 397 161 161 141 163                   |
|   22 | X_567=[642]:bat[:int] := algebra.projectionpath(X_558=[642]:bat[:oid], X_521=[1840]:bat[:oid], X_499=[1840]:bat[:oid], X_476=[1840]:bat[:oid], X_471=[460]:bat[:int]); #[63] (0) ALGprojectio |
:      : npath 567 <- 558 521 499 476 471                                                                                                                                                              :
|    7 | (X_574=[642]:bat[:oid], C_575=[460]:bat[:oid]) := group.groupdone(X_567=[642]:bat[:int]); #[64] (0) GRPgroup3 574 575 <- 567                                                                  |
|   76 | X_565=[642]:bat[:lng] := algebra.projectionpath(X_558=[642]:bat[:oid], X_521=[1840]:bat[:oid], X_499=[1840]:bat[:oid], X_475=[1840]:bat[:oid], X_145=[800000]:bat[:lng]); #[65] (0) ALGprojec |
:      : tionpath 565 <- 558 521 499 475 145                                                                                                                                                           :
|   16 | X_577=[460]:bat[:lng] := aggr.submin(X_565=[642]:bat[:lng], X_574=[642]:bat[:oid], C_575=[460]:bat[:oid], true:bit); #[66] (0) AGGRsubmin_val 577 <- 565 574 575 578                          |
|    2 | X_579=[460]:bat[:int] := algebra.projection(C_575=[460]:bat[:oid], X_567=[642]:bat[:int]); #[67] (0) ALGprojection 579 <- 575 567                                                             |
|    2 | X_591=[460]:bat[:lng] := batmkey.hash(X_579=[460]:bat[:int]); #[68] (0) MKEYbathash 591 <- 579                                                                                                |
|    2 | X_592=[460]:bat[:lng] := mkey.bulk_rotate_xor_hash(X_591=[460]:bat[:lng], 22:int, X_577=[460]:bat[:lng]); #[69] (0) MKEYbulk_rotate_xor_hash 592 <- 591 585 577                               |
|   38 | (X_593=[460]:bat[:oid], X_594=[460]:bat[:oid]) := algebra.join(X_589=[642]:bat[:lng], X_592=[460]:bat[:lng], nil:BAT, nil:BAT, true:bit, nil:lng); #[70] (0) ALGjoin 593 594 <- 589 592 161 1 |
:      : 61 578 163                                                                                                                                                                                    :
|    2 | X_598=[460]:bat[:int] := algebra.projection(X_593=[460]:bat[:oid], X_417=[642]:bat[:int]); #[71] (0) ALGprojection 598 <- 593 417                                                             |
|    2 | X_599=[460]:bat[:int] := algebra.projection(X_594=[460]:bat[:oid], X_579=[460]:bat[:int]); #[72] (0) ALGprojection 599 <- 594 579                                                             |
|    5 | X_601=[460]:bat[:bit] := batcalc.==(X_598=[460]:bat[:int], X_599=[460]:bat[:int], true:bit); #[73] (0) CMDbatEQ 601 <- 598 599 578                                                            |
|   10 | C_605=[460]:bat[:oid] := algebra.thetaselect(X_601=[460]:bat[:bit], true:bit, "==":str); #[74] (1) ALGthetaselect1 605 <- 601 578 136                                                         |
|    3 | X_606=[460]:bat[:oid] := algebra.projection(C_605=[460]:bat[:oid], X_593=[460]:bat[:oid]); #[75] (0) ALGprojection 606 <- 605 593                                                             |
|    2 | X_608=[460]:bat[:lng] := algebra.projection(X_606=[460]:bat[:oid], X_411=[642]:bat[:lng]); #[76] (0) ALGprojection 608 <- 606 411                                                             |
|   11 | X_609=[460]:bat[:lng] := algebra.projectionpath(C_605=[460]:bat[:oid], X_594=[460]:bat[:oid], X_577=[460]:bat[:lng]); #[77] (0) ALGprojectionpath 609 <- 605 594 577                          |
|    3 | X_610=[460]:bat[:bit] := batcalc.==(X_608=[460]:bat[:lng], X_609=[460]:bat[:lng]); #[78] (0) CMDbatEQ 610 <- 608 609                                                                          |
|   11 | C_613=[460]:bat[:oid] := algebra.thetaselect(X_610=[460]:bat[:bit], true:bit, "==":str); #[79] (1) ALGthetaselect1 613 <- 610 578 136                                                         |
|    3 | X_614=[460]:bat[:oid] := algebra.projection(C_613=[460]:bat[:oid], X_606=[460]:bat[:oid]); #[80] (0) ALGprojection 614 <- 613 606                                                             |
|    2 | X_625=[460]:bat[:int] := algebra.projection(X_614=[460]:bat[:oid], X_417=[642]:bat[:int]); #[81] (0) ALGprojection 625 <- 614 417                                                             |
|   73 | X_196=[10000]:bat[:str] := sql.bind(X_8=0:int, "sys":str, "supplier":str, "s_name":str, 0:int); #[82] (0) mvc_bind_wrap 196 <- 8 12 184 197 16                                                |
|   21 | X_636=[460]:bat[:str] := algebra.projectionpath(X_614=[460]:bat[:oid], X_402=[642]:bat[:oid], X_324=[2988]:bat[:oid], X_248=[2988]:bat[:oid], C_183=[10000]:bat[:oid], X_196=[10000]:bat[:str |
:      : ]); #[83] (0) ALGprojectionpath 636 <- 614 402 324 248 183 196                                                                                                                                :
|   22 | X_294=[25]:bat[:str] := sql.bind(X_8=0:int, "sys":str, "nation":str, "n_name":str, 0:int); #[84] (0) mvc_bind_wrap 294 <- 8 12 282 295 16                                                     |
|   17 | X_645=[460]:bat[:str] := algebra.projectionpath(X_614=[460]:bat[:oid], X_402=[642]:bat[:oid], X_325=[2988]:bat[:oid], C_281=[25]:bat[:oid], X_294=[25]:bat[:str]); #[85] (0) ALGprojectionpat |
:      : h 645 <- 614 402 325 281 294                                                                                                                                                                  :
|   50 | X_220=[10000]:bat[:lng] := sql.bind(X_8=0:int, "sys":str, "supplier":str, "s_acctbal":str, 0:int); #[86] (0) mvc_bind_wrap 220 <- 8 12 184 221 16                                             |
|   19 | X_640=[460]:bat[:lng] := algebra.projectionpath(X_614=[460]:bat[:oid], X_402=[642]:bat[:oid], X_324=[2988]:bat[:oid], X_248=[2988]:bat[:oid], C_183=[10000]:bat[:oid], X_220=[10000]:bat[:lng |
:      : ]); #[87] (0) ALGprojectionpath 640 <- 614 402 324 248 183 220                                                                                                                                :
|   63 | (C_659=[11]:bat[:oid], X_660=[11]:bat[:oid]) := algebra.firstn(X_640=[460]:bat[:lng], 10:lng, false:bit, true:bit, false:bit); #[88] (0) ALGfirstn 659 660 <- 640 10 141 578 141              |
|   89 | (C_665=[11]:bat[:oid], X_666=[11]:bat[:oid]) := algebra.firstn(X_645=[460]:bat[:str], C_659=[11]:bat[:oid], X_660=[11]:bat[:oid], 10:lng, true:bit, false:bit, false:bit); #[89] (0) ALGfirst |
:      : n 665 666 <- 645 659 660 10 578 141 141                                                                                                                                                       :
|   95 | (C_669=[11]:bat[:oid], X_670=[11]:bat[:oid]) := algebra.firstn(X_636=[460]:bat[:str], C_665=[11]:bat[:oid], X_666=[11]:bat[:oid], 10:lng, true:bit, false:bit, false:bit); #[90] (0) ALGfirst |
:      : n 669 670 <- 636 665 666 10 578 141 141                                                                                                                                                       :
|    3 | C_673=[10]:bat[:oid] := algebra.firstn(X_625=[460]:bat[:int], C_669=[11]:bat[:oid], X_670=[11]:bat[:oid], 10:lng, true:bit, false:bit, false:bit); #[91] (0) ALGfirstn 673 <- 625 669 670 10  |
:      : 578 141 141                                                                                                                                                                                   :
|    2 | X_677=[10]:bat[:int] := algebra.projection(C_673=[10]:bat[:oid], X_625=[460]:bat[:int]); #[92] (0) ALGprojection 677 <- 673 625                                                               |
|    4 | X_675=[10]:bat[:str] := algebra.projection(C_673=[10]:bat[:oid], X_636=[460]:bat[:str]); #[93] (0) ALGprojection 675 <- 673 636                                                               |
|    3 | X_676=[10]:bat[:str] := algebra.projection(C_673=[10]:bat[:oid], X_645=[460]:bat[:str]); #[94] (0) ALGprojection 676 <- 673 645                                                               |
|    1 | X_674=[10]:bat[:lng] := algebra.projection(C_673=[10]:bat[:oid], X_640=[460]:bat[:lng]); #[95] (0) ALGprojection 674 <- 673 640                                                               |
|    7 | (X_690=[10]:bat[:lng], X_691=[10]:bat[:oid], X_692=[10]:bat[:oid]) := algebra.sort(X_674=[10]:bat[:lng], true:bit, true:bit, false:bit); #[96] (0) ALGsort13 690 691 692 <- 674 578 578 141   |
|    5 | (X_693=[10]:bat[:str], X_694=[10]:bat[:oid], X_695=[10]:bat[:oid]) := algebra.sort(X_676=[10]:bat[:str], X_691=[10]:bat[:oid], X_692=[10]:bat[:oid], false:bit, false:bit, false:bit); #[97]  |
:      : (0) ALGsort33 693 694 695 <- 676 691 692 141 141 141                                                                                                                                          :
|    5 | (X_698=[10]:bat[:str], X_699=[10]:bat[:oid], X_700=[10]:bat[:oid]) := algebra.sort(X_675=[10]:bat[:str], X_694=[10]:bat[:oid], X_695=[10]:bat[:oid], false:bit, false:bit, false:bit); #[98]  |
:      : (0) ALGsort33 698 699 700 <- 675 694 695 141 141 141                                                                                                                                          :
|    4 | (X_701=[10]:bat[:int], X_702=[10]:bat[:oid]) := algebra.sort(X_677=[10]:bat[:int], X_699=[10]:bat[:oid], X_700=[10]:bat[:oid], false:bit, false:bit, false:bit); #[99] (0) ALGsort32 701 702  |
:      : <- 677 699 700 141 141 141                                                                                                                                                                    :
|    3 | X_704=[10]:bat[:lng] := algebra.projection(X_702=[10]:bat[:oid], X_674=[10]:bat[:lng]); #[100] (0) ALGprojection 704 <- 702 674                                                               |
|    2 | C_719=[10]:bat[:oid] := algebra.subslice(X_704=[10]:bat[:lng], 0:lng, 9:lng); #[101] (0) ALGsubslice_lng 719 <- 704 657 796                                                                   |
|    2 | X_720=[10]:bat[:lng] := algebra.projection(C_719=[10]:bat[:oid], X_704=[10]:bat[:lng]); #[102] (0) ALGprojection 720 <- 719 704                                                               |
|    5 | X_721=[10]:bat[:str] := algebra.projectionpath(C_719=[10]:bat[:oid], X_702=[10]:bat[:oid], X_675=[10]:bat[:str]); #[103] (0) ALGprojectionpath 721 <- 719 702 675                             |
|    3 | X_722=[10]:bat[:str] := algebra.projectionpath(C_719=[10]:bat[:oid], X_702=[10]:bat[:oid], X_676=[10]:bat[:str]); #[104] (0) ALGprojectionpath 722 <- 719 702 676                             |
|    2 | X_723=[10]:bat[:int] := algebra.projectionpath(C_719=[10]:bat[:oid], X_702=[10]:bat[:oid], X_677=[10]:bat[:int]); #[105] (0) ALGprojectionpath 723 <- 719 702 677                             |
|  125 | X_90=[200000]:bat[:str] := sql.bind(X_8=0:int, "sys":str, "part":str, "p_mfgr":str, 0:int); #[106] (0) mvc_bind_wrap 90 <- 8 12 72 91 16                                                      |
|    7 | X_724=[10]:bat[:str] := algebra.projectionpath(C_719=[10]:bat[:oid], X_702=[10]:bat[:oid], C_673=[10]:bat[:oid], X_614=[460]:bat[:oid], X_402=[642]:bat[:oid], X_324=[2988]:bat[:oid], X_247= |
:      : [2988]:bat[:oid], X_160=[2988]:bat[:oid], C_140=[747]:bat[:oid], X_90=[200000]:bat[:str]); #[107] (0) ALGprojectionpath 724 <- 719 702 673 614 402 324 247 160 140 90                         :
|   49 | X_202=[10000]:bat[:str] := sql.bind(X_8=0:int, "sys":str, "supplier":str, "s_address":str, 0:int); #[108] (0) mvc_bind_wrap 202 <- 8 12 184 203 16                                            |
|    7 | X_725=[10]:bat[:str] := algebra.projectionpath(C_719=[10]:bat[:oid], X_702=[10]:bat[:oid], C_673=[10]:bat[:oid], X_614=[460]:bat[:oid], X_402=[642]:bat[:oid], X_324=[2988]:bat[:oid], X_248= |
:      : [2988]:bat[:oid], C_183=[10000]:bat[:oid], X_202=[10000]:bat[:str]); #[109] (0) ALGprojectionpath 725 <- 719 702 673 614 402 324 248 183 202                                                  :
|   45 | X_214=[10000]:bat[:str] := sql.bind(X_8=0:int, "sys":str, "supplier":str, "s_phone":str, 0:int); #[110] (0) mvc_bind_wrap 214 <- 8 12 184 215 16                                              |
|    4 | X_726=[10]:bat[:str] := algebra.projectionpath(C_719=[10]:bat[:oid], X_702=[10]:bat[:oid], C_673=[10]:bat[:oid], X_614=[460]:bat[:oid], X_402=[642]:bat[:oid], X_324=[2988]:bat[:oid], X_248= |
:      : [2988]:bat[:oid], C_183=[10000]:bat[:oid], X_214=[10000]:bat[:str]); #[111] (0) ALGprojectionpath 726 <- 719 702 673 614 402 324 248 183 214                                                  :
|   47 | X_226=[10000]:bat[:str] := sql.bind(X_8=0:int, "sys":str, "supplier":str, "s_comment":str, 0:int); #[112] (0) mvc_bind_wrap 226 <- 8 12 184 227 16                                            |
|    3 | X_727=[10]:bat[:str] := algebra.projectionpath(C_719=[10]:bat[:oid], X_702=[10]:bat[:oid], C_673=[10]:bat[:oid], X_614=[460]:bat[:oid], X_402=[642]:bat[:oid], X_324=[2988]:bat[:oid], X_248= |
:      : [2988]:bat[:oid], C_183=[10000]:bat[:oid], X_226=[10000]:bat[:str]); #[113] (0) ALGprojectionpath 727 <- 719 702 673 614 402 324 248 183 226                                                  :
|  215 | sql.resultSet(X_729=[8]:bat[:str], X_730=[8]:bat[:str], X_731=[8]:bat[:str], X_732=[8]:bat[:int], X_733=[8]:bat[:int], X_720=[10]:bat[:lng], X_721=[10]:bat[:str], X_722=[10]:bat[:str], X_72 |
:      : 3=[10]:bat[:int], X_724=[10]:bat[:str], X_725=[10]:bat[:str], X_726=[10]:bat[:str], X_727=[10]:bat[:str]); #[114] (0) mvc_table_result_wrap 728 <- 729 730 731 732 733 720 721 722 723 724 72 :
:      : 5 726 727                                                                                                                                                                                     :
+------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
114 tuples
