import configureStore from './store/store';
import { recieveTodos } from './actions/todo_actions'

document.addEventListener("DOMContentLoaded", () => {
  console.log("hello")

  const store = configureStore();

  window.store = store
  
})