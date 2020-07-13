operation successful
+---------+----------+
| c_count | custdist |
+=========+==========+
|       0 |    50005 |
|       9 |     6641 |
|      10 |     6532 |
|      11 |     6014 |
|       8 |     5937 |
|      12 |     5639 |
|      13 |     5024 |
|      19 |     4793 |
|       7 |     4687 |
|      17 |     4587 |
|      18 |     4529 |
|      20 |     4516 |
|      15 |     4505 |
|      14 |     4446 |
|      16 |     4273 |
|      21 |     4190 |
|      22 |     3623 |
|       6 |     3265 |
|      23 |     3225 |
|      24 |     2742 |
|      25 |     2086 |
|       5 |     1948 |
|      26 |     1612 |
|      27 |     1179 |
|       4 |     1007 |
|      28 |      893 |
|      29 |      593 |
|       3 |      415 |
|      30 |      376 |
|      31 |      226 |
|      32 |      148 |
|       2 |      134 |
|      33 |       75 |
|      34 |       50 |
|      35 |       37 |
|       1 |       17 |
|      36 |       14 |
|      38 |        5 |
|      37 |        5 |
|      40 |        4 |
|      41 |        2 |
|      39 |        1 |
+---------+----------+
42 tuples
+-------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| usec  | statement                                                                                                                                                                                    |
+=======+==============================================================================================================================================================================================+
|     2 | X_2=0@0:void := querylog.define("trace select c_count,\n count(*) as custdist\nfrom ( select c_custkey,\n count(o_orderkey)\n from customer left outer join orders on\n c_custkey = o_custke |
:       : y\n and o_comment not like \\'%special%requests%\\'\n group by c_custkey\n ) as c_orders (c_custkey, c_count)\ngroup by c_count\norder by custdist desc, c_count desc;":str, "default_pipe": :
:       : str, 84:int); #[1] (0) QLOGdefineNaive 2 <- 3 4 129                                                                                                                                          :
|     3 | X_67=[0]:bat[:int] := bat.new(nil:int); #[2] (1) CMDBATnew 67 <- 68                                                                                                                          |
|     0 | X_5=0:int := sql.mvc(); #[3] (0) SQLmvc 5                                                                                                                                                    |
|     2 | C_6=[150000]:bat[:oid] := sql.tid(X_5=0:int, "sys":str, "customer":str); #[4] (0) SQLtid 6 <- 5 7 8                                                                                          |
|     1 | X_37=[1500000]:bat[:str] := sql.bind(X_5=0:int, "sys":str, "orders":str, "o_comment":str, 0:int); #[5] (1500000) mvc_bind_wrap 37 <- 5 7 25 38 11                                            |
|     2 | C_24=[1500000]:bat[:oid] := sql.tid(X_5=0:int, "sys":str, "orders":str); #[6] (1500000) SQLtid 24 <- 5 7 25                                                                                  |
| 67515 | C_52=[1483918]:bat[:oid] := algebra.likeselect(X_37=[1500000]:bat[:str], C_24=[1500000]:bat[:oid], "%special%requests%":str, "":str, true:bit); #[7] (0) PCRElikeselect3 52 <- 37 24 1 51 53 |
:       :                                                                                                                                                                                              :
|    16 | X_43=[1500000]:bat[:oid] := sql.bind_idxbat(X_5=0:int, "sys":str, "orders":str, "orders_fk1":str, 0:int); #[8] (1500000) mvc_bind_idxbat_wrap 43 <- 5 7 25 44 11                             |
|     3 | (X_46=[0]:bat[:oid], X_47=[0]:bat[:oid]) := sql.bind_idxbat(X_5=0:int, "sys":str, "orders":str, "orders_fk1":str, 2:int); #[9] (1500000) mvc_bind_idxbat_wrap 46 47 <- 5 7 25 44 16          |
|     1 | X_45=[0]:bat[:oid] := sql.bind_idxbat(X_5=0:int, "sys":str, "orders":str, "orders_fk1":str, 1:int); #[10] (0) mvc_bind_idxbat_wrap 45 <- 5 7 25 44 13                                        |
|     1 | X_48=[1500000]:bat[:oid] := sql.delta(X_43=[1500000]:bat[:oid], X_46=[0]:bat[:oid], X_47=[0]:bat[:oid], X_45=[0]:bat[:oid]); #[11] (0) DELTAbat 48 <- 43 46 47 45                            |
|  3783 | X_57=[1483918]:bat[:oid] := algebra.projection(C_52=[1483918]:bat[:oid], X_48=[1500000]:bat[:oid]); #[12] (0) ALGprojection 57 <- 52 48                                                      |
|  6996 | (X_58=[1483918]:bat[:oid], X_59=[1483918]:bat[:oid]) := algebra.join(C_6=[150000]:bat[:oid], X_57=[1483918]:bat[:oid], nil:BAT, nil:BAT, false:bit, nil:lng); #[13] (0) ALGjoin 58 59 <- 6 5 |
:       : 7 60 60 62 63                                                                                                                                                                                :
|    10 | X_18=[150000]:bat[:int] := sql.bind(X_5=0:int, "sys":str, "customer":str, "c_custkey":str, 0:int); #[14] (0) mvc_bind_wrap 18 <- 5 7 8 10 11                                                 |
|     5 | X_54=[150000]:bat[:int] := algebra.projection(C_6=[150000]:bat[:oid], X_18=[150000]:bat[:int]); #[15] (0) ALGprojection 54 <- 6 18                                                           |
|  4225 | X_66=[1483918]:bat[:int] := algebra.projection(X_58=[1483918]:bat[:oid], X_54=[150000]:bat[:int]); #[16] (0) ALGprojection 66 <- 58 54                                                       |
|    10 | C_64=[150000]:bat[:oid] := bat.mirror(X_54=[150000]:bat[:int]); #[17] (0) BKCmirror 64 <- 54                                                                                                 |
| 55419 | C_65=[50005]:bat[:oid] := algebra.difference(C_64=[150000]:bat[:oid], X_58=[1483918]:bat[:oid], nil:BAT, nil:BAT, false:bit, false:bit, nil:lng); #[18] (0) ALGdifference 65 <- 64 58 60 60  |
:       : 62 62 63                                                                                                                                                                                     :
|    37 | X_32=[1500000]:bat[:lng] := sql.bind(X_5=0:int, "sys":str, "orders":str, "o_orderkey":str, 0:int); #[19] (1500000) mvc_bind_wrap 32 <- 5 7 25 27 11                                          |
|  1423 | X_69=[1483918]:bat[:int] := bat.append(X_67=[1483918]:bat[:int], X_66=[1483918]:bat[:int], true:bit); #[20] (1) BKCappend_force_wrap 69 <- 67 66 53                                          |
|   169 | X_70=[50005]:bat[:int] := algebra.projection(C_65=[50005]:bat[:oid], X_54=[150000]:bat[:int]); #[21] (0) ALGprojection 70 <- 65 54                                                           |
|    27 | X_71=[1533923]:bat[:int] := bat.append(X_69=[1533923]:bat[:int], X_70=[50005]:bat[:int], true:bit); #[22] (0) BKCappend_force_wrap 71 <- 69 70 53                                            |
|     2 | X_79=[0]:bat[:lng] := bat.new(nil:lng); #[23] (1) CMDBATnew 79 <- 63                                                                                                                         |
| 44802 | X_78=[1483918]:bat[:lng] := algebra.projectionpath(X_59=[1483918]:bat[:oid], C_52=[1483918]:bat[:oid], X_32=[1500000]:bat[:lng]); #[24] (0) ALGprojectionpath 78 <- 59 52 32                 |
|  5267 | X_80=[1483918]:bat[:lng] := bat.append(X_79=[1483918]:bat[:lng], X_78=[1483918]:bat[:lng], true:bit); #[25] (1) BKCappend_force_wrap 80 <- 79 78 53                                          |
|    79 | X_82=[50005]:bat[:lng] := algebra.project(C_65=[50005]:bat[:oid], nil:lng); #[26] (0) ALGprojecttail 82 <- 65 63                                                                             |
|    92 | X_83=[1533923]:bat[:lng] := bat.append(X_80=[1533923]:bat[:lng], X_82=[50005]:bat[:lng], true:bit); #[27] (0) BKCappend_force_wrap 83 <- 80 82 53                                            |
|     6 | X_117=[2]:bat[:str] := bat.pack(".c_orders":str, ".":str); #[28] (0) MATpackValues 117 <- 122 127                                                                                            |
|     5 | X_118=[2]:bat[:str] := bat.pack("c_count":str, "custdist":str); #[29] (0) MATpackValues 118 <- 123 128                                                                                       |
|     4 | X_119=[2]:bat[:str] := bat.pack("bigint":str, "bigint":str); #[30] (0) MATpackValues 119 <- 124 124                                                                                          |
|     2 | X_120=[2]:bat[:int] := bat.pack(64:int, 64:int); #[31] (0) MATpackValues 120 <- 125 125                                                                                                      |
|     2 | X_121=[2]:bat[:int] := bat.pack(0:int, 0:int); #[32] (0) MATpackValues 121 <- 11 11                                                                                                          |
| 60762 | (X_98=[1533923]:bat[:oid], C_99=[150000]:bat[:oid]) := group.groupdone(X_71=[1533923]:bat[:int]); #[33] (0) GRPgroup3 98 99 <- 71                                                            |
|  8248 | X_101=[150000]:bat[:lng] := aggr.subcount(X_83=[1533923]:bat[:lng], X_98=[1533923]:bat[:oid], C_99=[150000]:bat[:oid], true:bit); #[34] (0) AGGRsubcount 101 <- 83 98 99 53                  |
|  1724 | (X_102=[150000]:bat[:oid], C_103=[42]:bat[:oid]) := group.groupdone(X_101=[150000]:bat[:lng]); #[35] (0) GRPgroup3 102 103 <- 101                                                            |
|    15 | X_105=[42]:bat[:lng] := algebra.projection(C_103=[42]:bat[:oid], X_101=[150000]:bat[:lng]); #[36] (0) ALGprojection 105 <- 103 101                                                           |
|   396 | X_106=[42]:bat[:lng] := aggr.subcount(X_102=[150000]:bat[:oid], X_102=[150000]:bat[:oid], C_103=[42]:bat[:oid], false:bit); #[37] (0) AGGRsubcount 106 <- 102 102 103 62                     |
|    15 | (X_108=[42]:bat[:lng], X_109=[42]:bat[:oid], X_110=[42]:bat[:oid]) := algebra.sort(X_106=[42]:bat[:lng], true:bit, true:bit, false:bit); #[38] (0) ALGsort13 108 109 110 <- 106 53 53 62     |
|     5 | (X_111=[42]:bat[:lng], X_112=[42]:bat[:oid]) := algebra.sort(X_105=[42]:bat[:lng], X_109=[42]:bat[:oid], X_110=[42]:bat[:oid], true:bit, true:bit, false:bit); #[39] (0) ALGsort32 111 112 < |
:       : - 105 109 110 53 53 62                                                                                                                                                                       :
|     2 | X_114=[42]:bat[:lng] := algebra.projection(X_112=[42]:bat[:oid], X_105=[42]:bat[:lng]); #[40] (0) ALGprojection 114 <- 112 105                                                               |
|     2 | X_115=[42]:bat[:lng] := algebra.projection(X_112=[42]:bat[:oid], X_106=[42]:bat[:lng]); #[41] (0) ALGprojection 115 <- 112 106                                                               |
|    43 | sql.resultSet(X_117=[2]:bat[:str], X_118=[2]:bat[:str], X_119=[2]:bat[:str], X_120=[2]:bat[:int], X_121=[2]:bat[:int], X_114=[42]:bat[:lng], X_115=[42]:bat[:lng]); #[42] (0) mvc_table_resu |
:       : lt_wrap 116 <- 117 118 119 120 121 114 115                                                                                                                                                   :
+-------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
42 tuples
