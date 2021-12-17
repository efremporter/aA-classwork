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
// const clock1 = new Clock();



const { read } = require('fs');
const readline = require('readline');

const reader = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

function addNumbers(sum, numsLeft, completionCallback) {
  if (numsLeft > 0) {
    reader.question("Pick a number ", (response) => {
      response = parseInt(response);
      sum += response;
      console.log(`Sum: ${sum}`)
      addNumbers(sum, numsLeft - 1, completionCallback);
    });
  } else {
    reader.close();
    completionCallback(sum);
  }
}







// addNumbers(0, 3, sum => console.log(`Total Sum: ${sum}`));
function absurdBubbleSort(arr, sortCompletionCallback){
  outerBubbleSortLoop(true)
  function outerBubbleSortLoop(madeAnySwaps) {
    if (madeAnySwaps) {
      innerBubbleSortLoop(arr, 0, false, outerBubbleSortLoop)
    } else {
      sortCompletionCallback(arr)
    }
  }
}

function askIfGreaterThan(num1,num2,callback) {

  reader.question( `is ${num1} greater than ${num2}? `,(answer) => {
    if (answer === "yes") {
      callback(true)
    }else if (answer === "no") {
      callback(false)
      // reader.close()
    }else{
        console.log("Please say yes or no!")
      askIfGreaterThan(num1, num2, callback)
    }

  })
  
}

function innerBubbleSortLoop(arr, i, madeAnySwaps=false, outerBubbleSortLoop) {
    if (i < arr.length - 1) {
      askIfGreaterThan(arr[i], arr[i + 1], (isGreaterThan) => {
        if (isGreaterThan) {
          [arr[i], arr[i + 1]] = [arr[i + 1], arr[i]];
     

          console.log(arr)
          madeAnySwaps = true 
          innerBubbleSortLoop(arr, i + 1, true, outerBubbleSortLoop)
        } else {
          console.log("outer")
          console.log(madeAnySwaps)
          outerBubbleSortLoop(madeAnySwaps)
          
        }
      }) 
    } else {
      outerBubbleSortLoop(madeAnySwaps)
      
    }

  
}

absurdBubbleSort([6,5,7,3,2,5,4], function(arr) {
  console.log(arr)
  reader.close()
})

