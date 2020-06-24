import React from "react";
function createTable(){
    if(localStorage.getItem("id")){
        id=parseInt(localStorage.getItem("id"),10)+1
    }
    //console.log("adicionado pelo botao "+e.target.name + "added " + label)
    var aux_table = {id, label,color: "#e04141",attribute_aux,physics:"false"}
    localStorage.setItem("id",id)
    console.log(arrayTable[0])
    var graph_aux=arrayTable[0]
    console.log("cenas")
    if(arrayTable && graph_aux){
        graph_aux.nodes.push(aux_table)
        arrayTable.concat(graph_aux)
        hookTable(arrayTable.concat(graph_aux))
        if(arrayTable.length>0){
          localStorage.setItem('tables',JSON.stringify(arrayTable))
          console.log("adding")
        }
    };
}

export default createTable;