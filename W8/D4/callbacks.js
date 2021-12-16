class Clock {
  constructor() {
    this.date = new Date();
    this.hours = this.date.getHours();
    this.minutes = this.date.getMinutes();
    this.seconds = this.date.getSeconds();
    this.printTime();
    setInterval(this._tick.bind(this), 1000)
    // this._tick() = 1
    // 1. Create a Date object.
    // 2. Store the hours, minutes, and seconds.
    // 3. Call printTime.
    // 4. Schedule the tick at 1 second intervals.
  }

  printTime() {
    let hours = this.hours;
    let minutes = this.minutes;
    let seconds =  this.seconds;
    if (this.hours < 10) hours = "0" + String(this.hours);
    if (this.minutes < 10) minutes = "0" + String(this.minutes);
    if (this.seconds < 10) seconds = "0" + String(this.seconds);
    console.log(`${hours}:${minutes}:${seconds}`)
  }

  _tick() {
    this.seconds += 1;
    if (this.seconds === 60) {
      this.minutes += 1;
      this.seconds = 0;
    }
    if (this.minutes === 60) {
      this.hours += 1;
      this.minutes = 0;
    }
    this.printTime();
    // 1. Increment the time by one second.
    // 2. Call printTime.
  }
}



const clock1 = new Clock();
// clock.printTime();