import { connect } from 'react-redux';
import { allTodos } from '../../reducers/selectors';
import TodoList from './todo_list';
import { receiveTodo, removeTodo } from '../../actions/todo_actions'

const mapSTP = (state) => {
  return {
    todos: allTodos(state)
  }
};

const mapDTP = dispatch => ({
  receiveTodo: todo => dispatch(receiveTodo(todo)),
  removeTodo: todo => dispatch(removeTodo(todo))
});

export default connect(mapSTP, mapDTP)(TodoList);