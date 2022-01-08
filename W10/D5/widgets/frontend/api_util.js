import $ from 'jquery';

export const getWeather = () => {
  return $.ajax({
    method: 'GET',
    url: 'http://api.openweathermap.org/data/2.5/weather?q=London&appid=9a081c36d4fd38aa5da0500e1a1d8886'
  })
}