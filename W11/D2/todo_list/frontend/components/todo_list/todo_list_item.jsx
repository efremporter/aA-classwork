import React from 'react';

const TodoListItem = (props) => {

  const handleClick = (e) => {
    e.preventDefault();
    let value = false;
    if (props.todo.done === false)
      value = true;
    
    console.log(props.todo.done)
    props.todo.done = value;
    console.log(props.todo.done)

    if (props.todo.done === true)
      return "DONE"
    else
      return "UNDO"
  };

  const showStatus = () => {
    if (props.todo.done === true)
      return "DONE"
    else 
      return "UNDO"
  }

  return (
    <div>
      <li>{props.todo.title}</li>
      <button onClick={handleClick}>{showStatus()}</button>
      <button onClick={()=>props.removeTodo(props.todo)}>DELETE</button>
    </div>
  );
}

export default TodoListItem;