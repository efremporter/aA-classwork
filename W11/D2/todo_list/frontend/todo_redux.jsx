import React from "react";
import ReactDOM from "react-dom";

import Root from "./components/root"

import configureStore from './store/store';
import { receiveTodos, receiveTodo, removeTodo } from './actions/todo_actions'
import {allTodos} from "./reducers/selectors"

document.addEventListener("DOMContentLoaded", () => {
  const main = document.getElementById("main");
  const store = configureStore();

  ReactDOM.render(<Root store={store}/>, main)

  window.store = store
  window.receiveTodos = receiveTodos
  window.receiveTodo = receiveTodo
  window.removeTodo = removeTodo
  window.allTodos = allTodos

})