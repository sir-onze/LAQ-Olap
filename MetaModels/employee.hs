
import Cp
import RelCalc
---INSTANCE---
integers=[-8, -7, -6, -5, -4, -3, -2, -1, , 1, 2, 3, 4, 5, 6, 7]
--univ=[-1, -2, -3, -4, -5, -6, -7, -8, , 1, 2, 3, 4, 5, 6, 7, "B", "C", "D", "K", "N", "One", "e", "e_branch", "e_country", "e_job", "e_name", "j", "j_code", "j_desc", "j_salary", "model_Arrow"]
int=[-1, -2, -3, -4, -5, -6, -7, -8, , 1, 2, 3, 4, 5, 6, 7]
seq_int=[, 1, 2, 3, 4, 5, 6]
string=[]
none=[]
model_Node=["B", "C", "D", "K", "N", "One", "e", "j"]
model_Entity=["e", "j"]
this_j=["j"]
this_e=["e"]
model_Type=["B", "C", "D", "K", "N", "One"]
model_Var=["B", "C", "D", "K", "N"]
this_B=["B"]
this_N=["N"]
this_C=["C"]
this_D=["D"]
this_K=["K"]
model_CType=["One"]
this_One=["One"]
model_Arrow=["e_branch", "e_country", "e_job", "e_name", "j_code", "j_desc", "j_salary", "model_Arrow"]
model_Arrow_source=[("e_branch","e"), ("e_country","e"), ("e_job","e"), ("e_name","e"), ("j_code","j"), ("j_desc","j"), ("j_salary","j"), ("model_Arrow","K")]
model_Arrow_target=[("e_branch","B"), ("e_country","C"), ("e_job","K"), ("e_name","N"), ("j_code","K"), ("j_desc","D"), ("j_salary","One"), ("model_Arrow","j")]
model_Dim=["e_branch", "e_country", "e_job", "e_name", "j_code", "j_desc"]
this_j_code=["j_code"]
this_j_desc=["j_desc"]
this_e_job=["e_job"]
this_e_name=["e_name"]
this_e_branch=["e_branch"]
this_e_country=["e_country"]
model_Meas=["j_salary"]
this_j_salary=["j_salary"]
model_Prop=[]
model_Name=[]
skolem "N"=["K"]

