import Graph from "react-graph-vis";
import React from "react";
import 'antd/dist/antd.css';
import { Form, Input, Button, notification,Descriptions,Select,Card, Layout} from 'antd';
import { Collapse } from 'antd';
import { Attribute } from "pixi.js";

const { Option } = Select;
const { Content} = Layout;

function App() {
  /** Array para guardar todas as tabelas introduzidas pelo utilizador */
  const [arrayTable=[],hookTable]= React.useState([]) ;
  const graph = {
    nodes: [],
    edges: []
  };
  arrayTable.push(graph)

  const options = {
    layout: {
      hierarchical: false
    },
    edges: {
      color: "#000000"
    }
  };
  /** Aqui estou a tratar os casos em que clicamos nos butoes */
  const events = {
    select: function(event) {
      var { nodes, edges } = event;
      //não temos nenhum
      if(localStorage.getItem("from")&& !localStorage.getItem("to")){
        openNotification(nodes)
        localStorage.setItem("to",JSON.stringify(nodes))
         }
      if(!localStorage.getItem("from")&& !localStorage.getItem("to")){
        openNotification(nodes)
        localStorage.setItem("from",JSON.stringify(nodes))
        
            localStorage.setItem("selected_attributes",JSON.stringify(JSON.parse(localStorage.getItem("tables"))[parseInt(JSON.parse(localStorage.getItem("id")))].nodes[parseInt(JSON.parse(localStorage.getItem("id")))].attribute_aux))
        
        
        console.log( JSON.parse(localStorage.getItem("from")))
        }
      else{
        selectedNotification()
      }
      console.log(nodes);
      console.log("Selected edges:");
      console.log(edges);
    }
  };

  /********** Constantes e funções para lidar com input de dados ***********/

    /********** Parte relacionada com as tabelas ***********/
    var id = 0
    const { Panel } = Collapse;
    var label=''

    // quando insiro tenho que aceder a arrayTable, dar get do value e depois dar update
    function createTable(e){
        if(localStorage.getItem("id")){
            id=parseInt(localStorage.getItem("id"),10)+1
        }
        //console.log("adicionado pelo botao "+e.target.name + "added " + label)
        var aux_table = {id, label,color: "#e04141",attribute_aux}
        localStorage.setItem("id",id)
        console.log(arrayTable[0])
        var graph_aux=arrayTable[0]
        if(arrayTable){
            graph_aux.nodes.push(aux_table)
            arrayTable.concat(graph_aux)
            hookTable(arrayTable.concat(graph_aux))
            localStorage.setItem('tables',JSON.stringify(arrayTable))
        }
      
    }

    function postHandler (e) {
        console.log(e.target.value)
        label = e.target.value
        console.log(label)
    }

    /** Parte de controlo da seleção do tipo de input */
    const { Option } = Select;

    function onChangeSelect(value) {
    console.log(`selected ${value}`);
    }

    /********** Parte relacionada com as relações ***********/
    function postHandler1 (e) {
        console.log(e.target.value)
        label = e.target.value
        console.log(label)
    }
    function openNotification (node) {
        notification.open({
          message: 'Nodo selecionado',
          description:
            'Selecionou o nodo '+node +' para criar uma relação',
          onClick: () => {
            console.log('Notification Clicked!');
          },
        });
      }

      /** Notificação para quando temos os dois nos selecionados para criar relação*/
    function selectedNotification (node) {
        notification.open({
          message: 'You have selected nodes',
          description:
            'Please create a relation or click clear nodes',
          onClick: () => {
            console.log('Notification Clicked!');
          },
        });
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

    function createRelation(e){
        if(localStorage.getItem("from") && localStorage.getItem("to")){
        var from = localStorage.getItem("from")[1]
        console.log(from)
        var to= localStorage.getItem("to")[1]
        console.log(to)
        var aux_rels = {from,to,label}
        console.log("edges aux :" +JSON.stringify(aux_rels))
        console.log(arrayTable[id])
        var graph_aux=arrayTable[id]
        graph_aux.edges.push(aux_rels)
        hookTable(arrayTable.concat(graph_aux))
        localStorage.setItem('tables',JSON.stringify(arrayTable))
        localStorage.setItem('from','')
        localStorage.setItem('to','')
    }
    else {
        errorNotification()
    }
    }

    function clearRelation(e){
        localStorage.setItem("to",'')
        localStorage.setItem("from",'')
        localStorage.setItem("selected_attributes",'')
        notification.open({
            message: 'You have cleaned the selected nodes',
            description:
              'You can make the selection again',
            onClick: () => {
              console.log('Notification Clicked!');
            },
          });
    }

    function clearAll(e){
        localStorage.setItem("to",'')
        localStorage.setItem("from",'')
        localStorage.setItem("tables",'')
        localStorage.setItem("id",'')
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

    /** Parte relacionada com a criação de atributos na tabela */
    
    const [attributes=[],hookAttributes]= React.useState([]) 
    var attribute = ''
    var attribute_aux =[]
    var attribute_aux1 =[]
    const children = [] 

    function addAttribute (e) {
       console.log("attributes" + attribute)
       //attribute.push (attribute)
       //attributes.concat(attribute_aux)
       attribute_aux.push(attribute)
       //hookAttributes (attributes.concat(attribute_aux))
       console.log(attribute_aux)
    }
    function atributeHandler (e) {
        console.log(e.target.value)
        attribute = e.target.value
        console.log(attribute)
    }
    function handleChange(value) {
        console.log(`selected ${value}`);
        localStorage.setItem("selected_att",value)
        label = value
        attribute_aux='measure or dimension'
      }
      attribute_aux1 = JSON.parse(localStorage.getItem("selected_attributes"))
      if( attribute_aux1){
        for (let i = 0; i < attribute_aux1.length; i++) {
            children.push(<Option key={attribute_aux1[i]}>{attribute_aux1[i]}</Option>);
          }
      }

      function createMeasure(e){
        if(localStorage.getItem("from") ){
            
    }
    else {
        errorNotification()
    }
    }

  return(
      <div>
        <table style={{width:'100%'}}>
            <tr>
                <th style={{width:'50%'}}>
                <Collapse defaultActiveKey={['1']} >
            <Panel header="Add Tables" key="1">
            <Form>
                <Form.Item label="Table name">
                <Input name="table"
                  onChange={postHandler} placeholder="Input name" />
                </Form.Item>
                <Form.Item label="Atribute name">
                <Input name="atribute"
                  onChange={atributeHandler} placeholder="Input atribute name" />
                </Form.Item>
                <Form.Item >
                    <Button name ={attribute} onClick={addAttribute} type="primary" style={{ width:'10vw'}}>Add Atribute</Button>
                </Form.Item>
                <Form.Item >
                    <Button name = "Tablebutton" onClick={createTable} type="primary" style={{ width:'10vw'}}>Create Entity</Button>
                </Form.Item>
            </Form>
            </Panel>
            <Panel header="Add Relations" key="2">
            {
                localStorage.getItem("from") && localStorage.getItem("to")?
                <div></div>
                : <p> Please select two nodes</p>
            }
            <Form>
                <Form.Item label="Relation name">
                    <Input name="relation"
                  onChange={postHandler1} placeholder="Relation name" />
                </Form.Item>
                <Form.Item >
                    <Button name = "Relationbutton" type="primary" onClick={createRelation} style={{ width:'5vw'}}>Create</Button>
                    <Button name = "RelationClearbutton" type="primary" onClick={clearRelation} style={{marginLeft:'2vw', width:'5vw'}}>Clear</Button>
                </Form.Item>
            </Form>
            </Panel>
            <Panel header="Tools" key="3">
            <Button name = "ClearAllbutton" type="primary" onClick={clearAll} style={{ width:'10vw'}}>Erase Schema</Button>
            </Panel>
        </Collapse>
                </th>
                <th style={{width:'50%',position:'fixed'}}>
                <Card style={{ width: '100%',maxWidth:'99%'}}>
                    {
                         localStorage.getItem("from") ?
                         <div>
                            <p>Informations and Operations</p>
                            <p> Attributes Information :</p>
                            <Select mode="tags" style={{ width: '100%' }} onChange={handleChange} tokenSeparators={[',']}>
                                {children}
                            </Select>
                            <Button name = "RelationClearbutton" type="primary" onClick={createMeasure} style={{width:'8vw',marginTop:'5vh'}}>Create Measure</Button>
                            <Button name = "RelationClearbutton" type="primary" onClick={clearRelation} style={{width:'8vw',marginTop:'5vh',marginLeft:'2vw'}}>Create Dimention</Button>
                            <Button name = "RelationClearbutton" type="primary" onClick={clearRelation} style={{width:'8vw',marginTop:'5vh',marginLeft:'2vw'}}>Clear</Button>
                            <p style={{marginTop:'2vh'}}> Queries :</p>
                         </div>
                        :
                        <p>Please select a table</p>
                    }
                </Card>
                </th>
            </tr>
        </table>
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
            <Graph graph={JSON.parse(localStorage.getItem('tables'))[0]} options={options} events={events} style={{ height: "540px"}} />
        </Content>
            : <p style={{marginLeft:'5vw',marginTop:'5vh'}}>There is no data to show </p>
        }
      </div>
  )
  ;
}

export default App;

/**
 * 
 * Input de tipo de operação
 * <Form.Item>
                <Select
                    showSearch
                    style={{ width: 200 }}
                    placeholder="Select a type of input"
                    optionFilterProp="children"
                    onChange={onChangeSelect}
                    filterOption={(input, option) =>
                    option.children.toLowerCase().indexOf(input.toLowerCase()) >= 0
                    }
                >
                    <Option value="Measure">Measure</Option>
                    <Option value="Table">Table</Option>
                    <Option value="Dimention">Dimention</Option>
                 </Select>
                </Form.Item>
 */