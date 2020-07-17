import Graph from "react-graph-vis";
import React from "react";
import 'antd/dist/antd.css';
import { Form, Input, Button, notification, Layout, List,message,Modal} from 'antd';
import { Card, Divider,Select} from 'antd';
import { UploadOutlined } from '@ant-design/icons';
import axios from 'axios'

const { Content} = Layout;

var createbutton = true
var createFlag = 0

var editbutton = true
var editFlag = 0
var editedNode = -1
var editedValue =''
var deletebutton 

var arrowcreatebutton = true
var arrowcreateFlag = 0

var arroweditbutton = true
var arroweditFlag = 0
var arrowdeletebutton = true
var editedArrow = ''
var editedIndex = -1

var visible = false
var visible1 = false



function App() {
  /** Variáveis para controlo da disponibilidade dos butoes */
  const [createButtonState=[],hookcreateButtonState]= React.useState([]) ;
  const [editButtonState=[],hookeditButtonState]= React.useState([]) ;
  const [labelState=[],hookedlabelState]= React.useState([]) ;
  const [modalState=[],hookemodalState]= React.useState([]) ;

  /** Array para guardar todas as tabelas introduzidas pelo utilizador */
  const [arrayTable=[],hookTable]= React.useState([]) ;
  const graph = {
    nodes: [],
    edges: []
  }

  /** Necessário para inicializar a memoria para guardar os arrays utilizados no processo*/
  if(!localStorage.getItem("first")){
    arrayTable.push(graph)
    localStorage.setItem("first",1)
  }

  const options = {
    physics: true,
    edges: {
      color: "#000000",
      smooth: {
        type: "continuous",
        roundness: 0
      }
    }
  };
  /** Funções para lidar com o modal para editar um nodo */
  var newarrow = ''
  function showModalDelete () {
   visible1 = true
   hookemodalState(modalState.concat("show"))
  }

  function handleOk (e) {
    console.log(e)
    visible = false
    // falta meter aqui a verificação de selecionar uma seta existente
    if(newarrow=='' && editedArrow==''){
      notification.open({
        message: 'Missing field',
        description:
          'Please fill the new arrow name',
        onClick: () => {
          console.log('Notification Clicked!');
        },
      });
    }
    else{
      var table_aux = JSON.parse(localStorage.getItem('tables'))
      table_aux[parseInt(JSON.parse(localStorage.getItem("id")))].edges[parseInt(editedIndex)].label = newarrow
      arrayTable[0].edges[parseInt(editedIndex)].label = newarrow
      editedArrow = ''
      editedIndex = -1
      newarrow= ''
      var new_table = JSON.stringify(table_aux)
      localStorage.setItem('tables',new_table)
      hookemodalState(modalState.concat("ok"))
    }
    
   }

   function handleCancel (e) {
    console.log(e)
    visible1 = false
    newarrow = ''
    hookemodalState(modalState.concat("ok"))
   }

   function modalinput(e){
      newarrow = e.target.value
      console.log("escrever no modal" + newarrow)
   }

   function handleModal(value){
      console.log("value" + value)
      var edges = JSON.parse(localStorage.getItem('tables'))[parseInt(JSON.parse(localStorage.getItem("id")))].edges
      var i
      for(i=0;i<edges.length;i++){
        if(edges[i].label==value){
          break;
        }
      }
      editedIndex = i
      editedArrow = value
    console.log("edge index" +editedIndex + editedArrow)
   }
   /**Funções para lidar com o modal para eliminar um nodo */
   function  showModal () {
    visible = true
    hookemodalState(modalState.concat("show"))
   }
 
   function deletehandleOk (e) {
     console.log(e)
     visible1 = false
     // falta meter aqui a verificação de selecionar uma seta existente
     if(editedArrow==''){
       notification.open({
         message: 'Missing field',
         description:
           'Please fill the new arrow name',
         onClick: () => {
           console.log('Notification Clicked!');
         },
       });
     }
     else{
       var table_aux = JSON.parse(localStorage.getItem('tables'))
       table_aux[parseInt(JSON.parse(localStorage.getItem("id")))].edges.splice(parseInt(editedIndex),1)
       arrayTable[0].nodes.splice(parseInt(editedIndex),1)
       editedArrow = ''
       editedIndex = -1
       newarrow= ''
       var new_table = JSON.stringify(table_aux)
       localStorage.setItem('tables',new_table)
       hookemodalState(modalState.concat("ok"))
     }
     
    }
 
    function deletehandleCancel (e) {
     console.log(e)
     visible = false
     newarrow = ''
     hookemodalState(modalState.concat("ok"))
    }
 
    function deletemodalinput(e){
       newarrow = e.target.value
       console.log("escrever no modal" + newarrow)
    }
 
    function deletehandleModal(value){
       console.log("value" + value)
       var edges = JSON.parse(localStorage.getItem('tables'))[parseInt(JSON.parse(localStorage.getItem("id")))].edges
       var i
       for(i=0;i<edges.length;i++){
         if(edges[i].label==value){
           break;
         }
       }
       editedIndex = i
       editedArrow = value
     console.log("edge index" +editedIndex + editedArrow)
    }
 
   
  /** Função que trata dos cliques nos dropdowns */
  let type = ''
  function handleDestiny(value) {
    var nodes = JSON.parse(localStorage.getItem('tables'))[parseInt(JSON.parse(localStorage.getItem("id")))].nodes
    var i
    for(i=0;i<nodes.length;i++){
      if(nodes[i].label==value){
        break;
      }
    }
    console.log(i)
    var arr = new Array
    arr.push(i)
    localStorage.setItem("to",JSON.stringify(arr))
    message.success("Selected " + value)
  }
  function handleSource(value) {
    var nodes = JSON.parse(localStorage.getItem('tables'))[parseInt(JSON.parse(localStorage.getItem("id")))].nodes
    var i
    for(i=0;i<nodes.length;i++){
      if(nodes[i].label==value){
        break;
      }
    }
    console.log(i)
    var arr = new Array
    arr.push(i)
    localStorage.setItem("from",JSON.stringify(arr))
    message.success("Selected " + value)
   
  }

  function handleType(value) {
    console.log(`type`);
    type = value
    message.success("Selected " + type)
  }
  /** Aqui estou a tratar os casos em que clicamos nos butoes */
  const events = {
    select: function(event) {
      var { nodes, edges } = event;
      //não temos nenhum
      if(localStorage.getItem("from")&& !localStorage.getItem("to")){
        localStorage.setItem("to",JSON.stringify(nodes))
        hookConsult(consult.concat("selected"))
         }
      if(!localStorage.getItem("from")&& !localStorage.getItem("to")){
        openNotification(nodes)
        localStorage.setItem("from",JSON.stringify(nodes))
        localStorage.setItem("selected_attributes",JSON.stringify(JSON.parse(localStorage.getItem("tables"))[parseInt(JSON.parse(localStorage.getItem("id")))].nodes[parseInt(JSON.parse(localStorage.getItem("id")))].attribute_aux))
        console.log( JSON.parse(localStorage.getItem("from")))
        hookConsult(consult.concat("selected"))
        }
      else{
        selectedNotification(nodes)
        hookConsult(consult)
      }
      console.log(nodes);
      console.log("Selected edges:");
      console.log(edges);
    }
  };

  /********** Constantes e funções para lidar com input de dados ***********/

    /********** Parte relacionada com as tabelas ***********/
    var id = 0
    const { Panel } = Card;
    var label=''

    /* quando insiro tenho que aceder a arrayTable, dar get do value e depois dar update*/
    function createTable(e){
        if(localStorage.getItem("id")){
            id=parseInt(localStorage.getItem("id"),10)+1
        }
        //console.log("adicionado pelo botao "+e.target.name + "added " + label)
        var aux_table = {id, label,color: "#e04141",attribute_aux,physics:"false"}
        localStorage.setItem("id",id)
        var graph_aux=arrayTable[0]
        if(arrayTable && graph_aux){
            graph_aux.nodes.push(aux_table)
            arrayTable.concat(graph_aux)
            hookTable(arrayTable.concat(graph_aux))
            if(arrayTable.length>0){
              localStorage.setItem('tables',JSON.stringify(arrayTable))
              console.log("adding")
            }
        }
    }
    /** Edição do nome de uma tabela ou nodo */
    function editTable(e){
      var node_id = JSON.parse(localStorage.getItem("from"))[0]
      var label = JSON.parse(localStorage.getItem('tables'))[parseInt(JSON.parse(localStorage.getItem("id")))].nodes[parseInt(node_id)].label
      //var table_aux = label = JSON.parse(localStorage.getItem('tables'))[parseInt(JSON.parse(localStorage.getItem("id")))]
      var table_aux = JSON.parse(localStorage.getItem('tables'))
      table_aux[parseInt(JSON.parse(localStorage.getItem("id")))].nodes[parseInt(node_id)].label = editedValue
      arrayTable[0].nodes[parseInt(node_id)].label = editedValue
      //localStorage.setItem('tables',JSON.table_aux)
      //console.log(table_aux.nodes[parseInt(node_id)])
      //console.log("a editar a "+label + "vou passar a " + editedValue)
      console.log(table_aux[parseInt(JSON.parse(localStorage.getItem("id")))].nodes[parseInt(node_id)].label)
      var new_table = JSON.stringify(table_aux)
      localStorage.setItem('tables',new_table)
      var arr=[]
      hookeditButtonState(editButtonState.concat(arr))
    }
    /** Eliminar um nodo ou tabela do grafo*/
    function deleteTable(e){
      var node_id = JSON.parse(localStorage.getItem("from"))[0]
      var label = JSON.parse(localStorage.getItem('tables'))[parseInt(JSON.parse(localStorage.getItem("id")))].nodes[parseInt(node_id)].label
      //var table_aux = label = JSON.parse(localStorage.getItem('tables'))[parseInt(JSON.parse(localStorage.getItem("id")))]
      var table_aux = JSON.parse(localStorage.getItem('tables'))
      table_aux[parseInt(JSON.parse(localStorage.getItem("id")))].nodes.splice(parseInt(node_id),1)
      arrayTable[0].nodes.splice(parseInt(node_id),1)
      //localStorage.setItem('tables',JSON.table_aux)
      //console.log(table_aux.nodes[parseInt(node_id)])
      //console.log("a editar a "+label + "vou passar a " + editedValue)
      console.log(table_aux[parseInt(JSON.parse(localStorage.getItem("id")))])
      var new_table = JSON.stringify(table_aux)
      localStorage.setItem('tables',new_table)
      localStorage.setItem("from",'')
      var new_id = parseInt(JSON.parse(localStorage.getItem("id"))) - 1
      localStorage.setItem("id",new_id)
      
      // temos de desabilitar os botoes de editar e eliminar
      editbutton = true
      editFlag = 0
      label =''
      deletebutton = true
      createbutton = false
      var arr=[]
      hookeditButtonState(editButtonState.concat(arr))
    }

    /** Edição do nome de uma arrow ou relação */
    function editArrow(e){

    }

    /** Eliminar uma arrow ou relação */
    function deleteArrow(e){

    }


    /** Handler para tratar a ativação do botão de criação de um nodo*/
    function createNodeHandler (e) {
        label = e.target.value
        console.log(label)
        createbutton = false
        console.log("Modo de criação" + createFlag + "\n"+"Modo de edição" + editFlag+"\n")
        const arr= []
        if(localStorage.getItem("from")){
          editedNode = JSON.parse(localStorage.getItem("from"))[0]
          console.log("nodo" + editedNode)
          if(editFlag==0){
            editbutton = false
            editFlag = 1
            label = JSON.parse(localStorage.getItem('tables'))[parseInt(JSON.parse(localStorage.getItem("id")))].nodes[parseInt(editedNode)].label
            console.log("label " + label)
            hookeditButtonState(editButtonState.concat(arr))
          }
          /** Guardar o valor alterado inserido no input para tratar ao clicar no botão de editar */
          if(editFlag==1 ){
            createFlag=0
            editedValue=e.target.value
            createbutton = true
          }
        }
        if(label==''){
          createbutton = true
          hookcreateButtonState(createButtonState.concat(arr))
          createFlag = 0
        }
        if(label!='' && createFlag ==0 && editFlag==0){
          createFlag  = 1
          hookcreateButtonState(createButtonState.concat(arr))
        }
         // neste caso temos de ver se a localstorage from está preenchida, se estiver temos de ir buscar
      // o objeto e meter o nome na label, depois deixamos a pessoa escrever e on click do edit
      // vamos alterar o objeto, no on click mudamos a edit fla

    }


    /** Parte de controlo da seleção do tipo de input */
    const { Option } = Select;

    function onChangeSelect(value) {
    console.log(`selected ${value}`);
    }

    /********** Parte relacionada com as relações ***********/
    function createNodeHandler1 (e) {
        label = e.target.value
        console.log(label)
        console.log("Modo de criação" + arrowcreateFlag + "\n"+"Modo de edição" + arroweditFlag+"\n")
        const arr= []
        if(localStorage.getItem("from") && localStorage.getItem("to")){
          //editedNode = JSON.parse(localStorage.getItem("from"))[0]
          //console.log("nodo" + editedNode)
          if(arrowcreateFlag==0){
            arrowcreatebutton = false
            arrowcreateFlag = 1
            //label = JSON.parse(localStorage.getItem('tables'))[parseInt(JSON.parse(localStorage.getItem("id")))].nodes[parseInt(editedNode)].label
            //console.log("label " + label)
            hookedlabelState(labelState.concat(arr))
          }
      }

    }
    function openNotification (node) {
      label = JSON.parse(localStorage.getItem('tables'))[parseInt(JSON.parse(localStorage.getItem("id")))].nodes[parseInt(node)].label
        notification.open({
          message: 'Selected Node',
          description:
            'Selected '+label +' to edit, delete or create node.',
          onClick: () => {
            console.log('Notification Clicked!');
          },
        });
      }

      /** Notificação para quando temos os dois nos selecionados para criar relação*/
    function selectedNotification (node) {
      if(JSON.parse(localStorage.getItem('tables'))[parseInt(JSON.parse(localStorage.getItem("id")))].nodes[parseInt(node)]){
        label = JSON.parse(localStorage.getItem('tables'))[parseInt(JSON.parse(localStorage.getItem("id")))].nodes[parseInt(node)].label
        notification.open({
          message: 'You have two selected nodes',
          description:
            'Selected '+ label+'.Please create an arrow or click clear selection.',
          onClick: () => {
            console.log('Notification Clicked!');
          },
        });
      }
    }

    function errorNotification (node) {
        notification.open({
          message: 'You have no selected nodes',
          description:
            'Please click two different nodes',
          onClick: () => {
            console.log('Notification Clicked!');
          },
        });
      }

    /** Uma criação de relação implica saber que tipo de relação estamos a criar
     * caso seja uma dimension temos de a guardar como tal no array das relações de dimension
     * casos seja uma measure a mesma coisa, para além de adicionarmos como atributo da entidade
     */
    function createRelation(e){
        if(localStorage.getItem("from") && localStorage.getItem("to")){
          /* agora aqui vou verificar o type em vez do boto */
          if(type=="Measure"){
            /** Verificar se a entidade já tem atributos ou nao*/
            var attribute_aux = []
            if(JSON.stringify(JSON.parse(localStorage.getItem("tables"))[parseInt(JSON.parse(localStorage.getItem("id")))].nodes[parseInt(JSON.parse(localStorage.getItem("id")))].attribute_aux)){
              attribute_aux = JSON.stringify(JSON.parse(localStorage.getItem("tables"))[parseInt(JSON.parse(localStorage.getItem("id")))].nodes[parseInt(JSON.parse(localStorage.getItem("id")))].attribute_aux)
              var to= localStorage.getItem("to")[1]
              var from = localStorage.getItem("from")[1]
              //tenho o atributo
              var attribute_new = JSON.stringify(JSON.parse(localStorage.getItem("tables"))[parseInt(JSON.parse(localStorage.getItem("id")))].nodes[parseInt(to)].label)
              //vou dar update deste atributo na entidade
              console.log(attribute_aux+"dentro")
              arrayTable[id].nodes[from].attribute_aux.push(attribute_new.replace("\"","").replace("\"",""))
              //vou criar a relação
              console.log(to)
              var aux_rels = {from,to,label}
              console.log("edges aux :" +JSON.stringify(aux_rels))
              console.log(arrayTable[id])
              var graph_aux=arrayTable[id]
              graph_aux.edges.push(aux_rels)
              hookTable(arrayTable.concat(graph_aux))
              // vou guardar a relação como tipo measure
              if(localStorage.getItem("measures")){
                var measures = JSON.parse(localStorage.getItem("measures"))
                var origin = JSON.parse(localStorage.getItem("tables"))[parseInt(JSON.parse(localStorage.getItem("id")))].nodes[parseInt(from)].label
                var destiny = attribute_new.replace("\"","").replace("\"","")
                measures.push({origin,destiny,label})
                localStorage.setItem('measures',JSON.stringify(measures))
                console.log("measures added to store")
              }
              else{
                var measures =[]
                var origin = JSON.parse(localStorage.getItem("tables"))[parseInt(JSON.parse(localStorage.getItem("id")))].nodes[parseInt(from)].label
                var destiny = attribute_new.replace("\"","").replace("\"","")
                measures.push({origin,destiny,label})
                localStorage.setItem('measures',JSON.stringify(measures))
                console.log("measures added to store")
              }
              localStorage.setItem('tables',JSON.stringify(arrayTable))
              localStorage.setItem('from','')
              localStorage.setItem('to','')
            }
          }
          else{
            var attribute_aux = []
             /** Verificar se a entidade já tem atributos ou nao*/
            if(JSON.stringify(JSON.parse(localStorage.getItem("tables"))[parseInt(JSON.parse(localStorage.getItem("id")))].nodes[parseInt(JSON.parse(localStorage.getItem("id")))].attribute_aux)){
              attribute_aux = JSON.stringify(JSON.parse(localStorage.getItem("tables"))[parseInt(JSON.parse(localStorage.getItem("id")))].nodes[parseInt(JSON.parse(localStorage.getItem("id")))].attribute_aux)
              var to= localStorage.getItem("to")[1]
              var from = localStorage.getItem("from")[1]
              //tenho o atributo
              var attribute_new = JSON.stringify(JSON.parse(localStorage.getItem("tables"))[parseInt(JSON.parse(localStorage.getItem("id")))].nodes[parseInt(to)].label)
              //vou dar update deste atributo na entidade
              console.log(attribute_aux)
              arrayTable[id].nodes[from].attribute_aux.push(attribute_new.replace("\"","").replace("\"",""))
              //vou criar a relação
              console.log(to)
              var aux_rels = {from,to,label}
              console.log("edges aux :" +JSON.stringify(aux_rels))
              console.log(arrayTable[id])
              var graph_aux=arrayTable[id]
              graph_aux.edges.push(aux_rels)
              hookTable(arrayTable.concat(graph_aux))
              // vou guardar a relação como tipo dimension
              if(localStorage.getItem("dimensions")){
                var measures = JSON.parse(localStorage.getItem("dimensions"))
                var origin = JSON.parse(localStorage.getItem("tables"))[parseInt(JSON.parse(localStorage.getItem("id")))].nodes[parseInt(from)].label
                var destiny = attribute_new.replace("\"","").replace("\"","")
                measures.push({origin,destiny,label})
                localStorage.setItem('dimensions',JSON.stringify(measures))
                console.log("dimensions added to store")
              }
              else{
                var measures =[]
                var origin = JSON.parse(localStorage.getItem("tables"))[parseInt(JSON.parse(localStorage.getItem("id")))].nodes[parseInt(from)].label
                var destiny = attribute_new.replace("\"","").replace("\"","")
                measures.push({origin,destiny,label})
                localStorage.setItem('dimensions',JSON.stringify(measures))
                console.log("dimensions added to store")
              }
              localStorage.setItem('tables',JSON.stringify(arrayTable))
              localStorage.setItem('from','')
              localStorage.setItem('to','')
            }
          }
          arrowcreatebutton = true
          arrowcreateFlag = 0
          arrowdeletebutton = false
          arroweditbutton = false
    }
    else {
        errorNotification()
    }
    }

    function clearRelation(e){
        localStorage.setItem("to",'')
        localStorage.setItem("from",'')
        localStorage.setItem("selected_attributes",'')
        editbutton = true
        notification.open({
            message: 'You have cleaned the selected nodes',
            description:
              'You can make the selection again',
            onClick: () => {
              console.log('Notification Clicked!');
            },
          });
          /** Desta maneira forçamos a página a renderizar novamente o componente com o novo estado*/
          var arr= []
          editFlag = 0
          label= "cenas"
          hookeditButtonState(editButtonState.concat(arr))
    }

    function clearAll(e){
        localStorage.setItem("to",'')
        localStorage.setItem("from",'')
        localStorage.setItem("tables",'')
        localStorage.setItem("id",'-1')
        localStorage.setItem("first",'')
        localStorage.setItem("dimensions",'')
        localStorage.setItem("measures",'')
        hookConsult([])
        var empty = []
        hookTable(empty)
        notification.open({
            message: 'You have cleaned the entire schema',
            description:
              'You have reseted your session',
            onClick: () => {
              console.log('Notification Clicked!');
            },
          });

    }

    function onFileChange(e){
      console.log(e.target.files[0])
       // enviar o pedido para a rota de update do backend
       const formData = new FormData()
       formData.append('json', e.target.files[0])
       axios.post('http://localhost:3011/api/posts',formData) 
            .then(res=>{
              // dar update da localstorage
              console.log("res" + JSON.stringify(res.data))
              Object.assign(localStorage,res.data);
              let graph_aux=[]
              arrayTable.concat(graph_aux)
              hookTable(arrayTable.concat(graph_aux))
            })
            .catch(err=>{console.log(err)})
       console.log();
       message.success('Importação efetuada com sucesso');
    }
    function exporter(e){
      console.log(localStorage.getItem("tables"))
      const exporta = JSON.stringify(localStorage)
      const element = document.createElement("a");
      const file = new Blob(  [exporta], {type: 'json;charset=utf-8'});
      element.href = URL.createObjectURL(file);
      element.download = "export.json";
      document.body.appendChild(element);
      element.click();
    }
    /** Parte relacionada com a criação de atributos na tabela */
    var attribute_aux =[]
    var attribute_aux1 =[]
    const children = [] 
    var tables_aux = []
      if(localStorage.getItem("selected_attributes")){
      attribute_aux1 = JSON.parse(localStorage.getItem("selected_attributes"))
      if( attribute_aux1){
        for (let i = 0; i < attribute_aux1.length; i++) {
            children.push(<Option key={attribute_aux1[i]}>{attribute_aux1[i]}</Option>);
          }
      }
    }
    /** Parte relacionada com a visualização dos elementos selecionados*/
    const [consult=[],hookConsult]= React.useState([]) ;

  return(
      <div>
        <table style={{width:'100%'}}>
          <tr>
            <th style={{width:'60%', maxWidth:'50%'}}> 
            <table style={{width:'75%'}}>
          
            <tr>
              <th style={{width:'100%',minWidth:'100%'}}>
              <div style={{backgroundColor:'#2274A5',marginBottom:'-2vh'}}>
                        <h1 style={{color:'white',marginLeft:'1vh'}}> Schema Editor</h1>
                        </div>
              <Card hoverable style={{borderColor:'#2274A5',marginTop:'1vh'}}>
          <Form>
              <Form.Item>
              <Input name="table"
                style={{width:'25vh',fontSize:'120%'}}
                onChange={createNodeHandler} placeholder="Node name" />
                 <Button name = "Tablebutton" onClick={createTable} disabled={createbutton} type="primary" style={{ width:'15%',marginLeft:'20%',backgroundColor:'green',borderColor:'green',fontSize:'120%'}}>Create</Button>
                 <Button name = "Tablebutton" onClick={editTable} disabled={editbutton} type="primary" style={{ width:'15%',marginLeft:'1%',backgroundColor:'#FFC300',borderColor:'#FFC300',fontSize:'120%'}}>Edit</Button>
                 <Button name = "Tablebutton" onClick={deleteTable} disabled={editbutton} type="primary" style={{ width:'15%',marginLeft:'1%',backgroundColor:'red',borderColor:'red',fontSize:'120%'}}>Delete</Button>
              </Form.Item>
          </Form>
          <Form>
              <Form.Item>
                  <Input name="relation"
                   style={{width:'25vh',fontSize:'120%'}}
                   onChange={createNodeHandler1} placeholder="Arrow name" />
                  <Select
                    showSearch
                    style={{ width: 110, marginLeft:'1%',fontSize:'120%' }}
                    placeholder="Type"
                    onChange={handleType}
                   >
                    <Option value="Measure">Measure</Option>
                    <Option value="Dimension">Dimension</Option>
                  </Select>
                 <Button name = "Tablebutton" onClick={createRelation} disabled={arrowcreatebutton} type="primary" style={{ width:'29.4%',marginLeft:'3%',backgroundColor:'green',borderColor:'green',fontSize:'120%',position:'absolute',marginTop:'4%'}}>Create</Button>
                 <Button name = "Tablebutton" onClick={showModal} disabled={arroweditbutton} type="primary" style={{ width:'29.5%',marginLeft:'34%',backgroundColor:'#FFC300',borderColor:'#FFC300',fontSize:'120%',position:'absolute',marginTop:'4%'}}>Edit</Button>
                 <Button name = "Tablebutton" onClick={showModalDelete} disabled={ arrowdeletebutton } type="primary" style={{ width:'29.5%',marginLeft:'65%',backgroundColor:'red',borderColor:'red',fontSize:'120%',position:'absolute',marginTop:'4%'}}>Delete</Button>
                 <Modal
                  title="Arrow Editor"
                  visible={visible}
                  onOk={handleOk}
                  onCancel={handleCancel}
                  >
                    <Select
                      showSearch
                      style={{ width: '50%',fontSize:'120%'}}
                      placeholder="Arrow Search"
                      onChange={handleModal}
                    >
                      {
                        (arrayTable[0])!=null?
                        arrayTable[0].edges.map((item)=>{
                              console.log(item.label)
                              return(
                                <Option value={item.label}>{item.label}</Option>)
                            })
                        :
                        console.log("nada")
                      }
                    </Select>
                    <Input name="arrow"
                    style={{width:'50%',fontSize:'120%'}}
                    onChange={modalinput} placeholder="New arrow name" />
                    </Modal>

                  <Modal
                  title="Arrow Deleter"
                  visible={visible1}
                  onOk={deletehandleOk}
                  onCancel={deletehandleCancel}
                  >
                    <Select
                      showSearch
                      style={{ width: '50%',fontSize:'120%'}}
                      placeholder="Arrow Search"
                      onChange={deletehandleModal}
                    >
                      {
                        (arrayTable[0])!=null?
                        arrayTable[0].edges.map((item)=>{
                              console.log(item.label)
                              return(
                                <Option value={item.label}>{item.label}</Option>)
                            })
                        :
                        console.log("nada")
                      }
                    </Select>
                    </Modal>
                 <Select
                    showSearch
                    style={{ width: '50%',fontSize:'120%',position:'absolute',marginLeft:'-100%',marginTop:'12%' }}
                    placeholder="Source node"
                    onChange={handleSource}
                  >
                    {
                      (arrayTable[0])!=null?
                      arrayTable[0].nodes.map((item)=>{
                            console.log(item.label)
                            return(
                              <Option value={item.label}>{item.label}</Option>)
                          })
                      :
                      console.log("nada")
                    }
                </Select>
                <Select
                    showSearch
                    style={{ width: '50%', marginLeft:'1%',fontSize:'120%',position:'absolute',marginLeft:'-50%',marginTop:'12%' }}
                    placeholder="Ending node"
                    onChange={handleDestiny}
                  >
                    {
                      (arrayTable[0])!=null?
                      arrayTable[0].nodes.map((item)=>{
                            console.log(item.label)
                            return(
                              <Option value={item.label}>{item.label}</Option>)
                          })
                      :
                      console.log("nada")
                    }
                </Select>
              </Form.Item>
              <Form.Item>
              </Form.Item>
                <Button name = "RelationClearbutton" type="primary" onClick={clearRelation} style={{width:'30%',backgroundColor:'#FFC300',borderColor:'#FFC300',fontSize:'120%'}}>Clear Selection</Button>
                <Button name = "ClearAllbutton" type="primary" onClick={clearAll} style={{ width:'30%',backgroundColor:'red',borderColor:'red',marginLeft:'39%',fontSize:'120%'}}>Delete Schema</Button>
                <Input
                  type="file"
                  name="file"
                  //suffix= {<UploadOutlined />
                  onChange={onFileChange}
                  required={true}
                  style={{
                      width:'30%',
                      marginTop:'5%'}}
                      />
                       <Button name = "ClearAllbutton" type="primary" onClick={exporter} style={{ width:'30%',backgroundColor:'#FFC300',borderColor:'#FFC300',fontSize:'120%',marginTop:'2%'}}>Export</Button>
              <Form.Item>
              </Form.Item>
          </Form>
         </Card>
              </th>
          </tr>
          <tr>
          {
                        localStorage.getItem("from")?
                        <div >
                          <div style={{backgroundColor:'#2274A5',marginLeft:'0.5vh',width:'99.3%',marginBottom:'-2%'}}>
                        <h1 style={{color:'white',marginLeft:'1vh'}}> Node Characterization</h1>
                        </div>
                        <Card hoverable style={{ width: '99.3%', borderColor: '#2274A5', marginLeft: '0.5vh'}}>
                      <div>
                          <p><b>Node</b> : { JSON.parse(localStorage.getItem("tables"))[parseInt(JSON.parse(localStorage.getItem("id")))].nodes[parseInt(localStorage.getItem("from")[1])].label}</p>
                          <p><b>Attributes :</b></p>
                          <List
                              style = {{width:'15vw'}}
                              bordered
                              dataSource={JSON.parse(localStorage.getItem("tables"))[parseInt(JSON.parse(localStorage.getItem("id")))].nodes[parseInt(localStorage.getItem("from")[1])].attribute_aux}
                              renderItem={item => (
                                <List.Item>
                                  {item}
                                </List.Item>
                              )}
                          />
                          <p><b>Primary keys</b>: No information</p>
                          <p><b>Foreign Keys</b>: No information</p>
                          {
                            localStorage.getItem("measures")?
                            <div>
                            <p><b>Measures</b>:</p>
                            <List
                              style = {{width:'15vw'}}
                              bordered
                              dataSource={ JSON.parse(localStorage.getItem("measures")).filter( (item) => item.origin== JSON.parse(localStorage.getItem("tables"))[parseInt(JSON.parse(localStorage.getItem("id")))].nodes[parseInt(localStorage.getItem("from")[1])].label)}
                              renderItem={item => (
                                <List.Item>
                                  {item.label}
                                </List.Item>
                              )}
                          />
                          </div>
                            :
                            <p><b>Measures</b>: No information</p>
                          }
                          {
                            localStorage.getItem("dimensions")?
                            <div>
                                <p><b>Dimensions</b>:</p>
                          <List
                              style = {{width:'15vw'}}
                              bordered
                              dataSource={ JSON.parse(localStorage.getItem("dimensions")).filter( (item) => item.origin== JSON.parse(localStorage.getItem("tables"))[parseInt(JSON.parse(localStorage.getItem("id")))].nodes[parseInt(localStorage.getItem("from")[1])].label)}
                              renderItem={item => (
                                <List.Item>
                                  {item.label}
                                </List.Item>
                              )}
                          />
                          </div>
                          :
                          <p><b>Dimensions</b>: No information</p>
                          }
                      </div>
                      </Card>
                      </div>
                        :
                        <div>
                           <div style={{backgroundColor:'#2274A5',marginBottom:'-2vh',marginLeft:'0.2vh',width: '100%'}}>
                        <h1 style={{color:'white',marginLeft:'1vh',zIndex:1}}> Node Characterization</h1>
                        </div>
                        <Card hoverable style={{ width: '100%', borderColor: '#2274A5', marginLeft: '0.2vh',minHeight:'20%'}}>
                        <div>
                          <p><b>Node</b> : No information</p>
                          <p><b>Attributes</b>: No information</p>
                          <p><b>Primary keys</b>: No information</p>
                          <p><b>Foreign Keys</b>: No information</p>
                          <p><b>Measures</b>: No information</p>
                          <p><b>Dimensions</b>: No information</p>
                      </div>
                      </Card>
                      </div>
                      }
          </tr>
      </table>
            </th>
            <th style={{width:'30%', maxWidth:'100%', marginLeft:'-20%'}}>  {
            localStorage.getItem('tables') ?
            <Content
            className="site-layout-background"
            style={{
            width:'100%',
            height: '100%',
            maxWidth:'100%',
            marginTop:'-20%',
           

            overflow:'auto'
          }}
        >
            <Graph graph={JSON.parse(localStorage.getItem('tables'))[JSON.parse(localStorage.getItem("id"))]} options={options} events={events} style={{ height: "540px"}} />
        </Content>
            : <p style={{marginLeft:'5vw',marginTop:'5vh'}}>There is no data to show </p>
        }</th>
          </tr>
          </table>

      </div>
  )
  ;
}

