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
|     5 | X_303=[4]:bat[:str] := bat.pack("sys.shipping":str, "sys.shipping":str, "sys.shipping":str, "sys.":str); #[2] (0) MATpackValues 303 <- 308 308 308 317                                       |
|     4 | X_304=[4]:bat[:str] := bat.pack("supp_nation":str, "cust_nation":str, "l_year":str, "revenue":str); #[3] (0) MATpackValues 304 <- 309 313 314 318                                            |
|     4 | X_305=[4]:bat[:str] := bat.pack("char":str, "char":str, "int":str, "decimal":str); #[4] (0) MATpackValues 305 <- 310 310 315 319                                                             |
|     3 | X_306=[4]:bat[:int] := bat.pack(25:int, 25:int, 32:int, 38:int); #[5] (0) MATpackValues 306 <- 231 231 316 320                                                                               |
|     2 | X_307=[4]:bat[:int] := bat.pack(0:int, 0:int, 0:int, 4:int); #[6] (0) MATpackValues 307 <- 22 22 22 321                                                                                      |
|     1 | X_16=0:int := sql.mvc(); #[7] (0) SQLmvc 16                                                                                                                                                  |
|     3 | X_46=[6001215]:bat[:date] := sql.bind(X_16=0:int, "sys":str, "lineitem":str, "l_shipdate":str, 0:int); #[8] (6001215) mvc_bind_wrap 46 <- 16 18 19 47 22                                     |
|    14 | C_17=[6001215]:bat[:oid] := sql.tid(X_16=0:int, "sys":str, "lineitem":str); #[9] (6001215) SQLtid 17 <- 16 18 19                                                                             |
| 16605 | C_60=[1828450]:bat[:oid] := algebra.select(X_46=[6001215]:bat[:date], C_17=[6001215]:bat[:oid], "1995-01-01":date, "1996-12-31":date, true:bit, true:bit, false:bit, true:bit); #[10] (1) AL |
:       : Gselect2nil 60 <- 46 17 10 12 61 61 63 61                                                                                                                                                    :
|    15 | X_52=[6001215]:bat[:oid] := sql.bind_idxbat(X_16=0:int, "sys":str, "lineitem":str, "lineitem_fk1":str, 0:int); #[11] (6001215) mvc_bind_idxbat_wrap 52 <- 16 18 19 53 22                     |
|     3 | (X_55=[0]:bat[:oid], X_56=[0]:bat[:oid]) := sql.bind_idxbat(X_16=0:int, "sys":str, "lineitem":str, "lineitem_fk1":str, 2:int); #[12] (6001215) mvc_bind_idxbat_wrap 55 56 <- 16 18 19 53 27  |
|     1 | X_54=[0]:bat[:oid] := sql.bind_idxbat(X_16=0:int, "sys":str, "lineitem":str, "lineitem_fk1":str, 1:int); #[13] (0) mvc_bind_idxbat_wrap 54 <- 16 18 19 53 24                                 |
|  9378 | X_82=[1828450]:bat[:oid] := sql.projectdelta(C_60=[1828450]:bat[:oid], X_52=[6001215]:bat[:oid], X_55=[0]:bat[:oid], X_56=[0]:bat[:oid], X_54=[0]:bat[:oid]); #[14] (0) DELTAproject 82 <- 6 |
:       : 0 52 55 56 54                                                                                                                                                                                :
|    23 | C_64=[1500000]:bat[:oid] := sql.tid(X_16=0:int, "sys":str, "orders":str); #[15] (0) SQLtid 64 <- 16 18 65                                                                                    |
|  8134 | (X_84=[1828450]:bat[:oid], X_85=[1828450]:bat[:oid]) := algebra.join(X_82=[1828450]:bat[:oid], C_64=[1500000]:bat[:oid], nil:BAT, nil:BAT, false:bit, nil:lng); #[16] (0) ALGjoin 84 85 <- 8 |
:       : 2 64 86 86 63 88                                                                                                                                                                             :
|    10 | X_29=[6001215]:bat[:int] := sql.bind(X_16=0:int, "sys":str, "lineitem":str, "l_suppkey":str, 0:int); #[17] (6001215) mvc_bind_wrap 29 <- 16 18 19 21 22                                      |
| 46348 | X_89=[1828450]:bat[:int] := algebra.projectionpath(X_84=[1828450]:bat[:oid], C_60=[1828450]:bat[:oid], X_29=[6001215]:bat[:int]); #[18] (0) ALGprojectionpath 89 <- 84 60 29                 |
|    24 | C_96=[10000]:bat[:oid] := sql.tid(X_16=0:int, "sys":str, "supplier":str); #[19] (0) SQLtid 96 <- 16 18 97                                                                                    |
|     2 | X_104=[10000]:bat[:int] := sql.bind(X_16=0:int, "sys":str, "supplier":str, "s_suppkey":str, 0:int); #[20] (0) mvc_bind_wrap 104 <- 16 18 97 99 22                                            |
|     8 | X_115=[10000]:bat[:int] := algebra.projection(C_96=[10000]:bat[:oid], X_104=[10000]:bat[:int]); #[21] (0) ALGprojection 115 <- 96 104                                                        |
| 89135 | (X_117=[1828450]:bat[:oid], X_118=[1828450]:bat[:oid]) := algebra.join(X_89=[1828450]:bat[:int], X_115=[10000]:bat[:int], nil:BAT, nil:BAT, false:bit, nil:lng); #[22] (0) ALGjoin 117 118 < |
:       : - 89 115 86 86 63 88                                                                                                                                                                         :
|    12 | X_109=[10000]:bat[:oid] := sql.bind_idxbat(X_16=0:int, "sys":str, "supplier":str, "supplier_fk1":str, 0:int); #[23] (0) mvc_bind_idxbat_wrap 109 <- 16 18 97 110 22                          |
|     2 | (X_112=[0]:bat[:oid], X_113=[0]:bat[:oid]) := sql.bind_idxbat(X_16=0:int, "sys":str, "supplier":str, "supplier_fk1":str, 2:int); #[24] (0) mvc_bind_idxbat_wrap 112 113 <- 16 18 97 110 27   |
|     0 | X_111=[0]:bat[:oid] := sql.bind_idxbat(X_16=0:int, "sys":str, "supplier":str, "supplier_fk1":str, 1:int); #[25] (0) mvc_bind_idxbat_wrap 111 <- 16 18 97 110 24                              |
|     6 | X_116=[10000]:bat[:oid] := sql.projectdelta(C_96=[10000]:bat[:oid], X_109=[10000]:bat[:oid], X_112=[0]:bat[:oid], X_113=[0]:bat[:oid], X_111=[0]:bat[:oid]); #[26] (0) DELTAproject 116 <- 9 |
:       : 6 109 112 113 111                                                                                                                                                                            :
|  4064 | X_128=[1828450]:bat[:oid] := algebra.projection(X_118=[1828450]:bat[:oid], X_116=[10000]:bat[:oid]); #[27] (0) ALGprojection 128 <- 118 116                                                  |
|    10 | C_129=[25]:bat[:oid] := sql.tid(X_16=0:int, "sys":str, "nation":str); #[28] (0) SQLtid 129 <- 16 18 130                                                                                      |
|  8103 | (X_144=[1828450]:bat[:oid], X_145=[1828450]:bat[:oid]) := algebra.join(X_128=[1828450]:bat[:oid], C_129=[25]:bat[:oid], nil:BAT, nil:BAT, false:bit, nil:lng); #[29] (0) ALGjoin 144 145 <-  |
:       : 128 129 86 86 63 88                                                                                                                                                                          :
|    80 | X_73=[1500000]:bat[:oid] := sql.bind_idxbat(X_16=0:int, "sys":str, "orders":str, "orders_fk1":str, 0:int); #[30] (0) mvc_bind_idxbat_wrap 73 <- 16 18 65 67 22                               |
|     2 | (X_75=[0]:bat[:oid], X_76=[0]:bat[:oid]) := sql.bind_idxbat(X_16=0:int, "sys":str, "orders":str, "orders_fk1":str, 2:int); #[31] (0) mvc_bind_idxbat_wrap 75 76 <- 16 18 65 67 27            |
|     0 | X_74=[0]:bat[:oid] := sql.bind_idxbat(X_16=0:int, "sys":str, "orders":str, "orders_fk1":str, 1:int); #[32] (0) mvc_bind_idxbat_wrap 74 <- 16 18 65 67 24                                     |
|    19 | X_83=[1500000]:bat[:oid] := sql.projectdelta(C_64=[1500000]:bat[:oid], X_73=[1500000]:bat[:oid], X_75=[0]:bat[:oid], X_76=[0]:bat[:oid], X_74=[0]:bat[:oid]); #[33] (0) DELTAproject 83 <- 6 |
:       : 4 73 75 76 74                                                                                                                                                                                :
| 61401 | X_155=[1828450]:bat[:oid] := algebra.projectionpath(X_144=[1828450]:bat[:oid], X_117=[1828450]:bat[:oid], X_85=[1828450]:bat[:oid], X_83=[1500000]:bat[:oid]); #[34] (0) ALGprojectionpath 1 |
:       : 55 <- 144 117 85 83                                                                                                                                                                          :
|    12 | C_160=[150000]:bat[:oid] := sql.tid(X_16=0:int, "sys":str, "customer":str); #[35] (0) SQLtid 160 <- 16 18 161                                                                                |
|  6210 | (X_175=[1828450]:bat[:oid], X_176=[1828450]:bat[:oid]) := algebra.join(X_155=[1828450]:bat[:oid], C_160=[150000]:bat[:oid], nil:BAT, nil:BAT, false:bit, nil:lng); #[36] (0) ALGjoin 175 176 |
:       :  <- 155 160 86 86 63 88                                                                                                                                                                      :
|    92 | X_169=[150000]:bat[:oid] := sql.bind_idxbat(X_16=0:int, "sys":str, "customer":str, "customer_fk1":str, 0:int); #[37] (0) mvc_bind_idxbat_wrap 169 <- 16 18 161 163 22                        |
|     3 | (X_171=[0]:bat[:oid], X_172=[0]:bat[:oid]) := sql.bind_idxbat(X_16=0:int, "sys":str, "customer":str, "customer_fk1":str, 2:int); #[38] (0) mvc_bind_idxbat_wrap 171 172 <- 16 18 161 163 27  |
|     1 | X_170=[0]:bat[:oid] := sql.bind_idxbat(X_16=0:int, "sys":str, "customer":str, "customer_fk1":str, 1:int); #[39] (0) mvc_bind_idxbat_wrap 170 <- 16 18 161 163 24                             |
|    17 | X_174=[150000]:bat[:oid] := sql.projectdelta(C_160=[150000]:bat[:oid], X_169=[150000]:bat[:oid], X_171=[0]:bat[:oid], X_172=[0]:bat[:oid], X_170=[0]:bat[:oid]); #[40] (0) DELTAproject 174  |
:       : <- 160 169 171 172 170                                                                                                                                                                       :
|  5606 | X_190=[1828450]:bat[:oid] := algebra.projection(X_176=[1828450]:bat[:oid], X_174=[150000]:bat[:oid]); #[41] (0) ALGprojection 190 <- 176 174                                                 |
|  6416 | (X_205=[1828450]:bat[:oid], X_206=[1828450]:bat[:oid]) := algebra.join(X_190=[1828450]:bat[:oid], C_129=[25]:bat[:oid], nil:BAT, nil:BAT, false:bit, nil:lng); #[42] (0) ALGjoin 205 206 <-  |
:       : 190 129 86 86 63 88                                                                                                                                                                          :
|    11 | X_137=[25]:bat[:str] := sql.bind(X_16=0:int, "sys":str, "nation":str, "n_name":str, 0:int); #[43] (0) mvc_bind_wrap 137 <- 16 18 130 132 22                                                  |
|     4 | X_143=[25]:bat[:str] := algebra.projection(C_129=[25]:bat[:oid], X_137=[25]:bat[:str]); #[44] (0) ALGprojection 143 <- 129 137                                                               |
|  2116 | X_223=[1828450]:bat[:str] := algebra.projection(X_206=[1828450]:bat[:oid], X_143=[25]:bat[:str]); #[45] (0) ALGprojection 223 <- 206 143                                                     |
| 50189 | X_219=[1828450]:bat[:str] := algebra.projectionpath(X_205=[1828450]:bat[:oid], X_175=[1828450]:bat[:oid], X_145=[1828450]:bat[:oid], X_143=[25]:bat[:str]); #[46] (0) ALGprojectionpath 219  |
:       : <- 205 175 145 143                                                                                                                                                                           :
|  4502 | C_232=[73219]:bat[:oid] := algebra.thetaselect(X_219=[1828450]:bat[:str], "FRANCE":str, "==":str); #[47] (1) ALGthetaselect1 232 <- 219 4 233                                                |
|   449 | C_237=[3014]:bat[:oid] := algebra.thetaselect(X_223=[1828450]:bat[:str], C_232=[73219]:bat[:oid], "GERMANY":str, "==":str); #[48] (1) ALGthetaselect2 237 <- 223 232 6 233                   |
|  4391 | C_240=[72484]:bat[:oid] := algebra.thetaselect(X_219=[1828450]:bat[:str], "GERMANY":str, "==":str); #[49] (1) ALGthetaselect1 240 <- 219 6 233                                               |
|   447 | C_243=[2910]:bat[:oid] := algebra.thetaselect(X_223=[1828450]:bat[:str], C_240=[72484]:bat[:oid], "FRANCE":str, "==":str); #[50] (1) ALGthetaselect2 243 <- 223 240 4 233                    |
|    35 | C_244=[5924]:bat[:oid] := bat.mergecand(C_237=[3014]:bat[:oid], C_243=[2910]:bat[:oid]); #[51] (0) BKCmergecand 244 <- 237 243                                                               |
|   999 | X_248=[5924]:bat[:date] := algebra.projectionpath(C_244=[5924]:bat[:oid], X_205=[1828450]:bat[:oid], X_175=[1828450]:bat[:oid], X_144=[1828450]:bat[:oid], X_117=[1828450]:bat[:oid], X_84=[ |
:       : 1828450]:bat[:oid], C_60=[1828450]:bat[:oid], X_46=[6001215]:bat[:date]); #[52] (0) ALGprojectionpath 248 <- 244 205 175 144 117 84 60 46                                                    :
|    77 | X_260=[5924]:bat[:int] := batmtime.year(X_248=[5924]:bat[:date]); #[53] (0) MTIMEdate_extract_year_bulk 260 <- 248                                                                           |
|   615 | X_258=[5924]:bat[:str] := algebra.projection(C_244=[5924]:bat[:oid], X_223=[1828450]:bat[:str]); #[54] (0) ALGprojection 258 <- 244 223                                                      |
|   576 | X_254=[5924]:bat[:str] := algebra.projection(C_244=[5924]:bat[:oid], X_219=[1828450]:bat[:str]); #[55] (0) ALGprojection 254 <- 244 219                                                      |
|    52 | (X_272=[5924]:bat[:oid], C_273=[2]:bat[:oid]) := group.group(X_254=[5924]:bat[:str]); #[56] (1) GRPgroup3 272 273 <- 254                                                                     |
|    61 | (X_275=[5924]:bat[:oid], C_276=[2]:bat[:oid]) := group.subgroup(X_258=[5924]:bat[:str], X_272=[5924]:bat[:oid]); #[57] (1) GRPsubgroup6 275 276 <- 258 272                                   |
|    53 | (X_278=[5924]:bat[:oid], C_279=[4]:bat[:oid]) := group.subgroupdone(X_260=[5924]:bat[:int], X_275=[5924]:bat[:oid]); #[58] (0) GRPsubgroup6 278 279 <- 260 275                               |
|     3 | X_281=[4]:bat[:str] := algebra.projection(C_279=[4]:bat[:oid], X_254=[5924]:bat[:str]); #[59] (0) ALGprojection 281 <- 279 254                                                               |
|     3 | X_282=[4]:bat[:str] := algebra.projection(C_279=[4]:bat[:oid], X_258=[5924]:bat[:str]); #[60] (0) ALGprojection 282 <- 279 258                                                               |
|     3 | X_283=[4]:bat[:int] := algebra.projection(C_279=[4]:bat[:oid], X_260=[5924]:bat[:int]); #[61] (0) ALGprojection 283 <- 279 260                                                               |
|    21 | X_34=[6001215]:bat[:lng] := sql.bind(X_16=0:int, "sys":str, "lineitem":str, "l_extendedprice":str, 0:int); #[62] (6001215) mvc_bind_wrap 34 <- 16 18 19 35 22                                |
|  1044 | X_246=[5924]:bat[:lng] := algebra.projectionpath(C_244=[5924]:bat[:oid], X_205=[1828450]:bat[:oid], X_175=[1828450]:bat[:oid], X_144=[1828450]:bat[:oid], X_117=[1828450]:bat[:oid], X_84=[1 |
:       : 828450]:bat[:oid], C_60=[1828450]:bat[:oid], X_34=[6001215]:bat[:lng]); #[63] (0) ALGprojectionpath 246 <- 244 205 175 144 117 84 60 34                                                      :
|     5 | X_40=[6001215]:bat[:lng] := sql.bind(X_16=0:int, "sys":str, "lineitem":str, "l_discount":str, 0:int); #[64] (6001215) mvc_bind_wrap 40 <- 16 18 19 41 22                                     |
|   747 | X_247=[5924]:bat[:lng] := algebra.projectionpath(C_244=[5924]:bat[:oid], X_205=[1828450]:bat[:oid], X_175=[1828450]:bat[:oid], X_144=[1828450]:bat[:oid], X_117=[1828450]:bat[:oid], X_84=[1 |
:       : 828450]:bat[:oid], C_60=[1828450]:bat[:oid], X_40=[6001215]:bat[:lng]); #[65] (0) ALGprojectionpath 247 <- 244 205 175 144 117 84 60 40                                                      :
|    55 | X_267=[5924]:bat[:lng] := batcalc.-(100:lng, X_247=[5924]:bat[:lng], nil:BAT); #[66] (0) CMDbatSUBsignal 267 <- 362 247 86                                                                   |
|    21 | X_270=[5924]:bat[:hge] := batcalc.*(X_246=[5924]:bat[:lng], X_267=[5924]:bat[:lng], nil:BAT, nil:BAT); #[67] (0) CMDbatMULenlarge 270 <- 246 267 86 86                                       |
|   110 | X_284=[4]:bat[:hge] := aggr.subsum(X_270=[5924]:bat[:hge], X_278=[5924]:bat[:oid], C_279=[4]:bat[:oid], true:bit, true:bit); #[68] (0) AGGRsubsum_hge 284 <- 270 278 279 61 61               |
|    16 | (X_287=[4]:bat[:str], X_288=[4]:bat[:oid], X_289=[4]:bat[:oid]) := algebra.sort(X_281=[4]:bat[:str], false:bit, false:bit, false:bit); #[69] (0) ALGsort13 287 288 289 <- 281 63 63 63       |
|     8 | (X_292=[4]:bat[:str], X_293=[4]:bat[:oid], X_294=[4]:bat[:oid]) := algebra.sort(X_282=[4]:bat[:str], X_288=[4]:bat[:oid], X_289=[4]:bat[:oid], false:bit, false:bit, false:bit); #[70] (0) A |
:       : LGsort33 292 293 294 <- 282 288 289 63 63 63                                                                                                                                                 :
|     6 | (X_295=[4]:bat[:int], X_296=[4]:bat[:oid]) := algebra.sort(X_283=[4]:bat[:int], X_293=[4]:bat[:oid], X_294=[4]:bat[:oid], false:bit, false:bit, false:bit); #[71] (0) ALGsort32 295 296 <- 2 |
:       : 83 293 294 63 63 63                                                                                                                                                                          :
|     3 | X_298=[4]:bat[:str] := algebra.projection(X_296=[4]:bat[:oid], X_281=[4]:bat[:str]); #[72] (0) ALGprojection 298 <- 296 281                                                                  |
|     2 | X_299=[4]:bat[:str] := algebra.projection(X_296=[4]:bat[:oid], X_282=[4]:bat[:str]); #[73] (0) ALGprojection 299 <- 296 282                                                                  |
|     1 | X_300=[4]:bat[:int] := algebra.projection(X_296=[4]:bat[:oid], X_283=[4]:bat[:int]); #[74] (0) ALGprojection 300 <- 296 283                                                                  |
|     2 | X_301=[4]:bat[:hge] := algebra.projection(X_296=[4]:bat[:oid], X_284=[4]:bat[:hge]); #[75] (0) ALGprojection 301 <- 296 284                                                                  |
|    28 | sql.resultSet(X_303=[4]:bat[:str], X_304=[4]:bat[:str], X_305=[4]:bat[:str], X_306=[4]:bat[:int], X_307=[4]:bat[:int], X_298=[4]:bat[:str], X_299=[4]:bat[:str], X_300=[4]:bat[:int], X_301= |
:       : [4]:bat[:hge]); #[76] (0) mvc_table_result_wrap 302 <- 303 304 305 306 307 298 299 300 301                                                                                                   :
+-------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
76 tuples
