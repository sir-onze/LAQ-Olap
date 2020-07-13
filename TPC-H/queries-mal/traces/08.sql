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
|     5 | X_381=[2]:bat[:str] := bat.pack("sys.all_nations":str, "sys.":str); #[2] (0) MATpackValues 381 <- 386 391                                                                                    |
|     4 | X_382=[2]:bat[:str] := bat.pack("o_year":str, "mkt_share":str); #[3] (0) MATpackValues 382 <- 387 392                                                                                        |
|     3 | X_383=[2]:bat[:str] := bat.pack("int":str, "decimal":str); #[4] (0) MATpackValues 383 <- 388 393                                                                                             |
|     2 | X_384=[2]:bat[:int] := bat.pack(32:int, 38:int); #[5] (0) MATpackValues 384 <- 389 368                                                                                                       |
|     2 | X_385=[2]:bat[:int] := bat.pack(0:int, 4:int); #[6] (0) MATpackValues 385 <- 17 354                                                                                                          |
|     0 | X_11=0:int := sql.mvc(); #[7] (0) SQLmvc 11                                                                                                                                                  |
|     4 | C_12=[25]:bat[:oid] := sql.tid(X_11=0:int, "sys":str, "nation":str); #[8] (0) SQLtid 12 <- 11 13 14                                                                                          |
|     2 | X_25=[25]:bat[:oid] := sql.bind_idxbat(X_11=0:int, "sys":str, "nation":str, "nation_fk1":str, 0:int); #[9] (0) mvc_bind_idxbat_wrap 25 <- 11 13 14 16 17                                     |
|     2 | (X_27=[0]:bat[:oid], X_28=[0]:bat[:oid]) := sql.bind_idxbat(X_11=0:int, "sys":str, "nation":str, "nation_fk1":str, 2:int); #[10] (0) mvc_bind_idxbat_wrap 27 28 <- 11 13 14 16 22            |
|     1 | X_26=[0]:bat[:oid] := sql.bind_idxbat(X_11=0:int, "sys":str, "nation":str, "nation_fk1":str, 1:int); #[11] (0) mvc_bind_idxbat_wrap 26 <- 11 13 14 16 19                                     |
|     5 | X_51=[25]:bat[:oid] := sql.projectdelta(C_12=[25]:bat[:oid], X_25=[25]:bat[:oid], X_27=[0]:bat[:oid], X_28=[0]:bat[:oid], X_26=[0]:bat[:oid]); #[12] (0) DELTAproject 51 <- 12 25 27 28 26   |
|     2 | X_38=[5]:bat[:str] := sql.bind(X_11=0:int, "sys":str, "region":str, "r_name":str, 0:int); #[13] (0) mvc_bind_wrap 38 <- 11 13 31 33 17                                                       |
|    15 | C_30=[5]:bat[:oid] := sql.tid(X_11=0:int, "sys":str, "region":str); #[14] (0) SQLtid 30 <- 11 13 31                                                                                          |
|    20 | C_49=[1]:bat[:oid] := algebra.thetaselect(X_38=[5]:bat[:str], C_30=[5]:bat[:oid], "AMERICA":str, "==":str); #[15] (1) ALGthetaselect2 49 <- 38 30 4 50                                       |
|    40 | X_53=[5]:bat[:oid] := algebra.join(X_51=[25]:bat[:oid], C_49=[1]:bat[:oid], nil:BAT, nil:BAT, false:bit, nil:lng); #[16] (0) ALGjoin1 53 <- 51 49 55 55 57 58                                |
|     3 | X_59=[5]:bat[:oid] := algebra.projection(X_53=[5]:bat[:oid], C_12=[25]:bat[:oid]); #[17] (0) ALGprojection 59 <- 53 12                                                                       |
|     2 | C_63=[150000]:bat[:oid] := sql.tid(X_11=0:int, "sys":str, "customer":str); #[18] (0) SQLtid 63 <- 11 13 64                                                                                   |
|     1 | X_72=[150000]:bat[:oid] := sql.bind_idxbat(X_11=0:int, "sys":str, "customer":str, "customer_fk1":str, 0:int); #[19] (0) mvc_bind_idxbat_wrap 72 <- 11 13 64 66 17                            |
|     2 | (X_74=[0]:bat[:oid], X_75=[0]:bat[:oid]) := sql.bind_idxbat(X_11=0:int, "sys":str, "customer":str, "customer_fk1":str, 2:int); #[20] (0) mvc_bind_idxbat_wrap 74 75 <- 11 13 64 66 22        |
|     1 | X_73=[0]:bat[:oid] := sql.bind_idxbat(X_11=0:int, "sys":str, "customer":str, "customer_fk1":str, 1:int); #[21] (0) mvc_bind_idxbat_wrap 73 <- 11 13 64 66 19                                 |
|     3 | X_77=[150000]:bat[:oid] := sql.projectdelta(C_63=[150000]:bat[:oid], X_72=[150000]:bat[:oid], X_74=[0]:bat[:oid], X_75=[0]:bat[:oid], X_73=[0]:bat[:oid]); #[22] (0) DELTAproject 77 <- 63 7 |
:       : 2 74 75 73                                                                                                                                                                                   :
|  2487 | (X_78=[29952]:bat[:oid], X_79=[29952]:bat[:oid]) := algebra.join(X_59=[5]:bat[:oid], X_77=[150000]:bat[:oid], nil:BAT, nil:BAT, false:bit, nil:lng); #[23] (0) ALGjoin 78 79 <- 59 77 55 55  |
:       : 57 58                                                                                                                                                                                        :
|    73 | X_84=[29952]:bat[:oid] := algebra.projection(X_79=[29952]:bat[:oid], C_63=[150000]:bat[:oid]); #[24] (0) ALGprojection 84 <- 79 63                                                           |
|     6 | X_94=[1500000]:bat[:date] := sql.bind(X_11=0:int, "sys":str, "orders":str, "o_orderdate":str, 0:int); #[25] (0) mvc_bind_wrap 94 <- 11 13 87 89 17                                           |
|     2 | C_86=[1500000]:bat[:oid] := sql.tid(X_11=0:int, "sys":str, "orders":str); #[26] (0) SQLtid 86 <- 11 13 87                                                                                    |
|  5137 | C_108=[457263]:bat[:oid] := algebra.select(X_94=[1500000]:bat[:date], C_86=[1500000]:bat[:oid], "1995-01-01":date, "1996-12-31":date, true:bit, true:bit, false:bit, true:bit); #[27] (1) AL |
:       : Gselect2nil 108 <- 94 86 5 6 109 109 57 109                                                                                                                                                  :
|    52 | X_100=[1500000]:bat[:oid] := sql.bind_idxbat(X_11=0:int, "sys":str, "orders":str, "orders_fk1":str, 0:int); #[28] (0) mvc_bind_idxbat_wrap 100 <- 11 13 87 101 17                            |
|     4 | (X_103=[0]:bat[:oid], X_104=[0]:bat[:oid]) := sql.bind_idxbat(X_11=0:int, "sys":str, "orders":str, "orders_fk1":str, 2:int); #[29] (0) mvc_bind_idxbat_wrap 103 104 <- 11 13 87 101 22       |
|     2 | X_102=[0]:bat[:oid] := sql.bind_idxbat(X_11=0:int, "sys":str, "orders":str, "orders_fk1":str, 1:int); #[30] (0) mvc_bind_idxbat_wrap 102 <- 11 13 87 101 19                                  |
|  7905 | X_113=[457263]:bat[:oid] := sql.projectdelta(C_108=[457263]:bat[:oid], X_100=[1500000]:bat[:oid], X_103=[0]:bat[:oid], X_104=[0]:bat[:oid], X_102=[0]:bat[:oid]); #[31] (0) DELTAproject 113 |
:       :  <- 108 100 103 104 102                                                                                                                                                                      :
| 17413 | (X_114=[91179]:bat[:oid], X_115=[91179]:bat[:oid]) := algebra.join(X_84=[29952]:bat[:oid], X_113=[457263]:bat[:oid], nil:BAT, nil:BAT, false:bit, nil:lng); #[32] (0) ALGjoin 114 115 <- 84  |
:       : 113 55 55 57 58                                                                                                                                                                              :
|   578 | X_126=[91179]:bat[:oid] := algebra.projection(X_115=[91179]:bat[:oid], C_108=[457263]:bat[:oid]); #[33] (0) ALGprojection 126 <- 115 108                                                     |
|     6 | C_128=[6001215]:bat[:oid] := sql.tid(X_11=0:int, "sys":str, "lineitem":str); #[34] (6001215) SQLtid 128 <- 11 13 129                                                                         |
|     6 | X_159=[6001215]:bat[:oid] := sql.bind_idxbat(X_11=0:int, "sys":str, "lineitem":str, "lineitem_fk1":str, 0:int); #[35] (6001215) mvc_bind_idxbat_wrap 159 <- 11 13 129 160 17                 |
|     2 | (X_162=[0]:bat[:oid], X_163=[0]:bat[:oid]) := sql.bind_idxbat(X_11=0:int, "sys":str, "lineitem":str, "lineitem_fk1":str, 2:int); #[36] (6001215) mvc_bind_idxbat_wrap 162 163 <- 11 13 129 1 |
:       : 60 22                                                                                                                                                                                        :
|     0 | X_161=[0]:bat[:oid] := sql.bind_idxbat(X_11=0:int, "sys":str, "lineitem":str, "lineitem_fk1":str, 1:int); #[37] (0) mvc_bind_idxbat_wrap 161 <- 11 13 129 160 19                             |
|    17 | X_169=[6001215]:bat[:oid] := sql.projectdelta(C_128=[6001215]:bat[:oid], X_159=[6001215]:bat[:oid], X_162=[0]:bat[:oid], X_163=[0]:bat[:oid], X_161=[0]:bat[:oid]); #[38] (0) DELTAproject 1 |
:       : 69 <- 128 159 162 163 161                                                                                                                                                                    :
| 78457 | (X_170=[365091]:bat[:oid], X_171=[365091]:bat[:oid]) := algebra.join(X_126=[91179]:bat[:oid], X_169=[6001215]:bat[:oid], nil:BAT, nil:BAT, false:bit, nil:lng); #[39] (0) ALGjoin 170 171 <- |
:       :  126 169 55 55 57 58                                                                                                                                                                         :
|    20 | X_136=[6001215]:bat[:int] := sql.bind(X_11=0:int, "sys":str, "lineitem":str, "l_partkey":str, 0:int); #[40] (6001215) mvc_bind_wrap 136 <- 11 13 129 131 17                                  |
| 14035 | X_185=[365091]:bat[:int] := algebra.projectionpath(X_171=[365091]:bat[:oid], C_128=[6001215]:bat[:oid], X_136=[6001215]:bat[:int]); #[41] (0) ALGprojectionpath 185 <- 171 128 136           |
|    15 | X_203=[200000]:bat[:str] := sql.bind(X_11=0:int, "sys":str, "part":str, "p_type":str, 0:int); #[42] (0) mvc_bind_wrap 203 <- 11 13 191 204 17                                                |
|     4 | C_190=[200000]:bat[:oid] := sql.tid(X_11=0:int, "sys":str, "part":str); #[43] (0) SQLtid 190 <- 11 13 191                                                                                    |
|   560 | C_216=[1451]:bat[:oid] := algebra.thetaselect(X_203=[200000]:bat[:str], C_190=[200000]:bat[:oid], "ECONOMY ANODIZED STEEL":str, "==":str); #[44] (1) ALGthetaselect2 216 <- 203 190 7 50     |
|     4 | X_198=[200000]:bat[:int] := sql.bind(X_11=0:int, "sys":str, "part":str, "p_partkey":str, 0:int); #[45] (0) mvc_bind_wrap 198 <- 11 13 191 193 17                                             |
|    29 | X_218=[1451]:bat[:int] := algebra.projection(C_216=[1451]:bat[:oid], X_198=[200000]:bat[:int]); #[46] (0) ALGprojection 218 <- 216 198                                                       |
|  6924 | X_220=[2603]:bat[:oid] := algebra.join(X_185=[365091]:bat[:int], X_218=[1451]:bat[:int], nil:BAT, nil:BAT, false:bit, nil:lng); #[47] (0) ALGjoin1 220 <- 185 218 55 55 57 58                |
|     8 | X_141=[6001215]:bat[:int] := sql.bind(X_11=0:int, "sys":str, "lineitem":str, "l_suppkey":str, 0:int); #[48] (6001215) mvc_bind_wrap 141 <- 11 13 129 142 17                                  |
|   280 | X_236=[2603]:bat[:int] := algebra.projectionpath(X_220=[2603]:bat[:oid], X_171=[365091]:bat[:oid], C_128=[6001215]:bat[:oid], X_141=[6001215]:bat[:int]); #[49] (0) ALGprojectionpath 236 <- |
:       :  220 171 128 141                                                                                                                                                                             :
|     4 | C_242=[10000]:bat[:oid] := sql.tid(X_11=0:int, "sys":str, "supplier":str); #[50] (0) SQLtid 242 <- 11 13 243                                                                                 |
|     1 | X_250=[10000]:bat[:int] := sql.bind(X_11=0:int, "sys":str, "supplier":str, "s_suppkey":str, 0:int); #[51] (0) mvc_bind_wrap 250 <- 11 13 243 245 17                                          |
|     3 | X_261=[10000]:bat[:int] := algebra.projection(C_242=[10000]:bat[:oid], X_250=[10000]:bat[:int]); #[52] (0) ALGprojection 261 <- 242 250                                                      |
|    79 | (X_263=[2603]:bat[:oid], X_264=[2603]:bat[:oid]) := algebra.join(X_236=[2603]:bat[:int], X_261=[10000]:bat[:int], nil:BAT, nil:BAT, false:bit, nil:lng); #[53] (0) ALGjoin 263 264 <- 236 26 |
:       : 1 55 55 57 58                                                                                                                                                                                :
|     4 | X_255=[10000]:bat[:oid] := sql.bind_idxbat(X_11=0:int, "sys":str, "supplier":str, "supplier_fk1":str, 0:int); #[54] (0) mvc_bind_idxbat_wrap 255 <- 11 13 243 256 17                         |
|     2 | (X_258=[0]:bat[:oid], X_259=[0]:bat[:oid]) := sql.bind_idxbat(X_11=0:int, "sys":str, "supplier":str, "supplier_fk1":str, 2:int); #[55] (0) mvc_bind_idxbat_wrap 258 259 <- 11 13 243 256 22  |
|     2 | X_257=[0]:bat[:oid] := sql.bind_idxbat(X_11=0:int, "sys":str, "supplier":str, "supplier_fk1":str, 1:int); #[56] (0) mvc_bind_idxbat_wrap 257 <- 11 13 243 256 19                             |
|    25 | X_262=[10000]:bat[:oid] := sql.projectdelta(C_242=[10000]:bat[:oid], X_255=[10000]:bat[:oid], X_258=[0]:bat[:oid], X_259=[0]:bat[:oid], X_257=[0]:bat[:oid]); #[57] (0) DELTAproject 262 <-  |
:       : 242 255 258 259 257                                                                                                                                                                          :
|    20 | X_286=[2603]:bat[:oid] := algebra.projection(X_264=[2603]:bat[:oid], X_262=[10000]:bat[:oid]); #[58] (0) ALGprojection 286 <- 264 262                                                        |
|    18 | (X_302=[2603]:bat[:oid], X_303=[2603]:bat[:oid]) := algebra.join(X_286=[2603]:bat[:oid], C_12=[25]:bat[:oid], nil:BAT, nil:BAT, false:bit, nil:lng); #[59] (0) ALGjoin 302 303 <- 286 12 55  |
:       : 55 57 58                                                                                                                                                                                     :
|   659 | X_314=[2603]:bat[:date] := algebra.projectionpath(X_302=[2603]:bat[:oid], X_263=[2603]:bat[:oid], X_220=[2603]:bat[:oid], X_170=[365091]:bat[:oid], X_115=[91179]:bat[:oid], C_108=[457263]: |
:       : bat[:oid], X_94=[1500000]:bat[:date]); #[60] (0) ALGprojectionpath 314 <- 302 263 220 170 115 108 94                                                                                         :
|    37 | X_328=[2603]:bat[:int] := batmtime.year(X_314=[2603]:bat[:date]); #[61] (0) MTIMEdate_extract_year_bulk 328 <- 314                                                                           |
|    62 | (X_358=[2603]:bat[:oid], C_359=[2]:bat[:oid]) := group.groupdone(X_328=[2603]:bat[:int]); #[62] (0) GRPgroup3 358 359 <- 328                                                                 |
|     2 | X_361=[2]:bat[:int] := algebra.projection(C_359=[2]:bat[:oid], X_328=[2603]:bat[:int]); #[63] (0) ALGprojection 361 <- 359 328                                                               |
|     3 | X_295=[25]:bat[:str] := sql.bind(X_11=0:int, "sys":str, "nation":str, "n_name":str, 0:int); #[64] (0) mvc_bind_wrap 295 <- 11 13 14 290 17                                                   |
|    64 | X_326=[2603]:bat[:str] := algebra.projectionpath(X_303=[2603]:bat[:oid], C_12=[25]:bat[:oid], X_295=[25]:bat[:str]); #[65] (0) ALGprojectionpath 326 <- 303 12 295                           |
|    66 | X_347=[2603]:bat[:bit] := batcalc.==(X_326=[2603]:bat[:str], "BRAZIL":str); #[66] (0) CMDbatEQ 347 <- 326 1                                                                                  |
|     3 | X_147=[6001215]:bat[:lng] := sql.bind(X_11=0:int, "sys":str, "lineitem":str, "l_extendedprice":str, 0:int); #[67] (6001215) mvc_bind_wrap 147 <- 11 13 129 148 17                            |
|   404 | X_319=[2603]:bat[:lng] := algebra.projectionpath(X_302=[2603]:bat[:oid], X_263=[2603]:bat[:oid], X_220=[2603]:bat[:oid], X_171=[365091]:bat[:oid], C_128=[6001215]:bat[:oid], X_147=[6001215 |
:       : ]:bat[:lng]); #[68] (0) ALGprojectionpath 319 <- 302 263 220 171 128 147                                                                                                                     :
|    16 | X_153=[6001215]:bat[:lng] := sql.bind(X_11=0:int, "sys":str, "lineitem":str, "l_discount":str, 0:int); #[69] (6001215) mvc_bind_wrap 153 <- 11 13 129 154 17                                 |
|   242 | X_320=[2603]:bat[:lng] := algebra.projectionpath(X_302=[2603]:bat[:oid], X_263=[2603]:bat[:oid], X_220=[2603]:bat[:oid], X_171=[365091]:bat[:oid], C_128=[6001215]:bat[:oid], X_153=[6001215 |
:       : ]:bat[:lng]); #[70] (0) ALGprojectionpath 320 <- 302 263 220 171 128 153                                                                                                                     :
|    71 | X_335=[2603]:bat[:lng] := batcalc.-(100:lng, X_320=[2603]:bat[:lng], nil:BAT); #[71] (0) CMDbatSUBsignal 335 <- 434 320 55                                                                   |
|    12 | X_338=[2603]:bat[:hge] := batcalc.*(X_319=[2603]:bat[:lng], X_335=[2603]:bat[:lng], nil:BAT, nil:BAT); #[72] (0) CMDbatMULenlarge 338 <- 319 335 55 55                                       |
|     8 | X_356=[2603]:bat[:hge] := batcalc.ifthenelse(X_347=[2603]:bat[:bit], X_338=[2603]:bat[:hge], 0:hge); #[73] (0) CMDifthen 356 <- 347 338 436                                                  |
|    18 | X_362=[2]:bat[:hge] := aggr.subsum(X_356=[2603]:bat[:hge], X_358=[2603]:bat[:oid], C_359=[2]:bat[:oid], true:bit, true:bit); #[74] (0) AGGRsubsum_hge 362 <- 356 358 359 109 109             |
|    15 | X_365=[2]:bat[:hge] := aggr.subsum(X_338=[2603]:bat[:hge], X_358=[2603]:bat[:oid], C_359=[2]:bat[:oid], true:bit, true:bit); #[75] (0) AGGRsubsum_hge 365 <- 338 358 359 109 109             |
|     6 | (X_373=[2]:bat[:int], X_374=[2]:bat[:oid]) := algebra.sort(X_361=[2]:bat[:int], false:bit, false:bit, false:bit); #[76] (0) ALGsort12 373 374 <- 361 57 57 57                                |
|     2 | X_378=[2]:bat[:int] := algebra.projection(X_374=[2]:bat[:oid], X_361=[2]:bat[:int]); #[77] (0) ALGprojection 378 <- 374 361                                                                  |
|     3 | X_366=[2]:bat[:hge] := batcalc.hge(4:int, X_362=[2]:bat[:hge], 38:int, 8:int); #[78] (0) bathge_dec2dec_hge 366 <- 354 362 368 369                                                           |
|     4 | X_370=[2]:bat[:hge] := batcalc./(X_366=[2]:bat[:hge], X_365=[2]:bat[:hge], nil:BAT, nil:BAT); #[79] (0) CMDbatDIVsignal 370 <- 366 365 55 55                                                 |
|     2 | X_379=[2]:bat[:hge] := algebra.projection(X_374=[2]:bat[:oid], X_370=[2]:bat[:hge]); #[80] (0) ALGprojection 379 <- 374 370                                                                  |
|    55 | sql.resultSet(X_381=[2]:bat[:str], X_382=[2]:bat[:str], X_383=[2]:bat[:str], X_384=[2]:bat[:int], X_385=[2]:bat[:int], X_378=[2]:bat[:int], X_379=[2]:bat[:hge]); #[81] (0) mvc_table_result |
:       : _wrap 380 <- 381 382 383 384 385 378 379                                                                                                                                                     :
+-------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
81 tuples
