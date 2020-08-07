operation successful
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| rel                                                                                                                                                                                                  |
+======================================================================================================================================================================================================+
| project (                                                                                                                                                                                            |
| | project (                                                                                                                                                                                          |
| | | group by (                                                                                                                                                                                       |
| | | | group by (                                                                                                                                                                                     |
| | | | | antijoin (                                                                                                                                                                                   |
| | | | | | join (                                                                                                                                                                                     |
| | | | | | | table(sys.partsupp) [ "partsupp"."ps_suppkey" NOT NULL, "partsupp"."%partsupp_fk2" NOT NULL JOINIDX sys.partsupp.partsupp_fk2 ] COUNT ,                                                  |
| | | | | | | select (                                                                                                                                                                                 |
| | | | | | | | table(sys.part) [ "part"."p_brand" NOT NULL, "part"."p_type" NOT NULL, "part"."p_size" NOT NULL, "part"."%TID%" NOT NULL ] COUNT                                                       |
| | | | | | | ) [ "part"."p_brand" NOT NULL != char(10) "Brand#45", (clob[char["part"."p_type" NOT NULL]] as "part"."p_type") ! FILTER like (clob "MEDIUM POLISHED%", clob ""), "part"."p_size" NOT NU |
: LL in (int "49" as "%2"."%2", int "14" as "%3"."%3", int "23" as "%4"."%4", int "45" as "%5"."%5", int "19" as "%6"."%6", int "3" as "%7"."%7", int "36" as "%10"."%10", int "9" as "%11"."%11") ]   :
| | | | | | ) [ "partsupp"."%partsupp_fk2" NOT NULL = "part"."%TID%" NOT NULL JOINIDX sys.partsupp.partsupp_fk2 ],                                                                                     |
| | | | | | project (                                                                                                                                                                                  |
| | | | | | | select (                                                                                                                                                                                 |
| | | | | | | | table(sys.supplier) [ "supplier"."s_suppkey" NOT NULL HASHCOL , "supplier"."s_comment" NOT NULL ] COUNT                                                                                |
| | | | | | | ) [ (clob[char["supplier"."s_comment" NOT NULL]] as "supplier"."s_comment") FILTER like (clob "%Customer%Complaints%", clob "") ]                                                        |
| | | | | | ) [ "supplier"."s_suppkey" NOT NULL HASHCOL  as "%20"."%20" ]                                                                                                                              |
| | | | | ) [ "partsupp"."ps_suppkey" NOT NULL all <> "%20"."%20" NOT NULL HASHCOL  ]                                                                                                                  |
| | | | ) [ "part"."p_brand" NOT NULL, "part"."p_size" NOT NULL, "partsupp"."ps_suppkey" NOT NULL as "%21"."%21", "part"."p_type" NOT NULL ] [ "part"."p_brand" NOT NULL, "part"."p_type" NOT NULL, "p |
: art"."p_size" NOT NULL, "%21"."%21" NOT NULL ]                                                                                                                                                       :
| | | ) [ "part"."p_brand" NOT NULL, "part"."p_size" NOT NULL, "part"."p_type" NOT NULL ] [ "part"."p_brand" NOT NULL, "part"."p_type" NOT NULL, "part"."p_size" NOT NULL, sys.count no nil ("%21"."%2 |
: 1" NOT NULL) NOT NULL as "%15"."%15" ]                                                                                                                                                               :
| | ) [ "part"."p_brand" NOT NULL, "part"."p_type" NOT NULL, "part"."p_size" NOT NULL, "%15"."%15" NOT NULL as "supplier_cnt" ]                                                                        |
| ) [ "part"."p_brand" NOT NULL, "part"."p_type" NOT NULL, "part"."p_size" NOT NULL, "supplier_cnt" NOT NULL ] [ "supplier_cnt" NULLS LAST NOT NULL, "part"."p_brand" ASC NOT NULL, "part"."p_type" AS |
: C NOT NULL, "part"."p_size" ASC NOT NULL ]                                                                                                                                                           :
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
21 tuples
