operation successful
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| rel                                                                                                                                                                                                  |
+======================================================================================================================================================================================================+
| project (                                                                                                                                                                                            |
| | project (                                                                                                                                                                                          |
| | | group by (                                                                                                                                                                                       |
| | | | project (                                                                                                                                                                                      |
| | | | | join (                                                                                                                                                                                       |
| | | | | | select (                                                                                                                                                                                   |
| | | | | | | table(sys.lineitem) [ "lineitem"."l_shipdate" NOT NULL, "lineitem"."l_commitdate" NOT NULL, "lineitem"."l_receiptdate" NOT NULL, "lineitem"."l_shipmode" NOT NULL, "lineitem"."%lineitem |
: _fk1" NOT NULL JOINIDX sys.lineitem.lineitem_fk1 ] COUNT                                                                                                                                             :
| | | | | | ) [ "lineitem"."l_shipdate" NOT NULL < "lineitem"."l_commitdate" NOT NULL < "lineitem"."l_receiptdate" NOT NULL BETWEEN , date "1994-01-01" <= "lineitem"."l_receiptdate" NOT NULL < sys.s |
: ql_add(date "1994-01-01", month_interval "12") BETWEEN , "lineitem"."l_shipmode" NOT NULL in (char(10) "MAIL" as "%2"."%2", char(10) "SHIP" as "%3"."%3") ],                                         :
| | | | | | table(sys.orders) [ "orders"."o_orderpriority" NOT NULL, "orders"."%TID%" NOT NULL ] COUNT                                                                                                 |
| | | | | ) [ "lineitem"."%lineitem_fk1" NOT NULL = "orders"."%TID%" NOT NULL JOINIDX sys.lineitem.lineitem_fk1 ]                                                                                      |
| | | | ) [ "lineitem"."l_shipmode" NOT NULL, sys.ifthenelse(sys.or(sys.=("orders"."o_orderpriority" NOT NULL, char(15) "1-URGENT"), sys.=("orders"."o_orderpriority" NOT NULL, char(15) "2-HIGH")), t |
: inyint "1", tinyint "0") as "%7"."%7", sys.ifthenelse(sys.and(sys.<>("orders"."o_orderpriority" NOT NULL, char(15) "1-URGENT"), sys.<>("orders"."o_orderpriority" NOT NULL, char(15) "2-HIGH")), tin :
: yint "1", tinyint "0") as "%10"."%10" ]                                                                                                                                                              :
| | | ) [ "lineitem"."l_shipmode" NOT NULL ] [ "lineitem"."l_shipmode" NOT NULL, sys.sum no nil ("%7"."%7") as "%4"."%4", sys.sum no nil ("%10"."%10") as "%5"."%5" ]                                  |
| | ) [ "lineitem"."l_shipmode" NOT NULL, "%4"."%4" as "high_line_count", "%5"."%5" as "low_line_count" ]                                                                                              |
| ) [ "lineitem"."l_shipmode" NOT NULL, "high_line_count", "low_line_count" ] [ "lineitem"."l_shipmode" ASC NOT NULL ]                                                                                 |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
14 tuples
