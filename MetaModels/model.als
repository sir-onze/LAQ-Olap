sig Node {}

sig Arrow {
	//name : one Name, ? is it needed
	source : one Node,
	target : one Node,
	//props : set Prop ? is it needed, can we do it in Alloy
}

sig Entity extends Node {}

sig Type extends Node {}

sig Var extends Type {}

sig CType extends Type {}

sig Prop {}

sig Dim extends Arrow {}

sig Meas extends Arrow {}

sig Name {}


run {}
