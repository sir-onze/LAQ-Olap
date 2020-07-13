operation successful
+------------+------------+------------------------------------------+------------------------------------------+------------------------------------------+------------------------------------------+
| l_returnfl | l_linestat | sum_qty                                  | sum_base_price                           | sum_disc_price                           | sum_charge                               |>
: ag         : us         :                                          :                                          :                                          :                                          :>
+============+============+==========================================+==========================================+==========================================+==========================================+
| A          | F          |                              37734107.00 |                           56586554400.73 |                         53758257134.8700 |                       55909065222.827692 |
| N          | F          |                                991417.00 |                            1487504710.38 |                          1413082168.0541 |                        1469649223.194375 |
| N          | O          |                              74476040.00 |                          111701729697.74 |                        106118230307.6056 |                      110367043872.497010 |
| R          | F          |                              37719753.00 |                           56568041380.90 |                         53741292684.6040 |                       55889619119.831932 |
+------------+------------+------------------------------------------+------------------------------------------+------------------------------------------+------------------------------------------+
4 tuples !4 columns dropped!
note: to disable dropping columns and/or truncating fields use \w-1
+--------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| usec   | statement                                                                                                                                                                                   |
+========+=============================================================================================================================================================================================+
|     28 | X_9=0@0:void := querylog.define("trace select\n l_returnflag,\n l_linestatus,\n sum(l_quantity) as sum_qty,\n sum(l_extendedprice) as sum_base_price,\n sum(l_extendedprice * (1 - l_discou |
:        : nt)) as sum_disc_price,\n sum(l_extendedprice * (1 - l_discount) * (1 + l_tax)) as sum_charge,\n avg(l_quantity) as avg_qty,\n avg(l_extendedprice) as avg_price,\n avg(l_discount) as avg_ :
:        : disc,\n count(*) as count_order\nfrom\n lineitem\nwhere\n l_shipdate <= date \\'1998-12-01\\' - interval \\'90\\' day (3)\ngroup by\n l_returnflag,\n l_linestatus\norder by\n l_returnflag :
:        : ,\n l_linestatus;":str, "default_pipe":str, 97:int); #[1] (0) QLOGdefineNaive 9 <- 10 11 167                                                                                                :
|     13 | X_138=[10]:bat[:str] := bat.pack("sys.lineitem":str, "sys.lineitem":str, "sys.":str, "sys.":str, "sys.":str, "sys.":str, "sys.":str, "sys.":str, "sys.":str, "sys.":str); #[2] (0) MATpackV |
:        : alues 138 <- 143 143 149 149 149 149 149 149 149 149                                                                                                                                        :
|     13 | X_139=[10]:bat[:str] := bat.pack("l_returnflag":str, "l_linestatus":str, "sum_qty":str, "sum_base_price":str, "sum_disc_price":str, "sum_charge":str, "avg_qty":str, "avg_price":str, "avg_ |
:        : disc":str, "count_order":str); #[3] (0) MATpackValues 139 <- 49 55 150 154 155 157 159 162 163 164                                                                                          :
|      9 | X_140=[10]:bat[:str] := bat.pack("char":str, "char":str, "decimal":str, "decimal":str, "decimal":str, "decimal":str, "double":str, "double":str, "double":str, "bigint":str); #[4] (0) MATp |
:        : ackValues 140 <- 145 145 151 151 151 151 160 160 160 165                                                                                                                                    :
|      5 | X_141=[10]:bat[:int] := bat.pack(1:int, 1:int, 38:int, 38:int, 38:int, 38:int, 53:int, 53:int, 53:int, 64:int); #[5] (0) MATpackValues 141 <- 20 20 152 152 152 152 161 161 161 166         |
|      6 | X_142=[10]:bat[:int] := bat.pack(0:int, 0:int, 2:int, 2:int, 4:int, 6:int, 0:int, 0:int, 0:int, 0:int); #[6] (0) MATpackValues 142 <- 18 18 23 23 156 158 18 18 18 18                       |
|      2 | X_12=0:int := sql.mvc(); #[7] (0) SQLmvc 12                                                                                                                                                 |
|     24 | X_60=[6001215]:bat[:date] := sql.bind(X_12=0:int, "sys":str, "lineitem":str, "l_shipdate":str, 0:int); #[8] (6001215) mvc_bind_wrap 60 <- 12 14 15 61 18                                    |
|      8 | C_13=[6001215]:bat[:oid] := sql.tid(X_12=0:int, "sys":str, "lineitem":str); #[9] (6001215) SQLtid 13 <- 12 14 15                                                                            |
|  26069 | C_69=[5916591]:bat[:oid] := algebra.thetaselect(X_60=[6001215]:bat[:date], C_13=[6001215]:bat[:oid], "1998-09-02":date, "<=":str); #[10] (1) ALGthetaselect2 69 <- 60 13 204 70             |
|     44 | X_54=[6001215]:bat[:str] := sql.bind(X_12=0:int, "sys":str, "lineitem":str, "l_linestatus":str, 0:int); #[11] (6001215) mvc_bind_wrap 54 <- 12 14 15 55 18                                  |
|  10585 | X_76=[5916591]:bat[:str] := algebra.projection(C_69=[5916591]:bat[:oid], X_54=[6001215]:bat[:str]); #[12] (0) ALGprojection 76 <- 69 54                                                     |
|     13 | X_48=[6001215]:bat[:str] := sql.bind(X_12=0:int, "sys":str, "lineitem":str, "l_returnflag":str, 0:int); #[13] (6001215) mvc_bind_wrap 48 <- 12 14 15 49 18                                  |
|   8510 | X_75=[5916591]:bat[:str] := algebra.projection(C_69=[5916591]:bat[:oid], X_48=[6001215]:bat[:str]); #[14] (0) ALGprojection 75 <- 69 48                                                     |
|  63150 | (X_96=[5916591]:bat[:oid], C_97=[3]:bat[:oid]) := group.group(X_75=[5916591]:bat[:str]); #[15] (1) GRPgroup3 96 97 <- 75                                                                    |
|  93028 | (X_99=[5916591]:bat[:oid], C_100=[4]:bat[:oid]) := group.subgroupdone(X_76=[5916591]:bat[:str], X_96=[5916591]:bat[:oid]); #[16] (0) GRPsubgroup6 99 100 <- 76 96                           |
|     16 | X_102=[4]:bat[:str] := algebra.projection(C_100=[4]:bat[:oid], X_75=[5916591]:bat[:str]); #[17] (0) ALGprojection 102 <- 100 75                                                             |
|      4 | X_103=[4]:bat[:str] := algebra.projection(C_100=[4]:bat[:oid], X_76=[5916591]:bat[:str]); #[18] (0) ALGprojection 103 <- 100 76                                                             |
|      6 | X_25=[6001215]:bat[:lng] := sql.bind(X_12=0:int, "sys":str, "lineitem":str, "l_quantity":str, 0:int); #[19] (6001215) mvc_bind_wrap 25 <- 12 14 15 17 18                                    |
|  33774 | X_71=[5916591]:bat[:lng] := algebra.projection(C_69=[5916591]:bat[:oid], X_25=[6001215]:bat[:lng]); #[20] (0) ALGprojection 71 <- 69 25                                                     |
|  30339 | X_104=[4]:bat[:hge] := aggr.subsum(X_71=[5916591]:bat[:lng], X_99=[5916591]:bat[:oid], C_100=[4]:bat[:oid], true:bit, true:bit); #[21] (0) AGGRsubsum_hge 104 <- 71 99 100 105 105          |
|     16 | X_30=[6001215]:bat[:lng] := sql.bind(X_12=0:int, "sys":str, "lineitem":str, "l_extendedprice":str, 0:int); #[22] (6001215) mvc_bind_wrap 30 <- 12 14 15 31 18                               |
|  36517 | X_72=[5916591]:bat[:lng] := algebra.projection(C_69=[5916591]:bat[:oid], X_30=[6001215]:bat[:lng]); #[23] (0) ALGprojection 72 <- 69 30                                                     |
|  23614 | X_107=[4]:bat[:hge] := aggr.subsum(X_72=[5916591]:bat[:lng], X_99=[5916591]:bat[:oid], C_100=[4]:bat[:oid], true:bit, true:bit); #[24] (0) AGGRsubsum_hge 107 <- 72 99 100 105 105          |
|     15 | X_36=[6001215]:bat[:lng] := sql.bind(X_12=0:int, "sys":str, "lineitem":str, "l_discount":str, 0:int); #[25] (6001215) mvc_bind_wrap 36 <- 12 14 15 37 18                                    |
|  35374 | X_73=[5916591]:bat[:lng] := algebra.projection(C_69=[5916591]:bat[:oid], X_36=[6001215]:bat[:lng]); #[26] (0) ALGprojection 73 <- 69 36                                                     |
|  45037 | X_82=[5916591]:bat[:lng] := batcalc.-(100:lng, X_73=[5916591]:bat[:lng], nil:BAT); #[27] (0) CMDbatSUBsignal 82 <- 205 73 198                                                               |
|  63915 | X_85=[5916591]:bat[:hge] := batcalc.*(X_72=[5916591]:bat[:lng], X_82=[5916591]:bat[:lng], nil:BAT, nil:BAT); #[28] (0) CMDbatMULenlarge 85 <- 72 82 198 198                                 |
|  38797 | X_108=[4]:bat[:hge] := aggr.subsum(X_85=[5916591]:bat[:hge], X_99=[5916591]:bat[:oid], C_100=[4]:bat[:oid], true:bit, true:bit); #[29] (0) AGGRsubsum_hge 108 <- 85 99 100 105 105          |
|     40 | X_42=[6001215]:bat[:lng] := sql.bind(X_12=0:int, "sys":str, "lineitem":str, "l_tax":str, 0:int); #[30] (6001215) mvc_bind_wrap 42 <- 12 14 15 43 18                                         |
|  51404 | X_74=[5916591]:bat[:lng] := algebra.projection(C_69=[5916591]:bat[:oid], X_42=[6001215]:bat[:lng]); #[31] (0) ALGprojection 74 <- 69 42                                                     |
|  28840 | X_93=[5916591]:bat[:lng] := batcalc.+(X_74=[5916591]:bat[:lng], 100:lng, nil:BAT); #[32] (0) CMDbatADDsignal 93 <- 74 205 198                                                               |
| 107153 | X_95=[5916591]:bat[:hge] := batcalc.*(X_85=[5916591]:bat[:hge], X_93=[5916591]:bat[:lng], nil:BAT, nil:BAT); #[33] (0) CMDbatMULsignal 95 <- 85 93 198 198                                  |
|  34490 | X_109=[4]:bat[:hge] := aggr.subsum(X_95=[5916591]:bat[:hge], X_99=[5916591]:bat[:oid], C_100=[4]:bat[:oid], true:bit, true:bit); #[34] (0) AGGRsubsum_hge 109 <- 95 99 100 105 105          |
|  13609 | X_110=[5916591]:bat[:dbl] := batcalc.dbl(2:int, X_71=[5916591]:bat[:lng]); #[35] (0) batlng_dec2_dbl 110 <- 23 71                                                                           |
|  51997 | X_112=[4]:bat[:dbl] := aggr.subavg(X_110=[5916591]:bat[:dbl], X_99=[5916591]:bat[:oid], C_100=[4]:bat[:oid], true:bit, true:bit); #[36] (0) AGGRsubavg1_dbl 112 <- 110 99 100 105 105       |
|  26900 | X_113=[5916591]:bat[:dbl] := batcalc.dbl(2:int, X_72=[5916591]:bat[:lng]); #[37] (0) batlng_dec2_dbl 113 <- 23 72                                                                           |
|  52348 | X_115=[4]:bat[:dbl] := aggr.subavg(X_113=[5916591]:bat[:dbl], X_99=[5916591]:bat[:oid], C_100=[4]:bat[:oid], true:bit, true:bit); #[38] (0) AGGRsubavg1_dbl 115 <- 113 99 100 105 105       |
|  21233 | X_116=[5916591]:bat[:dbl] := batcalc.dbl(2:int, X_73=[5916591]:bat[:lng]); #[39] (0) batlng_dec2_dbl 116 <- 23 73                                                                           |
|  52426 | X_118=[4]:bat[:dbl] := aggr.subavg(X_116=[5916591]:bat[:dbl], X_99=[5916591]:bat[:oid], C_100=[4]:bat[:oid], true:bit, true:bit); #[40] (0) AGGRsubavg1_dbl 118 <- 116 99 100 105 105       |
|  15773 | X_119=[4]:bat[:lng] := aggr.subcount(X_99=[5916591]:bat[:oid], X_99=[5916591]:bat[:oid], C_100=[4]:bat[:oid], false:bit); #[41] (0) AGGRsubcount 119 <- 99 99 100 120                       |
|     27 | (X_121=[4]:bat[:str], X_122=[4]:bat[:oid], X_123=[4]:bat[:oid]) := algebra.sort(X_102=[4]:bat[:str], false:bit, false:bit, false:bit); #[42] (0) ALGsort13 121 122 123 <- 102 120 120 120   |
|     31 | (X_124=[4]:bat[:str], X_125=[4]:bat[:oid]) := algebra.sort(X_103=[4]:bat[:str], X_122=[4]:bat[:oid], X_123=[4]:bat[:oid], false:bit, false:bit, false:bit); #[43] (0) ALGsort32 124 125 <-  |
:        : 103 122 123 120 120 120                                                                                                                                                                     :
|      3 | X_127=[4]:bat[:str] := algebra.projection(X_125=[4]:bat[:oid], X_102=[4]:bat[:str]); #[44] (0) ALGprojection 127 <- 125 102                                                                 |
|      3 | X_128=[4]:bat[:str] := algebra.projection(X_125=[4]:bat[:oid], X_103=[4]:bat[:str]); #[45] (0) ALGprojection 128 <- 125 103                                                                 |
|      2 | X_129=[4]:bat[:hge] := algebra.projection(X_125=[4]:bat[:oid], X_104=[4]:bat[:hge]); #[46] (0) ALGprojection 129 <- 125 104                                                                 |
|      2 | X_130=[4]:bat[:hge] := algebra.projection(X_125=[4]:bat[:oid], X_107=[4]:bat[:hge]); #[47] (0) ALGprojection 130 <- 125 107                                                                 |
|      1 | X_131=[4]:bat[:hge] := algebra.projection(X_125=[4]:bat[:oid], X_108=[4]:bat[:hge]); #[48] (0) ALGprojection 131 <- 125 108                                                                 |
|      2 | X_132=[4]:bat[:hge] := algebra.projection(X_125=[4]:bat[:oid], X_109=[4]:bat[:hge]); #[49] (0) ALGprojection 132 <- 125 109                                                                 |
|      2 | X_133=[4]:bat[:dbl] := algebra.projection(X_125=[4]:bat[:oid], X_112=[4]:bat[:dbl]); #[50] (0) ALGprojection 133 <- 125 112                                                                 |
|      2 | X_134=[4]:bat[:dbl] := algebra.projection(X_125=[4]:bat[:oid], X_115=[4]:bat[:dbl]); #[51] (0) ALGprojection 134 <- 125 115                                                                 |
|      1 | X_135=[4]:bat[:dbl] := algebra.projection(X_125=[4]:bat[:oid], X_118=[4]:bat[:dbl]); #[52] (0) ALGprojection 135 <- 125 118                                                                 |
|      2 | X_136=[4]:bat[:lng] := algebra.projection(X_125=[4]:bat[:oid], X_119=[4]:bat[:lng]); #[53] (0) ALGprojection 136 <- 125 119                                                                 |
|    211 | sql.resultSet(X_138=[10]:bat[:str], X_139=[10]:bat[:str], X_140=[10]:bat[:str], X_141=[10]:bat[:int], X_142=[10]:bat[:int], X_127=[4]:bat[:str], X_128=[4]:bat[:str], X_129=[4]:bat[:hge],  |
:        : X_130=[4]:bat[:hge], X_131=[4]:bat[:hge], X_132=[4]:bat[:hge], X_133=[4]:bat[:dbl], X_134=[4]:bat[:dbl], X_135=[4]:bat[:dbl], X_136=[4]:bat[:lng]); #[54] (0) mvc_table_result_wrap 137 <-  :
:        : 138 139 140 141 142 127 128 129 130 131 132 133 134 135 136                                                                                                                                 :
+--------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
54 tuples
