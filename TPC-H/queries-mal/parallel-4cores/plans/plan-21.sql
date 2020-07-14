operation successful
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| rel                                                                                                                                                                                                  |
+======================================================================================================================================================================================================+
| top N (                                                                                                                                                                                              |
| | project (                                                                                                                                                                                          |
| | | project (                                                                                                                                                                                        |
| | | | group by (                                                                                                                                                                                     |
| | | | | antijoin (                                                                                                                                                                                   |
| | | | | | semijoin (                                                                                                                                                                                 |
| | | | | | | join (                                                                                                                                                                                   |
| | | | | | | | join (                                                                                                                                                                                 |
| | | | | | | | | join (                                                                                                                                                                               |
| | | | | | | | | | select (                                                                                                                                                                           |
| | | | | | | | | | | table(sys.lineitem) [ "lineitem"."l_orderkey" NOT NULL HASHCOL  as "l1"."l_orderkey", "lineitem"."l_suppkey" NOT NULL as "l1"."l_suppkey", "lineitem"."l_commitdate" NOT NULL as |
:  "l1"."l_commitdate", "lineitem"."l_receiptdate" NOT NULL as "l1"."l_receiptdate", "lineitem"."%lineitem_fk1" NOT NULL JOINIDX sys.lineitem.lineitem_fk1 as "l1"."%lineitem_fk1" ] COUNT             :
| | | | | | | | | | ) [ "l1"."l_receiptdate" NOT NULL > "l1"."l_commitdate" NOT NULL ],                                                                                                                |
| | | | | | | | | | select (                                                                                                                                                                           |
| | | | | | | | | | | table(sys.orders) [ "orders"."o_orderstatus" NOT NULL, "orders"."%TID%" NOT NULL ] COUNT                                                                                         |
| | | | | | | | | | ) [ "orders"."o_orderstatus" NOT NULL = char(1) "F" ]                                                                                                                              |
| | | | | | | | | ) [ "l1"."%lineitem_fk1" NOT NULL = "orders"."%TID%" NOT NULL JOINIDX sys.lineitem.lineitem_fk1 ],                                                                                   |
| | | | | | | | | table(sys.supplier) [ "supplier"."s_suppkey" NOT NULL HASHCOL , "supplier"."s_name" NOT NULL, "supplier"."%supplier_fk1" NOT NULL JOINIDX sys.supplier.supplier_fk1 ] COUNT          |
| | | | | | | | ) [ "supplier"."s_suppkey" NOT NULL HASHCOL  = "l1"."l_suppkey" NOT NULL ],                                                                                                            |
| | | | | | | | select (                                                                                                                                                                               |
| | | | | | | | | table(sys.nation) [ "nation"."n_name" NOT NULL, "nation"."%TID%" NOT NULL ] COUNT                                                                                                    |
| | | | | | | | ) [ "nation"."n_name" NOT NULL = char(25) "SAUDI ARABIA" ]                                                                                                                             |
| | | | | | | ) [ "supplier"."%supplier_fk1" NOT NULL = "nation"."%TID%" NOT NULL JOINIDX sys.supplier.supplier_fk1 ],                                                                                 |
| | | | | | | table(sys.lineitem) [ "lineitem"."l_orderkey" NOT NULL HASHCOL  as "l2"."l_orderkey", "lineitem"."l_suppkey" NOT NULL as "l2"."l_suppkey" ] COUNT                                        |
| | | | | | ) [ "l2"."l_orderkey" NOT NULL HASHCOL  = "l1"."l_orderkey" NOT NULL HASHCOL , "l2"."l_suppkey" NOT NULL != "l1"."l_suppkey" NOT NULL ],                                                   |
| | | | | | select (                                                                                                                                                                                   |
| | | | | | | table(sys.lineitem) [ "lineitem"."l_orderkey" NOT NULL HASHCOL  as "l3"."l_orderkey", "lineitem"."l_suppkey" NOT NULL as "l3"."l_suppkey", "lineitem"."l_commitdate" NOT NULL as "l3"."l |
: _commitdate", "lineitem"."l_receiptdate" NOT NULL as "l3"."l_receiptdate" ] COUNT                                                                                                                    :
| | | | | | ) [ "l3"."l_receiptdate" NOT NULL > "l3"."l_commitdate" NOT NULL ]                                                                                                                         |
| | | | | ) [ "l3"."l_orderkey" NOT NULL HASHCOL  = "l1"."l_orderkey" NOT NULL HASHCOL , "l3"."l_suppkey" NOT NULL != "l1"."l_suppkey" NOT NULL ]                                                      |
| | | | ) [ "supplier"."s_name" NOT NULL ] [ "supplier"."s_name" NOT NULL, sys.count() NOT NULL as "%3"."%3" ]                                                                                         |
| | | ) [ "supplier"."s_name" NOT NULL, "%3"."%3" NOT NULL as "numwait" ]                                                                                                                              |
| | ) [ "supplier"."s_name" NOT NULL, "numwait" NOT NULL ] [ "numwait" NULLS LAST NOT NULL, "supplier"."s_name" ASC NOT NULL ]                                                                         |
| ) [ bigint "100" ]                                                                                                                                                                                   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
32 tuples
