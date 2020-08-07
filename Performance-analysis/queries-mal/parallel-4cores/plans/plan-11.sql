operation successful
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| rel                                                                                                                                                                                                  |
+======================================================================================================================================================================================================+
| project (                                                                                                                                                                                            |
| | project (                                                                                                                                                                                          |
| | | semijoin (                                                                                                                                                                                       |
| | | | project (                                                                                                                                                                                      |
| | | | | group by (                                                                                                                                                                                   |
| | | | | | project (                                                                                                                                                                                  |
| | | | | | | join (                                                                                                                                                                                   |
| | | | | | | | join (                                                                                                                                                                                 |
| | | | | | | | | table(sys.supplier) [ "supplier"."%TID%" NOT NULL, "supplier"."%supplier_fk1" NOT NULL JOINIDX sys.supplier.supplier_fk1 ] COUNT ,                                                   |
| | | | | | | | | select (                                                                                                                                                                             |
| | | | | | | | | | table(sys.nation) [ "nation"."n_name" NOT NULL, "nation"."%TID%" NOT NULL ] COUNT                                                                                                  |
| | | | | | | | | ) [ "nation"."n_name" NOT NULL = char(25) "GERMANY" ]                                                                                                                                |
| | | | | | | | ) [ "supplier"."%supplier_fk1" NOT NULL = "nation"."%TID%" NOT NULL JOINIDX sys.supplier.supplier_fk1 ],                                                                               |
| | | | | | | | table(sys.partsupp) [ "partsupp"."ps_partkey" NOT NULL HASHCOL , "partsupp"."ps_availqty" NOT NULL, "partsupp"."ps_supplycost" NOT NULL, "partsupp"."%partsupp_fk1" NOT NULL JOINIDX s |
: ys.partsupp.partsupp_fk1 ] COUNT                                                                                                                                                                     :
| | | | | | | ) [ "partsupp"."%partsupp_fk1" NOT NULL = "supplier"."%TID%" NOT NULL JOINIDX sys.partsupp.partsupp_fk1 ]                                                                                |
| | | | | | ) [ "partsupp"."ps_partkey" NOT NULL HASHCOL , sys.sql_mul("partsupp"."ps_supplycost" NOT NULL, "partsupp"."ps_availqty" NOT NULL) as "%6"."%6", "%6"."%6" as "%7"."%7" ]                  |
| | | | | ) [ "partsupp"."ps_partkey" NOT NULL HASHCOL  ] [ "partsupp"."ps_partkey" NOT NULL HASHCOL , sys.sum no nil ("%6"."%6") as "%1"."%1", sys.sum no nil ("%7"."%7") as "%2"."%2" ]              |
| | | | ) [ "partsupp"."ps_partkey" NOT NULL HASHCOL , "%1"."%1", "%2"."%2", "%2"."%2" as "%15"."%15" ],                                                                                               |
| | | | project (                                                                                                                                                                                      |
| | | | | group by (                                                                                                                                                                                   |
| | | | | | project (                                                                                                                                                                                  |
| | | | | | | join (                                                                                                                                                                                   |
| | | | | | | | join (                                                                                                                                                                                 |
| | | | | | | | | table(sys.supplier) [ "supplier"."%TID%" NOT NULL, "supplier"."%supplier_fk1" NOT NULL JOINIDX sys.supplier.supplier_fk1 ] COUNT ,                                                   |
| | | | | | | | | select (                                                                                                                                                                             |
| | | | | | | | | | table(sys.nation) [ "nation"."n_name" NOT NULL, "nation"."%TID%" NOT NULL ] COUNT                                                                                                  |
| | | | | | | | | ) [ "nation"."n_name" NOT NULL = char(25) "GERMANY" ]                                                                                                                                |
| | | | | | | | ) [ "supplier"."%supplier_fk1" NOT NULL = "nation"."%TID%" NOT NULL JOINIDX sys.supplier.supplier_fk1 ],                                                                               |
| | | | | | | | table(sys.partsupp) [ "partsupp"."ps_availqty" NOT NULL, "partsupp"."ps_supplycost" NOT NULL, "partsupp"."%partsupp_fk1" NOT NULL JOINIDX sys.partsupp.partsupp_fk1 ] COUNT            |
| | | | | | | ) [ "partsupp"."%partsupp_fk1" NOT NULL = "supplier"."%TID%" NOT NULL JOINIDX sys.partsupp.partsupp_fk1 ]                                                                                |
| | | | | | ) [ sys.sql_mul("partsupp"."ps_supplycost" NOT NULL, "partsupp"."ps_availqty" NOT NULL) as "%10"."%10" ]                                                                                   |
| | | | | ) [  ] [ sys.sum no nil ("%10"."%10") as "%3"."%3" ]                                                                                                                                         |
| | | | ) [ sys.sql_mul("%3"."%3", decimal(12,11) "1") as "%4"."%4", sys.scale_down("%4"."%4", hugeint "100000") as "%16"."%16" ]                                                                      |
| | | ) [ "%15"."%15" > "%16"."%16" ]                                                                                                                                                                  |
| | ) [ "partsupp"."ps_partkey" NOT NULL HASHCOL , "%1"."%1" as "value" ]                                                                                                                              |
| ) [ "partsupp"."ps_partkey" NOT NULL HASHCOL , "value" ] [ "value" NULLS LAST ]                                                                                                                      |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
36 tuples
