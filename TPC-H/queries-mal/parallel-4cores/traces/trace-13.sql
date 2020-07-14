operation successful
+---------+----------+
| c_count | custdist |
+=========+==========+
|       0 |    50005 |
|       9 |     6641 |
|      10 |     6532 |
|      11 |     6014 |
|       8 |     5937 |
|      12 |     5639 |
|      13 |     5024 |
|      19 |     4793 |
|       7 |     4687 |
|      17 |     4587 |
|      18 |     4529 |
|      20 |     4516 |
|      15 |     4505 |
|      14 |     4446 |
|      16 |     4273 |
|      21 |     4190 |
|      22 |     3623 |
|       6 |     3265 |
|      23 |     3225 |
|      24 |     2742 |
|      25 |     2086 |
|       5 |     1948 |
|      26 |     1612 |
|      27 |     1179 |
|       4 |     1007 |
|      28 |      893 |
|      29 |      593 |
|       3 |      415 |
|      30 |      376 |
|      31 |      226 |
|      32 |      148 |
|       2 |      134 |
|      33 |       75 |
|      34 |       50 |
|      35 |       37 |
|       1 |       17 |
|      36 |       14 |
|      38 |        5 |
|      37 |        5 |
|      40 |        4 |
|      41 |        2 |
|      39 |        1 |
+---------+----------+
42 tuples
+--------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| usec   | statement                                                                                                                                                                                   |
+========+=============================================================================================================================================================================================+
|      3 | X_2=0@0:void := querylog.define("trace select c_count,\n count(*) as custdist\nfrom ( select c_custkey,\n count(o_orderkey)\n from customer left outer join orders on\n c_custkey = o_custk |
:        : ey\n and o_comment not like \\'%special%requests%\\'\n group by c_custkey\n ) as c_orders (c_custkey, c_count)\ngroup by c_count\norder by custdist desc, c_count desc;":str, "default_pipe :
:        : ":str, 84:int); #[1] (0) QLOGdefineNaive 2 <- 3 4 129                                                                                                                                       :
|     24 | X_67=[0]:bat[:int] := bat.new(nil:int); #[3] (1) CMDBATnew 67 <- 68                                                                                                                         |
|      5 | X_121=[2]:bat[:int] := bat.pack(0:int, 0:int); #[71] (0) MATpackValues 121 <- 11 11                                                                                                         |
|     19 | X_120=[2]:bat[:int] := bat.pack(64:int, 64:int); #[70] (0) MATpackValues 120 <- 125 125                                                                                                     |
|      5 | X_119=[2]:bat[:str] := bat.pack("bigint":str, "bigint":str); #[69] (0) MATpackValues 119 <- 124 124                                                                                         |
|     18 | X_118=[2]:bat[:str] := bat.pack("c_count":str, "custdist":str); #[68] (0) MATpackValues 118 <- 123 128                                                                                      |
|      3 | X_79=[0]:bat[:lng] := bat.new(nil:lng); #[55] (1) CMDBATnew 79 <- 63                                                                                                                        |
|      1 | X_5=0:int := sql.mvc(); #[4] (0) SQLmvc 5                                                                                                                                                   |
|     13 | X_117=[2]:bat[:str] := bat.pack(".c_orders":str, ".":str); #[67] (0) MATpackValues 117 <- 122 127                                                                                           |
|      4 | C_6=[150000]:bat[:oid] := sql.tid(X_5=0:int, "sys":str, "customer":str); #[5] (0) SQLtid 6 <- 5 7 8                                                                                         |
|      3 | C_170=[375000]:bat[:oid] := sql.tid(X_5=0:int, "sys":str, "orders":str, 0:int, 4:int); #[7] (0) SQLtid 170 <- 5 7 25 11 169                                                                 |
|      5 | X_190=[375000]:bat[:lng] := sql.bind(X_5=0:int, "sys":str, "orders":str, "o_orderkey":str, 0:int, 1:int, 4:int); #[50] (0) mvc_bind_wrap 190 <- 5 7 25 27 11 13 169                         |
|     17 | X_191=[375000]:bat[:lng] := sql.bind(X_5=0:int, "sys":str, "orders":str, "o_orderkey":str, 0:int, 2:int, 4:int); #[49] (0) mvc_bind_wrap 191 <- 5 7 25 27 11 16 169                         |
|     27 | X_218=[375000]:bat[:oid] := sql.bind_idxbat(X_5=0:int, "sys":str, "orders":str, "orders_fk1":str, 0:int, 0:int, 4:int); #[9] (0) mvc_bind_idxbat_wrap 218 <- 5 7 25 44 11 11 169            |
|    112 | X_203=[375000]:bat[:str] := sql.bind(X_5=0:int, "sys":str, "orders":str, "o_comment":str, 0:int, 0:int, 4:int); #[6] (0) mvc_bind_wrap 203 <- 5 7 25 38 11 11 169                           |
|      3 | X_192=[375000]:bat[:lng] := sql.bind(X_5=0:int, "sys":str, "orders":str, "o_orderkey":str, 0:int, 3:int, 4:int); #[48] (0) mvc_bind_wrap 192 <- 5 7 25 27 11 175 169                        |
|      7 | (X_222=[0]:bat[:oid], X_223=[0]:bat[:oid]) := sql.bind_idxbat(X_5=0:int, "sys":str, "orders":str, "orders_fk1":str, 2:int, 0:int, 4:int); #[10] (0) mvc_bind_idxbat_wrap 222 223 <- 5 7 25  |
:        : 44 16 11 169                                                                                                                                                                                :
|      4 | X_18=[150000]:bat[:int] := sql.bind(X_5=0:int, "sys":str, "customer":str, "c_custkey":str, 0:int); #[43] (0) mvc_bind_wrap 18 <- 5 7 8 10 11                                                |
|      3 | X_205=[375000]:bat[:str] := sql.bind(X_5=0:int, "sys":str, "orders":str, "o_comment":str, 0:int, 1:int, 4:int); #[14] (0) mvc_bind_wrap 205 <- 5 7 25 38 11 13 169                          |
|      4 | X_54=[150000]:bat[:int] := algebra.projection(C_6=[150000]:bat[:oid], X_18=[150000]:bat[:int]); #[44] (0) ALGprojection 54 <- 6 18                                                          |
|      2 | C_64=[150000]:bat[:oid] := bat.mirror(X_54=[150000]:bat[:int]); #[46] (0) BKCmirror 64 <- 54                                                                                                |
|      2 | C_172=[375000]:bat[:oid] := sql.tid(X_5=0:int, "sys":str, "orders":str, 1:int, 4:int); #[15] (0) SQLtid 172 <- 5 7 25 13 169                                                                |
|      3 | X_45=[0]:bat[:oid] := sql.bind_idxbat(X_5=0:int, "sys":str, "orders":str, "orders_fk1":str, 1:int); #[35] (0) mvc_bind_idxbat_wrap 45 <- 5 7 25 44 13                                       |
|      4 | X_219=[375000]:bat[:oid] := sql.bind_idxbat(X_5=0:int, "sys":str, "orders":str, "orders_fk1":str, 0:int, 1:int, 4:int); #[17] (0) mvc_bind_idxbat_wrap 219 <- 5 7 25 44 11 13 169           |
|     11 | (X_228=[0]:bat[:oid], X_229=[0]:bat[:oid]) := sql.bind_idxbat(X_5=0:int, "sys":str, "orders":str, "orders_fk1":str, 2:int, 3:int, 4:int); #[34] (0) mvc_bind_idxbat_wrap 228 229 <- 5 7 25  |
:        : 44 16 175 169                                                                                                                                                                               :
|      5 | (X_224=[0]:bat[:oid], X_225=[0]:bat[:oid]) := sql.bind_idxbat(X_5=0:int, "sys":str, "orders":str, "orders_fk1":str, 2:int, 1:int, 4:int); #[18] (0) mvc_bind_idxbat_wrap 224 225 <- 5 7 25  |
:        : 44 16 13 169                                                                                                                                                                                :
|      3 | X_221=[375000]:bat[:oid] := sql.bind_idxbat(X_5=0:int, "sys":str, "orders":str, "orders_fk1":str, 0:int, 3:int, 4:int); #[33] (0) mvc_bind_idxbat_wrap 221 <- 5 7 25 44 11 175 169          |
|      3 | X_207=[375000]:bat[:str] := sql.bind(X_5=0:int, "sys":str, "orders":str, "o_comment":str, 0:int, 2:int, 4:int); #[22] (0) mvc_bind_wrap 207 <- 5 7 25 38 11 16 169                          |
|      5 | C_176=[375000]:bat[:oid] := sql.tid(X_5=0:int, "sys":str, "orders":str, 3:int, 4:int); #[31] (0) SQLtid 176 <- 5 7 25 175 169                                                               |
|      3 | C_174=[375000]:bat[:oid] := sql.tid(X_5=0:int, "sys":str, "orders":str, 2:int, 4:int); #[23] (0) SQLtid 174 <- 5 7 25 16 169                                                                |
|     10 | X_209=[375000]:bat[:str] := sql.bind(X_5=0:int, "sys":str, "orders":str, "o_comment":str, 0:int, 3:int, 4:int); #[30] (0) mvc_bind_wrap 209 <- 5 7 25 38 11 175 169                         |
|     18 | X_220=[375000]:bat[:oid] := sql.bind_idxbat(X_5=0:int, "sys":str, "orders":str, "orders_fk1":str, 0:int, 2:int, 4:int); #[25] (0) mvc_bind_idxbat_wrap 220 <- 5 7 25 44 11 16 169           |
|      7 | (X_226=[0]:bat[:oid], X_227=[0]:bat[:oid]) := sql.bind_idxbat(X_5=0:int, "sys":str, "orders":str, "orders_fk1":str, 2:int, 2:int, 4:int); #[26] (0) mvc_bind_idxbat_wrap 226 227 <- 5 7 25  |
:        : 44 16 16 169                                                                                                                                                                                :
|      4 | X_233=[375000]:bat[:oid] := sql.delta(X_220=[375000]:bat[:oid], X_226=[0]:bat[:oid], X_227=[0]:bat[:oid]); #[27] (0) DELTAbat2 233 <- 220 226 227                                           |
|      3 | X_231=[375000]:bat[:oid] := sql.delta(X_218=[375000]:bat[:oid], X_222=[0]:bat[:oid], X_223=[0]:bat[:oid]); #[11] (0) DELTAbat2 231 <- 218 222 223                                           |
|      9 | X_189=[375000]:bat[:lng] := sql.bind(X_5=0:int, "sys":str, "orders":str, "o_orderkey":str, 0:int, 0:int, 4:int); #[51] (0) mvc_bind_wrap 189 <- 5 7 25 27 11 11 169                         |
|      1 | X_234=[375000]:bat[:oid] := sql.delta(X_221=[375000]:bat[:oid], X_228=[0]:bat[:oid], X_229=[0]:bat[:oid], X_45=[0]:bat[:oid]); #[36] (0) DELTAbat 234 <- 221 228 229 45                     |
|      1 | X_232=[375000]:bat[:oid] := sql.delta(X_219=[375000]:bat[:oid], X_224=[0]:bat[:oid], X_225=[0]:bat[:oid]); #[19] (0) DELTAbat2 232 <- 219 224 225                                           |
|  16400 | C_238=[371048]:bat[:oid] := algebra.likeselect(X_209=[375000]:bat[:str], C_176=[375000]:bat[:oid], "%special%requests%":str, "":str, true:bit); #[32] (0) PCRElikeselect3 238 <- 209 176 1  |
:        : 51 53                                                                                                                                                                                       :
|   1076 | X_250=[371048]:bat[:oid] := algebra.projection(C_238=[371048]:bat[:oid], X_234=[375000]:bat[:oid]); #[37] (0) ALGprojection 250 <- 238 234                                                  |
|   1592 | (X_257=[371048]:bat[:oid], X_258=[371048]:bat[:oid]) := algebra.join(C_6=[150000]:bat[:oid], X_250=[371048]:bat[:oid], nil:BAT, nil:BAT, false:bit, nil:lng); #[38] (0) ALGjoin 257 258 <-  |
:        : 6 250 60 60 62 63                                                                                                                                                                           :
|  16832 | C_236=[371016]:bat[:oid] := algebra.likeselect(X_205=[375000]:bat[:str], C_172=[375000]:bat[:oid], "%special%requests%":str, "":str, true:bit); #[16] (0) PCRElikeselect3 236 <- 205 172 1  |
:        : 51 53                                                                                                                                                                                       :
|   1110 | X_248=[371016]:bat[:oid] := algebra.projection(C_236=[371016]:bat[:oid], X_232=[375000]:bat[:oid]); #[20] (0) ALGprojection 248 <- 236 232                                                  |
|   1901 | (X_253=[371016]:bat[:oid], X_254=[371016]:bat[:oid]) := algebra.join(C_6=[150000]:bat[:oid], X_248=[371016]:bat[:oid], nil:BAT, nil:BAT, false:bit, nil:lng); #[21] (0) ALGjoin 253 254 <-  |
:        : 6 248 60 60 62 63                                                                                                                                                                           :
|   9772 | X_262=[371048]:bat[:lng] := algebra.projectionpath(X_258=[371048]:bat[:oid], C_238=[371048]:bat[:oid], X_192=[375000]:bat[:lng]); #[59] (0) ALGprojectionpath 262 <- 258 238 192            |
|      5 | language.pass(C_238=[371048]:bat[:oid]); #[87] (0) MALpass 297 <- 238                                                                                                                       |
|  29732 | C_237=[370935]:bat[:oid] := algebra.likeselect(X_207=[375000]:bat[:str], C_174=[375000]:bat[:oid], "%special%requests%":str, "":str, true:bit); #[24] (0) PCRElikeselect3 237 <- 207 174 1  |
:        : 51 53                                                                                                                                                                                       :
|  10795 | X_260=[371016]:bat[:lng] := algebra.projectionpath(X_254=[371016]:bat[:oid], C_236=[371016]:bat[:oid], X_190=[375000]:bat[:lng]); #[57] (0) ALGprojectionpath 260 <- 254 236 190            |
|     10 | language.pass(C_236=[371016]:bat[:oid]); #[85] (0) MALpass 295 <- 236                                                                                                                       |
|  36282 | C_235=[370919]:bat[:oid] := algebra.likeselect(X_203=[375000]:bat[:str], C_170=[375000]:bat[:oid], "%special%requests%":str, "":str, true:bit); #[8] (0) PCRElikeselect3 235 <- 203 170 1 5 |
:        : 1 53                                                                                                                                                                                        :
|   1553 | X_249=[370935]:bat[:oid] := algebra.projection(C_237=[370935]:bat[:oid], X_233=[375000]:bat[:oid]); #[28] (0) ALGprojection 249 <- 237 233                                                  |
|   1971 | (X_255=[370935]:bat[:oid], X_256=[370935]:bat[:oid]) := algebra.join(C_6=[150000]:bat[:oid], X_249=[370935]:bat[:oid], nil:BAT, nil:BAT, false:bit, nil:lng); #[29] (0) ALGjoin 255 256 <-  |
:        : 6 249 60 60 62 63                                                                                                                                                                           :
|    911 | X_247=[370919]:bat[:oid] := algebra.projection(C_235=[370919]:bat[:oid], X_231=[375000]:bat[:oid]); #[12] (0) ALGprojection 247 <- 235 231                                                  |
|   1530 | (X_251=[370919]:bat[:oid], X_252=[370919]:bat[:oid]) := algebra.join(C_6=[150000]:bat[:oid], X_247=[370919]:bat[:oid], nil:BAT, nil:BAT, false:bit, nil:lng); #[13] (0) ALGjoin 251 252 <-  |
:        : 6 247 60 60 62 63                                                                                                                                                                           :
|    579 | X_279=[370919]:bat[:oid] := mat.packIncrement(X_251=[370919]:bat[:oid], 4:int); #[39] (0) MATpackIncrement 279 <- 251 280                                                                   |
|    583 | X_281=[741935]:bat[:oid] := mat.packIncrement(X_279=[741935]:bat[:oid], X_253=[371016]:bat[:oid]); #[40] (0) MATpackIncrement 281 <- 279 253                                                |
|      3 | language.pass(C_6=[150000]:bat[:oid]); #[81] (0) MALpass 291 <- 6                                                                                                                           |
|    619 | X_282=[1112870]:bat[:oid] := mat.packIncrement(X_281=[1112870]:bat[:oid], X_255=[370935]:bat[:oid]); #[41] (0) MATpackIncrement 282 <- 281 255                                              |
|    561 | X_58=[1483918]:bat[:oid] := mat.packIncrement(X_282=[1483918]:bat[:oid], X_257=[371048]:bat[:oid]); #[42] (0) MATpackIncrement 58 <- 282 257                                                |
|   9807 | X_261=[370935]:bat[:lng] := algebra.projectionpath(X_256=[370935]:bat[:oid], C_237=[370935]:bat[:oid], X_191=[375000]:bat[:lng]); #[58] (0) ALGprojectionpath 261 <- 256 237 191            |
|      3 | language.pass(C_237=[370935]:bat[:oid]); #[86] (0) MALpass 296 <- 237                                                                                                                       |
|   9641 | X_259=[370919]:bat[:lng] := algebra.projectionpath(X_252=[370919]:bat[:oid], C_235=[370919]:bat[:oid], X_189=[375000]:bat[:lng]); #[56] (0) ALGprojectionpath 259 <- 252 235 189            |
|      4 | language.pass(C_235=[370919]:bat[:oid]); #[84] (0) MALpass 294 <- 235                                                                                                                       |
|   7890 | X_66=[1483918]:bat[:int] := algebra.projection(X_58=[1483918]:bat[:oid], X_54=[150000]:bat[:int]); #[45] (0) ALGprojection 66 <- 58 54                                                      |
|    728 | X_284=[370919]:bat[:lng] := mat.packIncrement(X_259=[370919]:bat[:lng], 4:int); #[60] (0) MATpackIncrement 284 <- 259 280                                                                   |
|    899 | X_285=[741935]:bat[:lng] := mat.packIncrement(X_284=[741935]:bat[:lng], X_260=[371016]:bat[:lng]); #[61] (0) MATpackIncrement 285 <- 284 260                                                |
|   1958 | X_69=[1483918]:bat[:int] := bat.append(X_67=[1483918]:bat[:int], X_66=[1483918]:bat[:int], true:bit); #[52] (1) BKCappend_force_wrap 69 <- 67 66 53                                         |
|   1014 | X_286=[1112870]:bat[:lng] := mat.packIncrement(X_285=[1112870]:bat[:lng], X_261=[370935]:bat[:lng]); #[62] (0) MATpackIncrement 286 <- 285 261                                              |
|    653 | X_78=[1483918]:bat[:lng] := mat.packIncrement(X_286=[1483918]:bat[:lng], X_262=[371048]:bat[:lng]); #[63] (0) MATpackIncrement 78 <- 286 262                                                |
|   2126 | X_80=[1483918]:bat[:lng] := bat.append(X_79=[1483918]:bat[:lng], X_78=[1483918]:bat[:lng], true:bit); #[64] (1) BKCappend_force_wrap 80 <- 79 78 53                                         |
|  38107 | C_65=[50005]:bat[:oid] := algebra.difference(C_64=[150000]:bat[:oid], X_58=[1483918]:bat[:oid], nil:BAT, nil:BAT, false:bit, false:bit, nil:lng); #[47] (0) ALGdifference 65 <- 64 58 60 60 |
:        :  62 62 63                                                                                                                                                                                   :
|     90 | X_82=[50005]:bat[:lng] := algebra.project(C_65=[50005]:bat[:oid], nil:lng); #[65] (0) ALGprojecttail 82 <- 65 63                                                                            |
|     72 | X_83=[1533923]:bat[:lng] := bat.append(X_80=[1533923]:bat[:lng], X_82=[50005]:bat[:lng], true:bit); #[66] (0) BKCappend_force_wrap 83 <- 80 82 53                                           |
|    226 | X_70=[50005]:bat[:int] := algebra.projection(C_65=[50005]:bat[:oid], X_54=[150000]:bat[:int]); #[53] (0) ALGprojection 70 <- 65 54                                                          |
|      1 | language.pass(X_54=[150000]:bat[:int]); #[83] (0) MALpass 293 <- 54                                                                                                                         |
|      2 | language.pass(X_58=[1483918]:bat[:oid]); #[82] (0) MALpass 292 <- 58                                                                                                                        |
|      1 | language.pass(C_65=[50005]:bat[:oid]); #[88] (0) MALpass 298 <- 65                                                                                                                          |
|     32 | X_71=[1533923]:bat[:int] := bat.append(X_69=[1533923]:bat[:int], X_70=[50005]:bat[:int], true:bit); #[54] (0) BKCappend_force_wrap 71 <- 69 70 53                                           |
|  28793 | (X_98=[1533923]:bat[:oid], C_99=[150000]:bat[:oid]) := group.groupdone(X_71=[1533923]:bat[:int]); #[72] (0) GRPgroup3 98 99 <- 71                                                           |
|   8875 | X_101=[150000]:bat[:lng] := aggr.subcount(X_83=[1533923]:bat[:lng], X_98=[1533923]:bat[:oid], C_99=[150000]:bat[:oid], true:bit); #[73] (0) AGGRsubcount 101 <- 83 98 99 53                 |
|   1076 | (X_102=[150000]:bat[:oid], C_103=[42]:bat[:oid]) := group.groupdone(X_101=[150000]:bat[:lng]); #[74] (0) GRPgroup3 102 103 <- 101                                                           |
|      9 | X_105=[42]:bat[:lng] := algebra.projection(C_103=[42]:bat[:oid], X_101=[150000]:bat[:lng]); #[75] (0) ALGprojection 105 <- 103 101                                                          |
|      2 | language.pass(X_101=[150000]:bat[:lng]); #[89] (0) MALpass 299 <- 101                                                                                                                       |
|    442 | X_106=[42]:bat[:lng] := aggr.subcount(X_102=[150000]:bat[:oid], X_102=[150000]:bat[:oid], C_103=[42]:bat[:oid], false:bit); #[76] (0) AGGRsubcount 106 <- 102 102 103 62                    |
|      2 | language.pass(C_103=[42]:bat[:oid]); #[91] (0) MALpass 301 <- 103                                                                                                                           |
|     27 | (X_108=[42]:bat[:lng], X_109=[42]:bat[:oid], X_110=[42]:bat[:oid]) := algebra.sort(X_106=[42]:bat[:lng], true:bit, true:bit, false:bit); #[77] (0) ALGsort13 108 109 110 <- 106 53 53 62    |
|      4 | language.pass(X_102=[150000]:bat[:oid]); #[90] (0) MALpass 300 <- 102                                                                                                                       |
|     49 | (X_111=[42]:bat[:lng], X_112=[42]:bat[:oid]) := algebra.sort(X_105=[42]:bat[:lng], X_109=[42]:bat[:oid], X_110=[42]:bat[:oid], true:bit, true:bit, false:bit); #[78] (0) ALGsort32 111 112  |
:        : <- 105 109 110 53 53 62                                                                                                                                                                     :
|      3 | X_114=[42]:bat[:lng] := algebra.projection(X_112=[42]:bat[:oid], X_105=[42]:bat[:lng]); #[79] (0) ALGprojection 114 <- 112 105                                                              |
|      7 | X_115=[42]:bat[:lng] := algebra.projection(X_112=[42]:bat[:oid], X_106=[42]:bat[:lng]); #[80] (0) ALGprojection 115 <- 112 106                                                              |
|      1 | language.pass(X_112=[42]:bat[:oid]); #[93] (0) MALpass 303 <- 112                                                                                                                           |
|      1 | language.pass(X_106=[42]:bat[:lng]); #[94] (0) MALpass 304 <- 106                                                                                                                           |
|      1 | language.pass(X_105=[42]:bat[:lng]); #[92] (0) MALpass 302 <- 105                                                                                                                           |
| 124811 | barrier X_289=false:bit := language.dataflow(); #[2] (0) MALstartDataflow 289                                                                                                               |
|     91 | sql.resultSet(X_117=[2]:bat[:str], X_118=[2]:bat[:str], X_119=[2]:bat[:str], X_120=[2]:bat[:int], X_121=[2]:bat[:int], X_114=[42]:bat[:lng], X_115=[42]:bat[:lng]); #[96] (0) mvc_table_res |
:        : ult_wrap 116 <- 117 118 119 120 121 114 115                                                                                                                                                 :
+--------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
95 tuples
