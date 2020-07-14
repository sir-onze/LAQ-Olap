operation successful
+-----------+---------------------------+-------------------+-----------------+------------------------------------------+
| s_suppkey | s_name                    | s_address         | s_phone         | total_revenue                            |
+===========+===========================+===================+=================+==========================================+
|      8449 | Supplier#000008449        | Wp34zim9qYFbVctdW | 20-469-856-8873 |                             1772627.2087 |
+-----------+---------------------------+-------------------+-----------------+------------------------------------------+
1 tuple
+------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| usec | statement                                                                                                                                                                                     |
+======+===============================================================================================================================================================================================+
|    3 | X_5=0@0:void := querylog.define("trace with revenue0 (supplier_no, total_revenue) as\n( select l_suppkey,\n sum(l_extendedprice * (1 - l_discount)) \n from lineitem\n where l_shipdate >= da |
:      : te \\'1996-01-01\\'\n and l_shipdate < date \\'1996-01-01\\' + interval \\'3\\' month\n group by l_suppkey\n)\nselect s_suppkey,\n s_name,\n s_address,\n s_phone,\n total_revenue\nfrom supp :
:      : lier, revenue0\nwhere s_suppkey = supplier_no\n and total_revenue = (\n select\n max(total_revenue)\n from\n revenue0\n )\norder by s_suppkey;":str, "default_pipe":str, 168:int); #[1] (0) Q :
:      : LOGdefineNaive 5 <- 6 7 269                                                                                                                                                                   :
|    5 | X_246=[5]:bat[:str] := bat.pack("sys.supplier":str, "sys.supplier":str, "sys.supplier":str, "sys.supplier":str, "sys.revenue0":str); #[2] (0) MATpackValues 246 <- 251 251 251 251 264        |
|    6 | X_247=[5]:bat[:str] := bat.pack("s_suppkey":str, "s_name":str, "s_address":str, "s_phone":str, "total_revenue":str); #[3] (0) MATpackValues 247 <- 193 204 210 216 265                        |
|    5 | X_248=[5]:bat[:str] := bat.pack("int":str, "char":str, "varchar":str, "char":str, "decimal":str); #[4] (0) MATpackValues 248 <- 253 257 260 257 266                                           |
|    3 | X_249=[5]:bat[:int] := bat.pack(32:int, 25:int, 40:int, 15:int, 38:int); #[5] (0) MATpackValues 249 <- 254 258 261 164 267                                                                    |
|   14 | X_250=[5]:bat[:int] := bat.pack(0:int, 0:int, 0:int, 0:int, 4:int); #[6] (0) MATpackValues 250 <- 14 14 14 14 268                                                                             |
|    0 | X_8=0:int := sql.mvc(); #[7] (0) SQLmvc 8                                                                                                                                                     |
|    2 | X_80=[6001215]:bat[:date] := sql.bind(X_8=0:int, "sys":str, "lineitem":str, "l_shipdate":str, 0:int); #[8] (6001215) mvc_bind_wrap 80 <- 8 10 11 81 14                                        |
|    8 | C_9=[6001215]:bat[:oid] := sql.tid(X_8=0:int, "sys":str, "lineitem":str); #[9] (6001215) SQLtid 9 <- 8 10 11                                                                                  |
| 6974 | C_139=[225954]:bat[:oid] := algebra.select(X_80=[6001215]:bat[:date], C_9=[6001215]:bat[:oid], "1996-01-01":date, "1996-04-01":date, true:bit, false:bit, false:bit, true:bit); #[10] (1) ALG |
:      : select2nil 139 <- 80 9 2 306 140 141 141 140                                                                                                                                                  :
|   13 | X_32=[6001215]:bat[:int] := sql.bind(X_8=0:int, "sys":str, "lineitem":str, "l_suppkey":str, 0:int); #[11] (6001215) mvc_bind_wrap 32 <- 8 10 11 33 14                                         |
| 1873 | X_145=[225954]:bat[:int] := algebra.projection(C_139=[225954]:bat[:oid], X_32=[6001215]:bat[:int]); #[12] (0) ALGprojection 145 <- 139 32                                                     |
| 2535 | (X_171=[225954]:bat[:oid], C_172=[10000]:bat[:oid]) := group.groupdone(X_145=[225954]:bat[:int]); #[13] (0) GRPgroup3 171 172 <- 145                                                          |
|   37 | X_174=[10000]:bat[:int] := algebra.projection(C_172=[10000]:bat[:oid], X_145=[225954]:bat[:int]); #[14] (0) ALGprojection 174 <- 172 145                                                      |
|    7 | X_50=[6001215]:bat[:lng] := sql.bind(X_8=0:int, "sys":str, "lineitem":str, "l_extendedprice":str, 0:int); #[15] (6001215) mvc_bind_wrap 50 <- 8 10 11 51 14                                   |
| 3045 | X_148=[225954]:bat[:lng] := algebra.projection(C_139=[225954]:bat[:oid], X_50=[6001215]:bat[:lng]); #[16] (0) ALGprojection 148 <- 139 50                                                     |
|   19 | X_56=[6001215]:bat[:lng] := sql.bind(X_8=0:int, "sys":str, "lineitem":str, "l_discount":str, 0:int); #[17] (6001215) mvc_bind_wrap 56 <- 8 10 11 57 14                                        |
| 3491 | X_149=[225954]:bat[:lng] := algebra.projection(C_139=[225954]:bat[:oid], X_56=[6001215]:bat[:lng]); #[18] (0) ALGprojection 149 <- 139 56                                                     |
|  746 | X_166=[225954]:bat[:lng] := batcalc.-(100:lng, X_149=[225954]:bat[:lng], nil:BAT); #[19] (0) CMDbatSUBsignal 166 <- 307 149 182                                                               |
|  972 | X_169=[225954]:bat[:hge] := batcalc.*(X_148=[225954]:bat[:lng], X_166=[225954]:bat[:lng], nil:BAT, nil:BAT); #[20] (0) CMDbatMULenlarge 169 <- 148 166 182 182                                |
| 1581 | X_175=[10000]:bat[:hge] := aggr.subsum(X_169=[225954]:bat[:hge], X_171=[225954]:bat[:oid], C_172=[10000]:bat[:oid], true:bit, true:bit); #[21] (0) AGGRsubsum_hge 175 <- 169 171 172 140 140  |
|    6 | C_186=[10000]:bat[:oid] := bat.mirror(X_174=[10000]:bat[:int]); #[22] (0) BKCmirror 186 <- 174                                                                                                |
|   56 | X_178=17726272087:hge := aggr.max(X_175=[10000]:bat[:hge]); #[23] (1) ALGmaxany 178 <- 175                                                                                                    |
|    3 | X_179=[1]:bat[:hge] := sql.single(X_178=17726272087:hge); #[24] (0) CMDBATsingle 179 <- 178                                                                                                   |
|   59 | X_180=[1]:bat[:oid] := algebra.join(X_175=[10000]:bat[:hge], X_179=[1]:bat[:hge], nil:BAT, nil:BAT, false:bit, nil:lng); #[25] (0) ALGjoin1 180 <- 175 179 182 182 141 185                    |
|    5 | C_187=[1]:bat[:oid] := algebra.intersect(C_186=[10000]:bat[:oid], X_180=[1]:bat[:oid], nil:BAT, nil:BAT, false:bit, false:bit, nil:lng); #[26] (0) ALGintersect 187 <- 186 180 182 182 141 14 |
:      : 1 185                                                                                                                                                                                         :
|    3 | X_188=[1]:bat[:int] := algebra.projection(C_187=[1]:bat[:oid], X_174=[10000]:bat[:int]); #[27] (0) ALGprojection 188 <- 187 174                                                               |
|    5 | C_190=[10000]:bat[:oid] := sql.tid(X_8=0:int, "sys":str, "supplier":str); #[28] (10000) SQLtid 190 <- 8 10 191                                                                                |
|    2 | X_198=[10000]:bat[:int] := sql.bind(X_8=0:int, "sys":str, "supplier":str, "s_suppkey":str, 0:int); #[29] (10000) mvc_bind_wrap 198 <- 8 10 191 193 14                                         |
|    2 | X_221=[10000]:bat[:int] := algebra.projection(C_190=[10000]:bat[:oid], X_198=[10000]:bat[:int]); #[30] (0) ALGprojection 221 <- 190 198                                                       |
|   15 | (X_225=[1]:bat[:oid], X_226=[1]:bat[:oid]) := algebra.join(X_188=[1]:bat[:int], X_221=[10000]:bat[:int], nil:BAT, nil:BAT, false:bit, nil:lng); #[31] (0) ALGjoin 225 226 <- 188 221 182 182  |
:      : 141 185                                                                                                                                                                                       :
|    2 | X_233=[1]:bat[:int] := algebra.projection(X_226=[1]:bat[:oid], X_221=[10000]:bat[:int]); #[32] (0) ALGprojection 233 <- 226 221                                                               |
|    4 | (X_237=[1]:bat[:int], X_238=[1]:bat[:oid]) := algebra.sort(X_233=[1]:bat[:int], false:bit, false:bit, false:bit); #[33] (0) ALGsort12 237 238 <- 233 141 141 141                              |
|    2 | X_240=[1]:bat[:int] := algebra.projection(X_238=[1]:bat[:oid], X_233=[1]:bat[:int]); #[34] (0) ALGprojection 240 <- 238 233                                                                   |
|    1 | X_203=[10000]:bat[:str] := sql.bind(X_8=0:int, "sys":str, "supplier":str, "s_name":str, 0:int); #[35] (10000) mvc_bind_wrap 203 <- 8 10 191 204 14                                            |
|    3 | X_241=[1]:bat[:str] := algebra.projectionpath(X_238=[1]:bat[:oid], X_226=[1]:bat[:oid], C_190=[10000]:bat[:oid], X_203=[10000]:bat[:str]); #[36] (0) ALGprojectionpath 241 <- 238 226 190 203 |
:      :                                                                                                                                                                                               :
|    1 | X_209=[10000]:bat[:str] := sql.bind(X_8=0:int, "sys":str, "supplier":str, "s_address":str, 0:int); #[37] (10000) mvc_bind_wrap 209 <- 8 10 191 210 14                                         |
|    8 | X_242=[1]:bat[:str] := algebra.projectionpath(X_238=[1]:bat[:oid], X_226=[1]:bat[:oid], C_190=[10000]:bat[:oid], X_209=[10000]:bat[:str]); #[38] (0) ALGprojectionpath 242 <- 238 226 190 209 |
:      :                                                                                                                                                                                               :
|    1 | X_215=[10000]:bat[:str] := sql.bind(X_8=0:int, "sys":str, "supplier":str, "s_phone":str, 0:int); #[39] (10000) mvc_bind_wrap 215 <- 8 10 191 216 14                                           |
|    8 | X_243=[1]:bat[:str] := algebra.projectionpath(X_238=[1]:bat[:oid], X_226=[1]:bat[:oid], C_190=[10000]:bat[:oid], X_215=[10000]:bat[:str]); #[40] (0) ALGprojectionpath 243 <- 238 226 190 215 |
:      :                                                                                                                                                                                               :
|    2 | X_244=[1]:bat[:hge] := algebra.projectionpath(X_238=[1]:bat[:oid], X_225=[1]:bat[:oid], C_187=[1]:bat[:oid], X_175=[10000]:bat[:hge]); #[41] (0) ALGprojectionpath 244 <- 238 225 187 175     |
|   26 | sql.resultSet(X_246=[5]:bat[:str], X_247=[5]:bat[:str], X_248=[5]:bat[:str], X_249=[5]:bat[:int], X_250=[5]:bat[:int], X_240=[1]:bat[:int], X_241=[1]:bat[:str], X_242=[1]:bat[:str], X_243=[ |
:      : 1]:bat[:str], X_244=[1]:bat[:hge]); #[42] (0) mvc_table_result_wrap 245 <- 246 247 248 249 250 240 241 242 243 244                                                                            :
+------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
42 tuples
