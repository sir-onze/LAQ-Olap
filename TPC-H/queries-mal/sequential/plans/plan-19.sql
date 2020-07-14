operation successful
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| rel                                                                                                                                                                                                  |
+======================================================================================================================================================================================================+
| project (                                                                                                                                                                                            |
| | group by (                                                                                                                                                                                         |
| | | project (                                                                                                                                                                                        |
| | | | select (                                                                                                                                                                                       |
| | | | | join (                                                                                                                                                                                       |
| | | | | | select (                                                                                                                                                                                   |
| | | | | | | table(sys.part) [ "part"."p_partkey" NOT NULL HASHCOL , "part"."p_brand" NOT NULL, "part"."p_size" NOT NULL, "part"."p_container" NOT NULL ] COUNT                                       |
| | | | | | ) [ "part"."p_brand" NOT NULL in (char(10) "Brand#34", char(10) "Brand#12", char(10) "Brand#23"), "part"."p_container" NOT NULL in (char(10) "SM CASE" as "%2"."%2", char(10) "SM BOX" as  |
: "%3"."%3", char(10) "SM PACK" as "%4"."%4", char(10) "SM PKG" as "%5"."%5", char(10) "MED BAG" as "%12"."%12", char(10) "MED BOX" as "%13"."%13", char(10) "MED PKG" as "%14"."%14", char(10) "MED P :
: ACK" as "%15"."%15", char(10) "LG CASE" as "%22"."%22", char(10) "LG BOX" as "%23"."%23", char(10) "LG PACK" as "%24"."%24", char(10) "LG PKG" as "%25"."%25") ],                                    :
| | | | | | select (                                                                                                                                                                                   |
| | | | | | | table(sys.lineitem) [ "lineitem"."l_partkey" NOT NULL, "lineitem"."l_quantity" NOT NULL, "lineitem"."l_extendedprice" NOT NULL, "lineitem"."l_discount" NOT NULL, "lineitem"."l_shipinst |
: ruct" NOT NULL, "lineitem"."l_shipmode" NOT NULL ] COUNT                                                                                                                                             :
| | | | | | ) [ "lineitem"."l_shipinstruct" NOT NULL = char(25) "DELIVER IN PERSON", "lineitem"."l_shipmode" NOT NULL in (char(10) "AIR" as "%7"."%7", char(10) "AIR REG" as "%10"."%10") ]            |
| | | | | ) [ "part"."p_partkey" NOT NULL HASHCOL  = "lineitem"."l_partkey" NOT NULL ]                                                                                                                 |
| | | | ) [ (("part"."p_brand" NOT NULL = char(10) "Brand#12", "part"."p_container" NOT NULL in (char(10) "SM CASE" as "%2"."%2", char(10) "SM BOX" as "%3"."%3", char(10) "SM PACK" as "%4"."%4", cha |
: r(10) "SM PKG" as "%5"."%5"), int "1" <= "part"."p_size" NOT NULL <= int "5" BETWEEN , decimal(15,2)[tinyint "1"] <= "lineitem"."l_quantity" NOT NULL <= decimal(15,2)[sys.sql_add(tinyint "1", tiny :
: int "10")] BETWEEN ) or ("part"."p_brand" NOT NULL = char(10) "Brand#23", "part"."p_container" NOT NULL in (char(10) "MED BAG" as "%12"."%12", char(10) "MED BOX" as "%13"."%13", char(10) "MED PKG" :
:  as "%14"."%14", char(10) "MED PACK" as "%15"."%15"), int "1" <= "part"."p_size" NOT NULL <= int "10" BETWEEN , decimal(15,2)[tinyint "10"] <= "lineitem"."l_quantity" NOT NULL <= decimal(15,2)[sys :
: .sql_add(tinyint "10", tinyint "10")] BETWEEN )) or ("part"."p_brand" NOT NULL = char(10) "Brand#34", "part"."p_container" NOT NULL in (char(10) "LG CASE" as "%22"."%22", char(10) "LG BOX" as "%23 :
: "."%23", char(10) "LG PACK" as "%24"."%24", char(10) "LG PKG" as "%25"."%25"), int "1" <= "part"."p_size" NOT NULL <= int "15" BETWEEN , decimal(15,2)[tinyint "20"] <= "lineitem"."l_quantity" NOT  :
: NULL <= decimal(15,2)[sys.sql_add(tinyint "20", tinyint "10")] BETWEEN ) ]                                                                                                                           :
| | | ) [ sys.sql_sub(decimal(15,2)[tinyint "1"], "lineitem"."l_discount" NOT NULL) as "%35"."%35", sys.sql_mul("lineitem"."l_extendedprice" NOT NULL, "%35"."%35") as "%32"."%32" ]                   |
| | ) [  ] [ sys.sum no nil ("%32"."%32") as "%31"."%31" ]                                                                                                                                             |
| ) [ "%31"."%31" as "revenue" ]                                                                                                                                                                       |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
16 tuples
