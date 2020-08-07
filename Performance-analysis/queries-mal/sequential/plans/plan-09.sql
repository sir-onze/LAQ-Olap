operation successful
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| rel                                                                                                                                                                                                  |
+======================================================================================================================================================================================================+
| project (                                                                                                                                                                                            |
| | project (                                                                                                                                                                                          |
| | | group by (                                                                                                                                                                                       |
| | | | project (                                                                                                                                                                                      |
| | | | | join (                                                                                                                                                                                       |
| | | | | | join (                                                                                                                                                                                     |
| | | | | | | join (                                                                                                                                                                                   |
| | | | | | | | join (                                                                                                                                                                                 |
| | | | | | | | | join (                                                                                                                                                                               |
| | | | | | | | | | select (                                                                                                                                                                           |
| | | | | | | | | | | table(sys.part) [ "part"."p_partkey" NOT NULL HASHCOL , "part"."p_name" NOT NULL ] COUNT                                                                                         |
| | | | | | | | | | ) [ (clob[char["part"."p_name" NOT NULL]] as "part"."p_name") FILTER like (clob "%green%", clob "") ],                                                                             |
| | | | | | | | | | table(sys.lineitem) [ "lineitem"."l_partkey" NOT NULL, "lineitem"."l_suppkey" NOT NULL, "lineitem"."l_quantity" NOT NULL, "lineitem"."l_extendedprice" NOT NULL, "lineitem"."l_dis |
: count" NOT NULL, "lineitem"."%lineitem_fk1" NOT NULL JOINIDX sys.lineitem.lineitem_fk1, "lineitem"."%lineitem_fk2" NOT NULL JOINIDX sys.lineitem.lineitem_fk2 ] COUNT                                :
| | | | | | | | | ) [ "part"."p_partkey" NOT NULL HASHCOL  = "lineitem"."l_partkey" NOT NULL ],                                                                                                        |
| | | | | | | | | table(sys.orders) [ "orders"."o_orderdate" NOT NULL, "orders"."%TID%" NOT NULL ] COUNT                                                                                               |
| | | | | | | | ) [ "lineitem"."%lineitem_fk1" NOT NULL = "orders"."%TID%" NOT NULL JOINIDX sys.lineitem.lineitem_fk1 ],                                                                               |
| | | | | | | | table(sys.partsupp) [ "partsupp"."ps_supplycost" NOT NULL, "partsupp"."%TID%" NOT NULL ] COUNT                                                                                         |
| | | | | | | ) [ "lineitem"."%lineitem_fk2" NOT NULL = "partsupp"."%TID%" NOT NULL JOINIDX sys.lineitem.lineitem_fk2 ],                                                                               |
| | | | | | | table(sys.supplier) [ "supplier"."s_suppkey" NOT NULL HASHCOL , "supplier"."%supplier_fk1" NOT NULL JOINIDX sys.supplier.supplier_fk1 ] COUNT                                            |
| | | | | | ) [ "supplier"."s_suppkey" NOT NULL HASHCOL  = "lineitem"."l_suppkey" NOT NULL ],                                                                                                          |
| | | | | | table(sys.nation) [ "nation"."n_name" NOT NULL, "nation"."%TID%" NOT NULL ] COUNT                                                                                                          |
| | | | | ) [ "supplier"."%supplier_fk1" NOT NULL = "nation"."%TID%" NOT NULL JOINIDX sys.supplier.supplier_fk1 ]                                                                                      |
| | | | ) [ "nation"."n_name" NOT NULL as "profit"."nation", sys.year("orders"."o_orderdate" NOT NULL) as "profit"."o_year", sys.sql_sub(decimal(15,2)[tinyint "1"], "lineitem"."l_discount" NOT NULL) |
:  as "%3"."%3", sys.sql_mul("lineitem"."l_extendedprice" NOT NULL, "%3"."%3") as "%4"."%4", sys.sql_mul("partsupp"."ps_supplycost" NOT NULL, "lineitem"."l_quantity" NOT NULL) as "%5"."%5", sys.sql_ :
: sub("%4"."%4", "%5"."%5") as "profit"."amount" ]                                                                                                                                                     :
| | | ) [ "profit"."nation" NOT NULL, "profit"."o_year" ] [ "profit"."nation" NOT NULL, "profit"."o_year", sys.sum no nil ("profit"."amount") as "%1"."%1" ]                                           |
| | ) [ "profit"."nation" NOT NULL, "profit"."o_year", "%1"."%1" as "sum_profit" ]                                                                                                                     |
| ) [ "profit"."nation" NOT NULL, "profit"."o_year", "sum_profit" ] [ "profit"."nation" ASC NOT NULL, "profit"."o_year" NULLS LAST ]                                                                   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
26 tuples
