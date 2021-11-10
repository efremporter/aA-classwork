export const RECEIVE_TODOS = "RECEIVE_TODOS";
export const RECEIVE_TODO = "RECEIVE_TODO";

const receiveTodos = (todos) => {
  return {
    type: RECEIVE_TODOS, // add multi to your list 
    todos, // these todos to your list
  };
};

const receiveTodo = (todo) => {
  return {
    type: RECEIVE_TODO, //add 1 todo to your list
    todo, // add the todo passed in 
  };
};

// todo1 = "brush your teeth"
// store.dispatch(receiveTodo(todo1))