export default App;
/**
 * {
                localStorage.getItem("from") && localStorage.getItem("to")?
                <div></div>
                : <p> Please select two nodes</p>
            }
 */

 /**
  * <div>
        <div style={{overflowY: 'scroll',display:'flex',height:'38vh'}}>
        <table style={{width:'98%',marginLeft:'2%'}}>
          
            <tr>
                <th style={{width:'50%'}}>
                <div style={{backgroundColor:'#2274A5',marginBottom:'-2vh',marginLeft:'0.5vh'}}>
                          <h1 style={{color:'white',marginLeft:'1vh'}}> Schema Editor</h1>
                          </div>
                <Card hoverable style={{borderColor:'#2274A5',marginTop:'1vh',marginLeft:'0.5vh'}}>
            <Form>
                <Form.Item>
                <Input name="table"
                  style={{width:'25vh',fontSize:'120%'}}
                  onChange={createNodeHandler} placeholder="Node name" />
                   <Button name = "Tablebutton" onClick={createTable} disabled={createbutton} type="primary" style={{ width:'15%',marginLeft:'20.5%',backgroundColor:'green',borderColor:'green',fontSize:'120%'}}>Create</Button>
                   <Button name = "Tablebutton" onClick={editTable} disabled={editbutton} type="primary" style={{ width:'15%',marginLeft:'1%',backgroundColor:'#FFC300',borderColor:'#FFC300',fontSize:'120%'}}>Edit</Button>
                   <Button name = "Tablebutton" onClick={deleteTable} disabled={editbutton} type="primary" style={{ width:'15%',marginLeft:'1%',backgroundColor:'red',borderColor:'red',fontSize:'120%'}}>Delete</Button>
                </Form.Item>
            </Form>
            <Form>
                <Form.Item>
                    <Input name="relation"
                     style={{width:'25vh',fontSize:'120%'}}
                     onChange={createNodeHandler1} placeholder="Arrow name" />
                    <Select
                      showSearch
                      style={{ width: 110, marginLeft:'1%',fontSize:'120%' }}
                      placeholder="Type"
                      onChange={handleType}
                     >
                      <Option value="Measure">Measure</Option>
                      <Option value="Dimension">Dimension</Option>
                    </Select>
                   <Button name = "Tablebutton" onClick={createRelation} disabled={arrowcreatebutton} type="primary" style={{ width:'30.5%',marginLeft:'6%',backgroundColor:'green',borderColor:'green',fontSize:'120%',position:'absolute',marginTop:'4%'}}>Create</Button>
                   <Button name = "Tablebutton" onClick={showModal} disabled={arroweditbutton} type="primary" style={{ width:'30%',marginLeft:'39%',backgroundColor:'#FFC300',borderColor:'#FFC300',fontSize:'120%',position:'absolute',marginTop:'4%'}}>Edit</Button>
                   <Button name = "Tablebutton" onClick={showModalDelete} disabled={ arrowdeletebutton } type="primary" style={{ width:'32%',marginLeft:'71%',backgroundColor:'red',borderColor:'red',fontSize:'120%',position:'absolute',marginTop:'4%'}}>Delete</Button>
                   <Modal
                    title="Arrow Editor"
                    visible={visible}
                    onOk={handleOk}
                    onCancel={handleCancel}
                    >
                      <Select
                        showSearch
                        style={{ width: '50%',fontSize:'120%'}}
                        placeholder="Arrow Search"
                        onChange={handleModal}
                      >
                        {
                          (arrayTable[0])!=null?
                          arrayTable[0].edges.map((item)=>{
                                console.log(item.label)
                                return(
                                  <Option value={item.label}>{item.label}</Option>)
                              })
                          :
                          console.log("nada")
                        }
                      </Select>
                      <Input name="arrow"
                      style={{width:'50%',fontSize:'120%'}}
                      onChange={modalinput} placeholder="New arrow name" />
                      </Modal>

                    <Modal
                    title="Arrow Deleter"
                    visible={visible1}
                    onOk={deletehandleOk}
                    onCancel={deletehandleCancel}
                    >
                      <Select
                        showSearch
                        style={{ width: '50%',fontSize:'120%'}}
                        placeholder="Arrow Search"
                        onChange={deletehandleModal}
                      >
                        {
                          (arrayTable[0])!=null?
                          arrayTable[0].edges.map((item)=>{
                                console.log(item.label)
                                return(
                                  <Option value={item.label}>{item.label}</Option>)
                              })
                          :
                          console.log("nada")
                        }
                      </Select>
                      </Modal>
                   <Select
                      showSearch
                      style={{ width: '50%',fontSize:'120%',position:'absolute',marginLeft:'-100%',marginTop:'12%' }}
                      placeholder="Source node"
                      onChange={handleSource}
                    >
                      {
                        (arrayTable[0])!=null?
                        arrayTable[0].nodes.map((item)=>{
                              console.log(item.label)
                              return(
                                <Option value={item.label}>{item.label}</Option>)
                            })
                        :
                        console.log("nada")
                      }
                  </Select>
                  <Select
                      showSearch
                      style={{ width: '50%', marginLeft:'1%',fontSize:'120%',position:'absolute',marginLeft:'-50%',marginTop:'12%' }}
                      placeholder="Ending node"
                      onChange={handleDestiny}
                    >
                      {
                        (arrayTable[0])!=null?
                        arrayTable[0].nodes.map((item)=>{
                              console.log(item.label)
                              return(
                                <Option value={item.label}>{item.label}</Option>)
                            })
                        :
                        console.log("nada")
                      }
                  </Select>
                </Form.Item>
                <Form.Item>
                </Form.Item>
                  <Button name = "RelationClearbutton" type="primary" onClick={clearRelation} style={{width:'30%',backgroundColor:'#FFC300',borderColor:'#FFC300',fontSize:'120%'}}>Clear Selection</Button>
                  <Button name = "ClearAllbutton" type="primary" onClick={clearAll} style={{ width:'30%',backgroundColor:'red',borderColor:'red',marginLeft:'39%',fontSize:'120%'}}>Delete Schema</Button>
                  <Input
                    type="file"
                    name="file"
                    //onChange={this.onFileChange}
                    required={true}
                    style={{width:'30%'}}
                        />
                         <Button name = "ClearAllbutton" type="primary" onClick={clearAll} style={{ width:'30%',backgroundColor:'#FFC300',borderColor:'#FFC300',marginLeft:'39%',fontSize:'120%'}}>Export</Button>
                <Form.Item>
                </Form.Item>
            </Form>
           </Card>
                </th>
                <th style={{width:'50%'}}>
                        {
                          localStorage.getItem("from")?
                          <div style = {{marginTop:'23%'}}>
                            <div style={{backgroundColor:'#2274A5',marginBottom:'-12vh',marginLeft:'0.5vh',width: '89%'}}>
                          <h1 style={{color:'white',marginLeft:'1vh'}}> Node Characterization</h1>
                          </div>
                          <Card hoverable style={{ width: '89%', marginTop:'13%', borderColor: '#2274A5', marginLeft: '0.5vh'}}>
                        <div>
                            <p><b>Node</b> : { JSON.parse(localStorage.getItem("tables"))[parseInt(JSON.parse(localStorage.getItem("id")))].nodes[parseInt(localStorage.getItem("from")[1])].label}</p>
                            <p><b>Attributes :</b></p>
                            <List
                                style = {{width:'15vw'}}
                                bordered
                                dataSource={JSON.parse(localStorage.getItem("tables"))[parseInt(JSON.parse(localStorage.getItem("id")))].nodes[parseInt(localStorage.getItem("from")[1])].attribute_aux}
                                renderItem={item => (
                                  <List.Item>
                                    {item}
                                  </List.Item>
                                )}
                            />
                            <p><b>Primary keys</b>: No information</p>
                            <p><b>Foreign Keys</b>: No information</p>
                            {
                              localStorage.getItem("measures")?
                              <div>
                              <p><b>Measures</b>:</p>
                              <List
                                style = {{width:'15vw'}}
                                bordered
                                dataSource={ JSON.parse(localStorage.getItem("measures")).filter( (item) => item.origin== JSON.parse(localStorage.getItem("tables"))[parseInt(JSON.parse(localStorage.getItem("id")))].nodes[parseInt(localStorage.getItem("from")[1])].label)}
                                renderItem={item => (
                                  <List.Item>
                                    {item.label}
                                  </List.Item>
                                )}
                            />
                            </div>
                              :
                              <p><b>Measures</b>: No information</p>
                            }
                            {
                              localStorage.getItem("dimensions")?
                              <div>
                                  <p><b>Dimensions</b>:</p>
                            <List
                                style = {{width:'15vw'}}
                                bordered
                                dataSource={ JSON.parse(localStorage.getItem("dimensions")).filter( (item) => item.origin== JSON.parse(localStorage.getItem("tables"))[parseInt(JSON.parse(localStorage.getItem("id")))].nodes[parseInt(localStorage.getItem("from")[1])].label)}
                                renderItem={item => (
                                  <List.Item>
                                    {item.label}
                                  </List.Item>
                                )}
                            />
                            </div>
                            :
                            <p><b>Dimensions</b>: No information</p>
                            }
                        </div>
                        </Card>
                        </div>
                          :
                          <div>
                             <div style={{backgroundColor:'#2274A5',marginBottom:'-2vh',marginLeft:'0.5vh',width: '89%'}}>
                          <h1 style={{color:'white',marginLeft:'1vh',zIndex:1}}> Node Characterization</h1>
                          </div>
                          <Card hoverable style={{ width: '89%', borderColor: '#2274A5', marginLeft: '0.5vh',minHeight:'20%'}}>
                          <div>
                            <p><b>Node</b> : No information</p>
                            <p><b>Attributes</b>: No information</p>
                            <p><b>Primary keys</b>: No information</p>
                            <p><b>Foreign Keys</b>: No information</p>
                            <p><b>Measures</b>: No information</p>
                            <p><b>Dimensions</b>: No information</p>
                        </div>
                        </Card>
                        </div>
                        }
                </th>
            </tr>
        </table>
        </div>
        <div>
        <Divider style={{backgroundColor:'#2274A5'}}/>
        </div>
        {
            localStorage.getItem('tables') ?
            <Content
            className="site-layout-background"
            style={{
            padding: 24,
            margin: 0,
            minHeight: 280,
          }}
        >
            <Graph graph={JSON.parse(localStorage.getItem('tables'))[JSON.parse(localStorage.getItem("id"))]} options={options} events={events} style={{ height: "540px"}} />
        </Content>
            : <p style={{marginLeft:'5vw',marginTop:'5vh'}}>There is no data to show </p>
        }
      </div>
  */