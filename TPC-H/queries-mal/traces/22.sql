operation successful
+-----------+---------+------------------------------------------+
| cntrycode | numcust | totacctbal                               |
+===========+=========+==========================================+
| 13        |     888 |                               6737713.99 |
| 17        |     861 |                               6460573.72 |
| 18        |     964 |                               7236687.40 |
| 23        |     892 |                               6701457.95 |
| 29        |     948 |                               7158866.63 |
| 30        |     909 |                               6808436.13 |
| 31        |     922 |                               6806670.18 |
+-----------+---------+------------------------------------------+
7 tuples
+-------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| usec  | statement                                                                                                                                                                                    |
+=======+==============================================================================================================================================================================================+
|     9 | X_32=0@0:void := querylog.define("trace select cntrycode,\n count(*) as numcust,\n sum(c_acctbal) as totacctbal\nfrom ( select\n substring(c_phone from 1 for 2) as cntrycode,\n c_acctbal\n |
:       :  from customer\n where substring(c_phone from 1 for 2) in\n (\\'13\\', \\'31\\', \\'23\\', \\'29\\', \\'30\\', \\'18\\', \\'17\\')\n and c_acctbal > (\n select avg(c_acctbal)\n from custom :
:       : er\n where c_acctbal > 0.00\n and substring(c_phone from 1 for 2) in\n (\\'13\\', \\'31\\', \\'23\\', \\'29\\', \\'30\\', \\'18\\', \\'17\\')\n )\n and not exists (\n select *\n from order :
:       : s\n where o_custkey = c_custkey\n )\n ) as custsale\ngroup by cntrycode\norder by cntrycode;":str, "default_pipe":str, 157:int); #[1] (0) QLOGdefineNaive 32 <- 33 34 232                    :
|     8 | X_214=[3]:bat[:str] := bat.pack("sys.custsale":str, "sys.":str, "sys.":str); #[2] (0) MATpackValues 214 <- 219 224 224                                                                       |
|     6 | X_215=[3]:bat[:str] := bat.pack("cntrycode":str, "numcust":str, "totacctbal":str); #[3] (0) MATpackValues 215 <- 220 225 228                                                                 |
|     4 | X_216=[3]:bat[:str] := bat.pack("clob":str, "bigint":str, "decimal":str); #[4] (0) MATpackValues 216 <- 221 226 229                                                                          |
|     2 | X_217=[3]:bat[:int] := bat.pack(0:int, 64:int, 38:int); #[5] (0) MATpackValues 217 <- 41 227 230                                                                                             |
|     2 | X_218=[3]:bat[:int] := bat.pack(0:int, 0:int, 2:int); #[6] (0) MATpackValues 218 <- 41 41 46                                                                                                 |
|     1 | X_35=0:int := sql.mvc(); #[7] (0) SQLmvc 35                                                                                                                                                  |
|    11 | X_53=[150000]:bat[:str] := sql.bind(X_35=0:int, "sys":str, "customer":str, "c_phone":str, 0:int); #[8] (150000) mvc_bind_wrap 53 <- 35 37 38 54 41                                           |
| 73974 | X_69=[150000]:bat[:str] := batstr.substring(X_53=[150000]:bat[:str], 1:int, 2:int); #[9] (0) STRbatsubstringcst 69 <- 53 43 46                                                               |
|    16 | C_36=[150000]:bat[:oid] := sql.tid(X_35=0:int, "sys":str, "customer":str); #[10] (150000) SQLtid 36 <- 35 37 38                                                                              |
|   400 | C_73=[6020]:bat[:oid] := algebra.thetaselect(X_69=[150000]:bat[:str], C_36=[150000]:bat[:oid], "13":str, "==":str); #[11] (1) ALGthetaselect2 73 <- 69 36 8 74                               |
|   520 | C_76=[6008]:bat[:oid] := algebra.thetaselect(X_69=[150000]:bat[:str], C_36=[150000]:bat[:oid], "31":str, "==":str); #[12] (1) ALGthetaselect2 76 <- 69 36 10 74                              |
|    70 | C_77=[12028]:bat[:oid] := bat.mergecand(C_73=[6020]:bat[:oid], C_76=[6008]:bat[:oid]); #[13] (0) BKCmergecand 77 <- 73 76                                                                    |
|   334 | C_79=[6033]:bat[:oid] := algebra.thetaselect(X_69=[150000]:bat[:str], C_36=[150000]:bat[:oid], "23":str, "==":str); #[14] (1) ALGthetaselect2 79 <- 69 36 12 74                              |
|    87 | C_80=[18061]:bat[:oid] := bat.mergecand(C_77=[12028]:bat[:oid], C_79=[6033]:bat[:oid]); #[15] (0) BKCmergecand 80 <- 77 79                                                                   |
|   583 | C_82=[6100]:bat[:oid] := algebra.thetaselect(X_69=[150000]:bat[:str], C_36=[150000]:bat[:oid], "29":str, "==":str); #[16] (1) ALGthetaselect2 82 <- 69 36 14 74                              |
|   113 | C_83=[24161]:bat[:oid] := bat.mergecand(C_80=[18061]:bat[:oid], C_82=[6100]:bat[:oid]); #[17] (0) BKCmergecand 83 <- 80 82                                                                   |
|   488 | C_85=[5904]:bat[:oid] := algebra.thetaselect(X_69=[150000]:bat[:str], C_36=[150000]:bat[:oid], "30":str, "==":str); #[18] (1) ALGthetaselect2 85 <- 69 36 16 74                              |
|   106 | C_86=[30065]:bat[:oid] := bat.mergecand(C_83=[24161]:bat[:oid], C_85=[5904]:bat[:oid]); #[19] (0) BKCmergecand 86 <- 83 85                                                                   |
|  2830 | C_88=[6042]:bat[:oid] := algebra.thetaselect(X_69=[150000]:bat[:str], C_36=[150000]:bat[:oid], "18":str, "==":str); #[20] (1) ALGthetaselect2 88 <- 69 36 18 74                              |
|   171 | C_89=[36107]:bat[:oid] := bat.mergecand(C_86=[30065]:bat[:oid], C_88=[6042]:bat[:oid]); #[21] (0) BKCmergecand 89 <- 86 88                                                                   |
|   368 | C_91=[5908]:bat[:oid] := algebra.thetaselect(X_69=[150000]:bat[:str], C_36=[150000]:bat[:oid], "17":str, "==":str); #[22] (1) ALGthetaselect2 91 <- 69 36 20 74                              |
|   208 | C_92=[42015]:bat[:oid] := bat.mergecand(C_89=[36107]:bat[:oid], C_91=[5908]:bat[:oid]); #[23] (0) BKCmergecand 92 <- 89 91                                                                   |
|     7 | X_48=[150000]:bat[:int] := sql.bind(X_35=0:int, "sys":str, "customer":str, "c_custkey":str, 0:int); #[24] (150000) mvc_bind_wrap 48 <- 35 37 38 40 41                                        |
|   121 | X_93=[42015]:bat[:int] := algebra.projection(C_92=[42015]:bat[:oid], X_48=[150000]:bat[:int]); #[25] (0) ALGprojection 93 <- 92 48                                                           |
|     2 | C_163=[42015]:bat[:oid] := bat.mirror(X_93=[42015]:bat[:int]); #[26] (0) BKCmirror 163 <- 93                                                                                                 |
|     3 | X_59=[150000]:bat[:lng] := sql.bind(X_35=0:int, "sys":str, "customer":str, "c_acctbal":str, 0:int); #[27] (150000) mvc_bind_wrap 59 <- 35 37 38 60 41                                        |
|   339 | X_95=[42015]:bat[:lng] := algebra.projection(C_92=[42015]:bat[:oid], X_59=[150000]:bat[:lng]); #[28] (0) ALGprojection 95 <- 92 59                                                           |
|    91 | X_155=[42015]:bat[:dbl] := batcalc.dbl(2:int, X_95=[42015]:bat[:lng]); #[29] (0) batlng_dec2_dbl 155 <- 46 95                                                                                |
|   814 | C_117=[136308]:bat[:oid] := algebra.thetaselect(X_59=[150000]:bat[:lng], C_36=[150000]:bat[:oid], 0:lng, ">":str); #[30] (1) ALGthetaselect2 117 <- 59 36 269 118                            |
|  1000 | C_127=[5453]:bat[:oid] := algebra.thetaselect(X_69=[150000]:bat[:str], C_117=[136308]:bat[:oid], "13":str, "==":str); #[31] (1) ALGthetaselect2 127 <- 69 117 8 74                           |
|   472 | C_130=[5460]:bat[:oid] := algebra.thetaselect(X_69=[150000]:bat[:str], C_117=[136308]:bat[:oid], "31":str, "==":str); #[32] (1) ALGthetaselect2 130 <- 69 117 10 74                          |
|    66 | C_131=[10913]:bat[:oid] := bat.mergecand(C_127=[5453]:bat[:oid], C_130=[5460]:bat[:oid]); #[33] (0) BKCmergecand 131 <- 127 130                                                              |
|   354 | C_133=[5501]:bat[:oid] := algebra.thetaselect(X_69=[150000]:bat[:str], C_117=[136308]:bat[:oid], "23":str, "==":str); #[34] (1) ALGthetaselect2 133 <- 69 117 12 74                          |
|   101 | C_134=[16414]:bat[:oid] := bat.mergecand(C_131=[10913]:bat[:oid], C_133=[5501]:bat[:oid]); #[35] (0) BKCmergecand 134 <- 131 133                                                             |
|   476 | C_136=[5540]:bat[:oid] := algebra.thetaselect(X_69=[150000]:bat[:str], C_117=[136308]:bat[:oid], "29":str, "==":str); #[36] (1) ALGthetaselect2 136 <- 69 117 14 74                          |
|    91 | C_137=[21954]:bat[:oid] := bat.mergecand(C_134=[16414]:bat[:oid], C_136=[5540]:bat[:oid]); #[37] (0) BKCmergecand 137 <- 134 136                                                             |
|   282 | C_139=[5341]:bat[:oid] := algebra.thetaselect(X_69=[150000]:bat[:str], C_117=[136308]:bat[:oid], "30":str, "==":str); #[38] (1) ALGthetaselect2 139 <- 69 117 16 74                          |
|   112 | C_140=[27295]:bat[:oid] := bat.mergecand(C_137=[21954]:bat[:oid], C_139=[5341]:bat[:oid]); #[39] (0) BKCmergecand 140 <- 137 139                                                             |
|   350 | C_142=[5478]:bat[:oid] := algebra.thetaselect(X_69=[150000]:bat[:str], C_117=[136308]:bat[:oid], "18":str, "==":str); #[40] (1) ALGthetaselect2 142 <- 69 117 18 74                          |
|   105 | C_143=[32773]:bat[:oid] := bat.mergecand(C_140=[27295]:bat[:oid], C_142=[5478]:bat[:oid]); #[41] (0) BKCmergecand 143 <- 140 142                                                             |
|   288 | C_145=[5347]:bat[:oid] := algebra.thetaselect(X_69=[150000]:bat[:str], C_117=[136308]:bat[:oid], "17":str, "==":str); #[42] (1) ALGthetaselect2 145 <- 69 117 20 74                          |
|   105 | C_146=[38120]:bat[:oid] := bat.mergecand(C_143=[32773]:bat[:oid], C_145=[5347]:bat[:oid]); #[43] (0) BKCmergecand 146 <- 143 145                                                             |
|   133 | X_148=[38120]:bat[:lng] := algebra.projection(C_146=[38120]:bat[:oid], X_59=[150000]:bat[:lng]); #[44] (0) ALGprojection 148 <- 146 59                                                       |
|    76 | X_149=[38120]:bat[:dbl] := batcalc.dbl(2:int, X_148=[38120]:bat[:lng]); #[45] (0) batlng_dec2_dbl 149 <- 46 148                                                                              |
|   290 | X_153=5003.685765215143:dbl := aggr.avg(X_149=[38120]:bat[:dbl]); #[46] (1) CMDcalcavg 153 <- 149                                                                                            |
|     2 | X_154=[1]:bat[:dbl] := sql.single(X_153=5003.685765215143:dbl); #[47] (0) CMDBATsingle 154 <- 153                                                                                            |
|  3177 | (X_156=[19000]:bat[:oid], X_157=[19000]:bat[:oid]) := algebra.thetajoin(X_155=[42015]:bat[:dbl], X_154=[1]:bat[:dbl], nil:BAT, nil:BAT, 1:int, true:bit, nil:lng); #[48] (0) ALGthetajoin 15 |
:       : 6 157 <- 155 154 158 158 43 161 162                                                                                                                                                          :
|  4319 | C_164=[19000]:bat[:oid] := algebra.intersect(C_163=[42015]:bat[:oid], X_156=[19000]:bat[:oid], nil:BAT, nil:BAT, false:bit, false:bit, nil:lng); #[49] (0) ALGintersect 164 <- 163 156 158 1 |
:       : 58 165 165 162                                                                                                                                                                               :
|    77 | X_167=[19000]:bat[:int] := algebra.projection(C_164=[19000]:bat[:oid], X_93=[42015]:bat[:int]); #[50] (0) ALGprojection 167 <- 164 93                                                        |
|     2 | C_186=[19000]:bat[:oid] := bat.mirror(X_167=[19000]:bat[:int]); #[51] (0) BKCmirror 186 <- 167                                                                                               |
|     7 | C_170=[1500000]:bat[:oid] := sql.tid(X_35=0:int, "sys":str, "orders":str); #[52] (1500000) SQLtid 170 <- 35 37 171                                                                           |
|    19 | X_178=[1500000]:bat[:int] := sql.bind(X_35=0:int, "sys":str, "orders":str, "o_custkey":str, 0:int); #[53] (1500000) mvc_bind_wrap 178 <- 35 37 171 173 41                                    |
|     3 | X_183=[1500000]:bat[:int] := algebra.projection(C_170=[1500000]:bat[:oid], X_178=[1500000]:bat[:int]); #[54] (0) ALGprojection 183 <- 170 178                                                |
| 19027 | X_184=[190069]:bat[:oid] := algebra.join(X_167=[19000]:bat[:int], X_183=[1500000]:bat[:int], nil:BAT, nil:BAT, false:bit, nil:lng); #[55] (0) ALGjoin1 184 <- 167 183 158 158 165 162        |
|  7032 | C_187=[6384]:bat[:oid] := algebra.difference(C_186=[19000]:bat[:oid], X_184=[190069]:bat[:oid], nil:BAT, nil:BAT, false:bit, false:bit, nil:lng); #[56] (0) ALGdifference 187 <- 186 184 158 |
:       :  158 165 165 162                                                                                                                                                                             :
|   460 | X_189=[6384]:bat[:str] := algebra.projectionpath(C_187=[6384]:bat[:oid], C_164=[19000]:bat[:oid], C_92=[42015]:bat[:oid], X_53=[150000]:bat[:str]); #[57] (0) ALGprojectionpath 189 <- 187 1 |
:       : 64 92 53                                                                                                                                                                                     :
|  3590 | X_195=[6384]:bat[:str] := batstr.substring(X_189=[6384]:bat[:str], 1:int, 2:int); #[58] (0) STRbatsubstringcst 195 <- 189 43 46                                                              |
|   124 | (X_198=[6384]:bat[:oid], C_199=[7]:bat[:oid]) := group.groupdone(X_195=[6384]:bat[:str]); #[59] (0) GRPgroup3 198 199 <- 195                                                                 |
|    17 | X_201=[7]:bat[:str] := algebra.projection(C_199=[7]:bat[:oid], X_195=[6384]:bat[:str]); #[60] (0) ALGprojection 201 <- 199 195                                                               |
|    36 | X_202=[7]:bat[:lng] := aggr.subcount(X_198=[6384]:bat[:oid], X_198=[6384]:bat[:oid], C_199=[7]:bat[:oid], false:bit); #[61] (0) AGGRsubcount 202 <- 198 198 199 165                          |
|   566 | X_190=[6384]:bat[:lng] := algebra.projectionpath(C_187=[6384]:bat[:oid], C_164=[19000]:bat[:oid], X_95=[42015]:bat[:lng]); #[62] (0) ALGprojectionpath 190 <- 187 164 95                     |
|    52 | X_204=[7]:bat[:hge] := aggr.subsum(X_190=[6384]:bat[:lng], X_198=[6384]:bat[:oid], C_199=[7]:bat[:oid], true:bit, true:bit); #[63] (0) AGGRsubsum_hge 204 <- 190 198 199 161 161             |
|    23 | (X_207=[7]:bat[:str], X_208=[7]:bat[:oid]) := algebra.sort(X_201=[7]:bat[:str], false:bit, false:bit, false:bit); #[64] (0) ALGsort12 207 208 <- 201 165 165 165                             |
|    17 | X_210=[7]:bat[:str] := algebra.projection(X_208=[7]:bat[:oid], X_201=[7]:bat[:str]); #[65] (0) ALGprojection 210 <- 208 201                                                                  |
|     3 | X_211=[7]:bat[:lng] := algebra.projection(X_208=[7]:bat[:oid], X_202=[7]:bat[:lng]); #[66] (0) ALGprojection 211 <- 208 202                                                                  |
|     2 | X_212=[7]:bat[:hge] := algebra.projection(X_208=[7]:bat[:oid], X_204=[7]:bat[:hge]); #[67] (0) ALGprojection 212 <- 208 204                                                                  |
|    47 | sql.resultSet(X_214=[3]:bat[:str], X_215=[3]:bat[:str], X_216=[3]:bat[:str], X_217=[3]:bat[:int], X_218=[3]:bat[:int], X_210=[7]:bat[:str], X_211=[7]:bat[:lng], X_212=[7]:bat[:hge]); #[68] |
:       :  (0) mvc_table_result_wrap 213 <- 214 215 216 217 218 210 211 212                                                                                                                            :
+-------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
68 tuples
