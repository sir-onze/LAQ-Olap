#! /usr/bin/sed -f
# --------------------------------
# (c) MFES/CSI 2017-2020 @ UMinho
# --------------------------------
s/---INSTANCE---/\
import Cp\
import RelCalc\
&/
s/{/[/g	
s/}/]/g	
# remove /s from Alloy imports
s/\([a-zA-Z0-9]*\)\/\([a-zA-Z0-9]*\)/\1_\2/g 
# remove $s from Alloy values 
s/\([A-Z0-9a-z_]*\)\$\([A-Z0-9a-z_]*\)/"\1\2"/g
s/<:/_/g
s/Int/int/g
s/univ/--univ/g
s/String/string/g
# handle triples
s/\([A-Z0-9a-z_"]*\)->\([A-Z0-9a-z_"]*\)->\([A-Z0-9a-z_"]*\)/(\1,(\2,\3))/g
# handle pairs
s/\([A-Z0-9a-z_"]*\)->\([A-Z0-9a-z_"]*\)/(\1,\2)/g

