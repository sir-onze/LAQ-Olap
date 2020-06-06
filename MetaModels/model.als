abstract sig Node {
   name : one Label,
   color : one Color
}

abstract sig Arrow {
   label : one Label,
   source : one Node,
   target : one Node,
   //props : set Prop ? is it needed, can we do it in Alloy
}

fact{
   name.~name in iden -- injective
   label.~label in iden -- injective
   no name.~label 
}

sig Entity extends Node {}

sig Type extends Node {}

sig Var extends Type {}

sig CType extends Type {}

sig Prop {}

sig Dim extends Arrow {}

sig Meas extends Arrow {}

sig Label, Color {}

run {}
