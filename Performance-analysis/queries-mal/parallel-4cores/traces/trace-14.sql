operation successful
+------------------------------------------+
| promo_revenue                            |
+==========================================+
|                                16.380778 |
+------------------------------------------+
1 tuple
+-------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| usec  | statement                                                                                                                                                                                    |
+=======+==============================================================================================================================================================================================+
|     5 | X_15=0@0:void := querylog.define("trace select 100.00 * sum(case\n when p_type like \\'PROMO%\\'\n then l_extendedprice * (1 - l_discount)\n else 0\n end) / \n sum(l_extendedprice * (1 - l |
:       : _discount)) as promo_revenue\nfrom lineitem, part\nwhere l_partkey = p_partkey\n and l_shipdate >= date \\'1995-09-01\\'\n and l_shipdate < date \\'1995-09-01\\' + interval \\'1\\' month;" :
:       : :str, "default_pipe":str, 85:int); #[1] (0) QLOGdefineNaive 15 <- 16 17 137                                                                                                                  :
|     5 | X_18=0:int := sql.mvc(); #[3] (0) SQLmvc 18                                                                                                                                                  |
|    39 | X_243=[1500303]:bat[:date] := sql.bind(X_18=0:int, "sys":str, "lineitem":str, "l_shipdate":str, 0:int, 0:int, 4:int); #[4] (0) mvc_bind_wrap 243 <- 18 20 21 48 24 24 115                    |
|    88 | X_202=[1500303]:bat[:int] := sql.bind(X_18=0:int, "sys":str, "lineitem":str, "l_partkey":str, 0:int, 0:int, 4:int); #[7] (0) mvc_bind_wrap 202 <- 18 20 21 23 24 24 115                      |
|     6 | X_205=[1500306]:bat[:int] := sql.bind(X_18=0:int, "sys":str, "lineitem":str, "l_partkey":str, 0:int, 3:int, 4:int); #[60] (0) mvc_bind_wrap 205 <- 18 20 21 23 24 188 115                    |
|     4 | C_189=[1500306]:bat[:oid] := sql.tid(X_18=0:int, "sys":str, "lineitem":str, 3:int, 4:int); #[58] (0) SQLtid 189 <- 18 20 21 188 115                                                          |
|     4 | X_233=[1500303]:bat[:lng] := sql.bind(X_18=0:int, "sys":str, "lineitem":str, "l_discount":str, 0:int, 2:int, 4:int); #[51] (0) mvc_bind_wrap 233 <- 18 20 21 42 24 28 115                    |
|     4 | X_220=[1500303]:bat[:lng] := sql.bind(X_18=0:int, "sys":str, "lineitem":str, "l_extendedprice":str, 0:int, 2:int, 4:int); #[49] (0) mvc_bind_wrap 220 <- 18 20 21 36 24 28 115               |
|    51 | X_222=[1500306]:bat[:lng] := sql.bind(X_18=0:int, "sys":str, "lineitem":str, "l_extendedprice":str, 0:int, 3:int, 4:int); #[65] (0) mvc_bind_wrap 222 <- 18 20 21 36 24 188 115              |
|    30 | X_246=[1500306]:bat[:date] := sql.bind(X_18=0:int, "sys":str, "lineitem":str, "l_shipdate":str, 0:int, 3:int, 4:int); #[57] (0) mvc_bind_wrap 246 <- 18 20 21 48 24 188 115                  |
|     3 | C_187=[1500303]:bat[:oid] := sql.tid(X_18=0:int, "sys":str, "lineitem":str, 2:int, 4:int); #[42] (0) SQLtid 187 <- 18 20 21 28 115                                                           |
|     4 | X_245=[1500303]:bat[:date] := sql.bind(X_18=0:int, "sys":str, "lineitem":str, "l_shipdate":str, 0:int, 2:int, 4:int); #[41] (0) mvc_bind_wrap 245 <- 18 20 21 48 24 28 115                   |
|     3 | X_232=[1500303]:bat[:lng] := sql.bind(X_18=0:int, "sys":str, "lineitem":str, "l_discount":str, 0:int, 1:int, 4:int); #[35] (0) mvc_bind_wrap 232 <- 18 20 21 42 24 14 115                    |
|     3 | X_218=[1500303]:bat[:lng] := sql.bind(X_18=0:int, "sys":str, "lineitem":str, "l_extendedprice":str, 0:int, 1:int, 4:int); #[33] (0) mvc_bind_wrap 218 <- 18 20 21 36 24 14 115               |
|     3 | X_204=[1500303]:bat[:int] := sql.bind(X_18=0:int, "sys":str, "lineitem":str, "l_partkey":str, 0:int, 2:int, 4:int); #[44] (0) mvc_bind_wrap 204 <- 18 20 21 23 24 28 115                     |
|     3 | X_203=[1500303]:bat[:int] := sql.bind(X_18=0:int, "sys":str, "lineitem":str, "l_partkey":str, 0:int, 1:int, 4:int); #[28] (0) mvc_bind_wrap 203 <- 18 20 21 23 24 14 115                     |
|     5 | C_185=[1500303]:bat[:oid] := sql.tid(X_18=0:int, "sys":str, "lineitem":str, 1:int, 4:int); #[26] (0) SQLtid 185 <- 18 20 21 14 115                                                           |
|     3 | X_244=[1500303]:bat[:date] := sql.bind(X_18=0:int, "sys":str, "lineitem":str, "l_shipdate":str, 0:int, 1:int, 4:int); #[25] (0) mvc_bind_wrap 244 <- 18 20 21 48 24 14 115                   |
|     4 | X_231=[1500303]:bat[:lng] := sql.bind(X_18=0:int, "sys":str, "lineitem":str, "l_discount":str, 0:int, 0:int, 4:int); #[19] (0) mvc_bind_wrap 231 <- 18 20 21 42 24 24 115                    |
|     3 | X_216=[1500303]:bat[:lng] := sql.bind(X_18=0:int, "sys":str, "lineitem":str, "l_extendedprice":str, 0:int, 0:int, 4:int); #[17] (0) mvc_bind_wrap 216 <- 18 20 21 36 24 24 115               |
|     3 | X_74=[200000]:bat[:str] := sql.bind(X_18=0:int, "sys":str, "part":str, "p_type":str, 0:int); #[13] (0) mvc_bind_wrap 74 <- 18 20 62 75 24                                                    |
|     2 | X_69=[200000]:bat[:int] := sql.bind(X_18=0:int, "sys":str, "part":str, "p_partkey":str, 0:int); #[10] (0) mvc_bind_wrap 69 <- 18 20 62 64 24                                                 |
|     2 | C_61=[200000]:bat[:oid] := sql.tid(X_18=0:int, "sys":str, "part":str); #[9] (0) SQLtid 61 <- 18 20 62                                                                                        |
|     3 | C_183=[1500303]:bat[:oid] := sql.tid(X_18=0:int, "sys":str, "lineitem":str, 0:int, 4:int); #[5] (0) SQLtid 183 <- 18 20 21 24 115                                                            |
|     4 | X_84=[200000]:bat[:int] := algebra.projection(C_61=[200000]:bat[:oid], X_69=[200000]:bat[:int]); #[11] (0) ALGprojection 84 <- 61 69                                                         |
|     7 | X_234=[1500306]:bat[:lng] := sql.bind(X_18=0:int, "sys":str, "lineitem":str, "l_discount":str, 0:int, 3:int, 4:int); #[67] (0) mvc_bind_wrap 234 <- 18 20 21 42 24 188 115                   |
|  1710 | C_262=[18896]:bat[:oid] := algebra.select(X_244=[1500303]:bat[:date], C_185=[1500303]:bat[:oid], "1995-09-01":date, "1995-10-01":date, true:bit, false:bit, false:bit, true:bit); #[27] (0)  |
:       : ALGselect2nil 262 <- 244 185 11 174 58 59 59 58                                                                                                                                              :
|    21 | X_85=[200000]:bat[:str] := algebra.projection(C_61=[200000]:bat[:oid], X_74=[200000]:bat[:str]); #[14] (0) ALGprojection 85 <- 61 74                                                         |
|   549 | X_266=[18896]:bat[:int] := algebra.projection(C_262=[18896]:bat[:oid], X_203=[1500303]:bat[:int]); #[29] (0) ALGprojection 266 <- 262 203                                                    |
|  2379 | C_263=[19171]:bat[:oid] := algebra.select(X_245=[1500303]:bat[:date], C_187=[1500303]:bat[:oid], "1995-09-01":date, "1995-10-01":date, true:bit, false:bit, false:bit, true:bit); #[43] (0)  |
:       : ALGselect2nil 263 <- 245 187 11 174 58 59 59 58                                                                                                                                              :
|  3043 | C_264=[18895]:bat[:oid] := algebra.select(X_246=[1500306]:bat[:date], C_189=[1500306]:bat[:oid], "1995-09-01":date, "1995-10-01":date, true:bit, false:bit, false:bit, true:bit); #[59] (0)  |
:       : ALGselect2nil 264 <- 246 189 11 174 58 59 59 58                                                                                                                                              :
|   783 | X_267=[19171]:bat[:int] := algebra.projection(C_263=[19171]:bat[:oid], X_204=[1500303]:bat[:int]); #[45] (0) ALGprojection 267 <- 263 204                                                    |
|  1289 | X_268=[18895]:bat[:int] := algebra.projection(C_264=[18895]:bat[:oid], X_205=[1500306]:bat[:int]); #[61] (0) ALGprojection 268 <- 264 205                                                    |
|  2185 | (X_283=[18896]:bat[:oid], X_284=[18896]:bat[:oid]) := algebra.join(X_266=[18896]:bat[:int], X_84=[200000]:bat[:int], nil:BAT, nil:BAT, false:bit, nil:lng); #[30] (0) ALGjoin 283 284 <- 266 |
:       :  84 88 88 59 90                                                                                                                                                                              :
|   193 | X_310=[18896]:bat[:str] := algebra.projection(X_284=[18896]:bat[:oid], X_85=[200000]:bat[:str]); #[31] (0) ALGprojection 310 <- 284 85                                                       |
|  2474 | (X_285=[19171]:bat[:oid], X_286=[19171]:bat[:oid]) := algebra.join(X_267=[19171]:bat[:int], X_84=[200000]:bat[:int], nil:BAT, nil:BAT, false:bit, nil:lng); #[46] (0) ALGjoin 285 286 <- 267 |
:       :  84 88 88 59 90                                                                                                                                                                              :
|   143 | X_311=[19171]:bat[:str] := algebra.projection(X_286=[19171]:bat[:oid], X_85=[200000]:bat[:str]); #[47] (0) ALGprojection 311 <- 286 85                                                       |
|  3677 | C_261=[19021]:bat[:oid] := algebra.select(X_243=[1500303]:bat[:date], C_183=[1500303]:bat[:oid], "1995-09-01":date, "1995-10-01":date, true:bit, false:bit, false:bit, true:bit); #[6] (0) A |
:       : LGselect2nil 261 <- 243 183 11 174 58 59 59 58                                                                                                                                               :
|  2412 | (X_287=[18895]:bat[:oid], X_288=[18895]:bat[:oid]) := algebra.join(X_268=[18895]:bat[:int], X_84=[200000]:bat[:int], nil:BAT, nil:BAT, false:bit, nil:lng); #[62] (0) ALGjoin 287 288 <- 268 |
:       :  84 88 88 59 90                                                                                                                                                                              :
|   681 | X_265=[19021]:bat[:int] := algebra.projection(C_261=[19021]:bat[:oid], X_202=[1500303]:bat[:int]); #[8] (0) ALGprojection 265 <- 261 202                                                     |
|   128 | X_312=[18895]:bat[:str] := algebra.projection(X_288=[18895]:bat[:oid], X_85=[200000]:bat[:str]); #[63] (0) ALGprojection 312 <- 288 85                                                       |
|  1360 | (X_281=[19021]:bat[:oid], X_282=[19021]:bat[:oid]) := algebra.join(X_265=[19021]:bat[:int], X_84=[200000]:bat[:int], nil:BAT, nil:BAT, false:bit, nil:lng); #[12] (0) ALGjoin 281 282 <- 265 |
:       :  84 88 88 59 90                                                                                                                                                                              :
|    97 | X_309=[19021]:bat[:str] := algebra.projection(X_282=[19021]:bat[:oid], X_85=[200000]:bat[:str]); #[15] (0) ALGprojection 309 <- 282 85                                                       |
|  4857 | X_314=[18896]:bat[:bit] := batalgebra.like(X_310=[18896]:bat[:str], "PROMO%":str); #[32] (0) BATPCRElike2 314 <- 310 4                                                                       |
|   860 | X_299=[19171]:bat[:lng] := algebra.projectionpath(X_285=[19171]:bat[:oid], C_263=[19171]:bat[:oid], X_233=[1500303]:bat[:lng]); #[52] (0) ALGprojectionpath 299 <- 285 263 233               |
|    68 | X_339=[19171]:bat[:lng] := batcalc.-(100:lng, X_299=[19171]:bat[:lng], nil:BAT); #[84] (0) CMDbatSUBsignal 339 <- 175 299 88                                                                 |
|  1202 | X_295=[19171]:bat[:lng] := algebra.projectionpath(X_285=[19171]:bat[:oid], C_263=[19171]:bat[:oid], X_220=[1500303]:bat[:lng]); #[50] (0) ALGprojectionpath 295 <- 285 263 220               |
|   628 | X_298=[18896]:bat[:lng] := algebra.projectionpath(X_283=[18896]:bat[:oid], C_262=[18896]:bat[:oid], X_232=[1500303]:bat[:lng]); #[36] (0) ALGprojectionpath 298 <- 283 262 232               |
|  6612 | X_315=[19171]:bat[:bit] := batalgebra.like(X_311=[19171]:bat[:str], "PROMO%":str); #[48] (0) BATPCRElike2 315 <- 311 4                                                                       |
|    64 | X_338=[18896]:bat[:lng] := batcalc.-(100:lng, X_298=[18896]:bat[:lng], nil:BAT); #[81] (0) CMDbatSUBsignal 338 <- 175 298 88                                                                 |
|     1 | language.pass(C_61=[200000]:bat[:oid]); #[94] (0) MALpass 368 <- 61                                                                                                                          |
|  5918 | X_316=[18895]:bat[:bit] := batalgebra.like(X_312=[18895]:bat[:str], "PROMO%":str); #[64] (0) BATPCRElike2 316 <- 312 4                                                                       |
|   799 | X_297=[19021]:bat[:lng] := algebra.projectionpath(X_281=[19021]:bat[:oid], C_261=[19021]:bat[:oid], X_231=[1500303]:bat[:lng]); #[20] (0) ALGprojectionpath 297 <- 281 261 231               |
|   124 | X_337=[19021]:bat[:lng] := batcalc.-(100:lng, X_297=[19021]:bat[:lng], nil:BAT); #[78] (0) CMDbatSUBsignal 337 <- 175 297 88                                                                 |
|  1517 | X_293=[19021]:bat[:lng] := algebra.projectionpath(X_281=[19021]:bat[:oid], C_261=[19021]:bat[:oid], X_216=[1500303]:bat[:lng]); #[18] (0) ALGprojectionpath 293 <- 281 261 216               |
|  1704 | X_294=[18896]:bat[:lng] := algebra.projectionpath(X_283=[18896]:bat[:oid], C_262=[18896]:bat[:oid], X_218=[1500303]:bat[:lng]); #[34] (0) ALGprojectionpath 294 <- 283 262 218               |
|     3 | language.pass(X_283=[18896]:bat[:oid]); #[98] (0) MALpass 372 <- 283                                                                                                                         |
|     1 | language.pass(X_84=[200000]:bat[:int]); #[104] (0) MALpass 378 <- 84                                                                                                                         |
|     0 | language.pass(X_85=[200000]:bat[:str]); #[105] (0) MALpass 379 <- 85                                                                                                                         |
|    81 | X_318=[18896]:bat[:lng] := batcalc.-(100:lng, X_298=[18896]:bat[:lng], nil:BAT, X_314=[18896]:bat[:bit]); #[37] (0) CMDbatSUBsignal 318 <- 175 298 88 314                                    |
|     1 | language.pass(X_298=[18896]:bat[:lng]); #[111] (0) MALpass 385 <- 298                                                                                                                        |
|   876 | X_300=[18895]:bat[:lng] := algebra.projectionpath(X_287=[18895]:bat[:oid], C_264=[18895]:bat[:oid], X_234=[1500306]:bat[:lng]); #[68] (0) ALGprojectionpath 300 <- 287 264 234               |
|    81 | X_319=[19171]:bat[:lng] := batcalc.-(100:lng, X_299=[19171]:bat[:lng], nil:BAT, X_315=[19171]:bat[:bit]); #[53] (0) CMDbatSUBsignal 319 <- 175 299 88 315                                    |
|    66 | X_340=[18895]:bat[:lng] := batcalc.-(100:lng, X_300=[18895]:bat[:lng], nil:BAT); #[87] (0) CMDbatSUBsignal 340 <- 175 300 88                                                                 |
|     1 | language.pass(X_299=[19171]:bat[:lng]); #[113] (0) MALpass 387 <- 299                                                                                                                        |
|     2 | language.pass(C_263=[19171]:bat[:oid]); #[102] (0) MALpass 376 <- 263                                                                                                                        |
|     1 | language.pass(X_285=[19171]:bat[:oid]); #[101] (0) MALpass 375 <- 285                                                                                                                        |
|    81 | X_343=[19171]:bat[:hge] := batcalc.*(X_295=[19171]:bat[:lng], X_339=[19171]:bat[:lng], nil:BAT, nil:BAT); #[85] (0) CMDbatMULenlarge 343 <- 295 339 88 88                                    |
|    39 | X_354=6955114508429:hge := aggr.sum(X_343=[19171]:bat[:hge]); #[86] (0) CMDBATsum 354 <- 343                                                                                                 |
|     3 | language.pass(C_261=[19021]:bat[:oid]); #[96] (0) MALpass 370 <- 261                                                                                                                         |
|    76 | X_320=[18895]:bat[:lng] := batcalc.-(100:lng, X_300=[18895]:bat[:lng], nil:BAT, X_316=[18895]:bat[:bit]); #[69] (0) CMDbatSUBsignal 320 <- 175 300 88 316                                    |
|     1 | language.pass(X_281=[19021]:bat[:oid]); #[95] (0) MALpass 369 <- 281                                                                                                                         |
|    26 | language.pass(X_300=[18895]:bat[:lng]); #[115] (0) MALpass 389 <- 300                                                                                                                        |
|    90 | X_341=[19021]:bat[:hge] := batcalc.*(X_293=[19021]:bat[:lng], X_337=[19021]:bat[:lng], nil:BAT, nil:BAT); #[79] (0) CMDbatMULenlarge 341 <- 293 337 88 88                                    |
|    35 | X_352=6915647078862:hge := aggr.sum(X_341=[19021]:bat[:hge]); #[80] (0) CMDBATsum 352 <- 341                                                                                                 |
|   117 | X_342=[18896]:bat[:hge] := batcalc.*(X_294=[18896]:bat[:lng], X_338=[18896]:bat[:lng], nil:BAT, nil:BAT); #[82] (0) CMDbatMULenlarge 342 <- 294 338 88 88                                    |
|    37 | X_353=6878711415540:hge := aggr.sum(X_342=[18896]:bat[:hge]); #[83] (0) CMDBATsum 353 <- 342                                                                                                 |
|    76 | X_322=[18896]:bat[:hge] := batcalc.*(X_294=[18896]:bat[:lng], X_318=[18896]:bat[:lng], nil:BAT, nil:BAT, X_314=[18896]:bat[:bit]); #[38] (0) CMDbatMULenlarge 322 <- 294 318 88 88 314       |
|     2 | language.pass(C_262=[18896]:bat[:oid]); #[99] (0) MALpass 373 <- 262                                                                                                                         |
|     1 | language.pass(X_294=[18896]:bat[:lng]); #[112] (0) MALpass 386 <- 294                                                                                                                        |
|    52 | X_334=[18896]:bat[:hge] := batcalc.ifthenelse(X_314=[18896]:bat[:bit], X_322=[18896]:bat[:hge], 0:hge); #[39] (0) CMDifthen 334 <- 314 322 176                                               |
|    84 | X_323=[19171]:bat[:hge] := batcalc.*(X_295=[19171]:bat[:lng], X_319=[19171]:bat[:lng], nil:BAT, nil:BAT, X_315=[19171]:bat[:bit]); #[54] (0) CMDbatMULenlarge 323 <- 295 319 88 88 315       |
|     1 | language.pass(X_314=[18896]:bat[:bit]); #[100] (0) MALpass 374 <- 314                                                                                                                        |
|     1 | language.pass(X_295=[19171]:bat[:lng]); #[114] (0) MALpass 388 <- 295                                                                                                                        |
|    41 | X_347=1122912220775:hge := aggr.sum(X_334=[18896]:bat[:hge]); #[40] (0) CMDBATsum 347 <- 334                                                                                                 |
|    81 | X_335=[19171]:bat[:hge] := batcalc.ifthenelse(X_315=[19171]:bat[:bit], X_323=[19171]:bat[:hge], 0:hge); #[55] (0) CMDifthen 335 <- 315 323 176                                               |
|     3 | language.pass(X_315=[19171]:bat[:bit]); #[103] (0) MALpass 377 <- 315                                                                                                                        |
|    75 | X_348=1166691981398:hge := aggr.sum(X_335=[19171]:bat[:hge]); #[56] (0) CMDBATsum 348 <- 335                                                                                                 |
|  6183 | X_313=[19021]:bat[:bit] := batalgebra.like(X_309=[19021]:bat[:str], "PROMO%":str); #[16] (0) BATPCRElike2 313 <- 309 4                                                                       |
|   106 | X_317=[19021]:bat[:lng] := batcalc.-(100:lng, X_297=[19021]:bat[:lng], nil:BAT, X_313=[19021]:bat[:bit]); #[21] (0) CMDbatSUBsignal 317 <- 175 297 88 313                                    |
|     1 | language.pass(X_297=[19021]:bat[:lng]); #[109] (0) MALpass 383 <- 297                                                                                                                        |
|    99 | X_321=[19021]:bat[:hge] := batcalc.*(X_293=[19021]:bat[:lng], X_317=[19021]:bat[:lng], nil:BAT, nil:BAT, X_313=[19021]:bat[:bit]); #[22] (0) CMDbatMULenlarge 321 <- 293 317 88 88 313       |
|  1641 | X_296=[18895]:bat[:lng] := algebra.projectionpath(X_287=[18895]:bat[:oid], C_264=[18895]:bat[:oid], X_222=[1500306]:bat[:lng]); #[66] (0) ALGprojectionpath 296 <- 287 264 222               |
|     2 | language.pass(X_293=[19021]:bat[:lng]); #[110] (0) MALpass 384 <- 293                                                                                                                        |
|    66 | X_333=[19021]:bat[:hge] := batcalc.ifthenelse(X_313=[19021]:bat[:bit], X_321=[19021]:bat[:hge], 0:hge); #[23] (0) CMDifthen 333 <- 313 321 176                                               |
|     1 | language.pass(X_313=[19021]:bat[:bit]); #[97] (0) MALpass 371 <- 313                                                                                                                         |
|    58 | X_346=1113424923686:hge := aggr.sum(X_333=[19021]:bat[:hge]); #[24] (0) CMDBATsum 346 <- 333                                                                                                 |
|     2 | language.pass(X_287=[18895]:bat[:oid]); #[106] (0) MALpass 380 <- 287                                                                                                                        |
|     3 | language.pass(C_264=[18895]:bat[:oid]); #[107] (0) MALpass 381 <- 264                                                                                                                        |
|   133 | X_344=[18895]:bat[:hge] := batcalc.*(X_296=[18895]:bat[:lng], X_340=[18895]:bat[:lng], nil:BAT, nil:BAT); #[88] (0) CMDbatMULenlarge 344 <- 296 340 88 88                                    |
|   117 | X_324=[18895]:bat[:hge] := batcalc.*(X_296=[18895]:bat[:lng], X_320=[18895]:bat[:lng], nil:BAT, nil:BAT, X_316=[18895]:bat[:bit]); #[70] (0) CMDbatMULenlarge 324 <- 296 320 88 88 316       |
|     2 | language.pass(X_296=[18895]:bat[:lng]); #[116] (0) MALpass 390 <- 296                                                                                                                        |
|   141 | X_355=6870020279440:hge := aggr.sum(X_344=[18895]:bat[:hge]); #[89] (0) CMDBATsum 355 <- 344                                                                                                 |
|     6 | X_351=[4]:bat[:hge] := mat.pack(X_352=6915647078862:hge, X_353=6878711415540:hge, X_354=6955114508429:hge, X_355=6870020279440:hge); #[90] (0) MATpackValues 351 <- 352 353 354 355          |
|     2 | X_356=[4]:bat[:hge] := algebra.selectNotNil(X_351=[4]:bat[:hge]); #[91] (0) ALGselectNotNil 356 <- 351                                                                                       |
|     2 | X_124=27619493282271:hge := aggr.sum(X_356=[4]:bat[:hge]); #[92] (1) CMDBATsum 124 <- 356                                                                                                    |
|    73 | X_336=[18895]:bat[:hge] := batcalc.ifthenelse(X_316=[18895]:bat[:bit], X_324=[18895]:bat[:hge], 0:hge); #[71] (0) CMDifthen 336 <- 316 324 176                                               |
|     1 | language.pass(X_316=[18895]:bat[:bit]); #[108] (0) MALpass 382 <- 316                                                                                                                        |
|    47 | X_349=1121258926442:hge := aggr.sum(X_336=[18895]:bat[:hge]); #[72] (0) CMDBATsum 349 <- 336                                                                                                 |
|     4 | X_345=[4]:bat[:hge] := mat.pack(X_346=1113424923686:hge, X_347=1122912220775:hge, X_348=1166691981398:hge, X_349=1121258926442:hge); #[73] (0) MATpackValues 345 <- 346 347 348 349          |
|     1 | X_350=[4]:bat[:hge] := algebra.selectNotNil(X_345=[4]:bat[:hge]); #[74] (0) ALGselectNotNil 350 <- 345                                                                                       |
|     1 | X_123=4524288052301:hge := aggr.sum(X_350=[4]:bat[:hge]); #[75] (1) CMDBATsum 123 <- 350                                                                                                     |
|     3 | X_126=45242880523010000:hge := calc.*(X_123=4524288052301:hge, 10000:int); #[76] (0) CMDvarMULsignal 126 <- 123 2                                                                            |
|     1 | X_127=452428805230100000000:hge := calc.hge(6:int, X_126=45242880523010000:hge, 38:int, 10:int); #[77] (0) hge_dec2dec_hge 127 <- 128 126 129 130                                            |
|     2 | X_131=16380778:hge := calc./(X_127=452428805230100000000:hge, X_124=27619493282271:hge); #[93] (0) CMDvarDIVsignal 131 <- 127 124                                                            |
| 19278 | barrier X_366=false:bit := language.dataflow(); #[2] (0) MALstartDataflow 366                                                                                                                |
|    45 | sql.resultSet("sys.":str, "promo_revenue":str, "decimal":str, 38:int, 6:int, 10:int, X_131=16380778:hge); #[118] (0) mvc_scalar_value_wrap 133 <- 134 135 136 129 128 130 131                |
+-------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
117 tuples
