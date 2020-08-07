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
+-------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| usec  | statement                                                                                                                                                                                    |
+=======+==============================================================================================================================================================================================+
|     3 | X_5=0@0:void := querylog.define("trace select s_name, count(*) as numwait\nfrom supplier, lineitem l1, orders, nation\nwhere s_suppkey = l1.l_suppkey\n and o_orderkey = l1.l_orderkey\n and |
:       :  o_orderstatus = \\'F\\'\n and l1.l_receiptdate > l1.l_commitdate\n and exists (\n select *\n from lineitem l2\n where l2.l_orderkey = l1.l_orderkey\n and l2.l_suppkey <> l1.l_suppkey\n )\ :
:       : n and not exists (\n select *\n from lineitem l3\n where l3.l_orderkey = l1.l_orderkey\n and l3.l_suppkey <> l1.l_suppkey\n and l3.l_receiptdate > l3.l_commitdate\n )\n and s_nationkey = n :
:       : _nationkey\n and n_name = \\'SAUDI ARABIA\\'\ngroup by s_name\norder by numwait desc, s_name\nlimit 100;":str, "default_pipe":str, 255:int); #[1] (0) QLOGdefineNaive 5 <- 6 7 368           :
|     5 | X_354=[2]:bat[:str] := bat.pack("sys.supplier":str, "sys.":str); #[2] (0) MATpackValues 354 <- 359 364                                                                                       |
|     4 | X_355=[2]:bat[:str] := bat.pack("s_name":str, "numwait":str); #[3] (0) MATpackValues 355 <- 108 365                                                                                          |
|     3 | X_356=[2]:bat[:str] := bat.pack("char":str, "bigint":str); #[4] (0) MATpackValues 356 <- 361 366                                                                                             |
|     3 | X_357=[2]:bat[:int] := bat.pack(25:int, 64:int); #[5] (0) MATpackValues 357 <- 158 367                                                                                                       |
|    12 | X_358=[2]:bat[:int] := bat.pack(0:int, 0:int); #[6] (0) MATpackValues 358 <- 16 16                                                                                                           |
|     1 | X_8=0:int := sql.mvc(); #[7] (0) SQLmvc 8                                                                                                                                                    |
|     3 | X_40=[6001215]:bat[:date] := sql.bind(X_8=0:int, "sys":str, "lineitem":str, "l_receiptdate":str, 0:int); #[8] (6001215) mvc_bind_wrap 40 <- 8 12 13 41 16                                    |
|     1 | X_34=[6001215]:bat[:date] := sql.bind(X_8=0:int, "sys":str, "lineitem":str, "l_commitdate":str, 0:int); #[9] (6001215) mvc_bind_wrap 34 <- 8 12 13 35 16                                     |
| 23723 | X_52=[6001215]:bat[:bit] := batcalc.>(X_40=[6001215]:bat[:date], X_34=[6001215]:bat[:date]); #[10] (0) CMDbatGT 52 <- 40 34                                                                  |
|   118 | C_11=[6001215]:bat[:oid] := sql.tid(X_8=0:int, "sys":str, "lineitem":str); #[11] (6001215) SQLtid 11 <- 8 12 13                                                                              |
| 38509 | C_55=[3793296]:bat[:oid] := algebra.select(X_52=[6001215]:bat[:bit], C_11=[6001215]:bat[:oid], true:bit, true:bit, true:bit, true:bit, false:bit); #[12] (1) ALGselect2 55 <- 52 11 56 56 56 |
:       :  56 58                                                                                                                                                                                       :
|    15 | X_46=[6001215]:bat[:oid] := sql.bind_idxbat(X_8=0:int, "sys":str, "lineitem":str, "lineitem_fk1":str, 0:int); #[13] (6001215) mvc_bind_idxbat_wrap 46 <- 8 12 13 47 16                       |
|     2 | (X_49=[0]:bat[:oid], X_50=[0]:bat[:oid]) := sql.bind_idxbat(X_8=0:int, "sys":str, "lineitem":str, "lineitem_fk1":str, 2:int); #[14] (6001215) mvc_bind_idxbat_wrap 49 50 <- 8 12 13 47 21    |
|     1 | X_48=[0]:bat[:oid] := sql.bind_idxbat(X_8=0:int, "sys":str, "lineitem":str, "lineitem_fk1":str, 1:int); #[15] (0) mvc_bind_idxbat_wrap 48 <- 8 12 13 47 18                                   |
|     1 | X_51=[6001215]:bat[:oid] := sql.delta(X_46=[6001215]:bat[:oid], X_49=[0]:bat[:oid], X_50=[0]:bat[:oid], X_48=[0]:bat[:oid]); #[16] (0) DELTAbat 51 <- 46 49 50 48                            |
| 19407 | X_80=[3793296]:bat[:oid] := algebra.projection(C_55=[3793296]:bat[:oid], X_51=[6001215]:bat[:oid]); #[17] (0) ALGprojection 80 <- 55 51                                                      |
|   101 | X_67=[1500000]:bat[:str] := sql.bind(X_8=0:int, "sys":str, "orders":str, "o_orderstatus":str, 0:int); #[18] (0) mvc_bind_wrap 67 <- 8 12 60 62 16                                            |
|    20 | C_59=[1500000]:bat[:oid] := sql.tid(X_8=0:int, "sys":str, "orders":str); #[19] (0) SQLtid 59 <- 8 12 60                                                                                      |
| 12345 | C_74=[729413]:bat[:oid] := algebra.thetaselect(X_67=[1500000]:bat[:str], C_59=[1500000]:bat[:oid], "F":str, "==":str); #[20] (1) ALGthetaselect2 74 <- 67 59 2 75                            |
| 32652 | X_82=[1828911]:bat[:oid] := algebra.join(X_80=[3793296]:bat[:oid], C_74=[729413]:bat[:oid], nil:BAT, nil:BAT, false:bit, nil:lng); #[21] (0) ALGjoin1 82 <- 80 74 84 84 58 86                |
|    12 | X_28=[6001215]:bat[:int] := sql.bind(X_8=0:int, "sys":str, "lineitem":str, "l_suppkey":str, 0:int); #[22] (6001215) mvc_bind_wrap 28 <- 8 12 13 29 16                                        |
| 10048 | X_77=[3793296]:bat[:int] := algebra.projection(C_55=[3793296]:bat[:oid], X_28=[6001215]:bat[:int]); #[23] (0) ALGprojection 77 <- 55 28                                                      |
|  4285 | X_88=[1828911]:bat[:int] := algebra.projection(X_82=[1828911]:bat[:oid], X_77=[3793296]:bat[:int]); #[24] (0) ALGprojection 88 <- 82 77                                                      |
|    11 | C_94=[10000]:bat[:oid] := sql.tid(X_8=0:int, "sys":str, "supplier":str); #[25] (0) SQLtid 94 <- 8 12 95                                                                                      |
|     3 | X_102=[10000]:bat[:int] := sql.bind(X_8=0:int, "sys":str, "supplier":str, "s_suppkey":str, 0:int); #[26] (0) mvc_bind_wrap 102 <- 8 12 95 97 16                                              |
|    36 | X_119=[10000]:bat[:int] := algebra.projection(C_94=[10000]:bat[:oid], X_102=[10000]:bat[:int]); #[27] (0) ALGprojection 119 <- 94 102                                                        |
| 78757 | (X_122=[1828911]:bat[:oid], X_123=[1828911]:bat[:oid]) := algebra.join(X_88=[1828911]:bat[:int], X_119=[10000]:bat[:int], nil:BAT, nil:BAT, false:bit, nil:lng); #[28] (0) ALGjoin 122 123 < |
:       : - 88 119 84 84 58 86                                                                                                                                                                         :
|    13 | X_113=[10000]:bat[:oid] := sql.bind_idxbat(X_8=0:int, "sys":str, "supplier":str, "supplier_fk1":str, 0:int); #[29] (0) mvc_bind_idxbat_wrap 113 <- 8 12 95 114 16                            |
|     2 | (X_116=[0]:bat[:oid], X_117=[0]:bat[:oid]) := sql.bind_idxbat(X_8=0:int, "sys":str, "supplier":str, "supplier_fk1":str, 2:int); #[30] (0) mvc_bind_idxbat_wrap 116 117 <- 8 12 95 114 21     |
|     1 | X_115=[0]:bat[:oid] := sql.bind_idxbat(X_8=0:int, "sys":str, "supplier":str, "supplier_fk1":str, 1:int); #[31] (0) mvc_bind_idxbat_wrap 115 <- 8 12 95 114 18                                |
|     1 | X_118=[10000]:bat[:oid] := sql.delta(X_113=[10000]:bat[:oid], X_116=[0]:bat[:oid], X_117=[0]:bat[:oid], X_115=[0]:bat[:oid]); #[32] (0) DELTAbat 118 <- 113 116 117 115                      |
| 53524 | X_137=[1828911]:bat[:oid] := algebra.projectionpath(X_123=[1828911]:bat[:oid], C_94=[10000]:bat[:oid], X_118=[10000]:bat[:oid]); #[33] (0) ALGprojectionpath 137 <- 123 94 118               |
|    13 | X_146=[25]:bat[:str] := sql.bind(X_8=0:int, "sys":str, "nation":str, "n_name":str, 0:int); #[34] (0) mvc_bind_wrap 146 <- 8 12 139 141 16                                                    |
|    19 | C_138=[25]:bat[:oid] := sql.tid(X_8=0:int, "sys":str, "nation":str); #[35] (0) SQLtid 138 <- 8 12 139                                                                                        |
|    29 | C_159=[1]:bat[:oid] := algebra.thetaselect(X_146=[25]:bat[:str], C_138=[25]:bat[:oid], "SAUDI ARABIA":str, "==":str); #[36] (1) ALGthetaselect2 159 <- 146 138 4 75                          |
|  5115 | X_162=[75871]:bat[:oid] := algebra.join(X_137=[1828911]:bat[:oid], C_159=[1]:bat[:oid], nil:BAT, nil:BAT, false:bit, nil:lng); #[37] (0) ALGjoin1 162 <- 137 159 84 84 58 86                 |
|    11 | X_23=[6001215]:bat[:lng] := sql.bind(X_8=0:int, "sys":str, "lineitem":str, "l_orderkey":str, 0:int); #[38] (6001215) mvc_bind_wrap 23 <- 8 12 13 15 16                                       |
| 22139 | X_76=[3793296]:bat[:lng] := algebra.projection(C_55=[3793296]:bat[:oid], X_23=[6001215]:bat[:lng]); #[39] (0) ALGprojection 76 <- 55 23                                                      |
|  4597 | X_168=[75871]:bat[:lng] := algebra.projectionpath(X_162=[75871]:bat[:oid], X_122=[1828911]:bat[:oid], X_82=[1828911]:bat[:oid], X_76=[3793296]:bat[:lng]); #[40] (0) ALGprojectionpath 168 < |
:       : - 162 122 82 76                                                                                                                                                                              :
|     7 | C_226=[75871]:bat[:oid] := bat.mirror(X_168=[75871]:bat[:lng]); #[41] (0) BKCmirror 226 <- 168                                                                                               |
|     4 | X_197=[6001215]:bat[:lng] := algebra.projection(C_11=[6001215]:bat[:oid], X_23=[6001215]:bat[:lng]); #[42] (0) ALGprojection 197 <- 11 23                                                    |
| 38909 | (X_199=[378274]:bat[:oid], X_200=[378274]:bat[:oid]) := algebra.join(X_168=[75871]:bat[:lng], X_197=[6001215]:bat[:lng], nil:BAT, nil:BAT, false:bit, nil:lng); #[43] (0) ALGjoin 199 200 <- |
:       :  168 197 84 84 58 86                                                                                                                                                                         :
| 10316 | X_218=[378274]:bat[:int] := algebra.projectionpath(X_200=[378274]:bat[:oid], C_11=[6001215]:bat[:oid], X_28=[6001215]:bat[:int]); #[44] (0) ALGprojectionpath 218 <- 200 11 28               |
|  2354 | X_169=[75871]:bat[:int] := algebra.projectionpath(X_162=[75871]:bat[:oid], X_122=[1828911]:bat[:oid], X_88=[1828911]:bat[:int]); #[45] (0) ALGprojectionpath 169 <- 162 122 88               |
|   509 | X_206=[378274]:bat[:int] := algebra.projection(X_199=[378274]:bat[:oid], X_169=[75871]:bat[:int]); #[46] (0) ALGprojection 206 <- 199 169                                                    |
|   952 | X_219=[378274]:bat[:bit] := batcalc.!=(X_218=[378274]:bat[:int], X_206=[378274]:bat[:int]); #[47] (0) CMDbatNE 219 <- 218 206                                                                |
|   799 | C_222=[302383]:bat[:oid] := algebra.select(X_219=[378274]:bat[:bit], true:bit, true:bit, true:bit, true:bit, false:bit); #[48] (1) ALGselect1 222 <- 219 56 56 56 56 58                      |
|  1049 | X_225=[302383]:bat[:oid] := algebra.projection(C_222=[302383]:bat[:oid], X_199=[378274]:bat[:oid]); #[49] (0) ALGprojection 225 <- 222 199                                                   |
| 16113 | C_227=[73089]:bat[:oid] := algebra.intersect(C_226=[75871]:bat[:oid], X_225=[302383]:bat[:oid], nil:BAT, nil:BAT, false:bit, false:bit, nil:lng); #[50] (0) ALGintersect 227 <- 226 225 84 8 |
:       : 4 58 58 86                                                                                                                                                                                   :
|   154 | X_228=[73089]:bat[:lng] := algebra.projection(C_227=[73089]:bat[:oid], X_168=[75871]:bat[:lng]); #[51] (0) ALGprojection 228 <- 227 168                                                      |
|     2 | C_303=[73089]:bat[:oid] := bat.mirror(X_228=[73089]:bat[:lng]); #[52] (0) BKCmirror 303 <- 228                                                                                               |
| 31272 | (X_278=[264031]:bat[:oid], X_279=[264031]:bat[:oid]) := algebra.join(X_228=[73089]:bat[:lng], X_76=[3793296]:bat[:lng], nil:BAT, nil:BAT, false:bit, nil:lng); #[53] (0) ALGjoin 278 279 <-  |
:       : 228 76 84 84 58 86                                                                                                                                                                           :
|  1565 | X_296=[264031]:bat[:int] := algebra.projection(X_279=[264031]:bat[:oid], X_77=[3793296]:bat[:int]); #[54] (0) ALGprojection 296 <- 279 77                                                    |
|  6320 | X_284=[264031]:bat[:int] := algebra.projectionpath(X_278=[264031]:bat[:oid], C_227=[73089]:bat[:oid], X_169=[75871]:bat[:int]); #[55] (0) ALGprojectionpath 284 <- 278 227 169               |
|   681 | X_299=[264031]:bat[:bit] := batcalc.!=(X_296=[264031]:bat[:int], X_284=[264031]:bat[:int]); #[56] (0) CMDbatNE 299 <- 296 284                                                                |
|   665 | C_301=[190928]:bat[:oid] := algebra.select(X_299=[264031]:bat[:bit], true:bit, true:bit, true:bit, true:bit, false:bit); #[57] (1) ALGselect1 301 <- 299 56 56 56 56 58                      |
|   445 | X_302=[190928]:bat[:oid] := algebra.projection(C_301=[190928]:bat[:oid], X_278=[264031]:bat[:oid]); #[58] (0) ALGprojection 302 <- 301 278                                                   |
| 12725 | C_304=[4141]:bat[:oid] := algebra.difference(C_303=[73089]:bat[:oid], X_302=[190928]:bat[:oid], nil:BAT, nil:BAT, false:bit, false:bit, nil:lng); #[59] (0) ALGdifference 304 <- 303 302 84  |
:       : 84 58 58 86                                                                                                                                                                                  :
|    10 | X_107=[10000]:bat[:str] := sql.bind(X_8=0:int, "sys":str, "supplier":str, "s_name":str, 0:int); #[60] (0) mvc_bind_wrap 107 <- 8 12 95 108 16                                                |
|   633 | X_313=[4141]:bat[:str] := algebra.projectionpath(C_304=[4141]:bat[:oid], C_227=[73089]:bat[:oid], X_162=[75871]:bat[:oid], X_123=[1828911]:bat[:oid], C_94=[10000]:bat[:oid], X_107=[10000]: |
:       : bat[:str]); #[61] (0) ALGprojectionpath 313 <- 304 227 162 123 94 107                                                                                                                        :
|   398 | (X_317=[4141]:bat[:oid], C_318=[411]:bat[:oid]) := group.groupdone(X_313=[4141]:bat[:str]); #[62] (0) GRPgroup3 317 318 <- 313                                                               |
|    60 | X_320=[411]:bat[:str] := algebra.projection(C_318=[411]:bat[:oid], X_313=[4141]:bat[:str]); #[63] (0) ALGprojection 320 <- 318 313                                                           |
|    13 | X_321=[411]:bat[:lng] := aggr.subcount(X_317=[4141]:bat[:oid], X_317=[4141]:bat[:oid], C_318=[411]:bat[:oid], false:bit); #[64] (0) AGGRsubcount 321 <- 317 317 318 58                       |
|    87 | (C_326=[134]:bat[:oid], X_327=[134]:bat[:oid]) := algebra.firstn(X_321=[411]:bat[:lng], 100:lng, false:bit, true:bit, false:bit); #[65] (0) ALGfirstn 326 327 <- 321 10 58 56 58             |
|    17 | C_331=[100]:bat[:oid] := algebra.firstn(X_320=[411]:bat[:str], C_326=[134]:bat[:oid], X_327=[134]:bat[:oid], 100:lng, true:bit, false:bit, false:bit); #[66] (0) ALGfirstn 331 <- 320 326 32 |
:       : 7 10 56 58 58                                                                                                                                                                                :
|     5 | X_332=[100]:bat[:str] := algebra.projection(C_331=[100]:bat[:oid], X_320=[411]:bat[:str]); #[67] (0) ALGprojection 332 <- 331 320                                                            |
|     2 | X_333=[100]:bat[:lng] := algebra.projection(C_331=[100]:bat[:oid], X_321=[411]:bat[:lng]); #[68] (0) ALGprojection 333 <- 331 321                                                            |
|    10 | (X_336=[100]:bat[:lng], X_337=[100]:bat[:oid], X_338=[100]:bat[:oid]) := algebra.sort(X_333=[100]:bat[:lng], true:bit, true:bit, false:bit); #[69] (0) ALGsort13 336 337 338 <- 333 56 56 58 |
:       :                                                                                                                                                                                              :
|    32 | (X_339=[100]:bat[:str], X_340=[100]:bat[:oid]) := algebra.sort(X_332=[100]:bat[:str], X_337=[100]:bat[:oid], X_338=[100]:bat[:oid], false:bit, false:bit, false:bit); #[70] (0) ALGsort32 33 |
:       : 9 340 <- 332 337 338 58 58 58                                                                                                                                                                :
|     5 | X_342=[100]:bat[:str] := algebra.projection(X_340=[100]:bat[:oid], X_332=[100]:bat[:str]); #[71] (0) ALGprojection 342 <- 340 332                                                            |
|     2 | C_350=[100]:bat[:oid] := algebra.subslice(X_342=[100]:bat[:str], 0:lng, 99:lng); #[72] (0) ALGsubslice_lng 350 <- 342 324 406                                                                |
|    20 | X_351=[100]:bat[:str] := algebra.projection(C_350=[100]:bat[:oid], X_342=[100]:bat[:str]); #[73] (0) ALGprojection 351 <- 350 342                                                            |
|     5 | X_352=[100]:bat[:lng] := algebra.projectionpath(C_350=[100]:bat[:oid], X_340=[100]:bat[:oid], X_333=[100]:bat[:lng]); #[74] (0) ALGprojectionpath 352 <- 350 340 333                         |
|   127 | sql.resultSet(X_354=[2]:bat[:str], X_355=[2]:bat[:str], X_356=[2]:bat[:str], X_357=[2]:bat[:int], X_358=[2]:bat[:int], X_351=[100]:bat[:str], X_352=[100]:bat[:lng]); #[75] (0) mvc_table_re |
:       : sult_wrap 353 <- 354 355 356 357 358 351 352                                                                                                                                                 :
+-------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
75 tuples
