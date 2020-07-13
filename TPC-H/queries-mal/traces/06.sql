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
|     1 | X_12=0:int := sql.mvc(); #[2] (0) SQLmvc 12                                                                                                                                                  |
|     5 | X_25=[6001215]:bat[:lng] := sql.bind(X_12=0:int, "sys":str, "lineitem":str, "l_quantity":str, 0:int); #[3] (6001215) mvc_bind_wrap 25 <- 12 14 15 17 18                                      |
|     2 | X_36=[6001215]:bat[:lng] := sql.bind(X_12=0:int, "sys":str, "lineitem":str, "l_discount":str, 0:int); #[4] (6001215) mvc_bind_wrap 36 <- 12 14 15 37 18                                      |
|     1 | X_42=[6001215]:bat[:date] := sql.bind(X_12=0:int, "sys":str, "lineitem":str, "l_shipdate":str, 0:int); #[5] (6001215) mvc_bind_wrap 42 <- 12 14 15 43 18                                     |
|    23 | C_13=[6001215]:bat[:oid] := sql.tid(X_12=0:int, "sys":str, "lineitem":str); #[6] (6001215) SQLtid 13 <- 12 14 15                                                                             |
| 14991 | C_52=[909455]:bat[:oid] := algebra.select(X_42=[6001215]:bat[:date], C_13=[6001215]:bat[:oid], "1994-01-01":date, "1995-01-01":date, true:bit, false:bit, false:bit, true:bit); #[7] (1) ALG |
:       : select2nil 52 <- 42 13 1 124 53 54 54 53                                                                                                                                                     :
| 17517 | C_66=[248078]:bat[:oid] := algebra.select(X_36=[6001215]:bat[:lng], C_52=[909455]:bat[:oid], 5:lng, 7:lng, true:bit, true:bit, false:bit, true:bit); #[8] (1) ALGselect2nil 66 <- 36 52 126  |
:       : 128 53 53 54 53                                                                                                                                                                              :
|  7447 | C_69=[114160]:bat[:oid] := algebra.thetaselect(X_25=[6001215]:bat[:lng], C_66=[248078]:bat[:oid], 2400:lng, "<":str); #[9] (1) ALGthetaselect2 69 <- 25 66 129 70                            |
|    11 | X_30=[6001215]:bat[:lng] := sql.bind(X_12=0:int, "sys":str, "lineitem":str, "l_extendedprice":str, 0:int); #[10] (6001215) mvc_bind_wrap 30 <- 12 14 15 31 18                                |
|  2246 | X_72=[114160]:bat[:lng] := algebra.projection(C_69=[114160]:bat[:oid], X_30=[6001215]:bat[:lng]); #[11] (0) ALGprojection 72 <- 69 30                                                        |
|  3934 | X_73=[114160]:bat[:lng] := algebra.projection(C_69=[114160]:bat[:oid], X_36=[6001215]:bat[:lng]); #[12] (0) ALGprojection 73 <- 69 36                                                        |
|   668 | X_75=[114160]:bat[:hge] := batcalc.*(X_72=[114160]:bat[:lng], X_73=[114160]:bat[:lng], nil:BAT, nil:BAT); #[13] (0) CMDbatMULenlarge 75 <- 72 73 118 118                                     |
|   200 | X_78=1231410782283:hge := aggr.sum(X_75=[114160]:bat[:hge]); #[14] (1) CMDBATsum 78 <- 75                                                                                                    |
|    26 | sql.resultSet("sys.":str, "revenue":str, "decimal":str, 38:int, 4:int, 10:int, X_78=1231410782283:hge); #[15] (0) mvc_scalar_value_wrap 80 <- 81 82 83 84 85 86 78                           |
+-------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
15 tuples
