import { connect } from 'react-redux';
import { allTodos } from '../../reducers/selectors';
import TodoList from './todo_list';

const mapSTP = (state) => {
  return {
    todos: allTodos(state)
  }
};

const mapDTP = dispatch => ({
  receiveTodo: todo => dispatch(receiveTodo(todo))
});

export default connect(mapSTP, mapDTP)(TodoList);