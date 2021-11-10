import configureStore from './store/store';
import { receiveTodos, receiveTodo, removeTodo } from './actions/todo_actions'

document.addEventListener("DOMContentLoaded", () => {
  console.log("hello")

  const store = configureStore();

  window.store = store
  window.receiveTodos = receiveTodos
  window.receiveTodo = receiveTodo
  window.removeTodo = removeTodo

})