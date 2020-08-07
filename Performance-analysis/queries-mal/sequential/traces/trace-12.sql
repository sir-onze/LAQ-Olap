operation successful
+------------+-----------------+----------------+
| l_shipmode | high_line_count | low_line_count |
+============+=================+================+
| MAIL       |            6202 |           9324 |
| SHIP       |            6200 |           9262 |
+------------+-----------------+----------------+
2 tuples
+-------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| usec  | statement                                                                                                                                                                                    |
+=======+==============================================================================================================================================================================================+
|     3 | X_14=0@0:void := querylog.define("trace select l_shipmode,\n sum(case\n when o_orderpriority = \\'1-URGENT\\'\n or o_orderpriority = \\'2-HIGH\\'\n then 1\n else 0\n end) as high_line_coun |
:       : t,\n sum(case\n when o_orderpriority <> \\'1-URGENT\\'\n and o_orderpriority <> \\'2-HIGH\\'\n then 1\n else 0\n end) as low_line_count\nfrom orders, lineitem\nwhere o_orderkey = l_orderke :
:       : y\n and l_shipmode in (\\'MAIL\\', \\'SHIP\\')\n and l_commitdate < l_receiptdate\n and l_shipdate < l_commitdate\n and l_receiptdate >= date \\'1994-01-01\\'\n and l_receiptdate < date \\ :
:       : '1994-01-01\\' + interval \\'1\\' year\ngroup by l_shipmode\norder by l_shipmode;":str, "default_pipe":str, 105:int); #[1] (0) QLOGdefineNaive 14 <- 15 16 185                               :
|     5 | X_170=[3]:bat[:str] := bat.pack("sys.lineitem":str, "sys.":str, "sys.":str); #[2] (0) MATpackValues 170 <- 175 180 180                                                                       |
|     5 | X_171=[3]:bat[:str] := bat.pack("l_shipmode":str, "high_line_count":str, "low_line_count":str); #[3] (0) MATpackValues 171 <- 48 181 184                                                     |
|     4 | X_172=[3]:bat[:str] := bat.pack("char":str, "hugeint":str, "hugeint":str); #[4] (0) MATpackValues 172 <- 177 182 182                                                                         |
|     4 | X_173=[3]:bat[:int] := bat.pack(10:int, 128:int, 128:int); #[5] (0) MATpackValues 173 <- 76 183 183                                                                                          |
|    14 | X_174=[3]:bat[:int] := bat.pack(0:int, 0:int, 0:int); #[6] (0) MATpackValues 174 <- 23 23 23                                                                                                 |
|     1 | X_17=0:int := sql.mvc(); #[7] (0) SQLmvc 17                                                                                                                                                  |
|    45 | X_47=[6001215]:bat[:str] := sql.bind(X_17=0:int, "sys":str, "lineitem":str, "l_shipmode":str, 0:int); #[8] (6001215) mvc_bind_wrap 47 <- 17 19 20 48 23                                      |
|     2 | X_41=[6001215]:bat[:date] := sql.bind(X_17=0:int, "sys":str, "lineitem":str, "l_receiptdate":str, 0:int); #[9] (6001215) mvc_bind_wrap 41 <- 17 19 20 42 23                                  |
|     1 | X_35=[6001215]:bat[:date] := sql.bind(X_17=0:int, "sys":str, "lineitem":str, "l_commitdate":str, 0:int); #[10] (6001215) mvc_bind_wrap 35 <- 17 19 20 36 23                                  |
|     1 | X_30=[6001215]:bat[:date] := sql.bind(X_17=0:int, "sys":str, "lineitem":str, "l_shipdate":str, 0:int); #[11] (6001215) mvc_bind_wrap 30 <- 17 19 20 22 23                                    |
| 78797 | X_59=[6001215]:bat[:bit] := batcalc.between(X_35=[6001215]:bat[:date], X_30=[6001215]:bat[:date], X_41=[6001215]:bat[:date], false:bit, false:bit, false:bit, false:bit, false:bit); #[12] ( |
:       : 0) CMDbatBETWEEN 59 <- 35 30 41 60 60 60 60 60                                                                                                                                               :
|    29 | C_18=[6001215]:bat[:oid] := sql.tid(X_17=0:int, "sys":str, "lineitem":str); #[13] (6001215) SQLtid 18 <- 17 19 20                                                                            |
| 23823 | C_62=[718639]:bat[:oid] := algebra.select(X_59=[6001215]:bat[:bit], C_18=[6001215]:bat[:oid], true:bit, true:bit, true:bit, true:bit, false:bit); #[14] (1) ALGselect2 62 <- 59 18 63 63 63  |
:       : 63 60                                                                                                                                                                                        :
|  7764 | C_69=[108434]:bat[:oid] := algebra.select(X_41=[6001215]:bat[:date], C_62=[718639]:bat[:oid], "1994-01-01":date, "1995-01-01":date, true:bit, false:bit, false:bit, true:bit); #[15] (1) ALG |
:       : select2nil 69 <- 41 62 11 220 63 60 60 63                                                                                                                                                    :
|  1055 | C_77=[15526]:bat[:oid] := algebra.thetaselect(X_47=[6001215]:bat[:str], C_69=[108434]:bat[:oid], "MAIL":str, "==":str); #[16] (1) ALGthetaselect2 77 <- 47 69 9 78                           |
|   791 | C_81=[15462]:bat[:oid] := algebra.thetaselect(X_47=[6001215]:bat[:str], C_69=[108434]:bat[:oid], "SHIP":str, "==":str); #[17] (1) ALGthetaselect2 81 <- 47 69 10 78                          |
|   243 | C_82=[30988]:bat[:oid] := bat.mergecand(C_77=[15526]:bat[:oid], C_81=[15462]:bat[:oid]); #[18] (0) BKCmergecand 82 <- 77 81                                                                  |
|    15 | X_53=[6001215]:bat[:oid] := sql.bind_idxbat(X_17=0:int, "sys":str, "lineitem":str, "lineitem_fk1":str, 0:int); #[19] (6001215) mvc_bind_idxbat_wrap 53 <- 17 19 20 54 23                     |
|     3 | (X_56=[0]:bat[:oid], X_57=[0]:bat[:oid]) := sql.bind_idxbat(X_17=0:int, "sys":str, "lineitem":str, "lineitem_fk1":str, 2:int); #[20] (6001215) mvc_bind_idxbat_wrap 56 57 <- 17 19 20 54 28  |
|     1 | X_55=[0]:bat[:oid] := sql.bind_idxbat(X_17=0:int, "sys":str, "lineitem":str, "lineitem_fk1":str, 1:int); #[21] (0) mvc_bind_idxbat_wrap 55 <- 17 19 20 54 25                                 |
|   632 | X_101=[30988]:bat[:oid] := sql.projectdelta(C_82=[30988]:bat[:oid], X_53=[6001215]:bat[:oid], X_56=[0]:bat[:oid], X_57=[0]:bat[:oid], X_55=[0]:bat[:oid]); #[22] (0) DELTAproject 101 <- 82  |
:       : 53 56 57 55                                                                                                                                                                                  :
|     4 | C_83=[1500000]:bat[:oid] := sql.tid(X_17=0:int, "sys":str, "orders":str); #[23] (0) SQLtid 83 <- 17 19 84                                                                                    |
|    47 | (X_103=[30988]:bat[:oid], X_104=[30988]:bat[:oid]) := algebra.join(X_101=[30988]:bat[:oid], C_83=[1500000]:bat[:oid], nil:BAT, nil:BAT, false:bit, nil:lng); #[24] (0) ALGjoin 103 104 <- 10 |
:       : 1 83 105 105 60 108                                                                                                                                                                          :
|   931 | X_112=[30988]:bat[:str] := algebra.projectionpath(X_103=[30988]:bat[:oid], C_82=[30988]:bat[:oid], X_47=[6001215]:bat[:str]); #[25] (0) ALGprojectionpath 112 <- 103 82 47                   |
|   217 | (X_153=[30988]:bat[:oid], C_154=[2]:bat[:oid]) := group.groupdone(X_112=[30988]:bat[:str]); #[26] (0) GRPgroup3 153 154 <- 112                                                               |
|    18 | X_156=[2]:bat[:str] := algebra.projection(C_154=[2]:bat[:oid], X_112=[30988]:bat[:str]); #[27] (0) ALGprojection 156 <- 154 112                                                              |
|     3 | X_91=[1500000]:bat[:str] := sql.bind(X_17=0:int, "sys":str, "orders":str, "o_orderpriority":str, 0:int); #[28] (0) mvc_bind_wrap 91 <- 17 19 84 86 23                                        |
|   791 | X_114=[30988]:bat[:str] := algebra.projectionpath(X_104=[30988]:bat[:oid], C_83=[1500000]:bat[:oid], X_91=[1500000]:bat[:str]); #[29] (0) ALGprojectionpath 114 <- 104 83 91                 |
|   868 | X_123=[30988]:bat[:bit] := batcalc.==(X_114=[30988]:bat[:str], "1-URGENT":str); #[30] (0) CMDbatEQ 123 <- 114 1                                                                              |
|   654 | X_129=[30988]:bat[:bit] := batcalc.==(X_114=[30988]:bat[:str], "2-HIGH":str); #[31] (0) CMDbatEQ 129 <- 114 2                                                                                |
|   278 | X_130=[30988]:bat[:bit] := batcalc.or(X_123=[30988]:bat[:bit], X_129=[30988]:bat[:bit]); #[32] (0) CMDbatOR 130 <- 123 129                                                                   |
|   137 | X_137=[30988]:bat[:bte] := batcalc.ifthenelse(X_130=[30988]:bat[:bit], 1:bte, 0:bte); #[33] (0) CMDifthen 137 <- 130 3 4                                                                     |
|   186 | X_157=[2]:bat[:hge] := aggr.subsum(X_137=[30988]:bat[:bte], X_153=[30988]:bat[:oid], C_154=[2]:bat[:oid], true:bit, true:bit); #[34] (0) AGGRsubsum_hge 157 <- 137 153 154 63 63             |
|  1002 | X_141=[30988]:bat[:bit] := batcalc.!=(X_114=[30988]:bat[:str], "1-URGENT":str); #[35] (0) CMDbatNE 141 <- 114 1                                                                              |
|   708 | X_145=[30988]:bat[:bit] := batcalc.!=(X_114=[30988]:bat[:str], "2-HIGH":str); #[36] (0) CMDbatNE 145 <- 114 2                                                                                |
|   272 | X_146=[30988]:bat[:bit] := batcalc.and(X_141=[30988]:bat[:bit], X_145=[30988]:bat[:bit]); #[37] (0) CMDbatAND 146 <- 141 145                                                                 |
|   133 | X_152=[30988]:bat[:bte] := batcalc.ifthenelse(X_146=[30988]:bat[:bit], 1:bte, 0:bte); #[38] (0) CMDifthen 152 <- 146 3 4                                                                     |
|   121 | X_160=[2]:bat[:hge] := aggr.subsum(X_152=[30988]:bat[:bte], X_153=[30988]:bat[:oid], C_154=[2]:bat[:oid], true:bit, true:bit); #[39] (0) AGGRsubsum_hge 160 <- 152 153 154 63 63             |
|    10 | (X_161=[2]:bat[:str], X_162=[2]:bat[:oid]) := algebra.sort(X_156=[2]:bat[:str], false:bit, false:bit, false:bit); #[40] (0) ALGsort12 161 162 <- 156 60 60 60                                |
|     4 | X_166=[2]:bat[:str] := algebra.projection(X_162=[2]:bat[:oid], X_156=[2]:bat[:str]); #[41] (0) ALGprojection 166 <- 162 156                                                                  |
|     2 | X_167=[2]:bat[:hge] := algebra.projection(X_162=[2]:bat[:oid], X_157=[2]:bat[:hge]); #[42] (0) ALGprojection 167 <- 162 157                                                                  |
|     1 | X_168=[2]:bat[:hge] := algebra.projection(X_162=[2]:bat[:oid], X_160=[2]:bat[:hge]); #[43] (0) ALGprojection 168 <- 162 160                                                                  |
|    36 | sql.resultSet(X_170=[3]:bat[:str], X_171=[3]:bat[:str], X_172=[3]:bat[:str], X_173=[3]:bat[:int], X_174=[3]:bat[:int], X_166=[2]:bat[:str], X_167=[2]:bat[:hge], X_168=[2]:bat[:hge]); #[44] |
:       :  (0) mvc_table_result_wrap 169 <- 170 171 172 173 174 166 167 168                                                                                                                            :
+-------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
44 tuples
