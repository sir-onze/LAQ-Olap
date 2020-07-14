operation successful
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| rel                                                                                                                                                                                                  |
+======================================================================================================================================================================================================+
| project (                                                                                                                                                                                            |
| | project (                                                                                                                                                                                          |
| | | group by (                                                                                                                                                                                       |
| | | | project (                                                                                                                                                                                      |
| | | | | select (                                                                                                                                                                                     |
| | | | | | join (                                                                                                                                                                                     |
| | | | | | | join (                                                                                                                                                                                   |
| | | | | | | | join (                                                                                                                                                                                 |
| | | | | | | | | join (                                                                                                                                                                               |
| | | | | | | | | | join (                                                                                                                                                                             |
| | | | | | | | | | | select (                                                                                                                                                                         |
| | | | | | | | | | | | table(sys.lineitem) [ "lineitem"."l_suppkey" NOT NULL, "lineitem"."l_extendedprice" NOT NULL, "lineitem"."l_discount" NOT NULL, "lineitem"."l_shipdate" NOT NULL, "lineitem"." |
: %lineitem_fk1" NOT NULL JOINIDX sys.lineitem.lineitem_fk1 ] COUNT                                                                                                                                    :
| | | | | | | | | | | ) [ date "1995-01-01" <= "lineitem"."l_shipdate" NOT NULL <= date "1996-12-31" BETWEEN  ],                                                                                       |
| | | | | | | | | | | table(sys.orders) [ "orders"."%TID%" NOT NULL, "orders"."%orders_fk1" NOT NULL JOINIDX sys.orders.orders_fk1 ] COUNT                                                             |
| | | | | | | | | | ) [ "lineitem"."%lineitem_fk1" NOT NULL = "orders"."%TID%" NOT NULL JOINIDX sys.lineitem.lineitem_fk1 ],                                                                           |
| | | | | | | | | | table(sys.supplier) [ "supplier"."s_suppkey" NOT NULL HASHCOL , "supplier"."%supplier_fk1" NOT NULL JOINIDX sys.supplier.supplier_fk1 ] COUNT                                      |
| | | | | | | | | ) [ "supplier"."s_suppkey" NOT NULL HASHCOL  = "lineitem"."l_suppkey" NOT NULL ],                                                                                                    |
| | | | | | | | | table(sys.nation) [ "nation"."n_name" NOT NULL as "n1"."n_name", "nation"."%TID%" NOT NULL as "n1"."%TID%" ] COUNT                                                                   |
| | | | | | | | ) [ "supplier"."%supplier_fk1" NOT NULL = "n1"."%TID%" NOT NULL JOINIDX sys.supplier.supplier_fk1 ],                                                                                   |
| | | | | | | | table(sys.customer) [ "customer"."%TID%" NOT NULL, "customer"."%customer_fk1" NOT NULL JOINIDX sys.customer.customer_fk1 ] COUNT                                                       |
| | | | | | | ) [ "orders"."%orders_fk1" NOT NULL = "customer"."%TID%" NOT NULL JOINIDX sys.orders.orders_fk1 ],                                                                                       |
| | | | | | | table(sys.nation) [ "nation"."n_name" NOT NULL as "n2"."n_name", "nation"."%TID%" NOT NULL as "n2"."%TID%" ] COUNT                                                                       |
| | | | | | ) [ "customer"."%customer_fk1" NOT NULL = "n2"."%TID%" NOT NULL JOINIDX sys.customer.customer_fk1 ]                                                                                        |
| | | | | ) [ ("n1"."n_name" NOT NULL = char(25) "FRANCE", "n2"."n_name" NOT NULL = char(25) "GERMANY") or ("n1"."n_name" NOT NULL = char(25) "GERMANY", "n2"."n_name" NOT NULL = char(25) "FRANCE") ] |
| | | | ) [ "n1"."n_name" NOT NULL as "shipping"."supp_nation", "n2"."n_name" NOT NULL as "shipping"."cust_nation", sys.year("lineitem"."l_shipdate" NOT NULL) as "shipping"."l_year", sys.sql_sub(dec |
: imal(15,2)[tinyint "1"], "lineitem"."l_discount" NOT NULL) as "%3"."%3", sys.sql_mul("lineitem"."l_extendedprice" NOT NULL, "%3"."%3") as "shipping"."volume" ]                                      :
| | | ) [ "shipping"."supp_nation" NOT NULL, "shipping"."cust_nation" NOT NULL, "shipping"."l_year" ] [ "shipping"."supp_nation" NOT NULL, "shipping"."cust_nation" NOT NULL, "shipping"."l_year", sys |
: .sum no nil ("shipping"."volume") as "%1"."%1" ]                                                                                                                                                     :
| | ) [ "shipping"."supp_nation" NOT NULL, "shipping"."cust_nation" NOT NULL, "shipping"."l_year", "%1"."%1" as "revenue" ]                                                                            |
| ) [ "shipping"."supp_nation" NOT NULL, "shipping"."cust_nation" NOT NULL, "shipping"."l_year", "revenue" ] [ "shipping"."supp_nation" ASC NOT NULL, "shipping"."cust_nation" ASC NOT NULL, "shipping |
: "."l_year" ASC ]                                                                                                                                                                                     :
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
28 tuples
