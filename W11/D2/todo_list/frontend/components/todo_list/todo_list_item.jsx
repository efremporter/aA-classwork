import React from 'react';
import { allTodos } from '../../reducers/selectors';

const TodoListItem = (props) => {
  return <li>{props.todo.title}</li>
}

export default TodoListItem;