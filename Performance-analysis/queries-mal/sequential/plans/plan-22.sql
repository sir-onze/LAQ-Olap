operation successful
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| rel                                                                                                                                                                                                  |
+======================================================================================================================================================================================================+
| project (                                                                                                                                                                                            |
| | project (                                                                                                                                                                                          |
| | | group by (                                                                                                                                                                                       |
| | | | project (                                                                                                                                                                                      |
| | | | | antijoin (                                                                                                                                                                                   |
| | | | | | semijoin (                                                                                                                                                                                 |
| | | | | | | project (                                                                                                                                                                                |
| | | | | | | | select (                                                                                                                                                                               |
| | | | | | | | | table(sys.customer) [ "customer"."c_custkey" NOT NULL HASHCOL , "customer"."c_phone" NOT NULL, "customer"."c_acctbal" NOT NULL ] COUNT                                               |
| | | | | | | | ) [ sys.substring(clob["customer"."c_phone" NOT NULL] as "customer"."c_phone", int "1", int "2") in (clob "13" as "%2"."%2", clob "31" as "%3"."%3", clob "23" as "%4"."%4", clob "29" |
:  as "%5"."%5", clob "30" as "%6"."%6", clob "18" as "%7"."%7", clob "17" as "%10"."%10") ]                                                                                                           :
| | | | | | | ) [ "customer"."c_custkey" NOT NULL HASHCOL , "customer"."c_phone" NOT NULL, "customer"."c_acctbal" NOT NULL ],                                                                          |
| | | | | | | project (                                                                                                                                                                                |
| | | | | | | | group by (                                                                                                                                                                             |
| | | | | | | | | project (                                                                                                                                                                            |
| | | | | | | | | | select (                                                                                                                                                                           |
| | | | | | | | | | | table(sys.customer) [ "customer"."c_phone" NOT NULL, "customer"."c_acctbal" NOT NULL ] COUNT                                                                                     |
| | | | | | | | | | ) [ "customer"."c_acctbal" NOT NULL > decimal(15,2)[decimal(3,2) "0"], sys.substring(clob["customer"."c_phone" NOT NULL] as "customer"."c_phone", int "1", int "2") in (clob "13"  |
: as "%12"."%12", clob "31" as "%13"."%13", clob "23" as "%14"."%14", clob "29" as "%15"."%15", clob "30" as "%16"."%16", clob "18" as "%17"."%17", clob "17" as "%20"."%20") ]                        :
| | | | | | | | | ) [ "customer"."c_acctbal" NOT NULL ]                                                                                                                                                |
| | | | | | | | ) [  ] [ sys.avg no nil (double["customer"."c_acctbal" NOT NULL] as "customer"."c_acctbal") as "%21"."%21" ]                                                                           |
| | | | | | | ) [ "%21"."%21" ]                                                                                                                                                                        |
| | | | | | ) [ double(53,2)["customer"."c_acctbal" NOT NULL] > "%21"."%21" ],                                                                                                                         |
| | | | | | table(sys.orders) [ "orders"."o_custkey" NOT NULL ] COUNT                                                                                                                                  |
| | | | | ) [ "orders"."o_custkey" NOT NULL = "customer"."c_custkey" NOT NULL HASHCOL  ]                                                                                                               |
| | | | ) [ clob["customer"."c_phone" NOT NULL] as "%36"."%36", sys.substring("%36"."%36", int "1", int "2") as "custsale"."cntrycode", "customer"."c_acctbal" NOT NULL as "custsale"."c_acctbal" ]    |
| | | ) [ "custsale"."cntrycode" ] [ "custsale"."cntrycode", sys.count() NOT NULL as "%23"."%23", sys.sum no nil ("custsale"."c_acctbal" NOT NULL) NOT NULL as "%24"."%24" ]                           |
| | ) [ "custsale"."cntrycode", "%23"."%23" NOT NULL as "numcust", "%24"."%24" NOT NULL as "totacctbal" ]                                                                                              |
| ) [ "custsale"."cntrycode", "numcust" NOT NULL, "totacctbal" NOT NULL ] [ "custsale"."cntrycode" ASC ]                                                                                               |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
27 tuples
