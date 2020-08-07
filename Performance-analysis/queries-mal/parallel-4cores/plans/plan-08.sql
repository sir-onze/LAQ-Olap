operation successful
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| rel                                                                                                                                                                                                  |
+======================================================================================================================================================================================================+
| project (                                                                                                                                                                                            |
| | project (                                                                                                                                                                                          |
| | | group by (                                                                                                                                                                                       |
| | | | project (                                                                                                                                                                                      |
| | | | | project (                                                                                                                                                                                    |
| | | | | | join (                                                                                                                                                                                     |
| | | | | | | join (                                                                                                                                                                                   |
| | | | | | | | join (                                                                                                                                                                                 |
| | | | | | | | | join (                                                                                                                                                                               |
| | | | | | | | | | join (                                                                                                                                                                             |
| | | | | | | | | | | join (                                                                                                                                                                           |
| | | | | | | | | | | | join (                                                                                                                                                                         |
| | | | | | | | | | | | | table(sys.nation) [ "nation"."%TID%" NOT NULL as "n1"."%TID%", "nation"."%nation_fk1" NOT NULL JOINIDX sys.nation.nation_fk1 as "n1"."%nation_fk1" ] COUNT ,                 |
| | | | | | | | | | | | | select (                                                                                                                                                                     |
| | | | | | | | | | | | | | table(sys.region) [ "region"."r_name" NOT NULL, "region"."%TID%" NOT NULL ] COUNT                                                                                          |
| | | | | | | | | | | | | ) [ "region"."r_name" NOT NULL = char(25) "AMERICA" ]                                                                                                                        |
| | | | | | | | | | | | ) [ "n1"."%nation_fk1" NOT NULL = "region"."%TID%" NOT NULL JOINIDX sys.nation.nation_fk1 ],                                                                                   |
| | | | | | | | | | | | table(sys.customer) [ "customer"."%TID%" NOT NULL, "customer"."%customer_fk1" NOT NULL JOINIDX sys.customer.customer_fk1 ] COUNT                                               |
| | | | | | | | | | | ) [ "customer"."%customer_fk1" NOT NULL = "n1"."%TID%" NOT NULL JOINIDX sys.customer.customer_fk1 ],                                                                             |
| | | | | | | | | | | select (                                                                                                                                                                         |
| | | | | | | | | | | | table(sys.orders) [ "orders"."o_orderdate" NOT NULL, "orders"."%TID%" NOT NULL, "orders"."%orders_fk1" NOT NULL JOINIDX sys.orders.orders_fk1 ] COUNT                          |
| | | | | | | | | | | ) [ date "1995-01-01" <= "orders"."o_orderdate" NOT NULL <= date "1996-12-31" BETWEEN  ]                                                                                         |
| | | | | | | | | | ) [ "orders"."%orders_fk1" NOT NULL = "customer"."%TID%" NOT NULL JOINIDX sys.orders.orders_fk1 ],                                                                                 |
| | | | | | | | | | table(sys.lineitem) [ "lineitem"."l_partkey" NOT NULL, "lineitem"."l_suppkey" NOT NULL, "lineitem"."l_extendedprice" NOT NULL, "lineitem"."l_discount" NOT NULL, "lineitem"."%line |
: item_fk1" NOT NULL JOINIDX sys.lineitem.lineitem_fk1 ] COUNT                                                                                                                                         :
| | | | | | | | | ) [ "lineitem"."%lineitem_fk1" NOT NULL = "orders"."%TID%" NOT NULL JOINIDX sys.lineitem.lineitem_fk1 ],                                                                             |
| | | | | | | | | select (                                                                                                                                                                             |
| | | | | | | | | | table(sys.part) [ "part"."p_partkey" NOT NULL HASHCOL , "part"."p_type" NOT NULL ] COUNT                                                                                           |
| | | | | | | | | ) [ "part"."p_type" NOT NULL = varchar(25) "ECONOMY ANODIZED STEEL" ]                                                                                                                |
| | | | | | | | ) [ "part"."p_partkey" NOT NULL HASHCOL  = "lineitem"."l_partkey" NOT NULL ],                                                                                                          |
| | | | | | | | table(sys.supplier) [ "supplier"."s_suppkey" NOT NULL HASHCOL , "supplier"."%supplier_fk1" NOT NULL JOINIDX sys.supplier.supplier_fk1 ] COUNT                                          |
| | | | | | | ) [ "supplier"."s_suppkey" NOT NULL HASHCOL  = "lineitem"."l_suppkey" NOT NULL ],                                                                                                        |
| | | | | | | table(sys.nation) [ "nation"."n_name" NOT NULL as "n2"."n_name", "nation"."%TID%" NOT NULL as "n2"."%TID%" ] COUNT                                                                       |
| | | | | | ) [ "supplier"."%supplier_fk1" NOT NULL = "n2"."%TID%" NOT NULL JOINIDX sys.supplier.supplier_fk1 ]                                                                                        |
| | | | | ) [ sys.year("orders"."o_orderdate" NOT NULL) as "all_nations"."o_year", sys.sql_sub(decimal(15,2)[tinyint "1"], "lineitem"."l_discount" NOT NULL) as "%6"."%6", sys.sql_mul("lineitem"."l_e |
: xtendedprice" NOT NULL, "%6"."%6") as "all_nations"."volume", "n2"."n_name" NOT NULL as "all_nations"."nation" ]                                                                                     :
| | | | ) [ "all_nations"."o_year", sys.ifthenelse(sys.=("all_nations"."nation" NOT NULL, char(25) "BRAZIL"), "all_nations"."volume", decimal(33,4)[tinyint "0"]) as "%4"."%4", "all_nations"."volume" |
:  ]                                                                                                                                                                                                   :
| | | ) [ "all_nations"."o_year" ] [ "all_nations"."o_year", sys.sum no nil ("%4"."%4") as "%1"."%1", sys.sum no nil ("all_nations"."volume") as "%2"."%2" ]                                           |
| | ) [ "all_nations"."o_year", decimal(38,8)["%1"."%1"] as "%5"."%5", sys.sql_div("%5"."%5", "%2"."%2") as "mkt_share" ]                                                                              |
| ) [ "all_nations"."o_year", "mkt_share" ] [ "all_nations"."o_year" ASC ]                                                                                                                             |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
38 tuples
