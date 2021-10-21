class Clock {
  constructor(hours, minutes, seconds) {
    this.hours = hours;
    this.minutes = minutes;
    this.seconds = seconds;
    this.printTime();

    let context = this;
    setInterval(this._tick.bind(context), 1000);  
  }
  printTime() {
  let h;
  let s;
  let m;

      if (this.hours < 10) {
        h = `0${this.hours}:`
      } else {
        h = `${this.hours}:`
      }

      if (this.minutes < 10) {
        m = `0${this.minutes}:`
      } else {
        m = `${this.minutes}:`
      }

      if (this.seconds < 10) {
        s = `0${this.seconds}`
      } else {
        s = `${this.seconds}`
      }
      console.log(h + m + s);
  }

  _tick() {

    if (this.seconds < 59){
      this.seconds += 1;
    } else {
      this.seconds = 0;
      this.minutes += 1
    }

    if (this.minutes === 60) {
      this.minutes = 0;
      this.hours += 1;
    }

    if (this.hours === 24) {
      this.hours = 0
    }

    this.printTime();
  }
}

const readline = require("readline");
const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

function addNumbers(sum,numsLeft, completionCallback) {
    let sum = 0;
    if (numsLeft ===0){
      return sum;
    } 

  rl.question('Give me a number', answer = > )

}

}