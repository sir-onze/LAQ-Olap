operation successful
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| rel                                                                                                                                                                                     |
+=========================================================================================================================================================================================+
| project (                                                                                                                                                                               |
| | project (                                                                                                                                                                             |
| | | group by (                                                                                                                                                                          |
| | | | semijoin (                                                                                                                                                                        |
| | | | | project (                                                                                                                                                                       |
| | | | | | select (                                                                                                                                                                      |
| | | | | | | table(sys.orders) [ "orders"."o_orderdate" NOT NULL, "orders"."o_orderpriority" NOT NULL, "orders"."%TID%" NOT NULL ] COUNT                                                 |
| | | | | | ) [ date "1993-07-01" <= "orders"."o_orderdate" NOT NULL < sys.sql_add(date "1993-07-01", month_interval "3") BETWEEN  ]                                                      |
| | | | | ) [ "orders"."o_orderpriority" NOT NULL, "orders"."%TID%" NOT NULL ],                                                                                                           |
| | | | | select (                                                                                                                                                                        |
| | | | | | table(sys.lineitem) [ "lineitem"."l_commitdate" NOT NULL, "lineitem"."l_receiptdate" NOT NULL, "lineitem"."%lineitem_fk1" NOT NULL JOINIDX sys.lineitem.lineitem_fk1 ] COUNT  |
| | | | | ) [ "lineitem"."l_commitdate" NOT NULL < "lineitem"."l_receiptdate" NOT NULL ]                                                                                                  |
| | | | ) [ "lineitem"."%lineitem_fk1" NOT NULL = "orders"."%TID%" NOT NULL JOINIDX sys.lineitem.lineitem_fk1 ]                                                                           |
| | | ) [ "orders"."o_orderpriority" NOT NULL ] [ "orders"."o_orderpriority" NOT NULL, sys.count() NOT NULL as "%2"."%2" ]                                                                |
| | ) [ "orders"."o_orderpriority" NOT NULL, "%2"."%2" NOT NULL as "order_count" ]                                                                                                        |
| ) [ "orders"."o_orderpriority" NOT NULL, "order_count" NOT NULL ] [ "orders"."o_orderpriority" ASC NOT NULL ]                                                                           |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
16 tuples
