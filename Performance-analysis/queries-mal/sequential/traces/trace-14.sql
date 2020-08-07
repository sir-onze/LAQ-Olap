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
|     3 | X_15=0@0:void := querylog.define("trace select 100.00 * sum(case\n when p_type like \\'PROMO%\\'\n then l_extendedprice * (1 - l_discount)\n else 0\n end) / \n sum(l_extendedprice * (1 - l |
:       : _discount)) as promo_revenue\nfrom lineitem, part\nwhere l_partkey = p_partkey\n and l_shipdate >= date \\'1995-09-01\\'\n and l_shipdate < date \\'1995-09-01\\' + interval \\'1\\' month;" :
:       : :str, "default_pipe":str, 85:int); #[1] (0) QLOGdefineNaive 15 <- 16 17 137                                                                                                                  :
|     0 | X_18=0:int := sql.mvc(); #[2] (0) SQLmvc 18                                                                                                                                                  |
|     4 | X_47=[6001215]:bat[:date] := sql.bind(X_18=0:int, "sys":str, "lineitem":str, "l_shipdate":str, 0:int); #[3] (6001215) mvc_bind_wrap 47 <- 18 20 21 48 24                                     |
|     3 | C_19=[6001215]:bat[:oid] := sql.tid(X_18=0:int, "sys":str, "lineitem":str); #[4] (6001215) SQLtid 19 <- 18 20 21                                                                             |
|  6681 | C_57=[75983]:bat[:oid] := algebra.select(X_47=[6001215]:bat[:date], C_19=[6001215]:bat[:oid], "1995-09-01":date, "1995-10-01":date, true:bit, false:bit, false:bit, true:bit); #[5] (1) ALGs |
:       : elect2nil 57 <- 47 19 11 174 58 59 59 58                                                                                                                                                     :
|    10 | X_30=[6001215]:bat[:int] := sql.bind(X_18=0:int, "sys":str, "lineitem":str, "l_partkey":str, 0:int); #[6] (6001215) mvc_bind_wrap 30 <- 18 20 21 23 24                                       |
|   909 | X_80=[75983]:bat[:int] := algebra.projection(C_57=[75983]:bat[:oid], X_30=[6001215]:bat[:int]); #[7] (0) ALGprojection 80 <- 57 30                                                           |
|     7 | C_61=[200000]:bat[:oid] := sql.tid(X_18=0:int, "sys":str, "part":str); #[8] (0) SQLtid 61 <- 18 20 62                                                                                        |
|     2 | X_69=[200000]:bat[:int] := sql.bind(X_18=0:int, "sys":str, "part":str, "p_partkey":str, 0:int); #[9] (0) mvc_bind_wrap 69 <- 18 20 62 64 24                                                  |
|     4 | X_84=[200000]:bat[:int] := algebra.projection(C_61=[200000]:bat[:oid], X_69=[200000]:bat[:int]); #[10] (0) ALGprojection 84 <- 61 69                                                         |
|  2858 | (X_86=[75983]:bat[:oid], X_87=[75983]:bat[:oid]) := algebra.join(X_80=[75983]:bat[:int], X_84=[200000]:bat[:int], nil:BAT, nil:BAT, false:bit, nil:lng); #[11] (0) ALGjoin 86 87 <- 80 84 88 |
:       :  88 59 90                                                                                                                                                                                    :
|     9 | X_74=[200000]:bat[:str] := sql.bind(X_18=0:int, "sys":str, "part":str, "p_type":str, 0:int); #[12] (0) mvc_bind_wrap 74 <- 18 20 62 75 24                                                    |
|  1963 | X_96=[75983]:bat[:str] := algebra.projectionpath(X_87=[75983]:bat[:oid], C_61=[200000]:bat[:oid], X_74=[200000]:bat[:str]); #[13] (0) ALGprojectionpath 96 <- 87 61 74                       |
| 23937 | X_98=[75983]:bat[:bit] := batalgebra.like(X_96=[75983]:bat[:str], "PROMO%":str); #[14] (0) BATPCRElike2 98 <- 96 4                                                                           |
|    13 | X_35=[6001215]:bat[:lng] := sql.bind(X_18=0:int, "sys":str, "lineitem":str, "l_extendedprice":str, 0:int); #[15] (6001215) mvc_bind_wrap 35 <- 18 20 21 36 24                                |
|  2783 | X_92=[75983]:bat[:lng] := algebra.projectionpath(X_86=[75983]:bat[:oid], C_57=[75983]:bat[:oid], X_35=[6001215]:bat[:lng]); #[16] (0) ALGprojectionpath 92 <- 86 57 35                       |
|     6 | X_41=[6001215]:bat[:lng] := sql.bind(X_18=0:int, "sys":str, "lineitem":str, "l_discount":str, 0:int); #[17] (6001215) mvc_bind_wrap 41 <- 18 20 21 42 24                                     |
|  2638 | X_93=[75983]:bat[:lng] := algebra.projectionpath(X_86=[75983]:bat[:oid], C_57=[75983]:bat[:oid], X_41=[6001215]:bat[:lng]); #[18] (0) ALGprojectionpath 93 <- 86 57 41                       |
|   298 | X_105=[75983]:bat[:lng] := batcalc.-(100:lng, X_93=[75983]:bat[:lng], nil:BAT, X_98=[75983]:bat[:bit]); #[19] (0) CMDbatSUBsignal 105 <- 175 93 88 98                                        |
|   331 | X_108=[75983]:bat[:hge] := batcalc.*(X_92=[75983]:bat[:lng], X_105=[75983]:bat[:lng], nil:BAT, nil:BAT, X_98=[75983]:bat[:bit]); #[20] (0) CMDbatMULenlarge 108 <- 92 105 88 88 98           |
|   219 | X_117=[75983]:bat[:hge] := batcalc.ifthenelse(X_98=[75983]:bat[:bit], X_108=[75983]:bat[:hge], 0:hge); #[21] (0) CMDifthen 117 <- 98 108 176                                                 |
|   201 | X_123=4524288052301:hge := aggr.sum(X_117=[75983]:bat[:hge]); #[22] (1) CMDBATsum 123 <- 117                                                                                                 |
|     4 | X_126=45242880523010000:hge := calc.*(X_123=4524288052301:hge, 10000:int); #[23] (0) CMDvarMULsignal 126 <- 123 2                                                                            |
|     1 | X_127=452428805230100000000:hge := calc.hge(6:int, X_126=45242880523010000:hge, 38:int, 10:int); #[24] (0) hge_dec2dec_hge 127 <- 128 126 129 130                                            |
|   454 | X_121=[75983]:bat[:lng] := batcalc.-(100:lng, X_93=[75983]:bat[:lng], nil:BAT); #[25] (0) CMDbatSUBsignal 121 <- 175 93 88                                                                   |
|   717 | X_122=[75983]:bat[:hge] := batcalc.*(X_92=[75983]:bat[:lng], X_121=[75983]:bat[:lng], nil:BAT, nil:BAT); #[26] (0) CMDbatMULenlarge 122 <- 92 121 88 88                                      |
|   450 | X_124=27619493282271:hge := aggr.sum(X_122=[75983]:bat[:hge]); #[27] (1) CMDBATsum 124 <- 122                                                                                                |
|    10 | X_131=16380778:hge := calc./(X_127=452428805230100000000:hge, X_124=27619493282271:hge); #[28] (0) CMDvarDIVsignal 131 <- 127 124                                                            |
|    33 | sql.resultSet("sys.":str, "promo_revenue":str, "decimal":str, 38:int, 6:int, 10:int, X_131=16380778:hge); #[29] (0) mvc_scalar_value_wrap 133 <- 134 135 136 129 128 130 131                 |
+-------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
29 tuples
