// function setInterval(cb[, delay[, ...args[]]]) {

// }
class Clock {
  constructor(hours, minutes, seconds) {
    this.hours = hours;
    this.minutes = minutes;
    this.seconds = seconds;
    this.printTime();
  }
  printTime() {
    console.log(`${this.hours}:${this.minutes}:${this.seconds}`)
    // console.log('hi');
  }
}