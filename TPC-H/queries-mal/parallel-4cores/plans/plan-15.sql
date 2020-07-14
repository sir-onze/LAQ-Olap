operation successful
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| rel                                                                                                                                                                                                  |
+======================================================================================================================================================================================================+
| REF 1 (2)                                                                                                                                                                                            |
| project (                                                                                                                                                                                            |
| | group by (                                                                                                                                                                                         |
| | | project (                                                                                                                                                                                        |
| | | | select (                                                                                                                                                                                       |
| | | | | table(sys.lineitem) [ "lineitem"."l_orderkey" NOT NULL HASHCOL , "lineitem"."l_partkey" NOT NULL, "lineitem"."l_suppkey" NOT NULL, "lineitem"."l_linenumber" NOT NULL, "lineitem"."l_quantit |
: y" NOT NULL, "lineitem"."l_extendedprice" NOT NULL, "lineitem"."l_discount" NOT NULL, "lineitem"."l_tax" NOT NULL, "lineitem"."l_returnflag" NOT NULL, "lineitem"."l_linestatus" NOT NULL, "lineitem :
: "."l_shipdate" NOT NULL, "lineitem"."l_commitdate" NOT NULL, "lineitem"."l_receiptdate" NOT NULL, "lineitem"."l_shipinstruct" NOT NULL, "lineitem"."l_shipmode" NOT NULL, "lineitem"."l_comment" NOT :
:  NULL, "lineitem"."%TID%" NOT NULL, "lineitem"."%lineitem_pk" NOT NULL HASHIDX , "lineitem"."%lineitem_fk1" NOT NULL JOINIDX sys.lineitem.lineitem_fk1, "lineitem"."%lineitem_fk2" NOT NULL JOINIDX  :
: sys.lineitem.lineitem_fk2 ] COUNT                                                                                                                                                                    :
| | | | ) [ date "1996-01-01" <= "lineitem"."l_shipdate" NOT NULL < sys.sql_add(date "1996-01-01", month_interval "3") BETWEEN  ]                                                                      |
| | | ) [ "lineitem"."l_suppkey" NOT NULL, sys.sql_sub(decimal(15,2)[tinyint "1"], "lineitem"."l_discount" NOT NULL) as "%11"."%11", sys.sql_mul("lineitem"."l_extendedprice" NOT NULL, "%11"."%11") a |
: s "%4"."%4" ]                                                                                                                                                                                        :
| | ) [ "lineitem"."l_suppkey" NOT NULL ] [ "lineitem"."l_suppkey" NOT NULL, sys.sum no nil ("%4"."%4") as "%1"."%1" ]                                                                                 |
| ) [ "lineitem"."l_suppkey" NOT NULL as "revenue0"."supplier_no", "%1"."%1" as "revenue0"."total_revenue" ]                                                                                           |
| project (                                                                                                                                                                                            |
| | project (                                                                                                                                                                                          |
| | | join (                                                                                                                                                                                           |
| | | | semijoin (                                                                                                                                                                                     |
| | | | | & REF 1 ,                                                                                                                                                                                    |
| | | | | project (                                                                                                                                                                                    |
| | | | | | group by (                                                                                                                                                                                 |
| | | | | | | & REF 1                                                                                                                                                                                  |
| | | | | | ) [  ] [ sys.max no nil ("revenue0"."total_revenue") as "%2"."%2" ]                                                                                                                        |
| | | | | ) [ "%2"."%2" ]                                                                                                                                                                              |
| | | | ) [ "revenue0"."total_revenue" = "%2"."%2" ],                                                                                                                                                  |
| | | | table(sys.supplier) [ "supplier"."s_suppkey" NOT NULL HASHCOL , "supplier"."s_name" NOT NULL, "supplier"."s_address" NOT NULL, "supplier"."s_phone" NOT NULL ] COUNT                           |
| | | ) [ "supplier"."s_suppkey" NOT NULL HASHCOL  = "revenue0"."supplier_no" NOT NULL ]                                                                                                               |
| | ) [ "supplier"."s_suppkey" NOT NULL HASHCOL , "supplier"."s_name" NOT NULL, "supplier"."s_address" NOT NULL, "supplier"."s_phone" NOT NULL, "revenue0"."total_revenue" ]                           |
| ) [ "supplier"."s_suppkey" NOT NULL HASHCOL , "supplier"."s_name" NOT NULL, "supplier"."s_address" NOT NULL, "supplier"."s_phone" NOT NULL, "revenue0"."total_revenue" ] [ "supplier"."s_suppkey" AS |
: C NOT NULL HASHCOL  ]                                                                                                                                                                                :
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
25 tuples
