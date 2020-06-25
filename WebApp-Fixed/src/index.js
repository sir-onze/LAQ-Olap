import React from "react";
import { render } from "react-dom";
import 'antd/dist/antd.css';
import { PageHeader, Button, } from 'antd';
import Dot from './components/Dot'
import header from './tittle.css'
const routes= []

render(
  <div>
    <PageHeader

    style={{backgroundColor:"#2274A5",color:'white'}}
    className="site-page-header"
    title="LAQ-OLAP"
    breadcrumb={{ routes }}
    subTitle="The LAQ interface"
    extra={[
      <Button key="1" type="primary" style={{backgroundColor:'#000505',borderColor:'#000505'}}>
        Import
      </Button>,
      <Button key="1" type="primary" style={{backgroundColor:'#000505',borderColor:'#000505'}}>
      Export
    </Button>,
    ]}
  />
    <Dot></Dot>
  </div>,
  document.getElementById("root")
);