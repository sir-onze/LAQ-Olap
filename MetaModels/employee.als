open model

// Definition of Entities
one sig j,e extends Entity {}

// Definition of diagram variables (attributes)
one sig B,N,C,D,K extends Var{} 

one sig One extends CType{}

// Definition of diagram relations 

// Entity Jobs 
one sig j_code extends Dim {}

one sig j_desc extends Dim {}

one sig j_salary extends Meas {}

// Entity Employees
one sig e_job  extends Dim {}

one sig e_name extends Dim {}

one sig e_branch extends Dim {}

one sig e_country extends Dim {}

// Facts to model the example
fact {
	// all arrows that have as origin j
	source.j   = j_code + j_desc + j_salary

	// all the target for arrows that leave j
	target.D   = j_desc
	target.One = j_salary
	target.K 	 = j_code + e_job // in this case we must include the one that comes from e
	
	// all arrows that have has origin e
	source.e   = e_job + e_name + e_branch + e_country
	
	// all the target for arrows that leave e (e_job is already done)
	target.N 	 = e_name
	target.B	 = e_branch
	target.C 	 = e_country
}

// 7 arrows 2 entities 
run {(some N:Node| some source.N and some target.N)} for 8
