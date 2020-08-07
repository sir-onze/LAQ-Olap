operation successful
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| rel                                                                                                                                                                                                  |
+======================================================================================================================================================================================================+
| REF 1 (2)                                                                                                                                                                                            |
| join (                                                                                                                                                                                               |
| | join (                                                                                                                                                                                             |
| | | join (                                                                                                                                                                                           |
| | | | join (                                                                                                                                                                                         |
| | | | | table(sys.partsupp) [ "partsupp"."ps_partkey" NOT NULL HASHCOL , "partsupp"."ps_suppkey" NOT NULL, "partsupp"."ps_availqty" NOT NULL, "partsupp"."ps_supplycost" NOT NULL, "partsupp"."ps_co |
: mment" NOT NULL, "partsupp"."%TID%" NOT NULL, "partsupp"."%partsupp_pk" NOT NULL HASHIDX , "partsupp"."%partsupp_fk1" NOT NULL JOINIDX sys.partsupp.partsupp_fk1, "partsupp"."%partsupp_fk2" NOT NUL :
: L JOINIDX sys.partsupp.partsupp_fk2 ] COUNT ,                                                                                                                                                        :
| | | | | select (                                                                                                                                                                                     |
| | | | | | table(sys.part) [ "part"."p_partkey" NOT NULL HASHCOL , "part"."p_name" NOT NULL, "part"."p_mfgr" NOT NULL, "part"."p_brand" NOT NULL, "part"."p_type" NOT NULL, "part"."p_size" NOT NULL, |
:  "part"."p_container" NOT NULL, "part"."p_retailprice" NOT NULL, "part"."p_comment" NOT NULL, "part"."%TID%" NOT NULL ] COUNT                                                                        :
| | | | | ) [ "part"."p_size" NOT NULL = int "15", (clob[char["part"."p_type" NOT NULL]] as "part"."p_type") FILTER like (clob "%BRASS", clob "") ]                                                    |
| | | | ) [ "partsupp"."%partsupp_fk2" NOT NULL = "part"."%TID%" NOT NULL JOINIDX sys.partsupp.partsupp_fk2 ],                                                                                         |
| | | | table(sys.supplier) [ "supplier"."s_suppkey" NOT NULL HASHCOL , "supplier"."s_name" NOT NULL, "supplier"."s_address" NOT NULL, "supplier"."s_nationkey" NOT NULL, "supplier"."s_phone" NOT NUL |
: L, "supplier"."s_acctbal" NOT NULL, "supplier"."s_comment" NOT NULL, "supplier"."%TID%" NOT NULL, "supplier"."%supplier_fk1" NOT NULL JOINIDX sys.supplier.supplier_fk1 ] COUNT                      :
| | | ) [ "partsupp"."%partsupp_fk1" NOT NULL = "supplier"."%TID%" NOT NULL JOINIDX sys.partsupp.partsupp_fk1 ],                                                                                       |
| | | table(sys.nation) [ "nation"."n_nationkey" NOT NULL HASHCOL , "nation"."n_name" NOT NULL, "nation"."n_regionkey" NOT NULL, "nation"."n_comment", "nation"."%TID%" NOT NULL, "nation"."%nation_fk |
: 1" NOT NULL JOINIDX sys.nation.nation_fk1 ] COUNT                                                                                                                                                    :
| | ) [ "supplier"."%supplier_fk1" NOT NULL = "nation"."%TID%" NOT NULL JOINIDX sys.supplier.supplier_fk1 ],                                                                                           |
| | select (                                                                                                                                                                                           |
| | | table(sys.region) [ "region"."r_regionkey" NOT NULL HASHCOL , "region"."r_name" NOT NULL, "region"."r_comment", "region"."%TID%" NOT NULL ] COUNT                                                |
| | ) [ "region"."r_name" NOT NULL = char(25) "EUROPE" ]                                                                                                                                               |
| ) [ "nation"."n_regionkey" NOT NULL = "region"."r_regionkey" NOT NULL HASHCOL  ]                                                                                                                     |
| top N (                                                                                                                                                                                              |
| | project (                                                                                                                                                                                          |
| | | project (                                                                                                                                                                                        |
| | | | join (                                                                                                                                                                                         |
| | | | | & REF 1 ,                                                                                                                                                                                    |
| | | | | project (                                                                                                                                                                                    |
| | | | | | group by (                                                                                                                                                                                 |
| | | | | | | join (                                                                                                                                                                                   |
| | | | | | | | join (                                                                                                                                                                                 |
| | | | | | | | | join (                                                                                                                                                                               |
| | | | | | | | | | join (                                                                                                                                                                             |
| | | | | | | | | | | table(sys.partsupp) [ "partsupp"."ps_partkey" NOT NULL HASHCOL , "partsupp"."ps_supplycost" NOT NULL, "partsupp"."%partsupp_fk1" NOT NULL JOINIDX sys.partsupp.partsupp_fk1 ] CO |
: UNT ,                                                                                                                                                                                                :
| | | | | | | | | | | group by (                                                                                                                                                                       |
| | | | | | | | | | | | project (                                                                                                                                                                      |
| | | | | | | | | | | | | & REF 1                                                                                                                                                                      |
| | | | | | | | | | | | ) [ "part"."p_partkey" NOT NULL HASHCOL  ]                                                                                                                                     |
| | | | | | | | | | | ) [ "part"."p_partkey" NOT NULL HASHCOL  ] [ "part"."p_partkey" NOT NULL HASHCOL  ]                                                                                              |
| | | | | | | | | | ) [ "partsupp"."ps_partkey" NOT NULL HASHCOL  = "part"."p_partkey" NOT NULL HASHCOL  ],                                                                                            |
| | | | | | | | | | table(sys.supplier) [ "supplier"."%TID%" NOT NULL, "supplier"."%supplier_fk1" NOT NULL JOINIDX sys.supplier.supplier_fk1 ] COUNT                                                   |
| | | | | | | | | ) [ "partsupp"."%partsupp_fk1" NOT NULL = "supplier"."%TID%" NOT NULL JOINIDX sys.partsupp.partsupp_fk1 ],                                                                           |
| | | | | | | | | table(sys.nation) [ "nation"."%TID%" NOT NULL, "nation"."%nation_fk1" NOT NULL JOINIDX sys.nation.nation_fk1 ] COUNT                                                                 |
| | | | | | | | ) [ "supplier"."%supplier_fk1" NOT NULL = "nation"."%TID%" NOT NULL JOINIDX sys.supplier.supplier_fk1 ],                                                                               |
| | | | | | | | select (                                                                                                                                                                               |
| | | | | | | | | table(sys.region) [ "region"."r_name" NOT NULL, "region"."%TID%" NOT NULL ] COUNT                                                                                                    |
| | | | | | | | ) [ "region"."r_name" NOT NULL = char(25) "EUROPE" ]                                                                                                                                   |
| | | | | | | ) [ "nation"."%nation_fk1" NOT NULL = "region"."%TID%" NOT NULL JOINIDX sys.nation.nation_fk1 ]                                                                                          |
| | | | | | ) [ "part"."p_partkey" NOT NULL HASHCOL  ] [ sys.min no nil ("partsupp"."ps_supplycost" NOT NULL) NOT NULL as "%1"."%1", "part"."p_partkey" NOT NULL HASHCOL  ]                            |
| | | | | ) [ "%1"."%1" NOT NULL, "part"."p_partkey" NOT NULL HASHCOL  as "%31"."%31" ]                                                                                                                |
| | | | ) [ "part"."p_partkey" NOT NULL HASHCOL  * = "%31"."%31" NOT NULL HASHCOL , "partsupp"."ps_supplycost" NOT NULL = "%1"."%1" NOT NULL ]                                                         |
| | | ) [ "supplier"."s_acctbal" NOT NULL, "supplier"."s_name" NOT NULL, "nation"."n_name" NOT NULL, "part"."p_partkey" NOT NULL HASHCOL , "part"."p_mfgr" NOT NULL, "supplier"."s_address" NOT NULL,  |
: "supplier"."s_phone" NOT NULL, "supplier"."s_comment" NOT NULL ]                                                                                                                                     :
| | ) [ "supplier"."s_acctbal" NOT NULL, "supplier"."s_name" NOT NULL, "nation"."n_name" NOT NULL, "part"."p_partkey" NOT NULL HASHCOL , "part"."p_mfgr" NOT NULL, "supplier"."s_address" NOT NULL, "s |
: upplier"."s_phone" NOT NULL, "supplier"."s_comment" NOT NULL ] [ "supplier"."s_acctbal" NULLS LAST NOT NULL, "nation"."n_name" ASC NOT NULL, "supplier"."s_name" ASC NOT NULL, "part"."p_partkey" AS :
: C NOT NULL HASHCOL  ]                                                                                                                                                                                :
| ) [ bigint "10" ]                                                                                                                                                                                    |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
50 tuples
