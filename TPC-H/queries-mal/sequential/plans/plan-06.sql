operation successful
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| rel                                                                                                                                                                                                  |
+======================================================================================================================================================================================================+
| project (                                                                                                                                                                                            |
| | group by (                                                                                                                                                                                         |
| | | project (                                                                                                                                                                                        |
| | | | select (                                                                                                                                                                                       |
| | | | | table(sys.lineitem) [ "lineitem"."l_quantity" NOT NULL, "lineitem"."l_extendedprice" NOT NULL, "lineitem"."l_discount" NOT NULL, "lineitem"."l_shipdate" NOT NULL ] COUNT                    |
| | | | ) [ date "1994-01-01" <= "lineitem"."l_shipdate" NOT NULL < sys.sql_add(date "1994-01-01", month_interval "12") BETWEEN , decimal(15,2)[sys.sql_sub(decimal(3,2) "6", decimal(3,2) "1")] <= "l |
: ineitem"."l_discount" NOT NULL <= decimal(15,2)[sys.sql_add(decimal(3,2) "6", decimal(3,2) "1")] BETWEEN , "lineitem"."l_quantity" NOT NULL < decimal(15,2)[tinyint "24"] ]                          :
| | | ) [ sys.sql_mul("lineitem"."l_extendedprice" NOT NULL, "lineitem"."l_discount" NOT NULL) as "%2"."%2" ]                                                                                          |
| | ) [  ] [ sys.sum no nil ("%2"."%2") as "%1"."%1" ]                                                                                                                                                 |
| ) [ "%1"."%1" as "revenue" ]                                                                                                                                                                         |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
9 tuples
