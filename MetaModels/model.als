sig Node {}

sig Arrow {
	name : one Name,
	source : one Node,
	target : one Node,
	props : set Prop
}

sig Type extends Node {}

sig Var extends Type {}

sig CType extends Type {}

sig Entity extends Node {}

sig Prop {}

sig Dim extends Arrow {}

sig Meas extends Arrow {}

sig Name {}



run { some Arrow}
