import React from 'react';
import TodoListItem from '../todo_list/todo_list_item';
import TodoForm from '../todo_list/todo_form';

const TodoListItems = (props) => {
  const todoItems = props.todos.map((todo, idx) => (
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
      <TodoForm receiveTodo={props.receiveTodo}/>
    </div>
  );
};

export default TodoListItems;