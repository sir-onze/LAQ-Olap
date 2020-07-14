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
| | | | | | | | | | | table(sys.orders) [ "orders"."o_orderdate" NOT NULL, "orders"."%TID%" NOT NULL, "orders"."%orders_fk1" NOT NULL JOINIDX sys.orders.orders_fk1 ] COUNT                            |
| | | | | | | | | | ) [ date "1994-01-01" <= "orders"."o_orderdate" NOT NULL < sys.sql_add(date "1994-01-01", month_interval "12") BETWEEN  ],                                                         |
| | | | | | | | | | table(sys.customer) [ "customer"."c_nationkey" NOT NULL, "customer"."%TID%" NOT NULL ] COUNT                                                                                       |
| | | | | | | | | ) [ "orders"."%orders_fk1" NOT NULL = "customer"."%TID%" NOT NULL JOINIDX sys.orders.orders_fk1 ],                                                                                   |
| | | | | | | | | table(sys.lineitem) [ "lineitem"."l_suppkey" NOT NULL, "lineitem"."l_extendedprice" NOT NULL, "lineitem"."l_discount" NOT NULL, "lineitem"."%lineitem_fk1" NOT NULL JOINIDX sys.line |
: item.lineitem_fk1 ] COUNT                                                                                                                                                                            :
| | | | | | | | ) [ "lineitem"."%lineitem_fk1" NOT NULL = "orders"."%TID%" NOT NULL JOINIDX sys.lineitem.lineitem_fk1 ],                                                                               |
| | | | | | | | table(sys.supplier) [ "supplier"."s_suppkey" NOT NULL HASHCOL , "supplier"."s_nationkey" NOT NULL, "supplier"."%supplier_fk1" NOT NULL JOINIDX sys.supplier.supplier_fk1 ] COUNT       |
| | | | | | | ) [ "lineitem"."l_suppkey" NOT NULL = "supplier"."s_suppkey" NOT NULL HASHCOL , "customer"."c_nationkey" NOT NULL = "supplier"."s_nationkey" NOT NULL ],                                 |
| | | | | | | table(sys.nation) [ "nation"."n_name" NOT NULL, "nation"."%TID%" NOT NULL, "nation"."%nation_fk1" NOT NULL JOINIDX sys.nation.nation_fk1 ] COUNT                                         |
| | | | | | ) [ "supplier"."%supplier_fk1" NOT NULL = "nation"."%TID%" NOT NULL JOINIDX sys.supplier.supplier_fk1 ],                                                                                   |
| | | | | | select (                                                                                                                                                                                   |
| | | | | | | table(sys.region) [ "region"."r_name" NOT NULL, "region"."%TID%" NOT NULL ] COUNT                                                                                                        |
| | | | | | ) [ "region"."r_name" NOT NULL = char(25) "ASIA" ]                                                                                                                                         |
| | | | | ) [ "nation"."%nation_fk1" NOT NULL = "region"."%TID%" NOT NULL JOINIDX sys.nation.nation_fk1 ]                                                                                              |
| | | | ) [ "nation"."n_name" NOT NULL, sys.sql_sub(decimal(15,2)[tinyint "1"], "lineitem"."l_discount" NOT NULL) as "%43"."%43", sys.sql_mul("lineitem"."l_extendedprice" NOT NULL, "%43"."%43") as " |
: %3"."%3" ]                                                                                                                                                                                           :
| | | ) [ "nation"."n_name" NOT NULL ] [ "nation"."n_name" NOT NULL, sys.sum no nil ("%3"."%3") as "%1"."%1" ]                                                                                         |
| | ) [ "nation"."n_name" NOT NULL, "%1"."%1" as "revenue" ]                                                                                                                                           |
| ) [ "nation"."n_name" NOT NULL, "revenue" ] [ "revenue" NULLS LAST ]                                                                                                                                 |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
28 tuples
