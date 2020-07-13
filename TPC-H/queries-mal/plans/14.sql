operation successful
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| rel                                                                                                                                                                                                  |
+======================================================================================================================================================================================================+
| project (                                                                                                                                                                                            |
| | group by (                                                                                                                                                                                         |
| | | project (                                                                                                                                                                                        |
| | | | join (                                                                                                                                                                                         |
| | | | | select (                                                                                                                                                                                     |
| | | | | | table(sys.lineitem) [ "lineitem"."l_partkey" NOT NULL, "lineitem"."l_extendedprice" NOT NULL, "lineitem"."l_discount" NOT NULL, "lineitem"."l_shipdate" NOT NULL ] COUNT                   |
| | | | | ) [ date "1995-09-01" <= "lineitem"."l_shipdate" NOT NULL < sys.sql_add(date "1995-09-01", month_interval "1") BETWEEN  ],                                                                   |
| | | | | table(sys.part) [ "part"."p_partkey" NOT NULL HASHCOL , "part"."p_type" NOT NULL ] COUNT                                                                                                     |
| | | | ) [ "lineitem"."l_partkey" NOT NULL = "part"."p_partkey" NOT NULL HASHCOL  ]                                                                                                                   |
| | | ) [ sys.ifthenelse(sys.like("part"."p_type" NOT NULL, char "PROMO%"), sys.sql_mul("lineitem"."l_extendedprice" NOT NULL, sys.sql_sub(decimal(15,2)[tinyint "1"], "lineitem"."l_discount" NOT NUL |
: L)), decimal(33,4)[tinyint "0"]) as "%3"."%3", sys.sql_sub(decimal(15,2)[tinyint "1"], "lineitem"."l_discount" NOT NULL) as "%12"."%12", sys.sql_mul("lineitem"."l_extendedprice" NOT NULL, "%12"."% :
: 12") as "%4"."%4" ]                                                                                                                                                                                  :
| | ) [  ] [ sys.sum no nil ("%3"."%3") as "%1"."%1", sys.sum no nil ("%4"."%4") as "%2"."%2" ]                                                                                                        |
| ) [ sys.sql_div(decimal(38,10)[sys.sql_mul("%1"."%1", decimal(5,2) "10000")], "%2"."%2") as "promo_revenue" ]                                                                                        |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
12 tuples
