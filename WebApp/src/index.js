import Graph from "react-graph-vis";
import React from "react";
import { render } from "react-dom";
import 'antd/dist/antd.css';
import { PageHeader } from 'antd';
import Dot from './components/Dot'
const routes= []
render(
  <div>
    <PageHeader
    className="site-page-header"
    title="LAQ-OLAP"
    breadcrumb={{ routes }}
    subTitle="The LAQ interface"
  />
    <Dot></Dot>
  </div>,
  document.getElementById("root")
);