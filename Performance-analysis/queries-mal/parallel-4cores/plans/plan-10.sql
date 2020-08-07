operation successful
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| rel                                                                                                                                                                                                  |
+======================================================================================================================================================================================================+
| top N (                                                                                                                                                                                              |
| | project (                                                                                                                                                                                          |
| | | project (                                                                                                                                                                                        |
| | | | group by (                                                                                                                                                                                     |
| | | | | project (                                                                                                                                                                                    |
| | | | | | join (                                                                                                                                                                                     |
| | | | | | | join (                                                                                                                                                                                   |
| | | | | | | | join (                                                                                                                                                                                 |
| | | | | | | | | select (                                                                                                                                                                             |
| | | | | | | | | | table(sys.lineitem) [ "lineitem"."l_extendedprice" NOT NULL, "lineitem"."l_discount" NOT NULL, "lineitem"."l_returnflag" NOT NULL, "lineitem"."%lineitem_fk1" NOT NULL JOINIDX sys |
: .lineitem.lineitem_fk1 ] COUNT                                                                                                                                                                       :
| | | | | | | | | ) [ "lineitem"."l_returnflag" NOT NULL = char(1) "R" ],                                                                                                                              |
| | | | | | | | | select (                                                                                                                                                                             |
| | | | | | | | | | table(sys.orders) [ "orders"."o_orderdate" NOT NULL, "orders"."%TID%" NOT NULL, "orders"."%orders_fk1" NOT NULL JOINIDX sys.orders.orders_fk1 ] COUNT                              |
| | | | | | | | | ) [ date "1993-10-01" <= "orders"."o_orderdate" NOT NULL < sys.sql_add(date "1993-10-01", month_interval "3") BETWEEN  ]                                                             |
| | | | | | | | ) [ "lineitem"."%lineitem_fk1" NOT NULL = "orders"."%TID%" NOT NULL JOINIDX sys.lineitem.lineitem_fk1 ],                                                                               |
| | | | | | | | table(sys.customer) [ "customer"."c_custkey" NOT NULL HASHCOL , "customer"."c_name" NOT NULL, "customer"."c_address" NOT NULL, "customer"."c_phone" NOT NULL, "customer"."c_acctbal" N |
: OT NULL, "customer"."c_comment" NOT NULL, "customer"."%TID%" NOT NULL, "customer"."%customer_fk1" NOT NULL JOINIDX sys.customer.customer_fk1 ] COUNT                                                 :
| | | | | | | ) [ "orders"."%orders_fk1" NOT NULL = "customer"."%TID%" NOT NULL JOINIDX sys.orders.orders_fk1 ],                                                                                       |
| | | | | | | table(sys.nation) [ "nation"."n_name" NOT NULL, "nation"."%TID%" NOT NULL ] COUNT                                                                                                        |
| | | | | | ) [ "customer"."%customer_fk1" NOT NULL = "nation"."%TID%" NOT NULL JOINIDX sys.customer.customer_fk1 ]                                                                                    |
| | | | | ) [ "customer"."c_custkey" NOT NULL HASHCOL , "customer"."c_name" NOT NULL, "customer"."c_acctbal" NOT NULL, "customer"."c_phone" NOT NULL, "nation"."n_name" NOT NULL, "customer"."c_addres |
: s" NOT NULL, "customer"."c_comment" NOT NULL, sys.sql_sub(decimal(15,2)[tinyint "1"], "lineitem"."l_discount" NOT NULL) as "%24"."%24", sys.sql_mul("lineitem"."l_extendedprice" NOT NULL, "%24"."%2 :
: 4") as "%3"."%3" ]                                                                                                                                                                                   :
| | | | ) [ "customer"."c_custkey" NOT NULL HASHCOL , "nation"."n_name" NOT NULL ] [ "customer"."c_custkey" NOT NULL HASHCOL , "customer"."c_name" NOT NULL, "customer"."c_acctbal" NOT NULL, "custome |
: r"."c_phone" NOT NULL, "nation"."n_name" NOT NULL, "customer"."c_address" NOT NULL, "customer"."c_comment" NOT NULL, sys.sum no nil ("%3"."%3") as "%1"."%1" ]                                       :
| | | ) [ "customer"."c_custkey" NOT NULL HASHCOL , "customer"."c_name" NOT NULL, "%1"."%1" as "revenue", "customer"."c_acctbal" NOT NULL, "nation"."n_name" NOT NULL, "customer"."c_address" NOT NULL |
: , "customer"."c_phone" NOT NULL, "customer"."c_comment" NOT NULL ]                                                                                                                                   :
| | ) [ "customer"."c_custkey" NOT NULL HASHCOL , "customer"."c_name" NOT NULL, "revenue", "customer"."c_acctbal" NOT NULL, "nation"."n_name" NOT NULL, "customer"."c_address" NOT NULL, "customer"."c |
: _phone" NOT NULL, "customer"."c_comment" NOT NULL ] [ "revenue" NULLS LAST ]                                                                                                                         :
| ) [ bigint "20" ]                                                                                                                                                                                    |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
24 tuples
