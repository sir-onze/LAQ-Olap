operation successful
+-----------+---------------------------+-------------------+-----------------+------------------------------------------+
| s_suppkey | s_name                    | s_address         | s_phone         | total_revenue                            |
+===========+===========================+===================+=================+==========================================+
|      8449 | Supplier#000008449        | Wp34zim9qYFbVctdW | 20-469-856-8873 |                             1772627.2087 |
+-----------+---------------------------+-------------------+-----------------+------------------------------------------+
1 tuple
+-------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| usec  | statement                                                                                                                                                                                    |
+=======+==============================================================================================================================================================================================+
|     3 | X_5=0@0:void := querylog.define("trace with revenue0 (supplier_no, total_revenue) as\n( select l_suppkey,\n sum(l_extendedprice * (1 - l_discount)) \n from lineitem\n where l_shipdate >= d |
:       : ate \\'1996-01-01\\'\n and l_shipdate < date \\'1996-01-01\\' + interval \\'3\\' month\n group by l_suppkey\n)\nselect s_suppkey,\n s_name,\n s_address,\n s_phone,\n total_revenue\nfrom su :
:       : pplier, revenue0\nwhere s_suppkey = supplier_no\n and total_revenue = (\n select\n max(total_revenue)\n from\n revenue0\n )\norder by s_suppkey;":str, "default_pipe":str, 168:int); #[1] (0 :
:       : ) QLOGdefineNaive 5 <- 6 7 269                                                                                                                                                               :
|    11 | X_247=[5]:bat[:str] := bat.pack("s_suppkey":str, "s_name":str, "s_address":str, "s_phone":str, "total_revenue":str); #[4] (0) MATpackValues 247 <- 193 204 210 216 265                       |
|     2 | X_8=0:int := sql.mvc(); #[8] (0) SQLmvc 8                                                                                                                                                    |
|    13 | X_250=[5]:bat[:int] := bat.pack(0:int, 0:int, 0:int, 0:int, 4:int); #[7] (0) MATpackValues 250 <- 14 14 14 14 268                                                                            |
|     7 | X_473=[1500303]:bat[:date] := sql.bind(X_8=0:int, "sys":str, "lineitem":str, "l_shipdate":str, 0:int, 0:int, 4:int); #[9] (0) mvc_bind_wrap 473 <- 8 10 11 81 14 14 268                      |
|     5 | X_248=[5]:bat[:str] := bat.pack("int":str, "char":str, "varchar":str, "char":str, "decimal":str); #[5] (0) MATpackValues 248 <- 253 257 260 257 266                                          |
|    12 | X_249=[5]:bat[:int] := bat.pack(32:int, 25:int, 40:int, 15:int, 38:int); #[6] (0) MATpackValues 249 <- 254 258 261 164 267                                                                   |
|     5 | X_246=[5]:bat[:str] := bat.pack("sys.supplier":str, "sys.supplier":str, "sys.supplier":str, "sys.supplier":str, "sys.revenue0":str); #[3] (0) MATpackValues 246 <- 251 251 251 251 264       |
|     6 | X_209=[10000]:bat[:str] := sql.bind(X_8=0:int, "sys":str, "supplier":str, "s_address":str, 0:int); #[91] (10000) mvc_bind_wrap 209 <- 8 10 191 210 14                                        |
|     5 | X_198=[10000]:bat[:int] := sql.bind(X_8=0:int, "sys":str, "supplier":str, "s_suppkey":str, 0:int); #[83] (10000) mvc_bind_wrap 198 <- 8 10 191 193 14                                        |
|     4 | C_190=[10000]:bat[:oid] := sql.tid(X_8=0:int, "sys":str, "supplier":str); #[82] (10000) SQLtid 190 <- 8 10 191                                                                               |
|     6 | X_203=[10000]:bat[:str] := sql.bind(X_8=0:int, "sys":str, "supplier":str, "s_name":str, 0:int); #[89] (10000) mvc_bind_wrap 203 <- 8 10 191 204 14                                           |
|     4 | X_423=[1500306]:bat[:lng] := sql.bind(X_8=0:int, "sys":str, "lineitem":str, "l_discount":str, 0:int, 3:int, 4:int); #[60] (0) mvc_bind_wrap 423 <- 8 10 11 57 14 4 268                       |
|     5 | C_320=[1500306]:bat[:oid] := sql.tid(X_8=0:int, "sys":str, "lineitem":str, 3:int, 4:int); #[52] (0) SQLtid 320 <- 8 10 11 4 268                                                              |
|    41 | X_406=[1500306]:bat[:lng] := sql.bind(X_8=0:int, "sys":str, "lineitem":str, "l_extendedprice":str, 0:int, 3:int, 4:int); #[58] (0) mvc_bind_wrap 406 <- 8 10 11 51 14 4 268                  |
|    38 | X_365=[1500306]:bat[:int] := sql.bind(X_8=0:int, "sys":str, "lineitem":str, "l_suppkey":str, 0:int, 3:int, 4:int); #[54] (0) mvc_bind_wrap 365 <- 8 10 11 33 14 4 268                        |
|     7 | X_476=[1500306]:bat[:date] := sql.bind(X_8=0:int, "sys":str, "lineitem":str, "l_shipdate":str, 0:int, 3:int, 4:int); #[51] (0) mvc_bind_wrap 476 <- 8 10 11 81 14 4 268                      |
|     4 | X_421=[1500303]:bat[:lng] := sql.bind(X_8=0:int, "sys":str, "lineitem":str, "l_discount":str, 0:int, 2:int, 4:int); #[46] (0) mvc_bind_wrap 421 <- 8 10 11 57 14 19 268                      |
|     3 | X_405=[1500303]:bat[:lng] := sql.bind(X_8=0:int, "sys":str, "lineitem":str, "l_extendedprice":str, 0:int, 2:int, 4:int); #[44] (0) mvc_bind_wrap 405 <- 8 10 11 51 14 19 268                 |
|     3 | X_364=[1500303]:bat[:int] := sql.bind(X_8=0:int, "sys":str, "lineitem":str, "l_suppkey":str, 0:int, 2:int, 4:int); #[40] (0) mvc_bind_wrap 364 <- 8 10 11 33 14 19 268                       |
|     2 | C_318=[1500303]:bat[:oid] := sql.tid(X_8=0:int, "sys":str, "lineitem":str, 2:int, 4:int); #[38] (0) SQLtid 318 <- 8 10 11 19 268                                                             |
|    23 | X_475=[1500303]:bat[:date] := sql.bind(X_8=0:int, "sys":str, "lineitem":str, "l_shipdate":str, 0:int, 2:int, 4:int); #[37] (0) mvc_bind_wrap 475 <- 8 10 11 81 14 19 268                     |
|     5 | X_363=[1500303]:bat[:int] := sql.bind(X_8=0:int, "sys":str, "lineitem":str, "l_suppkey":str, 0:int, 1:int, 4:int); #[26] (0) mvc_bind_wrap 363 <- 8 10 11 33 14 16 268                       |
|    33 | X_404=[1500303]:bat[:lng] := sql.bind(X_8=0:int, "sys":str, "lineitem":str, "l_extendedprice":str, 0:int, 1:int, 4:int); #[30] (0) mvc_bind_wrap 404 <- 8 10 11 51 14 16 268                 |
|     4 | C_316=[1500303]:bat[:oid] := sql.tid(X_8=0:int, "sys":str, "lineitem":str, 1:int, 4:int); #[24] (0) SQLtid 316 <- 8 10 11 16 268                                                             |
|    38 | X_419=[1500303]:bat[:lng] := sql.bind(X_8=0:int, "sys":str, "lineitem":str, "l_discount":str, 0:int, 1:int, 4:int); #[32] (0) mvc_bind_wrap 419 <- 8 10 11 57 14 16 268                      |
|     7 | X_474=[1500303]:bat[:date] := sql.bind(X_8=0:int, "sys":str, "lineitem":str, "l_shipdate":str, 0:int, 1:int, 4:int); #[23] (0) mvc_bind_wrap 474 <- 8 10 11 81 14 16 268                     |
|     3 | X_417=[1500303]:bat[:lng] := sql.bind(X_8=0:int, "sys":str, "lineitem":str, "l_discount":str, 0:int, 0:int, 4:int); #[18] (0) mvc_bind_wrap 417 <- 8 10 11 57 14 14 268                      |
|     2 | X_403=[1500303]:bat[:lng] := sql.bind(X_8=0:int, "sys":str, "lineitem":str, "l_extendedprice":str, 0:int, 0:int, 4:int); #[16] (0) mvc_bind_wrap 403 <- 8 10 11 51 14 14 268                 |
|    16 | X_362=[1500303]:bat[:int] := sql.bind(X_8=0:int, "sys":str, "lineitem":str, "l_suppkey":str, 0:int, 0:int, 4:int); #[12] (0) mvc_bind_wrap 362 <- 8 10 11 33 14 14 268                       |
|  2495 | C_619=[56247]:bat[:oid] := algebra.select(X_474=[1500303]:bat[:date], C_316=[1500303]:bat[:oid], "1996-01-01":date, "1996-04-01":date, true:bit, false:bit, false:bit, true:bit); #[25] (0)  |
:       : ALGselect2nil 619 <- 474 316 2 306 140 141 141 140                                                                                                                                           :
|  2609 | C_620=[56111]:bat[:oid] := algebra.select(X_475=[1500303]:bat[:date], C_318=[1500303]:bat[:oid], "1996-01-01":date, "1996-04-01":date, true:bit, false:bit, false:bit, true:bit); #[39] (0)  |
:       : ALGselect2nil 620 <- 475 318 2 306 140 141 141 140                                                                                                                                           :
|  2710 | C_621=[56491]:bat[:oid] := algebra.select(X_476=[1500306]:bat[:date], C_320=[1500306]:bat[:oid], "1996-01-01":date, "1996-04-01":date, true:bit, false:bit, false:bit, true:bit); #[53] (0)  |
:       : ALGselect2nil 621 <- 476 320 2 306 140 141 141 140                                                                                                                                           :
|   861 | X_631=[56247]:bat[:int] := algebra.projection(C_619=[56247]:bat[:oid], X_363=[1500303]:bat[:int]); #[27] (0) ALGprojection 631 <- 619 363                                                    |
|   957 | X_632=[56111]:bat[:int] := algebra.projection(C_620=[56111]:bat[:oid], X_364=[1500303]:bat[:int]); #[41] (0) ALGprojection 632 <- 620 364                                                    |
|  1099 | X_633=[56491]:bat[:int] := algebra.projection(C_621=[56491]:bat[:oid], X_365=[1500306]:bat[:int]); #[55] (0) ALGprojection 633 <- 621 365                                                    |
|   671 | (X_713=[56247]:bat[:oid], C_714=[9963]:bat[:oid]) := group.groupdone(X_631=[56247]:bat[:int]); #[28] (0) GRPgroup3 713 714 <- 631                                                            |
|    32 | X_716=[9963]:bat[:int] := algebra.projection(C_714=[9963]:bat[:oid], X_631=[56247]:bat[:int]); #[29] (0) ALGprojection 716 <- 714 631                                                        |
|   634 | (X_717=[56111]:bat[:oid], C_718=[9965]:bat[:oid]) := group.groupdone(X_632=[56111]:bat[:int]); #[42] (0) GRPgroup3 717 718 <- 632                                                            |
|     2 | language.pass(X_631=[56247]:bat[:int]); #[99] (0) MALpass 761 <- 631                                                                                                                         |
|     4 | X_221=[10000]:bat[:int] := algebra.projection(C_190=[10000]:bat[:oid], X_198=[10000]:bat[:int]); #[84] (0) ALGprojection 221 <- 190 198                                                      |
|    29 | X_720=[9965]:bat[:int] := algebra.projection(C_718=[9965]:bat[:oid], X_632=[56111]:bat[:int]); #[43] (0) ALGprojection 720 <- 718 632                                                        |
|     1 | language.pass(X_632=[56111]:bat[:int]); #[102] (0) MALpass 764 <- 632                                                                                                                        |
|   693 | (X_721=[56491]:bat[:oid], C_722=[9975]:bat[:oid]) := group.groupdone(X_633=[56491]:bat[:int]); #[56] (0) GRPgroup3 721 722 <- 633                                                            |
|    37 | X_724=[9975]:bat[:int] := algebra.projection(C_722=[9975]:bat[:oid], X_633=[56491]:bat[:int]); #[57] (0) ALGprojection 724 <- 722 633                                                        |
|   831 | X_647=[56247]:bat[:lng] := algebra.projection(C_619=[56247]:bat[:oid], X_419=[1500303]:bat[:lng]); #[33] (0) ALGprojection 647 <- 619 419                                                    |
|   294 | X_699=[56247]:bat[:lng] := batcalc.-(100:lng, X_647=[56247]:bat[:lng], nil:BAT); #[34] (0) CMDbatSUBsignal 699 <- 307 647 182                                                                |
|   927 | X_648=[56111]:bat[:lng] := algebra.projection(C_620=[56111]:bat[:oid], X_421=[1500303]:bat[:lng]); #[47] (0) ALGprojection 648 <- 620 421                                                    |
|   431 | X_700=[56111]:bat[:lng] := batcalc.-(100:lng, X_648=[56111]:bat[:lng], nil:BAT); #[48] (0) CMDbatSUBsignal 700 <- 307 648 182                                                                |
|  1757 | X_643=[56247]:bat[:lng] := algebra.projection(C_619=[56247]:bat[:oid], X_404=[1500303]:bat[:lng]); #[31] (0) ALGprojection 643 <- 619 404                                                    |
|   970 | X_649=[56491]:bat[:lng] := algebra.projection(C_621=[56491]:bat[:oid], X_423=[1500306]:bat[:lng]); #[61] (0) ALGprojection 649 <- 621 423                                                    |
|  1550 | X_644=[56111]:bat[:lng] := algebra.projection(C_620=[56111]:bat[:oid], X_405=[1500303]:bat[:lng]); #[45] (0) ALGprojection 644 <- 620 405                                                    |
|  7261 | C_314=[1500303]:bat[:oid] := sql.tid(X_8=0:int, "sys":str, "lineitem":str, 0:int, 4:int); #[10] (0) SQLtid 314 <- 8 10 11 14 268                                                             |
|     8 | X_215=[10000]:bat[:str] := sql.bind(X_8=0:int, "sys":str, "supplier":str, "s_phone":str, 0:int); #[93] (10000) mvc_bind_wrap 215 <- 8 10 191 216 14                                          |
|     1 | language.pass(X_633=[56491]:bat[:int]); #[105] (0) MALpass 767 <- 633                                                                                                                        |
|     1 | language.pass(C_619=[56247]:bat[:oid]); #[100] (0) MALpass 762 <- 619                                                                                                                        |
|   232 | X_701=[56491]:bat[:lng] := batcalc.-(100:lng, X_649=[56491]:bat[:lng], nil:BAT); #[62] (0) CMDbatSUBsignal 701 <- 307 649 182                                                                |
|     2 | language.pass(C_620=[56111]:bat[:oid]); #[103] (0) MALpass 765 <- 620                                                                                                                        |
|   337 | X_703=[56247]:bat[:hge] := batcalc.*(X_643=[56247]:bat[:lng], X_699=[56247]:bat[:lng], nil:BAT, nil:BAT); #[35] (0) CMDbatMULenlarge 703 <- 643 699 182 182                                  |
|   445 | X_704=[56111]:bat[:hge] := batcalc.*(X_644=[56111]:bat[:lng], X_700=[56111]:bat[:lng], nil:BAT, nil:BAT); #[49] (0) CMDbatMULenlarge 704 <- 644 700 182 182                                  |
|  1913 | X_645=[56491]:bat[:lng] := algebra.projection(C_621=[56491]:bat[:oid], X_406=[1500306]:bat[:lng]); #[59] (0) ALGprojection 645 <- 621 406                                                    |
|     2 | language.pass(C_621=[56491]:bat[:oid]); #[106] (0) MALpass 768 <- 621                                                                                                                        |
|   502 | X_733=[9963]:bat[:hge] := aggr.subsum(X_703=[56247]:bat[:hge], X_713=[56247]:bat[:oid], C_714=[9963]:bat[:oid], true:bit, true:bit); #[36] (0) AGGRsubsum_hge 733 <- 703 713 714 140 140     |
|     2 | language.pass(C_714=[9963]:bat[:oid]); #[101] (0) MALpass 763 <- 714                                                                                                                         |
|   497 | X_734=[9965]:bat[:hge] := aggr.subsum(X_704=[56111]:bat[:hge], X_717=[56111]:bat[:oid], C_718=[9965]:bat[:oid], true:bit, true:bit); #[50] (0) AGGRsubsum_hge 734 <- 704 717 718 140 140     |
|     1 | language.pass(C_718=[9965]:bat[:oid]); #[104] (0) MALpass 766 <- 718                                                                                                                         |
|   300 | X_705=[56491]:bat[:hge] := batcalc.*(X_645=[56491]:bat[:lng], X_701=[56491]:bat[:lng], nil:BAT, nil:BAT); #[63] (0) CMDbatMULenlarge 705 <- 645 701 182 182                                  |
|   545 | X_735=[9975]:bat[:hge] := aggr.subsum(X_705=[56491]:bat[:hge], X_721=[56491]:bat[:oid], C_722=[9975]:bat[:oid], true:bit, true:bit); #[64] (0) AGGRsubsum_hge 735 <- 705 721 722 140 140     |
|     2 | language.pass(C_722=[9975]:bat[:oid]); #[107] (0) MALpass 769 <- 722                                                                                                                         |
|  1953 | C_618=[57105]:bat[:oid] := algebra.select(X_473=[1500303]:bat[:date], C_314=[1500303]:bat[:oid], "1996-01-01":date, "1996-04-01":date, true:bit, false:bit, false:bit, true:bit); #[11] (0)  |
:       : ALGselect2nil 618 <- 473 314 2 306 140 141 141 140                                                                                                                                           :
|   840 | X_646=[57105]:bat[:lng] := algebra.projection(C_618=[57105]:bat[:oid], X_417=[1500303]:bat[:lng]); #[19] (0) ALGprojection 646 <- 618 417                                                    |
|  1057 | X_630=[57105]:bat[:int] := algebra.projection(C_618=[57105]:bat[:oid], X_362=[1500303]:bat[:int]); #[13] (0) ALGprojection 630 <- 618 362                                                    |
|   227 | X_698=[57105]:bat[:lng] := batcalc.-(100:lng, X_646=[57105]:bat[:lng], nil:BAT); #[20] (0) CMDbatSUBsignal 698 <- 307 646 182                                                                |
|  1517 | X_642=[57105]:bat[:lng] := algebra.projection(C_618=[57105]:bat[:oid], X_403=[1500303]:bat[:lng]); #[17] (0) ALGprojection 642 <- 618 403                                                    |
|   789 | (X_709=[57105]:bat[:oid], C_710=[9965]:bat[:oid]) := group.groupdone(X_630=[57105]:bat[:int]); #[14] (0) GRPgroup3 709 710 <- 630                                                            |
|    36 | X_712=[9965]:bat[:int] := algebra.projection(C_710=[9965]:bat[:oid], X_630=[57105]:bat[:int]); #[15] (0) ALGprojection 712 <- 710 630                                                        |
|    40 | X_746=[9965]:bat[:int] := mat.packIncrement(X_712=[9965]:bat[:int], 4:int); #[65] (0) MATpackIncrement 746 <- 712 747                                                                        |
|    11 | X_748=[19928]:bat[:int] := mat.packIncrement(X_746=[19928]:bat[:int], X_716=[9963]:bat[:int]); #[66] (0) MATpackIncrement 748 <- 746 716                                                     |
|    11 | X_749=[29893]:bat[:int] := mat.packIncrement(X_748=[29893]:bat[:int], X_720=[9965]:bat[:int]); #[67] (0) MATpackIncrement 749 <- 748 720                                                     |
|    24 | language.pass(X_630=[57105]:bat[:int]); #[96] (0) MALpass 758 <- 630                                                                                                                         |
|    10 | X_145=[39868]:bat[:int] := mat.packIncrement(X_749=[39868]:bat[:int], X_724=[9975]:bat[:int]); #[68] (0) MATpackIncrement 145 <- 749 724                                                     |
|   460 | (X_171=[39868]:bat[:oid], C_172=[10000]:bat[:oid]) := group.groupdone(X_145=[39868]:bat[:int]); #[69] (0) GRPgroup3 171 172 <- 145                                                           |
|    35 | X_174=[10000]:bat[:int] := algebra.projection(C_172=[10000]:bat[:oid], X_145=[39868]:bat[:int]); #[70] (0) ALGprojection 174 <- 172 145                                                      |
|     3 | C_186=[10000]:bat[:oid] := bat.mirror(X_174=[10000]:bat[:int]); #[76] (0) BKCmirror 186 <- 174                                                                                               |
|     3 | language.pass(X_145=[39868]:bat[:int]); #[108] (0) MALpass 770 <- 145                                                                                                                        |
|     3 | language.pass(C_618=[57105]:bat[:oid]); #[97] (0) MALpass 759 <- 618                                                                                                                         |
|   303 | X_702=[57105]:bat[:hge] := batcalc.*(X_642=[57105]:bat[:lng], X_698=[57105]:bat[:lng], nil:BAT, nil:BAT); #[21] (0) CMDbatMULenlarge 702 <- 642 698 182 182                                  |
|   433 | X_732=[9965]:bat[:hge] := aggr.subsum(X_702=[57105]:bat[:hge], X_709=[57105]:bat[:oid], C_710=[9965]:bat[:oid], true:bit, true:bit); #[22] (0) AGGRsubsum_hge 732 <- 702 709 710 140 140     |
|     1 | language.pass(C_710=[9965]:bat[:oid]); #[98] (0) MALpass 760 <- 710                                                                                                                          |
|    31 | X_751=[9965]:bat[:hge] := mat.packIncrement(X_732=[9965]:bat[:hge], 4:int); #[71] (0) MATpackIncrement 751 <- 732 747                                                                        |
|    44 | X_752=[19928]:bat[:hge] := mat.packIncrement(X_751=[19928]:bat[:hge], X_733=[9963]:bat[:hge]); #[72] (0) MATpackIncrement 752 <- 751 733                                                     |
|    38 | X_753=[29893]:bat[:hge] := mat.packIncrement(X_752=[29893]:bat[:hge], X_734=[9965]:bat[:hge]); #[73] (0) MATpackIncrement 753 <- 752 734                                                     |
|    24 | X_731=[39868]:bat[:hge] := mat.packIncrement(X_753=[39868]:bat[:hge], X_735=[9975]:bat[:hge]); #[74] (0) MATpackIncrement 731 <- 753 735                                                     |
|   377 | X_175=[10000]:bat[:hge] := aggr.subsum(X_731=[39868]:bat[:hge], X_171=[39868]:bat[:oid], C_172=[10000]:bat[:oid], true:bit, true:bit); #[75] (0) AGGRsubsum_hge 175 <- 731 171 172 140 140   |
|     2 | language.pass(C_172=[10000]:bat[:oid]); #[109] (0) MALpass 771 <- 172                                                                                                                        |
|   100 | X_178=17726272087:hge := aggr.max(X_175=[10000]:bat[:hge]); #[77] (1) ALGmaxany 178 <- 175                                                                                                   |
|     4 | X_179=[1]:bat[:hge] := sql.single(X_178=17726272087:hge); #[78] (0) CMDBATsingle 179 <- 178                                                                                                  |
|    43 | X_180=[1]:bat[:oid] := algebra.join(X_175=[10000]:bat[:hge], X_179=[1]:bat[:hge], nil:BAT, nil:BAT, false:bit, nil:lng); #[79] (0) ALGjoin1 180 <- 175 179 182 182 141 185                   |
|    18 | C_187=[1]:bat[:oid] := algebra.intersect(C_186=[10000]:bat[:oid], X_180=[1]:bat[:oid], nil:BAT, nil:BAT, false:bit, false:bit, nil:lng); #[80] (0) ALGintersect 187 <- 186 180 182 182 141 1 |
:       : 41 185                                                                                                                                                                                       :
|     3 | X_188=[1]:bat[:int] := algebra.projection(C_187=[1]:bat[:oid], X_174=[10000]:bat[:int]); #[81] (0) ALGprojection 188 <- 187 174                                                              |
|     0 | language.pass(X_174=[10000]:bat[:int]); #[110] (0) MALpass 772 <- 174                                                                                                                        |
|    24 | (X_225=[1]:bat[:oid], X_226=[1]:bat[:oid]) := algebra.join(X_188=[1]:bat[:int], X_221=[10000]:bat[:int], nil:BAT, nil:BAT, false:bit, nil:lng); #[85] (0) ALGjoin 225 226 <- 188 221 182 182 |
:       :  141 185                                                                                                                                                                                     :
|     4 | X_233=[1]:bat[:int] := algebra.projection(X_226=[1]:bat[:oid], X_221=[10000]:bat[:int]); #[86] (0) ALGprojection 233 <- 226 221                                                              |
|    23 | (X_237=[1]:bat[:int], X_238=[1]:bat[:oid]) := algebra.sort(X_233=[1]:bat[:int], false:bit, false:bit, false:bit); #[87] (0) ALGsort12 237 238 <- 233 141 141 141                             |
|    30 | X_244=[1]:bat[:hge] := algebra.projectionpath(X_238=[1]:bat[:oid], X_225=[1]:bat[:oid], C_187=[1]:bat[:oid], X_175=[10000]:bat[:hge]); #[95] (0) ALGprojectionpath 244 <- 238 225 187 175    |
|     1 | language.pass(C_187=[1]:bat[:oid]); #[116] (0) MALpass 778 <- 187                                                                                                                            |
|     3 | X_242=[1]:bat[:str] := algebra.projectionpath(X_238=[1]:bat[:oid], X_226=[1]:bat[:oid], C_190=[10000]:bat[:oid], X_209=[10000]:bat[:str]); #[92] (0) ALGprojectionpath 242 <- 238 226 190 20 |
:       : 9                                                                                                                                                                                            :
|    24 | X_243=[1]:bat[:str] := algebra.projectionpath(X_238=[1]:bat[:oid], X_226=[1]:bat[:oid], C_190=[10000]:bat[:oid], X_215=[10000]:bat[:str]); #[94] (0) ALGprojectionpath 243 <- 238 226 190 21 |
:       : 5                                                                                                                                                                                            :
|     1 | language.pass(X_175=[10000]:bat[:hge]); #[117] (0) MALpass 779 <- 175                                                                                                                        |
|     8 | X_240=[1]:bat[:int] := algebra.projection(X_238=[1]:bat[:oid], X_233=[1]:bat[:int]); #[88] (0) ALGprojection 240 <- 238 233                                                                  |
|    19 | language.pass(X_221=[10000]:bat[:int]); #[111] (0) MALpass 773 <- 221                                                                                                                        |
|     2 | language.pass(X_233=[1]:bat[:int]); #[112] (0) MALpass 774 <- 233                                                                                                                            |
|     3 | X_241=[1]:bat[:str] := algebra.projectionpath(X_238=[1]:bat[:oid], X_226=[1]:bat[:oid], C_190=[10000]:bat[:oid], X_203=[10000]:bat[:str]); #[90] (0) ALGprojectionpath 241 <- 238 226 190 20 |
:       : 3                                                                                                                                                                                            :
|     1 | language.pass(C_190=[10000]:bat[:oid]); #[114] (0) MALpass 776 <- 190                                                                                                                        |
|     1 | language.pass(X_226=[1]:bat[:oid]); #[113] (0) MALpass 775 <- 226                                                                                                                            |
|     3 | language.pass(X_238=[1]:bat[:oid]); #[115] (0) MALpass 777 <- 238                                                                                                                            |
| 17088 | barrier X_756=false:bit := language.dataflow(); #[2] (0) MALstartDataflow 756                                                                                                                |
|    31 | sql.resultSet(X_246=[5]:bat[:str], X_247=[5]:bat[:str], X_248=[5]:bat[:str], X_249=[5]:bat[:int], X_250=[5]:bat[:int], X_240=[1]:bat[:int], X_241=[1]:bat[:str], X_242=[1]:bat[:str], X_243= |
:       : [1]:bat[:str], X_244=[1]:bat[:hge]); #[119] (0) mvc_table_result_wrap 245 <- 246 247 248 249 250 240 241 242 243 244                                                                         :
+-------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
118 tuples
