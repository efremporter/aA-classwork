import React from 'react';
import { getWeather } from './api_util';

class Weather extends React.Component {
  constructor(props) {
    super(props);
    this.state = { weatherInfo: null }
  }

  componentDidMount() {
    const weatherInfo = getWeather();
    weatherInfo.then((res) => {
      console.log(res.weather[0].main)
      this.setState({weatherInfo: res.weather[0].main})
    })
  }

  render() {
    if (!this.state.weatherInfo) return null;
    return (
      <div>
        {this.state.weatherInfo}
      </div>
    )
  }
}

export default Weather;