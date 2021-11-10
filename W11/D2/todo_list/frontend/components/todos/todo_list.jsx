import React from 'react';
import TodoList from './todo_list_container'
import TodoListItem from '../todo_list/todo_list_item';

const TodoListItems = ({todos}) => {
  const todoItems = todos.map((todo, idx) => (
    <TodoListItem key={idx} todo={todo} />
  ));

  // const todoItems = todos.map((todo,idx) => {
  //   return <li key={idx}>{todo.title}</li>
  // })

  return (
    <div>
      <ul className='todo-items'>
        {todoItems}
      </ul>
    </div>
  );
};

export default TodoListItems;