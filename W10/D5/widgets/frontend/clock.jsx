import React from 'react';

class Clock extends React.Component {
  constructor(props) {
    super(props);
    this.state = { time: new Date() }
  }

  componentDidMount() {
    this.myInterval = setInterval( () => {
      this.tick();
    }, 1000);
    
  }

  componentWillUnmount() {
    clearInterval(this.myInterval);
  }

  tick() {
    this.setState({time: new Date()})
  }

  render() {
    const time = this.state.time;
    return (
      <div>
        <h1>{time.getHours()}:{time.getMinutes()}:{time.getSeconds()}</h1>
      </div>
    )
  }
}

export default Clock;