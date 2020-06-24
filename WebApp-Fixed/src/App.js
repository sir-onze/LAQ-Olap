import React from 'react';
import './App.css';
import arrow from './images/arrow.png'
import { Button, Input } from 'antd';
import Dot from './components/Dot'
function App() {
  /** Array para guardar todas as tabelas introduzidas pelo utilizador */
  const [arrayTable=[],hookTable]= React.useState([]) ;
  const [arrayRela=[],hookRela]= React.useState([]) ;
  var table = "" ;
  var rela = "";
  /** Se que mando de piça */
  const dragUrl = React.useRef();
  const stageRef = React.useRef();
  const [images, setImages] = React.useState([])
  /** inicializações da localstorage */
  localStorage.setItem('id',0);

  /** Função auxiliar para lifar com a adição de uma tabela */
  function handleTable(e){
      console.log("adicionado pelo botao "+e.target.name+"o valor"+table)
      hookTable(arrayTable.concat([table]))
      localStorage.setItem('tables',JSON.stringify(arrayTable.concat([table])))
      console.log(JSON.parse(localStorage.getItem('tables')))
  }

  function handleRela(e){
    console.log("adicionado pelo botao "+e.target.name+"o valor"+rela)
    hookRela(arrayRela.concat([rela]))
    localStorage.setItem('relations',JSON.stringify(arrayTable.concat([rela])))
    console.log(JSON.parse(localStorage.getItem('relations')))
}

  function handleClean(e) {
    localStorage.clear()
    window.location.assign('http://localhost:4000/')
  }

  function postHandler (e) {
    console.log(e.target.value)
    table = e.target.value
    console.log(table)
}

function postHandler1 (e) {
  console.log(e.target.value)
  rela = e.target.value
  console.log(rela)
}

  return(
      <div>
        <center><h1 style={{fontSize:'vh'}}> OLAP - Linear Algebra Query Workbench </h1></center>
        <br />
        <table style={{width:'30%',float:"left",tableLayout:'fixed'}}>
          <tr style={{width:'100%'}}>
            <th style={{width:'100%'}}><center>Inputs</center></th>
          </tr>
          <tbody>
          <tr style={{width:'100%'}}>
            <td style={{width:'100%'}}>

            <Input
                  placeholder="Table Name"
                  name="email"
                  onChange={postHandler}
                  required={true}
            />
            </td>
            <td >
              <Button
               onClick = {handleTable}
               style = {{marginBottom:'2vh',marginTop:'2vh'}}
               name = "Tablebutton">
                Inserir Tabela
              </Button>
            </td>
          </tr>
          <tr style={{width:'100%'}}>
            <td style={{width:'100%'}}>

            <Input
                  placeholder="Relation Name"
                  name="email"
                  onChange={postHandler1}
                  required={true}
            />
            </td>
            <td >
              <Button
               onClick = {handleRela}
               style = {{marginBottom:'2vh',marginTop:'2vh'}}
               name = "Tablebutton">
                Inserir Relação
              </Button>
            </td>
          </tr>
          <tr>
            <td>
            <Button
            onClick = {handleClean}
            style = {{marginBottom:'2vh',marginTop:'2vh'}}
            name = "adicionabutton"
          >
          Limpar
        </Button>
            </td>
          </tr>
          </tbody>
        </table>

        <table style={{width:'70%',float:"left"}}>
          <tr>
            <th><center>Diagramas</center></th>
          </tr>
          <tr>
          <div>
             <Dot></Dot>
          </div>
          </tr>

        </table>

    </div>
  )
  ;
}

export default App;
