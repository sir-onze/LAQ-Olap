operation successful
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| rel                                                                                                                                                                                                  |
+======================================================================================================================================================================================================+
| top N (                                                                                                                                                                                              |

| | project (                                                                                                                                                                                          |

| | | project (                                                                                                                                                                                        |

| | | | group by (                                                                                                                                                                                     |

| | | | | project (                                                                                                                                                                                    |

| | | | | | join (                                                                                                                                                                                     |

| | | | | | | join (                                                                                                                                                                                   |

| | | | | | | | select (                                                                                                                                                                               |
| | | | | | | | | table(sys.lineitem) [ "lineitem"."l_orderkey" NOT NULL HASHCOL , "lineitem"."l_extendedprice" NOT NULL, "lineitem"."l_discount" NOT NULL, "lineitem"."l_shipdate" NOT NULL, "lineite |
: m"."%lineitem_fk1" NOT NULL JOINIDX sys.lineitem.lineitem_fk1 ] COUNT                                                                                                                                :
| | | | | | | | ) [ "lineitem"."l_shipdate" NOT NULL > date "1995-03-15" ],                                                                                                                            |

| | | | | | | | select (                                                                                                                                                                               |
| | | | | | | | | table(sys.orders) [ "orders"."o_orderdate" NOT NULL, "orders"."o_shippriority" NOT NULL, "orders"."%TID%" NOT NULL, "orders"."%orders_fk1" NOT NULL JOINIDX sys.orders.orders_fk1 ]  |
: COUNT                                                                                                                                                                                                :
| | | | | | | | ) [ "orders"."o_orderdate" NOT NULL < date "1995-03-15" ]                                                                                                                              |

| | | | | | | ) [ "lineitem"."%lineitem_fk1" NOT NULL = "orders"."%TID%" NOT NULL JOINIDX sys.lineitem.lineitem_fk1 ],                                                                                 |

| | | | | | | select (                                                                                                                                                                                 |
| | | | | | | | table(sys.customer) [ "customer"."c_mktsegment" NOT NULL, "customer"."%TID%" NOT NULL ] COUNT                                                                                          |
| | | | | | | ) [ "customer"."c_mktsegment" NOT NULL = char(10) "BUILDING" ]                                                                                                                           |

| | | | | | ) [ "orders"."%orders_fk1" NOT NULL = "customer"."%TID%" NOT NULL JOINIDX sys.orders.orders_fk1 ]                                                                                          |

| | | | | ) [ "lineitem"."l_orderkey" NOT NULL HASHCOL , "orders"."o_orderdate" NOT NULL, "orders"."o_shippriority" NOT NULL, sys.sql_sub(decimal(15,2)[tinyint "1"], "lineitem"."l_discount" NOT NULL |
: ) as "%4"."%4", sys.sql_mul("lineitem"."l_extendedprice" NOT NULL, "%4"."%4") as "%3"."%3" ]                                                                                                         :

| | | | ) [ "lineitem"."l_orderkey" NOT NULL HASHCOL , "orders"."o_shippriority" NOT NULL, "orders"."o_orderdate" NOT NULL ] [ "lineitem"."l_orderkey" NOT NULL HASHCOL , "orders"."o_orderdate" NOT N |
: ULL, "orders"."o_shippriority" NOT NULL, sys.sum no nil ("%3"."%3") as "%1"."%1" ]                                                                                                                   :

| | | ) [ "lineitem"."l_orderkey" NOT NULL HASHCOL , "%1"."%1" as "revenue", "orders"."o_orderdate" NOT NULL, "orders"."o_shippriority" NOT NULL ]                                                     |

| | ) [ "lineitem"."l_orderkey" NOT NULL HASHCOL , "revenue", "orders"."o_orderdate" NOT NULL, "orders"."o_shippriority" NOT NULL ] [ "revenue" NULLS LAST, "orders"."o_orderdate" ASC NOT NULL ]      |

| ) [ bigint "10" ]                                                                                                                                                                                    |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
23 tuples
