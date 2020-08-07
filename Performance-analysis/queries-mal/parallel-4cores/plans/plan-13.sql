operation successful
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| rel                                                                                                                                                                                |
+====================================================================================================================================================================================+
| project (                                                                                                                                                                          |
| | project (                                                                                                                                                                        |
| | | group by (                                                                                                                                                                     |
| | | | project (                                                                                                                                                                    |
| | | | | group by (                                                                                                                                                                 |
| | | | | | project (                                                                                                                                                                |
| | | | | | | left outer join (                                                                                                                                                      |
| | | | | | | | table(sys.customer) [ "customer"."c_custkey" NOT NULL HASHCOL , "customer"."%TID%" NOT NULL ] COUNT ,                                                                |
| | | | | | | | select (                                                                                                                                                             |
| | | | | | | | | table(sys.orders) [ "orders"."o_orderkey" NOT NULL HASHCOL , "orders"."o_comment" NOT NULL, "orders"."%orders_fk1" NOT NULL JOINIDX sys.orders.orders_fk1 ] COUNT  |
| | | | | | | | ) [ (clob[char["orders"."o_comment"]] as "orders"."o_comment") ! FILTER like (clob "%special%requests%", clob "") ]                                                  |
| | | | | | | ) [ "orders"."%orders_fk1" NOT NULL = "customer"."%TID%" NOT NULL JOINIDX sys.orders.orders_fk1 ]                                                                      |
| | | | | | ) [ "customer"."c_custkey" NOT NULL HASHCOL , "orders"."o_orderkey" HASHCOL  ]                                                                                           |
| | | | | ) [ "customer"."c_custkey" NOT NULL HASHCOL  ] [ sys.count no nil ("orders"."o_orderkey" HASHCOL ) as "%3"."%3" ]                                                          |
| | | | ) [ "%3"."%3" as "c_orders"."c_count" ]                                                                                                                                      |
| | | ) [ "c_orders"."c_count" ] [ "c_orders"."c_count", sys.count() NOT NULL as "%4"."%4" ]                                                                                         |
| | ) [ "c_orders"."c_count", "%4"."%4" NOT NULL as "custdist" ]                                                                                                                     |
| ) [ "c_orders"."c_count", "custdist" NOT NULL ] [ "custdist" NULLS LAST NOT NULL, "c_orders"."c_count" NULLS LAST ]                                                                |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
18 tuples
