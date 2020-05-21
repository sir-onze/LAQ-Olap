import React from 'react';
import ReactDOM from 'react-dom';
import './index.css';
import App from './App';
import Layer from './components/Layer'
import * as serviceWorker from './serviceWorker';

ReactDOM.render(<Layer />, document.getElementById('root'));

serviceWorker.unregister();
