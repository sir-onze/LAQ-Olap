operation successful
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| rel                                                                                                                                                                                                  |
+======================================================================================================================================================================================================+
| top N (                                                                                                                                                                                              |
| | project (                                                                                                                                                                                          |
| | | project (                                                                                                                                                                                        |
| | | | group by (                                                                                                                                                                                     |
| | | | | join (                                                                                                                                                                                       |
| | | | | | join (                                                                                                                                                                                     |
| | | | | | | semijoin (                                                                                                                                                                               |
| | | | | | | | table(sys.orders) [ "orders"."o_orderkey" NOT NULL HASHCOL , "orders"."o_totalprice" NOT NULL, "orders"."o_orderdate" NOT NULL, "orders"."%TID%" NOT NULL, "orders"."%orders_fk1" NOT  |
: NULL JOINIDX sys.orders.orders_fk1 ] COUNT ,                                                                                                                                                         :
| | | | | | | | project (                                                                                                                                                                              |
| | | | | | | | | select (                                                                                                                                                                             |
| | | | | | | | | | group by (                                                                                                                                                                         |
| | | | | | | | | | | table(sys.lineitem) [ "lineitem"."l_orderkey" NOT NULL HASHCOL , "lineitem"."l_quantity" NOT NULL ] COUNT                                                                        |
| | | | | | | | | | ) [ "lineitem"."l_orderkey" NOT NULL HASHCOL  ] [ "lineitem"."l_orderkey" NOT NULL HASHCOL , sys.sum no nil ("lineitem"."l_quantity" NOT NULL) NOT NULL as "%1"."%1" ]             |
| | | | | | | | | ) [ "%1"."%1" NOT NULL > decimal(38,2)[smallint "300"] ]                                                                                                                             |
| | | | | | | | ) [ "lineitem"."l_orderkey" NOT NULL HASHCOL  as "%10"."%10" ]                                                                                                                         |
| | | | | | | ) [ "orders"."o_orderkey" NOT NULL HASHCOL  any = "%10"."%10" NOT NULL HASHCOL  ],                                                                                                       |
| | | | | | | table(sys.customer) [ "customer"."c_custkey" NOT NULL HASHCOL , "customer"."c_name" NOT NULL, "customer"."%TID%" NOT NULL ] COUNT                                                        |
| | | | | | ) [ "orders"."%orders_fk1" NOT NULL = "customer"."%TID%" NOT NULL JOINIDX sys.orders.orders_fk1 ],                                                                                         |
| | | | | | table(sys.lineitem) [ "lineitem"."l_quantity" NOT NULL, "lineitem"."%lineitem_fk1" NOT NULL JOINIDX sys.lineitem.lineitem_fk1 ] COUNT                                                      |
| | | | | ) [ "lineitem"."%lineitem_fk1" NOT NULL = "orders"."%TID%" NOT NULL JOINIDX sys.lineitem.lineitem_fk1 ]                                                                                      |
| | | | ) [ "customer"."c_custkey" NOT NULL HASHCOL , "orders"."o_orderkey" NOT NULL HASHCOL  ] [ "customer"."c_name" NOT NULL, "customer"."c_custkey" NOT NULL HASHCOL , "orders"."o_orderkey" NOT NU |
: LL HASHCOL , "orders"."o_orderdate" NOT NULL, "orders"."o_totalprice" NOT NULL, sys.sum no nil ("lineitem"."l_quantity" NOT NULL) NOT NULL as "%5"."%5" ]                                            :
| | | ) [ "customer"."c_name" NOT NULL, "customer"."c_custkey" NOT NULL HASHCOL , "orders"."o_orderkey" NOT NULL HASHCOL , "orders"."o_orderdate" NOT NULL, "orders"."o_totalprice" NOT NULL, "%5"."%5 |
: " NOT NULL ]                                                                                                                                                                                         :
| | ) [ "customer"."c_name" NOT NULL, "customer"."c_custkey" NOT NULL HASHCOL , "orders"."o_orderkey" NOT NULL HASHCOL , "orders"."o_orderdate" NOT NULL, "orders"."o_totalprice" NOT NULL, "%5"."%5"  |
: NOT NULL ] [ "orders"."o_totalprice" NULLS LAST NOT NULL, "orders"."o_orderdate" ASC NOT NULL ]                                                                                                      :
| ) [ bigint "100" ]                                                                                                                                                                                   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
24 tuples
