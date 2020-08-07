operation successful
+-----------------+-------------+
| o_orderpriority | order_count |
+=================+=============+
| 1-URGENT        |       10594 |
| 2-HIGH          |       10476 |
| 3-MEDIUM        |       10410 |
| 4-NOT SPECIFIED |       10556 |
| 5-LOW           |       10487 |
+-----------------+-------------+
5 tuples
+-------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| usec  | statement                                                                                                                                                                                    |
+=======+==============================================================================================================================================================================================+
|     2 | X_6=0@0:void := querylog.define("trace select\n o_orderpriority,\n count(*) as order_count\nfrom\n orders\nwhere\n o_orderdate >= date \\'1993-07-01\\'\n and o_orderdate < date \\'1993-07- |
:       : 01\\' + interval \\'3\\' month\n and exists (\n select\n *\n from\n lineitem\n where\n l_orderkey = o_orderkey\n and l_commitdate < l_receiptdate\n )\ngroup by\n o_orderpriority\norder by\ :
:       : n o_orderpriority;":str, "default_pipe":str, 66:int); #[1] (0) QLOGdefineNaive 6 <- 7 8 113                                                                                                  :
|    10 | X_99=[2]:bat[:str] := bat.pack("sys.orders":str, "sys.":str); #[3] (0) MATpackValues 99 <- 104 109                                                                                           |
|     1 | X_9=0:int := sql.mvc(); #[8] (0) SQLmvc 9                                                                                                                                                    |
|     3 | X_22=[1500000]:bat[:date] := sql.bind(X_9=0:int, "sys":str, "orders":str, "o_orderdate":str, 0:int); #[9] (1500000) mvc_bind_wrap 22 <- 9 11 12 14 15                                        |
|    18 | X_102=[2]:bat[:int] := bat.pack(15:int, 64:int); #[6] (0) MATpackValues 102 <- 107 112                                                                                                       |
|    25 | X_103=[2]:bat[:int] := bat.pack(0:int, 0:int); #[7] (0) MATpackValues 103 <- 15 15                                                                                                           |
|     5 | X_100=[2]:bat[:str] := bat.pack("o_orderpriority":str, "order_count":str); #[4] (0) MATpackValues 100 <- 28 110                                                                              |
|    13 | X_101=[2]:bat[:str] := bat.pack("char":str, "bigint":str); #[5] (0) MATpackValues 101 <- 106 111                                                                                             |
|     2 | X_27=[1500000]:bat[:str] := sql.bind(X_9=0:int, "sys":str, "orders":str, "o_orderpriority":str, 0:int); #[12] (1500000) mvc_bind_wrap 27 <- 9 11 12 28 15                                    |
|     7 | C_10=[1500000]:bat[:oid] := sql.tid(X_9=0:int, "sys":str, "orders":str); #[10] (1500000) SQLtid 10 <- 9 11 12                                                                                |
|    40 | (X_213=[0]:bat[:oid], X_214=[0]:bat[:oid]) := sql.bind_idxbat(X_9=0:int, "sys":str, "lineitem":str, "lineitem_fk1":str, 2:int, 3:int, 4:int); #[51] (0) mvc_bind_idxbat_wrap 213 214 <- 9 11 |
:       :  45 64 20 5 154                                                                                                                                                                              :
|     3 | C_161=[1500306]:bat[:oid] := sql.tid(X_9=0:int, "sys":str, "lineitem":str, 3:int, 4:int); #[48] (0) SQLtid 161 <- 9 11 45 5 154                                                              |
|    26 | X_194=[1500306]:bat[:date] := sql.bind(X_9=0:int, "sys":str, "lineitem":str, "l_receiptdate":str, 0:int, 3:int, 4:int); #[46] (0) mvc_bind_wrap 194 <- 9 11 45 58 15 5 154                   |
|    97 | X_206=[1500306]:bat[:oid] := sql.bind_idxbat(X_9=0:int, "sys":str, "lineitem":str, "lineitem_fk1":str, 0:int, 3:int, 4:int); #[50] (0) mvc_bind_idxbat_wrap 206 <- 9 11 45 64 15 5 154       |
|    32 | X_177=[1500306]:bat[:date] := sql.bind(X_9=0:int, "sys":str, "lineitem":str, "l_commitdate":str, 0:int, 3:int, 4:int); #[45] (0) mvc_bind_wrap 177 <- 9 11 45 47 15 5 154                    |
|    21 | X_205=[1500303]:bat[:oid] := sql.bind_idxbat(X_9=0:int, "sys":str, "lineitem":str, "lineitem_fk1":str, 0:int, 2:int, 4:int); #[40] (0) mvc_bind_idxbat_wrap 205 <- 9 11 45 64 15 20 154      |
|     8 | C_159=[1500303]:bat[:oid] := sql.tid(X_9=0:int, "sys":str, "lineitem":str, 2:int, 4:int); #[38] (0) SQLtid 159 <- 9 11 45 20 154                                                             |
|    48 | (X_211=[0]:bat[:oid], X_212=[0]:bat[:oid]) := sql.bind_idxbat(X_9=0:int, "sys":str, "lineitem":str, "lineitem_fk1":str, 2:int, 2:int, 4:int); #[41] (0) mvc_bind_idxbat_wrap 211 212 <- 9 11 |
:       :  45 64 20 20 154                                                                                                                                                                             :
|     6 | X_192=[1500303]:bat[:date] := sql.bind(X_9=0:int, "sys":str, "lineitem":str, "l_receiptdate":str, 0:int, 2:int, 4:int); #[36] (0) mvc_bind_wrap 192 <- 9 11 45 58 15 20 154                  |
|     6 | X_176=[1500303]:bat[:date] := sql.bind(X_9=0:int, "sys":str, "lineitem":str, "l_commitdate":str, 0:int, 2:int, 4:int); #[35] (0) mvc_bind_wrap 176 <- 9 11 45 47 15 20 154                   |
|     8 | (X_209=[0]:bat[:oid], X_210=[0]:bat[:oid]) := sql.bind_idxbat(X_9=0:int, "sys":str, "lineitem":str, "lineitem_fk1":str, 2:int, 1:int, 4:int); #[31] (0) mvc_bind_idxbat_wrap 209 210 <- 9 11 |
:       :  45 64 20 17 154                                                                                                                                                                             :
|     3 | C_157=[1500303]:bat[:oid] := sql.tid(X_9=0:int, "sys":str, "lineitem":str, 1:int, 4:int); #[28] (0) SQLtid 157 <- 9 11 45 17 154                                                             |
|    11 | X_204=[1500303]:bat[:oid] := sql.bind_idxbat(X_9=0:int, "sys":str, "lineitem":str, "lineitem_fk1":str, 0:int, 1:int, 4:int); #[30] (0) mvc_bind_idxbat_wrap 204 <- 9 11 45 64 15 17 154      |
|     8 | X_190=[1500303]:bat[:date] := sql.bind(X_9=0:int, "sys":str, "lineitem":str, "l_receiptdate":str, 0:int, 1:int, 4:int); #[26] (0) mvc_bind_wrap 190 <- 9 11 45 58 15 17 154                  |
|     8 | X_175=[1500303]:bat[:date] := sql.bind(X_9=0:int, "sys":str, "lineitem":str, "l_commitdate":str, 0:int, 1:int, 4:int); #[25] (0) mvc_bind_wrap 175 <- 9 11 45 47 15 17 154                   |
|    11 | (X_207=[0]:bat[:oid], X_208=[0]:bat[:oid]) := sql.bind_idxbat(X_9=0:int, "sys":str, "lineitem":str, "lineitem_fk1":str, 2:int, 0:int, 4:int); #[21] (0) mvc_bind_idxbat_wrap 207 208 <- 9 11 |
:       :  45 64 20 15 154                                                                                                                                                                             :
|     3 | C_155=[1500303]:bat[:oid] := sql.tid(X_9=0:int, "sys":str, "lineitem":str, 0:int, 4:int); #[18] (0) SQLtid 155 <- 9 11 45 15 154                                                             |
|    38 | X_203=[1500303]:bat[:oid] := sql.bind_idxbat(X_9=0:int, "sys":str, "lineitem":str, "lineitem_fk1":str, 0:int, 0:int, 4:int); #[20] (0) mvc_bind_idxbat_wrap 203 <- 9 11 45 64 15 15 154      |
|     2 | X_216=[1500303]:bat[:oid] := sql.delta(X_203=[1500303]:bat[:oid], X_207=[0]:bat[:oid], X_208=[0]:bat[:oid]); #[22] (0) DELTAbat2 216 <- 203 207 208                                          |
|     6 | X_188=[1500303]:bat[:date] := sql.bind(X_9=0:int, "sys":str, "lineitem":str, "l_receiptdate":str, 0:int, 0:int, 4:int); #[16] (0) mvc_bind_wrap 188 <- 9 11 45 58 15 15 154                  |
|     3 | X_218=[1500303]:bat[:oid] := sql.delta(X_205=[1500303]:bat[:oid], X_211=[0]:bat[:oid], X_212=[0]:bat[:oid]); #[42] (0) DELTAbat2 218 <- 205 211 212                                          |
|  3413 | C_38=[57218]:bat[:oid] := algebra.select(X_22=[1500000]:bat[:date], C_10=[1500000]:bat[:oid], "1993-07-01":date, "1993-10-01":date, true:bit, false:bit, false:bit, true:bit); #[11] (1) ALG |
:       : select2nil 38 <- 22 10 2 148 39 40 40 39                                                                                                                                                     :
|   285 | X_43=[57218]:bat[:str] := algebra.projection(C_38=[57218]:bat[:oid], X_27=[1500000]:bat[:str]); #[13] (0) ALGprojection 43 <- 38 27                                                          |
|     5 | C_84=[57218]:bat[:oid] := bat.mirror(X_43=[57218]:bat[:str]); #[14] (0) BKCmirror 84 <- 43                                                                                                   |
|     2 | X_217=[1500303]:bat[:oid] := sql.delta(X_204=[1500303]:bat[:oid], X_209=[0]:bat[:oid], X_210=[0]:bat[:oid]); #[32] (0) DELTAbat2 217 <- 204 209 210                                          |
|  4992 | X_222=[1500303]:bat[:bit] := batcalc.<(X_176=[1500303]:bat[:date], X_192=[1500303]:bat[:date]); #[37] (0) CMDbatLT 222 <- 176 192                                                            |
|  5266 | X_223=[1500306]:bat[:bit] := batcalc.<(X_177=[1500306]:bat[:date], X_194=[1500306]:bat[:date]); #[47] (0) CMDbatLT 223 <- 177 194                                                            |
|  4448 | X_221=[1500303]:bat[:bit] := batcalc.<(X_175=[1500303]:bat[:date], X_190=[1500303]:bat[:date]); #[27] (0) CMDbatLT 221 <- 175 190                                                            |
|   590 | X_174=[1500303]:bat[:date] := sql.bind(X_9=0:int, "sys":str, "lineitem":str, "l_commitdate":str, 0:int, 0:int, 4:int); #[15] (0) mvc_bind_wrap 174 <- 9 11 45 47 15 15 154                   |
|  8713 | C_226=[948203]:bat[:oid] := algebra.select(X_222=[1500303]:bat[:bit], C_159=[1500303]:bat[:oid], true:bit, true:bit, true:bit, true:bit, false:bit); #[39] (0) ALGselect2 226 <- 222 159 39  |
:       : 39 39 39 40                                                                                                                                                                                  :
|  8635 | C_227=[948712]:bat[:oid] := algebra.select(X_223=[1500306]:bat[:bit], C_161=[1500306]:bat[:oid], true:bit, true:bit, true:bit, true:bit, false:bit); #[49] (0) ALGselect2 227 <- 223 161 39  |
:       : 39 39 39 40                                                                                                                                                                                  :
|    10 | X_65=[0]:bat[:oid] := sql.bind_idxbat(X_9=0:int, "sys":str, "lineitem":str, "lineitem_fk1":str, 1:int); #[52] (0) mvc_bind_idxbat_wrap 65 <- 9 11 45 64 17                                   |
|     2 | X_219=[1500306]:bat[:oid] := sql.delta(X_206=[1500306]:bat[:oid], X_213=[0]:bat[:oid], X_214=[0]:bat[:oid], X_65=[0]:bat[:oid]); #[53] (0) DELTAbat 219 <- 206 213 214 65                    |
|  5202 | X_220=[1500303]:bat[:bit] := batcalc.<(X_174=[1500303]:bat[:date], X_188=[1500303]:bat[:date]); #[17] (0) CMDbatLT 220 <- 174 188                                                            |
|  6397 | X_238=[948203]:bat[:oid] := algebra.projection(C_226=[948203]:bat[:oid], X_218=[1500303]:bat[:oid]); #[43] (0) ALGprojection 238 <- 226 218                                                  |
|  6493 | X_239=[948712]:bat[:oid] := algebra.projection(C_227=[948712]:bat[:oid], X_219=[1500306]:bat[:oid]); #[54] (0) ALGprojection 239 <- 227 219                                                  |
| 16751 | C_225=[947455]:bat[:oid] := algebra.select(X_221=[1500303]:bat[:bit], C_157=[1500303]:bat[:oid], true:bit, true:bit, true:bit, true:bit, false:bit); #[29] (0) ALGselect2 225 <- 221 157 39  |
:       : 39 39 39 40                                                                                                                                                                                  :
|  8920 | C_224=[948926]:bat[:oid] := algebra.select(X_220=[1500303]:bat[:bit], C_155=[1500303]:bat[:oid], true:bit, true:bit, true:bit, true:bit, false:bit); #[19] (0) ALGselect2 224 <- 220 155 39  |
:       : 39 39 39 40                                                                                                                                                                                  :
|  9637 | X_244=[36594]:bat[:oid] := algebra.join(C_38=[57218]:bat[:oid], X_238=[948203]:bat[:oid], nil:BAT, nil:BAT, false:bit, nil:lng); #[44] (0) ALGjoin1 244 <- 38 238 81 81 40 83                |
|  9395 | X_246=[36359]:bat[:oid] := algebra.join(C_38=[57218]:bat[:oid], X_239=[948712]:bat[:oid], nil:BAT, nil:BAT, false:bit, nil:lng); #[55] (0) ALGjoin1 246 <- 38 239 81 81 40 83                |
|  4976 | X_237=[947455]:bat[:oid] := algebra.projection(C_225=[947455]:bat[:oid], X_217=[1500303]:bat[:oid]); #[33] (0) ALGprojection 237 <- 225 217                                                  |
|  5104 | X_236=[948926]:bat[:oid] := algebra.projection(C_224=[948926]:bat[:oid], X_216=[1500303]:bat[:oid]); #[23] (0) ALGprojection 236 <- 224 216                                                  |
|  7123 | X_242=[36401]:bat[:oid] := algebra.join(C_38=[57218]:bat[:oid], X_237=[947455]:bat[:oid], nil:BAT, nil:BAT, false:bit, nil:lng); #[34] (0) ALGjoin1 242 <- 38 237 81 81 40 83                |
|  5781 | X_240=[35515]:bat[:oid] := algebra.join(C_38=[57218]:bat[:oid], X_236=[948926]:bat[:oid], nil:BAT, nil:BAT, false:bit, nil:lng); #[24] (0) ALGjoin1 240 <- 38 236 81 81 40 83                |
|     5 | language.pass(C_38=[57218]:bat[:oid]); #[68] (0) MALpass 264 <- 38                                                                                                                           |
|    52 | X_256=[35515]:bat[:oid] := mat.packIncrement(X_240=[35515]:bat[:oid], 4:int); #[56] (0) MATpackIncrement 256 <- 240 257                                                                      |
|    42 | X_258=[71916]:bat[:oid] := mat.packIncrement(X_256=[71916]:bat[:oid], X_242=[36401]:bat[:oid]); #[57] (0) MATpackIncrement 258 <- 256 242                                                    |
|    44 | X_259=[108510]:bat[:oid] := mat.packIncrement(X_258=[108510]:bat[:oid], X_244=[36594]:bat[:oid]); #[58] (0) MATpackIncrement 259 <- 258 244                                                  |
|    44 | X_79=[144869]:bat[:oid] := mat.packIncrement(X_259=[144869]:bat[:oid], X_246=[36359]:bat[:oid]); #[59] (0) MATpackIncrement 79 <- 259 246                                                    |
|  9762 | C_85=[52523]:bat[:oid] := algebra.intersect(C_84=[57218]:bat[:oid], X_79=[144869]:bat[:oid], nil:BAT, nil:BAT, false:bit, false:bit, nil:lng); #[60] (0) ALGintersect 85 <- 84 79 81 81 40 4 |
:       : 0 83                                                                                                                                                                                         :
|    78 | X_86=[52523]:bat[:str] := algebra.projection(C_85=[52523]:bat[:oid], X_43=[57218]:bat[:str]); #[61] (0) ALGprojection 86 <- 85 43                                                            |
|     3 | language.pass(X_43=[57218]:bat[:str]); #[69] (0) MALpass 265 <- 43                                                                                                                           |
|   460 | (X_88=[52523]:bat[:oid], C_89=[5]:bat[:oid]) := group.groupdone(X_86=[52523]:bat[:str]); #[62] (0) GRPgroup3 88 89 <- 86                                                                     |
|     7 | X_91=[5]:bat[:str] := algebra.projection(C_89=[5]:bat[:oid], X_86=[52523]:bat[:str]); #[63] (0) ALGprojection 91 <- 89 86                                                                    |
|     2 | language.pass(X_86=[52523]:bat[:str]); #[70] (0) MALpass 266 <- 86                                                                                                                           |
|    17 | (X_93=[5]:bat[:str], X_94=[5]:bat[:oid]) := algebra.sort(X_91=[5]:bat[:str], false:bit, false:bit, false:bit); #[65] (0) ALGsort12 93 94 <- 91 40 40 40                                      |
|     5 | X_96=[5]:bat[:str] := algebra.projection(X_94=[5]:bat[:oid], X_91=[5]:bat[:str]); #[66] (0) ALGprojection 96 <- 94 91                                                                        |
|     3 | language.pass(X_91=[5]:bat[:str]); #[73] (0) MALpass 269 <- 91                                                                                                                               |
|   150 | X_92=[5]:bat[:lng] := aggr.subcount(X_88=[52523]:bat[:oid], X_88=[52523]:bat[:oid], C_89=[5]:bat[:oid], false:bit); #[64] (0) AGGRsubcount 92 <- 88 88 89 40                                 |
|     1 | language.pass(C_89=[5]:bat[:oid]); #[72] (0) MALpass 268 <- 89                                                                                                                               |
|     8 | X_97=[5]:bat[:lng] := algebra.projection(X_94=[5]:bat[:oid], X_92=[5]:bat[:lng]); #[67] (0) ALGprojection 97 <- 94 92                                                                        |
|     3 | language.pass(X_88=[52523]:bat[:oid]); #[71] (0) MALpass 267 <- 88                                                                                                                           |
|     1 | language.pass(X_94=[5]:bat[:oid]); #[74] (0) MALpass 270 <- 94                                                                                                                               |
| 51434 | barrier X_262=false:bit := language.dataflow(); #[2] (0) MALstartDataflow 262                                                                                                                |
|    26 | sql.resultSet(X_99=[2]:bat[:str], X_100=[2]:bat[:str], X_101=[2]:bat[:str], X_102=[2]:bat[:int], X_103=[2]:bat[:int], X_96=[5]:bat[:str], X_97=[5]:bat[:lng]); #[76] (0) mvc_table_result_wr |
:       : ap 98 <- 99 100 101 102 103 96 97                                                                                                                                                            :
+-------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
75 tuples
