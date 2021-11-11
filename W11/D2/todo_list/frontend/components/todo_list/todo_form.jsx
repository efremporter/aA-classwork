import React from "react";

class TodoForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      title: "",
      id: 0,
      body: "",
      done: false
    }
    this.handleSubmit = this.handleSubmit.bind(this);
    this.updateTitle = this.updateTitle.bind(this);
    this.updateBody = this.updateBody.bind(this);
    this.updateDone = this.updateDone.bind(this);
  }

  handleSubmit(e) {
    e.preventDefault();
    let todo = this.state;
    this.props.receiveTodo(todo);
    this.setState({
      title: "",
      body: "",
      done: false,
      id: new Date().getTime()
    })
  }

  updateTitle(e) {
    this.setState({
      title: e.target.value
    })
  }

  updateBody(e) {
    this.setState({
      body: e.target.value
    })
  }

  updateDone(e) {
    this.setState({
      done: e.target.value
    })
  }

  render() {
    return ( <div>
      <h1>Create New ToDo Item</h1>
      <form onSubmit={this.handleSubmit}>
        <label>Title
          <input type="text" onChange={this.updateTitle} value={this.state.title}/>
        </label>
        <label>Body
          <input type="text" onChange={this.updateBody} value={this.state.body}/>
        </label>
        <button>Submit</button>
      </form>
    </div>)
  }
}

export default TodoForm;