import React from "react";

export const RECEIVE_TODOS = "RECEIVE_TODOS";
export const RECEIVE_TODO = "RECEIVE_TODO";
export const REMOVE_TODO = "REMOVE_TODO";

export const receiveTodos = (todos) => {
  return {
    type: RECEIVE_TODOS, // add multi to your list 
    todos, // these todos to your list
  };
};

export const receiveTodo = (todo) => {
  return {
    type: RECEIVE_TODO, //add 1 todo to your list
    todo, // add the todo passed in 
  };
};

export const removeTodo = (todo) => {
  return {
    type: REMOVE_TODO,
    todo,
  }
}
