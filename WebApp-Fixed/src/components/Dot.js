import Graph from "react-graph-vis";
import React from "react";
import 'antd/dist/antd.css';
import { Form, Input, Button, notification,Select, Layout, List,message} from 'antd';
import { Card, Divider} from 'antd';
const { Option } = Select;
const { Content} = Layout;

function App() {
  /** Array para guardar todas as tabelas introduzidas pelo utilizador */
  const [arrayTable=[],hookTable]= React.useState([]) ;
  const graph = {
    nodes: [],
    edges: []
  };
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


  /** Função que trata dos cliques nos dropdowns */
  function handleMenuClick(value) {
    console.log(`selected ${value}`);
    message.success("Selected " + value)
  }
  /** Aqui estou a tratar os casos em que clicamos nos butoes */
  const events = {
    select: function(event) {
      var { nodes, edges } = event;
      //não temos nenhum
      if(localStorage.getItem("from")&& !localStorage.getItem("to")){
        openNotification(nodes)
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
        selectedNotification()
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

    // quando insiro tenho que aceder a arrayTable, dar get do value e depois dar update
    function createTable(e){
        if(localStorage.getItem("id")){
            id=parseInt(localStorage.getItem("id"),10)+1
        }
        //console.log("adicionado pelo botao "+e.target.name + "added " + label)
        var aux_table = {id, label,color: "#e04141",attribute_aux,physics:"false"}
        localStorage.setItem("id",id)
        console.log(arrayTable[0])
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

    /** Uma criação de relação implica saber que tipo de relação estamos a criar
     * caso seja uma dimension temos de a guardar como tal no array das relações de dimension
     * casos seja uma measure a mesma coisa, para além de adicionarmos como atributo da entidade
     */
    function createRelation(e){
        if(localStorage.getItem("from") && localStorage.getItem("to")){
          if(e.target.name=="Measure"){
            /** Verificar se a entidade já tem atributos ou nao*/
            var attribute_aux = []
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
        localStorage.setItem("id",'-1')
        localStorage.setItem("first",'')
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
        <div style={{overflowY: 'scroll',display:'flex',height:'40vh'}}>
        <table style={{width:'100%'}}>
            <tr>
                <th style={{width:'50%'}}>
                <Card hoverable style={{borderColor:'#2274A5',marginTop:'1vh',marginLeft:'0.5vh'}}>
                  <h1>Schema Editor</h1>
            <Form>
                <Form.Item>
                <Input name="table"
                  style={{width:'25vh'}}
                  onChange={postHandler} placeholder="Input node name" />
                   <Button name = "Tablebutton" onClick={createTable} type="primary" style={{ width:'7vw',marginLeft:'5vh',backgroundColor:'#000505',borderColor:'#000505'}}>Create</Button>
                   <Button name = "Tablebutton" onClick={createTable} type="primary" style={{ width:'7vw',marginLeft:'5vh',backgroundColor:'#000505',borderColor:'#000505'}}>Edit</Button>
                   <Button name = "Tablebutton" onClick={createTable} type="primary" style={{ width:'7vw',marginLeft:'5vh',backgroundColor:'#000505',borderColor:'#000505'}}>Delete</Button>
                </Form.Item>
            </Form>
            <Form>
                <Form.Item>
                    <Input name="relation"
                     style={{width:'25vh'}}
                     onChange={postHandler1} placeholder="Arrow name" />
                    <Button name = "Measure" type="primary" onClick={createRelation} style={{width:'7vw',marginTop:'5vh',marginLeft:'5vh',backgroundColor:'#000505',borderColor:'#000505'}}>Create </Button> 
                    <Button name = "Dimension" type="primary" onClick={createRelation} style={{width:'7vw',marginTop:'5vh',marginLeft:'5vh',backgroundColor:'#000505',borderColor:'#000505'}}>Edit</Button>
                    <Button name = "RelationClearbutton" type="primary" onClick={clearRelation} style={{marginLeft:'5vh', width:'7vw',backgroundColor:'#000505',borderColor:'#000505'}}>Delete</Button>
                </Form.Item>
                <Form.Item>
                  <Select
                      showSearch
                      style={{ width: 150, marginLeft:'5vh' }}
                      placeholder="Source node"
                      onChange={handleMenuClick}
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
                      style={{ width: 150, marginLeft:'5vh' }}
                      placeholder="Destiny node"
                      onChange={handleMenuClick}
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
                    style={{ width: 110, marginLeft:'5vh' }}
                    placeholder="Type"
                    onChange={handleMenuClick}
                  >
                    <Option value="Measure">Measure</Option>
                    <Option value="Dimension">Dimension</Option>

                </Select>
                </Form.Item>
                {
                localStorage.getItem("from") && localStorage.getItem("to")?
                <div></div>
                : <p> Please select two nodes</p>
            }
            </Form>
            <Button name = "ClearAllbutton" type="primary" onClick={clearAll} style={{ width:'10vw',backgroundColor:'#000505',borderColor:'#000505'}}>Erase Schema</Button>
           </Card>

                </th>
                <th style={{width:'50%'}}>
                
                        {
                          localStorage.getItem("from")?
                          <Card hoverable style={{ width: '89%', marginTop: '11.5vh', borderColor: '#2274A5', marginLeft: '0.5vh'}}>
                        <div>
                           <h1>Entity Characterization</h1>
                            <p><b>Entitie</b> : { JSON.parse(localStorage.getItem("tables"))[parseInt(JSON.parse(localStorage.getItem("id")))].nodes[parseInt(localStorage.getItem("from")[1])].label}</p>
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
                          :
                          <Card hoverable style={{ marginTop:'1vh',width: '89%', borderColor: '#2274A5', marginLeft: '0.5vh',minHeight:'50vh'}}>
                          <div>
                          <h1>Entity Characterization</h1>
                            <p><b>Entitie</b> : No information</p>
                            <p><b>Attributes</b>: No information</p>
                            <p><b>Primary keys</b>: No information</p>
                            <p><b>Foreign Keys</b>: No information</p>
                            <p><b>Measures</b>: No information</p>
                            <p><b>Dimensions</b>: No information</p>
                        </div>
                        </Card>
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
            <Graph graph={JSON.parse(localStorage.getItem('tables'))[0]} options={options} events={events} style={{ height: "540px"}} />
        </Content>
            : <p style={{marginLeft:'5vw',marginTop:'5vh'}}>There is no data to show </p>
        }
      </div>
  )
  ;
}

export default App;
