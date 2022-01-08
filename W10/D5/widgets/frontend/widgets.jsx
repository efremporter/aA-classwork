import React from 'react';
import ReactDOM from 'react-dom';
import Clock from './clock.jsx';
import Tabs from './tabs.jsx'

document.addEventListener('DOMContentLoaded', () => {
  const root = document.getElementById('root');
  ReactDOM.render(<Tabs array={[{title:"Tab 1", content:"Tabs 1 content"},{title:"Tab 2", content:"Tabs 2 content"}]} />, root);
})