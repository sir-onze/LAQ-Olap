operation successful
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| rel                                                                                                                                                                                                  |
+======================================================================================================================================================================================================+
| REF 1 (2)                                                                                                                                                                                            |
| select (                                                                                                                                                                                             |
| | select (                                                                                                                                                                                           |
| | | table(sys.part) [ "part"."p_partkey" NOT NULL HASHCOL , "part"."p_name" NOT NULL, "part"."p_mfgr" NOT NULL, "part"."p_brand" NOT NULL, "part"."p_type" NOT NULL, "part"."p_size" NOT NULL, "part |
: "."p_container" NOT NULL, "part"."p_retailprice" NOT NULL, "part"."p_comment" NOT NULL, "part"."%TID%" NOT NULL ] COUNT                                                                              :
| | ) [ "part"."p_brand" NOT NULL = char(10) "Brand#23", "part"."p_container" NOT NULL = char(10) "MED BOX" ]                                                                                          |
| ) [  ]                                                                                                                                                                                               |
| project (                                                                                                                                                                                            |
| | group by (                                                                                                                                                                                         |
| | | select (                                                                                                                                                                                         |
| | | | project (                                                                                                                                                                                      |
| | | | | join (                                                                                                                                                                                       |
| | | | | | join (                                                                                                                                                                                     |
| | | | | | | & REF 1 ,                                                                                                                                                                                |
| | | | | | | project (                                                                                                                                                                                |
| | | | | | | | group by (                                                                                                                                                                             |
| | | | | | | | | project (                                                                                                                                                                            |
| | | | | | | | | | join (                                                                                                                                                                             |
| | | | | | | | | | | table(sys.lineitem) [ "lineitem"."l_partkey" NOT NULL, "lineitem"."l_quantity" NOT NULL ] COUNT ,                                                                                |
| | | | | | | | | | | & REF 1                                                                                                                                                                          |
| | | | | | | | | | ) [ "lineitem"."l_partkey" NOT NULL = "part"."p_partkey" NOT NULL HASHCOL  ]                                                                                                       |
| | | | | | | | | ) [ "part"."p_partkey" NOT NULL HASHCOL , "lineitem"."l_quantity" NOT NULL ]                                                                                                         |
| | | | | | | | ) [ "part"."p_partkey" NOT NULL HASHCOL  ] [ sys.avg no nil (double["lineitem"."l_quantity" NOT NULL] as "lineitem"."l_quantity") as "%1"."%1", "part"."p_partkey" NOT NULL HASHCOL  ] |
| | | | | | | ) [ "%1"."%1", "part"."p_partkey" NOT NULL HASHCOL  as "%16"."%16" ]                                                                                                                     |
| | | | | | ) [ "part"."p_partkey" NOT NULL HASHCOL  * = "%16"."%16" NOT NULL HASHCOL  ],                                                                                                              |
| | | | | | table(sys.lineitem) [ "lineitem"."l_partkey" NOT NULL, "lineitem"."l_quantity" NOT NULL, "lineitem"."l_extendedprice" NOT NULL ] COUNT                                                     |
| | | | | ) [ "part"."p_partkey" NOT NULL HASHCOL  = "lineitem"."l_partkey" NOT NULL ]                                                                                                                 |
| | | | ) [ "lineitem"."l_quantity" NOT NULL, "lineitem"."l_extendedprice" NOT NULL, sys.sql_mul("%1"."%1", double(53,1) "0.2") as "%2"."%2" ]                                                         |
| | | ) [ double(53,2)["lineitem"."l_quantity" NOT NULL] < "%2"."%2" ]                                                                                                                                 |
| | ) [  ] [ sys.sum no nil ("lineitem"."l_extendedprice" NOT NULL) NOT NULL as "%3"."%3" ]                                                                                                            |
| ) [ sys.sql_div(decimal(38,5)["%3"."%3" NOT NULL] as "%3"."%3", decimal(38,2)[decimal(2,1) "70"]) as "avg_yearly" ]                                                                                  |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
30 tuples
