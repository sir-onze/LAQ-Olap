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
     ,
    ]}
  />
    <Dot></Dot>
  </div>,
  document.getElementById("root")
);