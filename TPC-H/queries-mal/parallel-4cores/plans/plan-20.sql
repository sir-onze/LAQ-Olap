operation successful
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| rel                                                                                                                                                                                                  |
+======================================================================================================================================================================================================+
| project (                                                                                                                                                                                            |
| | project (                                                                                                                                                                                          |
| | | semijoin (                                                                                                                                                                                       |
| | | | join (                                                                                                                                                                                         |
| | | | | table(sys.supplier) [ "supplier"."s_suppkey" NOT NULL HASHCOL , "supplier"."s_name" NOT NULL, "supplier"."s_address" NOT NULL, "supplier"."%supplier_fk1" NOT NULL JOINIDX sys.supplier.supp |
: lier_fk1 ] COUNT ,                                                                                                                                                                                   :
| | | | | select (                                                                                                                                                                                     |
| | | | | | table(sys.nation) [ "nation"."n_name" NOT NULL, "nation"."%TID%" NOT NULL ] COUNT                                                                                                          |
| | | | | ) [ "nation"."n_name" NOT NULL = char(25) "CANADA" ]                                                                                                                                         |
| | | | ) [ "supplier"."%supplier_fk1" NOT NULL = "nation"."%TID%" NOT NULL JOINIDX sys.supplier.supplier_fk1 ],                                                                                       |
| | | | project (                                                                                                                                                                                      |
| | | | | select (                                                                                                                                                                                     |
| | | | | | project (                                                                                                                                                                                  |
| | | | | | | group by (                                                                                                                                                                               |
| | | | | | | | join (                                                                                                                                                                                 |
| | | | | | | | | project (                                                                                                                                                                            |
| | | | | | | | | | semijoin (                                                                                                                                                                         |
| | | | | | | | | | | table(sys.partsupp) [ "partsupp"."ps_partkey" NOT NULL HASHCOL , "partsupp"."ps_suppkey" NOT NULL, "partsupp"."ps_availqty" NOT NULL, "partsupp"."%partsupp_pk" NOT NULL HASHIDX |
:   ] COUNT ,                                                                                                                                                                                          :
| | | | | | | | | | | project (                                                                                                                                                                        |
| | | | | | | | | | | | select (                                                                                                                                                                       |
| | | | | | | | | | | | | table(sys.part) [ "part"."p_partkey" NOT NULL HASHCOL , "part"."p_name" NOT NULL ] COUNT                                                                                     |
| | | | | | | | | | | | ) [ (clob[char["part"."p_name" NOT NULL]] as "part"."p_name") FILTER like (clob "forest%", clob "") ]                                                                          |
| | | | | | | | | | | ) [ "part"."p_partkey" NOT NULL HASHCOL  as "%13"."%13" ]                                                                                                                        |
| | | | | | | | | | ) [ "partsupp"."ps_partkey" NOT NULL HASHCOL  any = "%13"."%13" NOT NULL HASHCOL  ]                                                                                                |
| | | | | | | | | ) [ "partsupp"."ps_partkey" NOT NULL HASHCOL , "partsupp"."ps_suppkey" NOT NULL, "partsupp"."ps_availqty" NOT NULL, "partsupp"."%partsupp_pk" NOT NULL HASHIDX , sys.identity("parts |
: upp"."ps_partkey" NOT NULL) HASHCOL  as "%31"."%31" ],                                                                                                                                               :
| | | | | | | | | project (                                                                                                                                                                            |
| | | | | | | | | | select (                                                                                                                                                                           |
| | | | | | | | | | | table(sys.lineitem) [ "lineitem"."l_partkey" NOT NULL, "lineitem"."l_suppkey" NOT NULL, "lineitem"."l_quantity" NOT NULL, "lineitem"."l_shipdate" NOT NULL ] COUNT               |
| | | | | | | | | | ) [ date "1994-01-01" <= "lineitem"."l_shipdate" NOT NULL < sys.sql_add(date "1994-01-01", month_interval "12") BETWEEN  ]                                                         |
| | | | | | | | | ) [ "lineitem"."l_partkey" NOT NULL, "lineitem"."l_suppkey" NOT NULL, "lineitem"."l_quantity" NOT NULL ]                                                                             |
| | | | | | | | ) [ "partsupp"."ps_partkey" NOT NULL HASHCOL  = "lineitem"."l_partkey" NOT NULL HASHCOL , "partsupp"."ps_suppkey" NOT NULL = "lineitem"."l_suppkey" NOT NULL HASHCOL  ]                |
| | | | | | | ) [ "%31"."%31" HASHCOL  ] [ sys.sum no nil ("lineitem"."l_quantity" NOT NULL) NOT NULL as "%4"."%4", "partsupp"."ps_suppkey" NOT NULL, "partsupp"."ps_availqty" NOT NULL ]              |
| | | | | | ) [ "partsupp"."ps_suppkey" NOT NULL, "partsupp"."ps_availqty" NOT NULL, sys.sql_mul("%4"."%4" NOT NULL, decimal(2,1) "5") as "%5"."%5" ]                                                  |
| | | | | ) [ decimal(38,3)["partsupp"."ps_availqty" NOT NULL] > "%5"."%5" ]                                                                                                                           |
| | | | ) [ "partsupp"."ps_suppkey" NOT NULL as "%20"."%20" ]                                                                                                                                          |
| | | ) [ "supplier"."s_suppkey" NOT NULL HASHCOL  any = "%20"."%20" NOT NULL ]                                                                                                                        |
| | ) [ "supplier"."s_name" NOT NULL, "supplier"."s_address" NOT NULL ]                                                                                                                                |
| ) [ "supplier"."s_name" NOT NULL, "supplier"."s_address" NOT NULL ] [ "supplier"."s_name" ASC NOT NULL ]                                                                                             |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
37 tuples
