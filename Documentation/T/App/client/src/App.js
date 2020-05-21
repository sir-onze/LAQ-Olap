import React from 'react';
import './App.css';
import arrow from './images/arrow.png'
import { Button, Input } from 'antd';

import { Graphviz } from 'graphviz-react';

/** Criação das imagens depois de arrastada
const URLImage = ({ image }) => {
const [img] = useImage(image.src);
  return (
    <Image
      image={img}
      x={image.x}
      y={image.y}
      // I will use offset to set origin to the center of the image
      offsetX={img ? img.width / 2 : 0}
      offsetY={img ? img.height / 2 : 0}
    />
  );
};
*/
function sleep(ms) {
  return new Promise(resolve => setTimeout(resolve, ms));
}
/** Array para guardar todas as tabelas introduzidas pelo utilizador */
const arrayTable = [] ;
var table = "" ;


function App() {
  const dragUrl = React.useRef();
  const stageRef = React.useRef();
  const [images, setImages] = React.useState([])
  localStorage.setItem('id',0);

  /** Funções auxiliares para lidarem com as ações dos butões */
  function handleTable(e){
    console.log("adicionado pelo botao "+e.target.name)
    arrayTable.push(table)
    localStorage.setItem('tables',JSON.stringify(arrayTable))
    console.log(JSON.parse(localStorage.getItem('tables')))
  }

  function handleClean(e) {
    window.location.assign('http://localhost:3000/')
    localStorage.setItem('tables',[])
  }

  function postHandler (e) {
    console.log(e.target.value)
    table = e.target.value
    console.log(table)
}

  return(
      <div>
        <center><h1 style={{fontSize:'vh'}}> OLAP - Linear Algebra Query Workbench </h1></center>
        <br />
        <table style={{width:'30%',float:"left",tableLayout:'fixed'}}>
          <tr style={{width:'100%'}}>
            <th style={{width:'15%'}}><center>Inputs</center></th>
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
          <div
                onDrop={e => {
                // register event position
                console.log("ligaçao")
                stageRef.current.setPointersPositions(e);
                // add image
                setImages(
                    images.concat([
                      {
                        ...stageRef.current.getPointerPosition(),
                        src: dragUrl.current
                      }
                    ])
                  );
                }}
                onDragOver={e => e.preventDefault()}
              >
                <div
                  width={window.innerWidth}
                  height={window.innerHeight}
                  style={{ border: '1px solid grey',height:'100%' ,width:'100%' }}
                  ref={stageRef}
                >
                  {
                  localStorage.getItem('tables')?
                  JSON.parse(localStorage.getItem('tables')).map(value =>{
                    return <Graphviz
                    options={{height:'5vh'}}
                      dot = {`digraph {`+
                      value+`
                    }`} />
            })
            : []
            }

                </div>
              </div>
          </tr>

        </table>

    </div>
  )
  ;
}

export default App;
