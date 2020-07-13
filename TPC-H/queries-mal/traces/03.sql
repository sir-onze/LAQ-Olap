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
|    18 | X_5=0@0:void := querylog.define("trace select\n l_orderkey,\n sum(l_extendedprice * (1 - l_discount)) as revenue,\n o_orderdate,\n o_shippriority\nfrom customer,\n orders,\n lineitem\nwher |
:       : e c_mktsegment = \\'BUILDING\\'\n and c_custkey = o_custkey\n and l_orderkey = o_orderkey\n and o_orderdate < date \\'1995-03-15\\'\n and l_shipdate > date \\'1995-03-15\\'\ngroup by\n l_o :
:       : rderkey,\n o_orderdate,\n o_shippriority\norder by\n revenue desc,\n o_orderdate\nlimit 10;":str, "default_pipe":str, 142:int); #[1] (0) QLOGdefineNaive 5 <- 6 7 233                        :
|    13 | X_212=[4]:bat[:str] := bat.pack("sys.lineitem":str, "sys.":str, "sys.orders":str, "sys.orders":str); #[2] (0) MATpackValues 212 <- 217 222 227 227                                           |
|     8 | X_213=[4]:bat[:str] := bat.pack("l_orderkey":str, "revenue":str, "o_orderdate":str, "o_shippriority":str); #[3] (0) MATpackValues 213 <- 15 223 58 69                                        |
|    23 | X_214=[4]:bat[:str] := bat.pack("bigint":str, "decimal":str, "date":str, "int":str); #[4] (0) MATpackValues 214 <- 219 224 229 231                                                           |
|     5 | X_215=[4]:bat[:int] := bat.pack(64:int, 38:int, 0:int, 32:int); #[5] (0) MATpackValues 215 <- 220 225 16 232                                                                                 |
|     4 | X_216=[4]:bat[:int] := bat.pack(0:int, 4:int, 0:int, 0:int); #[6] (0) MATpackValues 216 <- 16 226 16 16                                                                                      |
|     3 | X_8=0:int := sql.mvc(); #[7] (0) SQLmvc 8                                                                                                                                                    |
|    15 | X_40=[6001215]:bat[:date] := sql.bind(X_8=0:int, "sys":str, "lineitem":str, "l_shipdate":str, 0:int); #[8] (6001215) mvc_bind_wrap 40 <- 8 12 13 41 16                                       |
|     8 | C_11=[6001215]:bat[:oid] := sql.tid(X_8=0:int, "sys":str, "lineitem":str); #[9] (6001215) SQLtid 11 <- 8 12 13                                                                               |
| 22979 | C_53=[3241776]:bat[:oid] := algebra.thetaselect(X_40=[6001215]:bat[:date], C_11=[6001215]:bat[:oid], "1995-03-15":date, ">":str); #[10] (1) ALGthetaselect2 53 <- 40 11 3 54                 |
|    44 | X_46=[6001215]:bat[:oid] := sql.bind_idxbat(X_8=0:int, "sys":str, "lineitem":str, "lineitem_fk1":str, 0:int); #[11] (6001215) mvc_bind_idxbat_wrap 46 <- 8 12 13 47 16                       |
|    22 | (X_49=[0]:bat[:oid], X_50=[0]:bat[:oid]) := sql.bind_idxbat(X_8=0:int, "sys":str, "lineitem":str, "lineitem_fk1":str, 2:int); #[12] (6001215) mvc_bind_idxbat_wrap 49 50 <- 8 12 13 47 21    |
|     1 | X_48=[0]:bat[:oid] := sql.bind_idxbat(X_8=0:int, "sys":str, "lineitem":str, "lineitem_fk1":str, 1:int); #[13] (0) mvc_bind_idxbat_wrap 48 <- 8 12 13 47 18                                   |
| 14210 | X_88=[3241776]:bat[:oid] := sql.projectdelta(C_53=[3241776]:bat[:oid], X_46=[6001215]:bat[:oid], X_49=[0]:bat[:oid], X_50=[0]:bat[:oid], X_48=[0]:bat[:oid]); #[14] (0) DELTAproject 88 <- 5 |
:       : 3 46 49 50 48                                                                                                                                                                                :
|    17 | X_63=[1500000]:bat[:date] := sql.bind(X_8=0:int, "sys":str, "orders":str, "o_orderdate":str, 0:int); #[15] (0) mvc_bind_wrap 63 <- 8 12 56 58 16                                             |
|    24 | C_55=[1500000]:bat[:oid] := sql.tid(X_8=0:int, "sys":str, "orders":str); #[16] (0) SQLtid 55 <- 8 12 56                                                                                      |
|  3733 | C_82=[727305]:bat[:oid] := algebra.thetaselect(X_63=[1500000]:bat[:date], C_55=[1500000]:bat[:oid], "1995-03-15":date, "<":str); #[17] (1) ALGthetaselect2 82 <- 63 55 3 83                  |
| 27010 | (X_92=[151331]:bat[:oid], X_93=[151331]:bat[:oid]) := algebra.join(X_88=[3241776]:bat[:oid], C_82=[727305]:bat[:oid], nil:BAT, nil:BAT, false:bit, nil:lng); #[18] (0) ALGjoin 92 93 <- 88 8 |
:       : 2 94 94 96 97                                                                                                                                                                                :
|    14 | X_75=[1500000]:bat[:oid] := sql.bind_idxbat(X_8=0:int, "sys":str, "orders":str, "orders_fk1":str, 0:int); #[19] (0) mvc_bind_idxbat_wrap 75 <- 8 12 56 76 16                                 |
|     2 | (X_78=[0]:bat[:oid], X_79=[0]:bat[:oid]) := sql.bind_idxbat(X_8=0:int, "sys":str, "orders":str, "orders_fk1":str, 2:int); #[20] (0) mvc_bind_idxbat_wrap 78 79 <- 8 12 56 76 21              |
|     1 | X_77=[0]:bat[:oid] := sql.bind_idxbat(X_8=0:int, "sys":str, "orders":str, "orders_fk1":str, 1:int); #[21] (0) mvc_bind_idxbat_wrap 77 <- 8 12 56 76 18                                       |
|  2906 | X_91=[727305]:bat[:oid] := sql.projectdelta(C_82=[727305]:bat[:oid], X_75=[1500000]:bat[:oid], X_78=[0]:bat[:oid], X_79=[0]:bat[:oid], X_77=[0]:bat[:oid]); #[22] (0) DELTAproject 91 <- 82  |
:       : 75 78 79 77                                                                                                                                                                                  :
|   991 | X_106=[151331]:bat[:oid] := algebra.projection(X_93=[151331]:bat[:oid], X_91=[727305]:bat[:oid]); #[23] (0) ALGprojection 106 <- 93 91                                                       |
|     9 | X_115=[150000]:bat[:str] := sql.bind(X_8=0:int, "sys":str, "customer":str, "c_mktsegment":str, 0:int); #[24] (0) mvc_bind_wrap 115 <- 8 12 108 110 16                                        |
|     3 | C_107=[150000]:bat[:oid] := sql.tid(X_8=0:int, "sys":str, "customer":str); #[25] (0) SQLtid 107 <- 8 12 108                                                                                  |
|   857 | C_128=[30142]:bat[:oid] := algebra.thetaselect(X_115=[150000]:bat[:str], C_107=[150000]:bat[:oid], "BUILDING":str, "==":str); #[26] (1) ALGthetaselect2 128 <- 115 107 2 129                 |
|  7347 | X_131=[30519]:bat[:oid] := algebra.join(X_106=[151331]:bat[:oid], C_128=[30142]:bat[:oid], nil:BAT, nil:BAT, false:bit, nil:lng); #[27] (0) ALGjoin1 131 <- 106 128 94 94 96 97              |
|  3309 | X_142=[30519]:bat[:date] := algebra.projectionpath(X_131=[30519]:bat[:oid], X_93=[151331]:bat[:oid], C_82=[727305]:bat[:oid], X_63=[1500000]:bat[:date]); #[28] (0) ALGprojectionpath 142 <- |
:       :  131 93 82 63                                                                                                                                                                                :
|    15 | X_68=[1500000]:bat[:int] := sql.bind(X_8=0:int, "sys":str, "orders":str, "o_shippriority":str, 0:int); #[29] (0) mvc_bind_wrap 68 <- 8 12 56 69 16                                           |
|  1809 | X_143=[30519]:bat[:int] := algebra.projectionpath(X_131=[30519]:bat[:oid], X_93=[151331]:bat[:oid], C_82=[727305]:bat[:oid], X_68=[1500000]:bat[:int]); #[30] (0) ALGprojectionpath 143 <- 1 |
:       : 31 93 82 68                                                                                                                                                                                  :
|     8 | X_23=[6001215]:bat[:lng] := sql.bind(X_8=0:int, "sys":str, "lineitem":str, "l_orderkey":str, 0:int); #[31] (6001215) mvc_bind_wrap 23 <- 8 12 13 15 16                                       |
|  3343 | X_137=[30519]:bat[:lng] := algebra.projectionpath(X_131=[30519]:bat[:oid], X_92=[151331]:bat[:oid], C_53=[3241776]:bat[:oid], X_23=[6001215]:bat[:lng]); #[32] (0) ALGprojectionpath 137 <-  |
:       : 131 92 53 23                                                                                                                                                                                 :
|   220 | (X_157=[30519]:bat[:oid], C_158=[11620]:bat[:oid]) := group.group(X_137=[30519]:bat[:lng]); #[33] (1) GRPgroup3 157 158 <- 137                                                               |
|   211 | (X_160=[30519]:bat[:oid], C_161=[11620]:bat[:oid]) := group.subgroup(X_143=[30519]:bat[:int], X_157=[30519]:bat[:oid]); #[34] (1) GRPsubgroup6 160 161 <- 143 157                            |
|   590 | (X_163=[30519]:bat[:oid], C_164=[11620]:bat[:oid]) := group.subgroupdone(X_142=[30519]:bat[:date], X_160=[30519]:bat[:oid]); #[35] (0) GRPsubgroup6 163 164 <- 142 160                       |
|    28 | X_167=[11620]:bat[:date] := algebra.projection(C_164=[11620]:bat[:oid], X_142=[30519]:bat[:date]); #[36] (0) ALGprojection 167 <- 164 142                                                    |
|    11 | X_28=[6001215]:bat[:lng] := sql.bind(X_8=0:int, "sys":str, "lineitem":str, "l_extendedprice":str, 0:int); #[37] (6001215) mvc_bind_wrap 28 <- 8 12 13 29 16                                  |
|  2425 | X_138=[30519]:bat[:lng] := algebra.projectionpath(X_131=[30519]:bat[:oid], X_92=[151331]:bat[:oid], C_53=[3241776]:bat[:oid], X_28=[6001215]:bat[:lng]); #[38] (0) ALGprojectionpath 138 <-  |
:       : 131 92 53 28                                                                                                                                                                                 :
|    46 | X_34=[6001215]:bat[:lng] := sql.bind(X_8=0:int, "sys":str, "lineitem":str, "l_discount":str, 0:int); #[39] (6001215) mvc_bind_wrap 34 <- 8 12 13 35 16                                       |
|  2985 | X_139=[30519]:bat[:lng] := algebra.projectionpath(X_131=[30519]:bat[:oid], X_92=[151331]:bat[:oid], C_53=[3241776]:bat[:oid], X_34=[6001215]:bat[:lng]); #[40] (0) ALGprojectionpath 139 <-  |
:       : 131 92 53 34                                                                                                                                                                                 :
|   107 | X_152=[30519]:bat[:lng] := batcalc.-(100:lng, X_139=[30519]:bat[:lng], nil:BAT); #[41] (0) CMDbatSUBsignal 152 <- 271 139 94                                                                 |
|   102 | X_155=[30519]:bat[:hge] := batcalc.*(X_138=[30519]:bat[:lng], X_152=[30519]:bat[:lng], nil:BAT, nil:BAT); #[42] (0) CMDbatMULenlarge 155 <- 138 152 94 94                                    |
|   297 | X_169=[11620]:bat[:hge] := aggr.subsum(X_155=[30519]:bat[:hge], X_163=[30519]:bat[:oid], C_164=[11620]:bat[:oid], true:bit, true:bit); #[43] (0) AGGRsubsum_hge 169 <- 155 163 164 170 170   |
|   147 | (C_175=[10]:bat[:oid], X_176=[10]:bat[:oid]) := algebra.firstn(X_169=[11620]:bat[:hge], 10:lng, false:bit, true:bit, false:bit); #[44] (0) ALGfirstn 175 176 <- 169 10 96 170 96             |
|     4 | C_181=[10]:bat[:oid] := algebra.firstn(X_167=[11620]:bat[:date], C_175=[10]:bat[:oid], X_176=[10]:bat[:oid], 10:lng, true:bit, false:bit, false:bit); #[45] (0) ALGfirstn 181 <- 167 175 176 |
:       :  10 170 96 96                                                                                                                                                                                :
|     3 | X_184=[10]:bat[:date] := algebra.projection(C_181=[10]:bat[:oid], X_167=[11620]:bat[:date]); #[46] (0) ALGprojection 184 <- 181 167                                                          |
|     1 | X_183=[10]:bat[:hge] := algebra.projection(C_181=[10]:bat[:oid], X_169=[11620]:bat[:hge]); #[47] (0) ALGprojection 183 <- 181 169                                                            |
|     5 | (X_190=[10]:bat[:hge], X_191=[10]:bat[:oid], X_192=[10]:bat[:oid]) := algebra.sort(X_183=[10]:bat[:hge], true:bit, true:bit, false:bit); #[48] (0) ALGsort13 190 191 192 <- 183 170 170 96   |
|     4 | (X_193=[10]:bat[:date], X_194=[10]:bat[:oid]) := algebra.sort(X_184=[10]:bat[:date], X_191=[10]:bat[:oid], X_192=[10]:bat[:oid], false:bit, false:bit, false:bit); #[49] (0) ALGsort32 193 1 |
:       : 94 <- 184 191 192 96 96 96                                                                                                                                                                   :
|     5 | X_196=[10]:bat[:lng] := algebra.projectionpath(X_194=[10]:bat[:oid], C_181=[10]:bat[:oid], C_164=[11620]:bat[:oid], X_137=[30519]:bat[:lng]); #[50] (0) ALGprojectionpath 196 <- 194 181 164 |
:       :  137                                                                                                                                                                                         :
|     2 | C_206=[10]:bat[:oid] := algebra.subslice(X_196=[10]:bat[:lng], 0:lng, 9:lng); #[51] (0) ALGsubslice_lng 206 <- 196 173 274                                                                   |
|     4 | X_210=[10]:bat[:int] := algebra.projectionpath(C_206=[10]:bat[:oid], X_194=[10]:bat[:oid], C_181=[10]:bat[:oid], C_164=[11620]:bat[:oid], X_143=[30519]:bat[:int]); #[52] (0) ALGprojectionp |
:       : ath 210 <- 206 194 181 164 143                                                                                                                                                               :
|     3 | X_207=[10]:bat[:lng] := algebra.projection(C_206=[10]:bat[:oid], X_196=[10]:bat[:lng]); #[53] (0) ALGprojection 207 <- 206 196                                                               |
|     3 | X_208=[10]:bat[:hge] := algebra.projectionpath(C_206=[10]:bat[:oid], X_194=[10]:bat[:oid], X_183=[10]:bat[:hge]); #[54] (0) ALGprojectionpath 208 <- 206 194 183                             |
|     2 | X_209=[10]:bat[:date] := algebra.projectionpath(C_206=[10]:bat[:oid], X_194=[10]:bat[:oid], X_184=[10]:bat[:date]); #[55] (0) ALGprojectionpath 209 <- 206 194 184                           |
|    41 | sql.resultSet(X_212=[4]:bat[:str], X_213=[4]:bat[:str], X_214=[4]:bat[:str], X_215=[4]:bat[:int], X_216=[4]:bat[:int], X_207=[10]:bat[:lng], X_208=[10]:bat[:hge], X_209=[10]:bat[:date], X_ |
:       : 210=[10]:bat[:int]); #[56] (0) mvc_table_result_wrap 211 <- 212 213 214 215 216 207 208 209 210                                                                                              :
+-------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
56 tuples
