
class Clock {
  constructor(hours, minutes, seconds) {
    this.hours = hours;
    this.minutes = minutes;
    this.seconds = seconds;
    this.printTime();
  }
  printTime() {
  let h;
  let s;
  let m;
      if (this.hours < 10){
       h =`0${this.hours}:`
      } else{
      h= `${this.hours}:`
      }
      if (this.minutes < 10) {
      m =`0${this.minutes}:`
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
}