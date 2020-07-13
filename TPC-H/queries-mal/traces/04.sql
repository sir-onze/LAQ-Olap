operation successful
+-----------------+-------------+
| o_orderpriority | order_count |
+=================+=============+
| 1-URGENT        |       10594 |
| 2-HIGH          |       10476 |
| 3-MEDIUM        |       10410 |
| 4-NOT SPECIFIED |       10556 |
| 5-LOW           |       10487 |
+-----------------+-------------+
5 tuples
+-------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| usec  | statement                                                                                                                                                                                    |
+=======+==============================================================================================================================================================================================+
|     2 | X_6=0@0:void := querylog.define("trace select\n o_orderpriority,\n count(*) as order_count\nfrom\n orders\nwhere\n o_orderdate >= date \\'1993-07-01\\'\n and o_orderdate < date \\'1993-07- |
:       : 01\\' + interval \\'3\\' month\n and exists (\n select\n *\n from\n lineitem\n where\n l_orderkey = o_orderkey\n and l_commitdate < l_receiptdate\n )\ngroup by\n o_orderpriority\norder by\ :
:       : n o_orderpriority;":str, "default_pipe":str, 66:int); #[1] (0) QLOGdefineNaive 6 <- 7 8 113                                                                                                  :
|    19 | X_99=[2]:bat[:str] := bat.pack("sys.orders":str, "sys.":str); #[2] (0) MATpackValues 99 <- 104 109                                                                                           |
|     4 | X_100=[2]:bat[:str] := bat.pack("o_orderpriority":str, "order_count":str); #[3] (0) MATpackValues 100 <- 28 110                                                                              |
|     4 | X_101=[2]:bat[:str] := bat.pack("char":str, "bigint":str); #[4] (0) MATpackValues 101 <- 106 111                                                                                             |
|     2 | X_102=[2]:bat[:int] := bat.pack(15:int, 64:int); #[5] (0) MATpackValues 102 <- 107 112                                                                                                       |
|     1 | X_103=[2]:bat[:int] := bat.pack(0:int, 0:int); #[6] (0) MATpackValues 103 <- 15 15                                                                                                           |
|     0 | X_9=0:int := sql.mvc(); #[7] (0) SQLmvc 9                                                                                                                                                    |
|     2 | X_22=[1500000]:bat[:date] := sql.bind(X_9=0:int, "sys":str, "orders":str, "o_orderdate":str, 0:int); #[8] (1500000) mvc_bind_wrap 22 <- 9 11 12 14 15                                        |
|     2 | C_10=[1500000]:bat[:oid] := sql.tid(X_9=0:int, "sys":str, "orders":str); #[9] (1500000) SQLtid 10 <- 9 11 12                                                                                 |
|  2873 | C_38=[57218]:bat[:oid] := algebra.select(X_22=[1500000]:bat[:date], C_10=[1500000]:bat[:oid], "1993-07-01":date, "1993-10-01":date, true:bit, false:bit, false:bit, true:bit); #[10] (1) ALG |
:       : select2nil 38 <- 22 10 2 148 39 40 40 39                                                                                                                                                     :
|     7 | X_27=[1500000]:bat[:str] := sql.bind(X_9=0:int, "sys":str, "orders":str, "o_orderpriority":str, 0:int); #[11] (1500000) mvc_bind_wrap 27 <- 9 11 12 28 15                                    |
|   245 | X_43=[57218]:bat[:str] := algebra.projection(C_38=[57218]:bat[:oid], X_27=[1500000]:bat[:str]); #[12] (0) ALGprojection 43 <- 38 27                                                          |
|     2 | C_84=[57218]:bat[:oid] := bat.mirror(X_43=[57218]:bat[:str]); #[13] (0) BKCmirror 84 <- 43                                                                                                   |
|     2 | X_52=[6001215]:bat[:date] := sql.bind(X_9=0:int, "sys":str, "lineitem":str, "l_commitdate":str, 0:int); #[14] (6001215) mvc_bind_wrap 52 <- 9 11 45 47 15                                    |
|     1 | X_57=[6001215]:bat[:date] := sql.bind(X_9=0:int, "sys":str, "lineitem":str, "l_receiptdate":str, 0:int); #[15] (6001215) mvc_bind_wrap 57 <- 9 11 45 58 15                                   |
| 19927 | X_69=[6001215]:bat[:bit] := batcalc.<(X_52=[6001215]:bat[:date], X_57=[6001215]:bat[:date]); #[16] (0) CMDbatLT 69 <- 52 57                                                                  |
|    22 | C_44=[6001215]:bat[:oid] := sql.tid(X_9=0:int, "sys":str, "lineitem":str); #[17] (6001215) SQLtid 44 <- 9 11 45                                                                              |
| 39916 | C_72=[3793296]:bat[:oid] := algebra.select(X_69=[6001215]:bat[:bit], C_44=[6001215]:bat[:oid], true:bit, true:bit, true:bit, true:bit, false:bit); #[18] (1) ALGselect2 72 <- 69 44 39 39 39 |
:       :  39 40                                                                                                                                                                                       :
|    15 | X_63=[6001215]:bat[:oid] := sql.bind_idxbat(X_9=0:int, "sys":str, "lineitem":str, "lineitem_fk1":str, 0:int); #[19] (6001215) mvc_bind_idxbat_wrap 63 <- 9 11 45 64 15                       |
|     2 | (X_66=[0]:bat[:oid], X_67=[0]:bat[:oid]) := sql.bind_idxbat(X_9=0:int, "sys":str, "lineitem":str, "lineitem_fk1":str, 2:int); #[20] (6001215) mvc_bind_idxbat_wrap 66 67 <- 9 11 45 64 20    |
|     1 | X_65=[0]:bat[:oid] := sql.bind_idxbat(X_9=0:int, "sys":str, "lineitem":str, "lineitem_fk1":str, 1:int); #[21] (0) mvc_bind_idxbat_wrap 65 <- 9 11 45 64 17                                   |
|     1 | X_68=[6001215]:bat[:oid] := sql.delta(X_63=[6001215]:bat[:oid], X_66=[0]:bat[:oid], X_67=[0]:bat[:oid], X_65=[0]:bat[:oid]); #[22] (0) DELTAbat 68 <- 63 66 67 65                            |
| 27830 | X_78=[3793296]:bat[:oid] := algebra.projection(C_72=[3793296]:bat[:oid], X_68=[6001215]:bat[:oid]); #[23] (0) ALGprojection 78 <- 72 68                                                      |
| 40173 | X_79=[144869]:bat[:oid] := algebra.join(C_38=[57218]:bat[:oid], X_78=[3793296]:bat[:oid], nil:BAT, nil:BAT, false:bit, nil:lng); #[24] (0) ALGjoin1 79 <- 38 78 81 81 40 83                  |
| 11133 | C_85=[52523]:bat[:oid] := algebra.intersect(C_84=[57218]:bat[:oid], X_79=[144869]:bat[:oid], nil:BAT, nil:BAT, false:bit, false:bit, nil:lng); #[25] (0) ALGintersect 85 <- 84 79 81 81 40 4 |
:       : 0 83                                                                                                                                                                                         :
|   413 | X_86=[52523]:bat[:str] := algebra.projection(C_85=[52523]:bat[:oid], X_43=[57218]:bat[:str]); #[26] (0) ALGprojection 86 <- 85 43                                                            |
|   447 | (X_88=[52523]:bat[:oid], C_89=[5]:bat[:oid]) := group.groupdone(X_86=[52523]:bat[:str]); #[27] (0) GRPgroup3 88 89 <- 86                                                                     |
|     4 | X_91=[5]:bat[:str] := algebra.projection(C_89=[5]:bat[:oid], X_86=[52523]:bat[:str]); #[28] (0) ALGprojection 91 <- 89 86                                                                    |
|   109 | X_92=[5]:bat[:lng] := aggr.subcount(X_88=[52523]:bat[:oid], X_88=[52523]:bat[:oid], C_89=[5]:bat[:oid], false:bit); #[29] (0) AGGRsubcount 92 <- 88 88 89 40                                 |
|    17 | (X_93=[5]:bat[:str], X_94=[5]:bat[:oid]) := algebra.sort(X_91=[5]:bat[:str], false:bit, false:bit, false:bit); #[30] (0) ALGsort12 93 94 <- 91 40 40 40                                      |
|     3 | X_96=[5]:bat[:str] := algebra.projection(X_94=[5]:bat[:oid], X_91=[5]:bat[:str]); #[31] (0) ALGprojection 96 <- 94 91                                                                        |
|     7 | X_97=[5]:bat[:lng] := algebra.projection(X_94=[5]:bat[:oid], X_92=[5]:bat[:lng]); #[32] (0) ALGprojection 97 <- 94 92                                                                        |
|    23 | sql.resultSet(X_99=[2]:bat[:str], X_100=[2]:bat[:str], X_101=[2]:bat[:str], X_102=[2]:bat[:int], X_103=[2]:bat[:int], X_96=[5]:bat[:str], X_97=[5]:bat[:lng]); #[33] (0) mvc_table_result_wr |
:       : ap 98 <- 99 100 101 102 103 96 97                                                                                                                                                            :
+-------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
33 tuples
