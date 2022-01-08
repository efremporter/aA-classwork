import React from 'react';
import ReactDOM from 'react-dom';
import Clock from './clock.jsx';
import Tabs from './tabs.jsx'
import Weather from './weather.jsx'

document.addEventListener('DOMContentLoaded', () => {
  const root = document.getElementById('root');
  const div = () => {
    return (
      <div>
        <Clock/>
        <Tabs array={[{title:"Tab 1", content:"Tabs 1 content"},{title:"Tab 2", content:"Tabs 2 content"}]} />
      </div>
    )
  }
  ReactDOM.render(<Weather />, root);
})