operation successful
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| rel                                                                                                                                                                                                  |
+======================================================================================================================================================================================================+
| project (                                                                                                                                                                                            |
| | project (                                                                                                                                                                                          |
| | | group by (                                                                                                                                                                                       |
| | | | project (                                                                                                                                                                                      |
| | | | | project (                                                                                                                                                                                    |
| | | | | | select (                                                                                                                                                                                   |
| | | | | | | table(sys.lineitem) [ "lineitem"."l_quantity" NOT NULL, "lineitem"."l_extendedprice" NOT NULL, "lineitem"."l_discount" NOT NULL, "lineitem"."l_tax" NOT NULL, "lineitem"."l_returnflag"  |
: NOT NULL, "lineitem"."l_linestatus" NOT NULL, "lineitem"."l_shipdate" NOT NULL ] COUNT                                                                                                               :
| | | | | | ) [ "lineitem"."l_shipdate" NOT NULL <= sys.sql_sub(date "1998-12-01", sec_interval(4) "7776000000") ]                                                                                     |
| | | | | ) [ "lineitem"."l_quantity" NOT NULL, "lineitem"."l_extendedprice" NOT NULL, "lineitem"."l_discount" NOT NULL, "lineitem"."l_tax" NOT NULL, "lineitem"."l_returnflag" NOT NULL, "lineitem"." |
: l_linestatus" NOT NULL ]                                                                                                                                                                             :
| | | | ) [ "lineitem"."l_returnflag" NOT NULL, "lineitem"."l_linestatus" NOT NULL, "lineitem"."l_quantity" NOT NULL, "lineitem"."l_extendedprice" NOT NULL, sys.sql_sub(decimal(15,2)[tinyint "1"], " |
: lineitem"."l_discount" NOT NULL) as "%15"."%15", sys.sql_mul("lineitem"."l_extendedprice" NOT NULL, "%15"."%15") as "%12"."%12", sys.sql_add("lineitem"."l_tax" NOT NULL, decimal(15,2)[tinyint "1"] :
: ) as "%16"."%16", sys.sql_mul("%12"."%12", "%16"."%16") as "%13"."%13", "lineitem"."l_discount" NOT NULL ]                                                                                           :
| | | ) [ "lineitem"."l_returnflag" NOT NULL, "lineitem"."l_linestatus" NOT NULL ] [ "lineitem"."l_returnflag" NOT NULL, "lineitem"."l_linestatus" NOT NULL, sys.sum no nil ("lineitem"."l_quantity" N |
: OT NULL) NOT NULL as "%1"."%1", sys.sum no nil ("lineitem"."l_extendedprice" NOT NULL) NOT NULL as "%2"."%2", sys.sum no nil ("%12"."%12") as "%3"."%3", sys.sum no nil ("%13"."%13") as "%4"."%4",  :
: sys.avg no nil (double["lineitem"."l_quantity" NOT NULL] as "lineitem"."l_quantity") as "%5"."%5", sys.avg no nil (double["lineitem"."l_extendedprice" NOT NULL] as "lineitem"."l_extendedprice") as :
:  "%6"."%6", sys.avg no nil (double["lineitem"."l_discount" NOT NULL] as "lineitem"."l_discount") as "%7"."%7", sys.count() NOT NULL as "%10"."%10" ]                                                 :
| | ) [ "lineitem"."l_returnflag" NOT NULL, "lineitem"."l_linestatus" NOT NULL, "%1"."%1" NOT NULL as "sum_qty", "%2"."%2" NOT NULL as "sum_base_price", "%3"."%3" as "sum_disc_price", "%4"."%4" as " |
: sum_charge", "%5"."%5" as "avg_qty", "%6"."%6" as "avg_price", "%7"."%7" as "avg_disc", "%10"."%10" NOT NULL as "count_order" ]                                                                      :
| ) [ "lineitem"."l_returnflag" NOT NULL, "lineitem"."l_linestatus" NOT NULL, "sum_qty" NOT NULL, "sum_base_price" NOT NULL, "sum_disc_price", "sum_charge", "avg_qty", "avg_price", "avg_disc", "coun |
: t_order" NOT NULL ] [ "lineitem"."l_returnflag" ASC NOT NULL, "lineitem"."l_linestatus" ASC NOT NULL ]                                                                                               :
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
13 tuples
