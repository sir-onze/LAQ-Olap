operation successful
+------------------------------------------+
| revenue                                  |
+==========================================+
|                           123141078.2283 |
+------------------------------------------+
1 tuple
+-------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| usec  | statement                                                                                                                                                                                    |
+=======+==============================================================================================================================================================================================+
|     2 | X_9=0@0:void := querylog.define("trace select\n sum(l_extendedprice * l_discount) as revenue\nfrom\n lineitem\nwhere\n l_shipdate >= date \\'1994-01-01\\'\n and l_shipdate < date \\'1994-0 |
:       : 1-01\\' + interval \\'1\\' year\n and l_discount between 0.06 - 0.01 and 0.06 + 0.01\n and l_quantity < 24;":str, "default_pipe":str, 49:int); #[1] (0) QLOGdefineNaive 9 <- 10 11 87        :
|    22 | X_12=0:int := sql.mvc(); #[3] (0) SQLmvc 12                                                                                                                                                  |
|     8 | X_155=[1500303]:bat[:lng] := sql.bind(X_12=0:int, "sys":str, "lineitem":str, "l_quantity":str, 0:int, 0:int, 4:int); #[4] (0) mvc_bind_wrap 155 <- 12 14 15 17 18 18 85                      |
|     4 | C_136=[1500303]:bat[:oid] := sql.tid(X_12=0:int, "sys":str, "lineitem":str, 0:int, 4:int); #[7] (0) SQLtid 136 <- 12 14 15 18 85                                                             |
|     3 | C_142=[1500306]:bat[:oid] := sql.tid(X_12=0:int, "sys":str, "lineitem":str, 3:int, 4:int); #[43] (0) SQLtid 142 <- 12 14 15 141 85                                                           |
|     4 | X_187=[1500306]:bat[:lng] := sql.bind(X_12=0:int, "sys":str, "lineitem":str, "l_discount":str, 0:int, 3:int, 4:int); #[41] (0) mvc_bind_wrap 187 <- 12 14 15 37 18 141 85                    |
|    11 | X_199=[1500306]:bat[:date] := sql.bind(X_12=0:int, "sys":str, "lineitem":str, "l_shipdate":str, 0:int, 3:int, 4:int); #[42] (0) mvc_bind_wrap 199 <- 12 14 15 43 18 141 85                   |
|     4 | X_158=[1500306]:bat[:lng] := sql.bind(X_12=0:int, "sys":str, "lineitem":str, "l_quantity":str, 0:int, 3:int, 4:int); #[40] (0) mvc_bind_wrap 158 <- 12 14 15 17 18 141 85                    |
|    10 | X_196=[1500303]:bat[:date] := sql.bind(X_12=0:int, "sys":str, "lineitem":str, "l_shipdate":str, 0:int, 0:int, 4:int); #[6] (0) mvc_bind_wrap 196 <- 12 14 15 43 18 18 85                     |
|     4 | C_140=[1500303]:bat[:oid] := sql.tid(X_12=0:int, "sys":str, "lineitem":str, 2:int, 4:int); #[31] (0) SQLtid 140 <- 12 14 15 23 85                                                            |
|    13 | X_184=[1500303]:bat[:lng] := sql.bind(X_12=0:int, "sys":str, "lineitem":str, "l_discount":str, 0:int, 0:int, 4:int); #[5] (0) mvc_bind_wrap 184 <- 12 14 15 37 18 18 85                      |
|     4 | X_186=[1500303]:bat[:lng] := sql.bind(X_12=0:int, "sys":str, "lineitem":str, "l_discount":str, 0:int, 2:int, 4:int); #[29] (0) mvc_bind_wrap 186 <- 12 14 15 37 18 23 85                     |
|     4 | X_198=[1500303]:bat[:date] := sql.bind(X_12=0:int, "sys":str, "lineitem":str, "l_shipdate":str, 0:int, 2:int, 4:int); #[30] (0) mvc_bind_wrap 198 <- 12 14 15 43 18 23 85                    |
|    30 | X_173=[1500303]:bat[:lng] := sql.bind(X_12=0:int, "sys":str, "lineitem":str, "l_extendedprice":str, 0:int, 2:int, 4:int); #[35] (0) mvc_bind_wrap 173 <- 12 14 15 31 18 23 85                |
|     2 | X_157=[1500303]:bat[:lng] := sql.bind(X_12=0:int, "sys":str, "lineitem":str, "l_quantity":str, 0:int, 2:int, 4:int); #[28] (0) mvc_bind_wrap 157 <- 12 14 15 17 18 23 85                     |
|     3 | C_138=[1500303]:bat[:oid] := sql.tid(X_12=0:int, "sys":str, "lineitem":str, 1:int, 4:int); #[19] (0) SQLtid 138 <- 12 14 15 20 85                                                            |
|     8 | X_169=[1500303]:bat[:lng] := sql.bind(X_12=0:int, "sys":str, "lineitem":str, "l_extendedprice":str, 0:int, 0:int, 4:int); #[11] (0) mvc_bind_wrap 169 <- 12 14 15 31 18 18 85                |
|     3 | X_197=[1500303]:bat[:date] := sql.bind(X_12=0:int, "sys":str, "lineitem":str, "l_shipdate":str, 0:int, 1:int, 4:int); #[18] (0) mvc_bind_wrap 197 <- 12 14 15 43 18 20 85                    |
|     3 | X_185=[1500303]:bat[:lng] := sql.bind(X_12=0:int, "sys":str, "lineitem":str, "l_discount":str, 0:int, 1:int, 4:int); #[17] (0) mvc_bind_wrap 185 <- 12 14 15 37 18 20 85                     |
|     3 | X_156=[1500303]:bat[:lng] := sql.bind(X_12=0:int, "sys":str, "lineitem":str, "l_quantity":str, 0:int, 1:int, 4:int); #[16] (0) mvc_bind_wrap 156 <- 12 14 15 17 18 20 85                     |
|     4 | X_171=[1500303]:bat[:lng] := sql.bind(X_12=0:int, "sys":str, "lineitem":str, "l_extendedprice":str, 0:int, 1:int, 4:int); #[23] (0) mvc_bind_wrap 171 <- 12 14 15 31 18 20 85                |
|  3126 | C_215=[226383]:bat[:oid] := algebra.select(X_197=[1500303]:bat[:date], C_138=[1500303]:bat[:oid], "1994-01-01":date, "1995-01-01":date, true:bit, false:bit, false:bit, true:bit); #[20] (0) |
:       :  ALGselect2nil 215 <- 197 138 1 124 53 54 54 53                                                                                                                                              :
|  3178 | C_216=[226568]:bat[:oid] := algebra.select(X_198=[1500303]:bat[:date], C_140=[1500303]:bat[:oid], "1994-01-01":date, "1995-01-01":date, true:bit, false:bit, false:bit, true:bit); #[32] (0) |
:       :  ALGselect2nil 216 <- 198 140 1 124 53 54 54 53                                                                                                                                              :
|    28 | X_175=[1500306]:bat[:lng] := sql.bind(X_12=0:int, "sys":str, "lineitem":str, "l_extendedprice":str, 0:int, 3:int, 4:int); #[47] (0) mvc_bind_wrap 175 <- 12 14 15 31 18 141 85               |
|  3511 | C_214=[228422]:bat[:oid] := algebra.select(X_196=[1500303]:bat[:date], C_136=[1500303]:bat[:oid], "1994-01-01":date, "1995-01-01":date, true:bit, false:bit, false:bit, true:bit); #[8] (0)  |
:       : ALGselect2nil 214 <- 196 136 1 124 53 54 54 53                                                                                                                                               :
|  4027 | C_217=[228082]:bat[:oid] := algebra.select(X_199=[1500306]:bat[:date], C_142=[1500306]:bat[:oid], "1994-01-01":date, "1995-01-01":date, true:bit, false:bit, false:bit, true:bit); #[44] (0) |
:       :  ALGselect2nil 217 <- 199 142 1 124 53 54 54 53                                                                                                                                              :
|  4007 | C_220=[61541]:bat[:oid] := algebra.select(X_186=[1500303]:bat[:lng], C_216=[226568]:bat[:oid], 5:lng, 7:lng, true:bit, true:bit, false:bit, true:bit); #[33] (0) ALGselect2nil 220 <- 186 21 |
:       : 6 126 128 53 53 54 53                                                                                                                                                                        :
|  4143 | C_219=[61983]:bat[:oid] := algebra.select(X_185=[1500303]:bat[:lng], C_215=[226383]:bat[:oid], 5:lng, 7:lng, true:bit, true:bit, false:bit, true:bit); #[21] (0) ALGselect2nil 219 <- 185 21 |
:       : 5 126 128 53 53 54 53                                                                                                                                                                        :
|  3681 | C_218=[62497]:bat[:oid] := algebra.select(X_184=[1500303]:bat[:lng], C_214=[228422]:bat[:oid], 5:lng, 7:lng, true:bit, true:bit, false:bit, true:bit); #[9] (0) ALGselect2nil 218 <- 184 214 |
:       :  126 128 53 53 54 53                                                                                                                                                                         :
|  3117 | C_224=[28368]:bat[:oid] := algebra.thetaselect(X_157=[1500303]:bat[:lng], C_220=[61541]:bat[:oid], 2400:lng, "<":str); #[34] (0) ALGthetaselect2 224 <- 157 220 129 70                       |
|  3073 | C_223=[28497]:bat[:oid] := algebra.thetaselect(X_156=[1500303]:bat[:lng], C_219=[61983]:bat[:oid], 2400:lng, "<":str); #[22] (0) ALGthetaselect2 223 <- 156 219 129 70                       |
|  3702 | C_221=[62057]:bat[:oid] := algebra.select(X_187=[1500306]:bat[:lng], C_217=[228082]:bat[:oid], 5:lng, 7:lng, true:bit, true:bit, false:bit, true:bit); #[45] (0) ALGselect2nil 221 <- 187 21 |
:       : 7 126 128 53 53 54 53                                                                                                                                                                        :
|  1037 | X_231=[28497]:bat[:lng] := algebra.projection(C_223=[28497]:bat[:oid], X_171=[1500303]:bat[:lng]); #[24] (0) ALGprojection 231 <- 223 171                                                    |
|  1212 | X_232=[28368]:bat[:lng] := algebra.projection(C_224=[28368]:bat[:oid], X_173=[1500303]:bat[:lng]); #[36] (0) ALGprojection 232 <- 224 173                                                    |
|   691 | X_236=[28368]:bat[:lng] := algebra.projection(C_224=[28368]:bat[:oid], X_186=[1500303]:bat[:lng]); #[37] (0) ALGprojection 236 <- 224 186                                                    |
|   661 | X_235=[28497]:bat[:lng] := algebra.projection(C_223=[28497]:bat[:oid], X_185=[1500303]:bat[:lng]); #[25] (0) ALGprojection 235 <- 223 185                                                    |
|     2 | language.pass(C_223=[28497]:bat[:oid]); #[57] (0) MALpass 265 <- 223                                                                                                                         |
|     2 | language.pass(C_224=[28368]:bat[:oid]); #[59] (0) MALpass 267 <- 224                                                                                                                         |
|   184 | X_244=[28368]:bat[:hge] := batcalc.*(X_232=[28368]:bat[:lng], X_236=[28368]:bat[:lng], nil:BAT, nil:BAT); #[38] (0) CMDbatMULenlarge 244 <- 232 236 118 118                                  |
|   170 | X_243=[28497]:bat[:hge] := batcalc.*(X_231=[28497]:bat[:lng], X_235=[28497]:bat[:lng], nil:BAT, nil:BAT); #[26] (0) CMDbatMULenlarge 243 <- 231 235 118 118                                  |
|    72 | X_249=305033969650:hge := aggr.sum(X_244=[28368]:bat[:hge]); #[39] (0) CMDBATsum 249 <- 244                                                                                                  |
|     1 | language.pass(X_185=[1500303]:bat[:lng]); #[58] (0) MALpass 266 <- 185                                                                                                                       |
|     1 | language.pass(X_186=[1500303]:bat[:lng]); #[60] (0) MALpass 268 <- 186                                                                                                                       |
|    86 | X_248=308225996875:hge := aggr.sum(X_243=[28497]:bat[:hge]); #[27] (0) CMDBATsum 248 <- 243                                                                                                  |
|  2945 | C_222=[28831]:bat[:oid] := algebra.thetaselect(X_155=[1500303]:bat[:lng], C_218=[62497]:bat[:oid], 2400:lng, "<":str); #[10] (0) ALGthetaselect2 222 <- 155 218 129 70                       |
|   546 | X_234=[28831]:bat[:lng] := algebra.projection(C_222=[28831]:bat[:oid], X_184=[1500303]:bat[:lng]); #[13] (0) ALGprojection 234 <- 222 184                                                    |
|     2 | language.pass(X_184=[1500303]:bat[:lng]); #[56] (0) MALpass 264 <- 184                                                                                                                       |
|  3404 | C_225=[28464]:bat[:oid] := algebra.thetaselect(X_158=[1500306]:bat[:lng], C_221=[62057]:bat[:oid], 2400:lng, "<":str); #[46] (0) ALGthetaselect2 225 <- 158 221 129 70                       |
|  1355 | X_230=[28831]:bat[:lng] := algebra.projection(C_222=[28831]:bat[:oid], X_169=[1500303]:bat[:lng]); #[12] (0) ALGprojection 230 <- 222 169                                                    |
|     2 | language.pass(C_222=[28831]:bat[:oid]); #[55] (0) MALpass 263 <- 222                                                                                                                         |
|   246 | X_242=[28831]:bat[:hge] := batcalc.*(X_230=[28831]:bat[:lng], X_234=[28831]:bat[:lng], nil:BAT, nil:BAT); #[14] (0) CMDbatMULenlarge 242 <- 230 234 118 118                                  |
|    90 | X_247=310771973465:hge := aggr.sum(X_242=[28831]:bat[:hge]); #[15] (0) CMDBATsum 247 <- 242                                                                                                  |
|   830 | X_237=[28464]:bat[:lng] := algebra.projection(C_225=[28464]:bat[:oid], X_187=[1500306]:bat[:lng]); #[49] (0) ALGprojection 237 <- 225 187                                                    |
|     3 | language.pass(X_187=[1500306]:bat[:lng]); #[62] (0) MALpass 270 <- 187                                                                                                                       |
|  1743 | X_233=[28464]:bat[:lng] := algebra.projection(C_225=[28464]:bat[:oid], X_175=[1500306]:bat[:lng]); #[48] (0) ALGprojection 233 <- 225 175                                                    |
|     2 | language.pass(C_225=[28464]:bat[:oid]); #[61] (0) MALpass 269 <- 225                                                                                                                         |
|   159 | X_245=[28464]:bat[:hge] := batcalc.*(X_233=[28464]:bat[:lng], X_237=[28464]:bat[:lng], nil:BAT, nil:BAT); #[50] (0) CMDbatMULenlarge 245 <- 233 237 118 118                                  |
|    88 | X_250=307378842293:hge := aggr.sum(X_245=[28464]:bat[:hge]); #[51] (0) CMDBATsum 250 <- 245                                                                                                  |
|     5 | X_246=[4]:bat[:hge] := mat.pack(X_247=310771973465:hge, X_248=308225996875:hge, X_249=305033969650:hge, X_250=307378842293:hge); #[52] (0) MATpackValues 246 <- 247 248 249 250              |
|     2 | X_251=[4]:bat[:hge] := algebra.selectNotNil(X_246=[4]:bat[:hge]); #[53] (0) ALGselectNotNil 251 <- 246                                                                                       |
|     2 | X_78=1231410782283:hge := aggr.sum(X_251=[4]:bat[:hge]); #[54] (1) CMDBATsum 78 <- 251                                                                                                       |
| 19005 | barrier X_261=false:bit := language.dataflow(); #[2] (0) MALstartDataflow 261                                                                                                                |
|    50 | sql.resultSet("sys.":str, "revenue":str, "decimal":str, 38:int, 4:int, 10:int, X_78=1231410782283:hge); #[64] (0) mvc_scalar_value_wrap 80 <- 81 82 83 84 85 86 78                           |
+-------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
63 tuples
