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
+--------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| usec   | statement                                                                                                                                                                                   |
+========+=============================================================================================================================================================================================+
|      1 | X_32=0@0:void := querylog.define("trace select cntrycode,\n count(*) as numcust,\n sum(c_acctbal) as totacctbal\nfrom ( select\n substring(c_phone from 1 for 2) as cntrycode,\n c_acctbal\ |
:        : n from customer\n where substring(c_phone from 1 for 2) in\n (\\'13\\', \\'31\\', \\'23\\', \\'29\\', \\'30\\', \\'18\\', \\'17\\')\n and c_acctbal > (\n select avg(c_acctbal)\n from cust :
:        : omer\n where c_acctbal > 0.00\n and substring(c_phone from 1 for 2) in\n (\\'13\\', \\'31\\', \\'23\\', \\'29\\', \\'30\\', \\'18\\', \\'17\\')\n )\n and not exists (\n select *\n from or :
:        : ders\n where o_custkey = c_custkey\n )\n ) as custsale\ngroup by cntrycode\norder by cntrycode;":str, "default_pipe":str, 157:int); #[1] (0) QLOGdefineNaive 32 <- 33 34 232                :
|     12 | X_214=[3]:bat[:str] := bat.pack("sys.custsale":str, "sys.":str, "sys.":str); #[3] (0) MATpackValues 214 <- 219 224 224                                                                      |
|      2 | X_35=0:int := sql.mvc(); #[8] (0) SQLmvc 35                                                                                                                                                 |
|      4 | X_53=[150000]:bat[:str] := sql.bind(X_35=0:int, "sys":str, "customer":str, "c_phone":str, 0:int); #[9] (150000) mvc_bind_wrap 53 <- 35 37 38 54 41                                          |
|     10 | X_217=[3]:bat[:int] := bat.pack(0:int, 64:int, 38:int); #[6] (0) MATpackValues 217 <- 41 227 230                                                                                            |
|     12 | X_218=[3]:bat[:int] := bat.pack(0:int, 0:int, 2:int); #[7] (0) MATpackValues 218 <- 41 41 46                                                                                                |
|      5 | X_216=[3]:bat[:str] := bat.pack("clob":str, "bigint":str, "decimal":str); #[5] (0) MATpackValues 216 <- 221 226 229                                                                         |
|      6 | X_215=[3]:bat[:str] := bat.pack("cntrycode":str, "numcust":str, "totacctbal":str); #[4] (0) MATpackValues 215 <- 220 225 228                                                                |
|     11 | C_280=[375000]:bat[:oid] := sql.tid(X_35=0:int, "sys":str, "orders":str, 3:int, 4:int); #[65] (0) SQLtid 280 <- 35 37 171 279 275                                                           |
|      3 | C_278=[375000]:bat[:oid] := sql.tid(X_35=0:int, "sys":str, "orders":str, 2:int, 4:int); #[61] (0) SQLtid 278 <- 35 37 171 46 275                                                            |
|     12 | C_36=[150000]:bat[:oid] := sql.tid(X_35=0:int, "sys":str, "customer":str); #[11] (150000) SQLtid 36 <- 35 37 38                                                                             |
|     14 | X_295=[375000]:bat[:int] := sql.bind(X_35=0:int, "sys":str, "orders":str, "o_custkey":str, 0:int, 2:int, 4:int); #[62] (0) mvc_bind_wrap 295 <- 35 37 171 173 41 46 275                     |
|      5 | X_294=[375000]:bat[:int] := sql.bind(X_35=0:int, "sys":str, "orders":str, "o_custkey":str, 0:int, 1:int, 4:int); #[58] (0) mvc_bind_wrap 294 <- 35 37 171 173 41 43 275                     |
|      4 | X_48=[150000]:bat[:int] := sql.bind(X_35=0:int, "sys":str, "customer":str, "c_custkey":str, 0:int); #[25] (150000) mvc_bind_wrap 48 <- 35 37 38 40 41                                       |
|      4 | C_277=[375000]:bat[:oid] := sql.tid(X_35=0:int, "sys":str, "orders":str, 1:int, 4:int); #[57] (0) SQLtid 277 <- 35 37 171 43 275                                                            |
|      3 | X_59=[150000]:bat[:lng] := sql.bind(X_35=0:int, "sys":str, "customer":str, "c_acctbal":str, 0:int); #[28] (150000) mvc_bind_wrap 59 <- 35 37 38 60 41                                       |
|      3 | C_276=[375000]:bat[:oid] := sql.tid(X_35=0:int, "sys":str, "orders":str, 0:int, 4:int); #[53] (0) SQLtid 276 <- 35 37 171 41 275                                                            |
|      8 | X_309=[375000]:bat[:int] := algebra.projection(C_278=[375000]:bat[:oid], X_295=[375000]:bat[:int]); #[63] (0) ALGprojection 309 <- 278 295                                                  |
|      4 | X_308=[375000]:bat[:int] := algebra.projection(C_277=[375000]:bat[:oid], X_294=[375000]:bat[:int]); #[59] (0) ALGprojection 308 <- 277 294                                                  |
|      4 | X_293=[375000]:bat[:int] := sql.bind(X_35=0:int, "sys":str, "orders":str, "o_custkey":str, 0:int, 0:int, 4:int); #[54] (0) mvc_bind_wrap 293 <- 35 37 171 173 41 41 275                     |
|      9 | X_296=[375000]:bat[:int] := sql.bind(X_35=0:int, "sys":str, "orders":str, "o_custkey":str, 0:int, 3:int, 4:int); #[66] (0) mvc_bind_wrap 296 <- 35 37 171 173 41 279 275                    |
|      5 | X_310=[375000]:bat[:int] := algebra.projection(C_280=[375000]:bat[:oid], X_296=[375000]:bat[:int]); #[67] (0) ALGprojection 310 <- 280 296                                                  |
|      8 | X_307=[375000]:bat[:int] := algebra.projection(C_276=[375000]:bat[:oid], X_293=[375000]:bat[:int]); #[55] (0) ALGprojection 307 <- 276 293                                                  |
|    539 | C_117=[136308]:bat[:oid] := algebra.thetaselect(X_59=[150000]:bat[:lng], C_36=[150000]:bat[:oid], 0:lng, ">":str); #[31] (1) ALGthetaselect2 117 <- 59 36 269 118                           |
|  62635 | X_69=[150000]:bat[:str] := batstr.substring(X_53=[150000]:bat[:str], 1:int, 2:int); #[10] (0) STRbatsubstringcst 69 <- 53 43 46                                                             |
|    459 | C_73=[6020]:bat[:oid] := algebra.thetaselect(X_69=[150000]:bat[:str], C_36=[150000]:bat[:oid], "13":str, "==":str); #[12] (1) ALGthetaselect2 73 <- 69 36 8 74                              |
|    331 | C_142=[5478]:bat[:oid] := algebra.thetaselect(X_69=[150000]:bat[:str], C_117=[136308]:bat[:oid], "18":str, "==":str); #[41] (1) ALGthetaselect2 142 <- 69 117 18 74                         |
|    441 | C_145=[5347]:bat[:oid] := algebra.thetaselect(X_69=[150000]:bat[:str], C_117=[136308]:bat[:oid], "17":str, "==":str); #[43] (1) ALGthetaselect2 145 <- 69 117 20 74                         |
|    365 | C_76=[6008]:bat[:oid] := algebra.thetaselect(X_69=[150000]:bat[:str], C_36=[150000]:bat[:oid], "31":str, "==":str); #[13] (1) ALGthetaselect2 76 <- 69 36 10 74                             |
|    316 | C_139=[5341]:bat[:oid] := algebra.thetaselect(X_69=[150000]:bat[:str], C_117=[136308]:bat[:oid], "30":str, "==":str); #[39] (1) ALGthetaselect2 139 <- 69 117 16 74                         |
|    331 | C_136=[5540]:bat[:oid] := algebra.thetaselect(X_69=[150000]:bat[:str], C_117=[136308]:bat[:oid], "29":str, "==":str); #[37] (1) ALGthetaselect2 136 <- 69 117 14 74                         |
|    333 | C_133=[5501]:bat[:oid] := algebra.thetaselect(X_69=[150000]:bat[:str], C_117=[136308]:bat[:oid], "23":str, "==":str); #[35] (1) ALGthetaselect2 133 <- 69 117 12 74                         |
|    373 | C_79=[6033]:bat[:oid] := algebra.thetaselect(X_69=[150000]:bat[:str], C_36=[150000]:bat[:oid], "23":str, "==":str); #[15] (1) ALGthetaselect2 79 <- 69 36 12 74                             |
|    294 | C_130=[5460]:bat[:oid] := algebra.thetaselect(X_69=[150000]:bat[:str], C_117=[136308]:bat[:oid], "31":str, "==":str); #[33] (1) ALGthetaselect2 130 <- 69 117 10 74                         |
|    341 | C_127=[5453]:bat[:oid] := algebra.thetaselect(X_69=[150000]:bat[:str], C_117=[136308]:bat[:oid], "13":str, "==":str); #[32] (1) ALGthetaselect2 127 <- 69 117 8 74                          |
|      3 | language.pass(C_117=[136308]:bat[:oid]); #[87] (0) MALpass 337 <- 117                                                                                                                       |
|    434 | C_91=[5908]:bat[:oid] := algebra.thetaselect(X_69=[150000]:bat[:str], C_36=[150000]:bat[:oid], "17":str, "==":str); #[23] (1) ALGthetaselect2 91 <- 69 36 20 74                             |
|    379 | C_82=[6100]:bat[:oid] := algebra.thetaselect(X_69=[150000]:bat[:str], C_36=[150000]:bat[:oid], "29":str, "==":str); #[17] (1) ALGthetaselect2 82 <- 69 36 14 74                             |
|     77 | C_77=[12028]:bat[:oid] := bat.mergecand(C_73=[6020]:bat[:oid], C_76=[6008]:bat[:oid]); #[14] (0) BKCmergecand 77 <- 73 76                                                                   |
|     97 | C_80=[18061]:bat[:oid] := bat.mergecand(C_77=[12028]:bat[:oid], C_79=[6033]:bat[:oid]); #[16] (0) BKCmergecand 80 <- 77 79                                                                  |
|    351 | C_88=[6042]:bat[:oid] := algebra.thetaselect(X_69=[150000]:bat[:str], C_36=[150000]:bat[:oid], "18":str, "==":str); #[21] (1) ALGthetaselect2 88 <- 69 36 18 74                             |
|    472 | C_85=[5904]:bat[:oid] := algebra.thetaselect(X_69=[150000]:bat[:str], C_36=[150000]:bat[:oid], "30":str, "==":str); #[19] (1) ALGthetaselect2 85 <- 69 36 16 74                             |
|      3 | language.pass(X_69=[150000]:bat[:str]); #[86] (0) MALpass 336 <- 69                                                                                                                         |
|      3 | language.pass(C_36=[150000]:bat[:oid]); #[85] (0) MALpass 335 <- 36                                                                                                                         |
|    116 | C_131=[10913]:bat[:oid] := bat.mergecand(C_127=[5453]:bat[:oid], C_130=[5460]:bat[:oid]); #[34] (0) BKCmergecand 131 <- 127 130                                                             |
|    157 | C_83=[24161]:bat[:oid] := bat.mergecand(C_80=[18061]:bat[:oid], C_82=[6100]:bat[:oid]); #[18] (0) BKCmergecand 83 <- 80 82                                                                  |
|    130 | C_134=[16414]:bat[:oid] := bat.mergecand(C_131=[10913]:bat[:oid], C_133=[5501]:bat[:oid]); #[36] (0) BKCmergecand 134 <- 131 133                                                            |
|    104 | C_86=[30065]:bat[:oid] := bat.mergecand(C_83=[24161]:bat[:oid], C_85=[5904]:bat[:oid]); #[20] (0) BKCmergecand 86 <- 83 85                                                                  |
|     91 | C_137=[21954]:bat[:oid] := bat.mergecand(C_134=[16414]:bat[:oid], C_136=[5540]:bat[:oid]); #[38] (0) BKCmergecand 137 <- 134 136                                                            |
|    113 | C_89=[36107]:bat[:oid] := bat.mergecand(C_86=[30065]:bat[:oid], C_88=[6042]:bat[:oid]); #[22] (0) BKCmergecand 89 <- 86 88                                                                  |
|     97 | C_140=[27295]:bat[:oid] := bat.mergecand(C_137=[21954]:bat[:oid], C_139=[5341]:bat[:oid]); #[40] (0) BKCmergecand 140 <- 137 139                                                            |
|    121 | C_92=[42015]:bat[:oid] := bat.mergecand(C_89=[36107]:bat[:oid], C_91=[5908]:bat[:oid]); #[24] (0) BKCmergecand 92 <- 89 91                                                                  |
|    107 | C_143=[32773]:bat[:oid] := bat.mergecand(C_140=[27295]:bat[:oid], C_142=[5478]:bat[:oid]); #[42] (0) BKCmergecand 143 <- 140 142                                                            |
|    160 | X_93=[42015]:bat[:int] := algebra.projection(C_92=[42015]:bat[:oid], X_48=[150000]:bat[:int]); #[26] (0) ALGprojection 93 <- 92 48                                                          |
|      4 | C_163=[42015]:bat[:oid] := bat.mirror(X_93=[42015]:bat[:int]); #[27] (0) BKCmirror 163 <- 93                                                                                                |
|    221 | C_146=[38120]:bat[:oid] := bat.mergecand(C_143=[32773]:bat[:oid], C_145=[5347]:bat[:oid]); #[44] (0) BKCmergecand 146 <- 143 145                                                            |
|    195 | X_148=[38120]:bat[:lng] := algebra.projection(C_146=[38120]:bat[:oid], X_59=[150000]:bat[:lng]); #[45] (0) ALGprojection 148 <- 146 59                                                      |
|    153 | X_95=[42015]:bat[:lng] := algebra.projection(C_92=[42015]:bat[:oid], X_59=[150000]:bat[:lng]); #[29] (0) ALGprojection 95 <- 92 59                                                          |
|    105 | X_149=[38120]:bat[:dbl] := batcalc.dbl(2:int, X_148=[38120]:bat[:lng]); #[46] (0) batlng_dec2_dbl 149 <- 46 148                                                                             |
|    114 | X_155=[42015]:bat[:dbl] := batcalc.dbl(2:int, X_95=[42015]:bat[:lng]); #[30] (0) batlng_dec2_dbl 155 <- 46 95                                                                               |
|      3 | language.pass(X_59=[150000]:bat[:lng]); #[88] (0) MALpass 338 <- 59                                                                                                                         |
|    298 | X_153=5003.685765215143:dbl := aggr.avg(X_149=[38120]:bat[:dbl]); #[47] (1) CMDcalcavg 153 <- 149                                                                                           |
|     24 | X_154=[1]:bat[:dbl] := sql.single(X_153=5003.685765215143:dbl); #[48] (0) CMDBATsingle 154 <- 153                                                                                           |
|   2442 | (X_156=[19000]:bat[:oid], X_157=[19000]:bat[:oid]) := algebra.thetajoin(X_155=[42015]:bat[:dbl], X_154=[1]:bat[:dbl], nil:BAT, nil:BAT, 1:int, true:bit, nil:lng); #[49] (0) ALGthetajoin 1 |
:        : 56 157 <- 155 154 158 158 43 161 162                                                                                                                                                        :
|   4376 | C_164=[19000]:bat[:oid] := algebra.intersect(C_163=[42015]:bat[:oid], X_156=[19000]:bat[:oid], nil:BAT, nil:BAT, false:bit, false:bit, nil:lng); #[50] (0) ALGintersect 164 <- 163 156 158  |
:        : 158 165 165 162                                                                                                                                                                             :
|     51 | X_167=[19000]:bat[:int] := algebra.projection(C_164=[19000]:bat[:oid], X_93=[42015]:bat[:int]); #[51] (0) ALGprojection 167 <- 164 93                                                       |
|      2 | language.pass(X_93=[42015]:bat[:int]); #[89] (0) MALpass 339 <- 93                                                                                                                          |
|     66 | C_186=[19000]:bat[:oid] := bat.mirror(X_167=[19000]:bat[:int]); #[52] (0) BKCmirror 186 <- 167                                                                                              |
|   9313 | X_313=[47382]:bat[:oid] := algebra.join(X_167=[19000]:bat[:int], X_308=[375000]:bat[:int], nil:BAT, nil:BAT, false:bit, nil:lng); #[60] (0) ALGjoin1 313 <- 167 308 158 158 165 162         |
|   9920 | X_317=[47825]:bat[:oid] := algebra.join(X_167=[19000]:bat[:int], X_310=[375000]:bat[:int], nil:BAT, nil:BAT, false:bit, nil:lng); #[68] (0) ALGjoin1 317 <- 167 310 158 158 165 162         |
|   9909 | X_315=[47387]:bat[:oid] := algebra.join(X_167=[19000]:bat[:int], X_309=[375000]:bat[:int], nil:BAT, nil:BAT, false:bit, nil:lng); #[64] (0) ALGjoin1 315 <- 167 309 158 158 165 162         |
|  20353 | X_311=[47475]:bat[:oid] := algebra.join(X_167=[19000]:bat[:int], X_307=[375000]:bat[:int], nil:BAT, nil:BAT, false:bit, nil:lng); #[56] (0) ALGjoin1 311 <- 167 307 158 158 165 162         |
|     23 | language.pass(X_167=[19000]:bat[:int]); #[90] (0) MALpass 340 <- 167                                                                                                                        |
|     80 | X_327=[47475]:bat[:oid] := mat.packIncrement(X_311=[47475]:bat[:oid], 4:int); #[69] (0) MATpackIncrement 327 <- 311 328                                                                     |
|     89 | X_329=[94857]:bat[:oid] := mat.packIncrement(X_327=[94857]:bat[:oid], X_313=[47382]:bat[:oid]); #[70] (0) MATpackIncrement 329 <- 327 313                                                   |
|     86 | X_330=[142244]:bat[:oid] := mat.packIncrement(X_329=[142244]:bat[:oid], X_315=[47387]:bat[:oid]); #[71] (0) MATpackIncrement 330 <- 329 315                                                 |
|     87 | X_184=[190069]:bat[:oid] := mat.packIncrement(X_330=[190069]:bat[:oid], X_317=[47825]:bat[:oid]); #[72] (0) MATpackIncrement 184 <- 330 317                                                 |
|   3144 | C_187=[6384]:bat[:oid] := algebra.difference(C_186=[19000]:bat[:oid], X_184=[190069]:bat[:oid], nil:BAT, nil:BAT, false:bit, false:bit, nil:lng); #[73] (0) ALGdifference 187 <- 186 184 15 |
:        : 8 158 165 165 162                                                                                                                                                                           :
|    180 | X_190=[6384]:bat[:lng] := algebra.projectionpath(C_187=[6384]:bat[:oid], C_164=[19000]:bat[:oid], X_95=[42015]:bat[:lng]); #[79] (0) ALGprojectionpath 190 <- 187 164 95                    |
|      2 | language.pass(X_95=[42015]:bat[:lng]); #[96] (0) MALpass 346 <- 95                                                                                                                          |
|    557 | X_189=[6384]:bat[:str] := algebra.projectionpath(C_187=[6384]:bat[:oid], C_164=[19000]:bat[:oid], C_92=[42015]:bat[:oid], X_53=[150000]:bat[:str]); #[74] (0) ALGprojectionpath 189 <- 187  |
:        : 164 92 53                                                                                                                                                                                   :
|      2 | language.pass(C_187=[6384]:bat[:oid]); #[94] (0) MALpass 344 <- 187                                                                                                                         |
|      3 | language.pass(X_53=[150000]:bat[:str]); #[92] (0) MALpass 342 <- 53                                                                                                                         |
|     17 | language.pass(C_92=[42015]:bat[:oid]); #[91] (0) MALpass 341 <- 92                                                                                                                          |
|      2 | language.pass(C_164=[19000]:bat[:oid]); #[95] (0) MALpass 345 <- 164                                                                                                                        |
|   2755 | X_195=[6384]:bat[:str] := batstr.substring(X_189=[6384]:bat[:str], 1:int, 2:int); #[75] (0) STRbatsubstringcst 195 <- 189 43 46                                                             |
|     75 | (X_198=[6384]:bat[:oid], C_199=[7]:bat[:oid]) := group.groupdone(X_195=[6384]:bat[:str]); #[76] (0) GRPgroup3 198 199 <- 195                                                                |
|      6 | X_201=[7]:bat[:str] := algebra.projection(C_199=[7]:bat[:oid], X_195=[6384]:bat[:str]); #[77] (0) ALGprojection 201 <- 199 195                                                              |
|     30 | (X_207=[7]:bat[:str], X_208=[7]:bat[:oid]) := algebra.sort(X_201=[7]:bat[:str], false:bit, false:bit, false:bit); #[81] (0) ALGsort12 207 208 <- 201 165 165 165                            |
|      6 | X_210=[7]:bat[:str] := algebra.projection(X_208=[7]:bat[:oid], X_201=[7]:bat[:str]); #[82] (0) ALGprojection 210 <- 208 201                                                                 |
|      3 | language.pass(X_195=[6384]:bat[:str]); #[93] (0) MALpass 343 <- 195                                                                                                                         |
|     24 | X_202=[7]:bat[:lng] := aggr.subcount(X_198=[6384]:bat[:oid], X_198=[6384]:bat[:oid], C_199=[7]:bat[:oid], false:bit); #[78] (0) AGGRsubcount 202 <- 198 198 199 165                         |
|    121 | X_204=[7]:bat[:hge] := aggr.subsum(X_190=[6384]:bat[:lng], X_198=[6384]:bat[:oid], C_199=[7]:bat[:oid], true:bit, true:bit); #[80] (0) AGGRsubsum_hge 204 <- 190 198 199 161 161            |
|      5 | X_212=[7]:bat[:hge] := algebra.projection(X_208=[7]:bat[:oid], X_204=[7]:bat[:hge]); #[84] (0) ALGprojection 212 <- 208 204                                                                 |
|     29 | language.pass(X_201=[7]:bat[:str]); #[99] (0) MALpass 349 <- 201                                                                                                                            |
|     36 | X_211=[7]:bat[:lng] := algebra.projection(X_208=[7]:bat[:oid], X_202=[7]:bat[:lng]); #[83] (0) ALGprojection 211 <- 208 202                                                                 |
|      0 | language.pass(C_199=[7]:bat[:oid]); #[98] (0) MALpass 348 <- 199                                                                                                                            |
|      1 | language.pass(X_198=[6384]:bat[:oid]); #[97] (0) MALpass 347 <- 198                                                                                                                         |
|      3 | language.pass(X_208=[7]:bat[:oid]); #[100] (0) MALpass 350 <- 208                                                                                                                           |
| 101876 | barrier X_333=false:bit := language.dataflow(); #[2] (0) MALstartDataflow 333                                                                                                               |
|     29 | sql.resultSet(X_214=[3]:bat[:str], X_215=[3]:bat[:str], X_216=[3]:bat[:str], X_217=[3]:bat[:int], X_218=[3]:bat[:int], X_210=[7]:bat[:str], X_211=[7]:bat[:lng], X_212=[7]:bat[:hge]); #[10 |
:        : 2] (0) mvc_table_result_wrap 213 <- 214 215 216 217 218 210 211 212                                                                                                                         :
+--------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
101 tuples
