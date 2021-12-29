function curriedSum(numArgs) {
  let numbers = [];
  
  return function _curriedSum(num) {
    numbers.push(num);

    if (numbers.length === numArgs) {
      return numbers.reduce( (acc, el) => acc + el);
    } else {
      return _curriedSum;
    }
  }
}

const sum = curriedSum(4);
// console.log(sum(5)(30)(20)(1)); // => 56

// console.log(curriedSum(4)(5)(30)(20)(1));


Function.prototype.curry = function(numArgs) {
  let arr = [];
  let that = this;
  return function _curry() {
    let args = Array.from(arguments);
    arr = arr.concat(args);
    if (arr.length >= numArgs) {
      return that.apply(null, [arr])
    } else {
      return _curry;
    }
  }
}

function add(nums) {
  let sum = 0
  nums.forEach((el) => { sum += el })
  return sum
}

// console.log(add.curry(5)(1)(2)(3)(4)(5))

// functionName.curry(2);


Function.prototype.curry2 = function (numArgs) {
  let arr = [];
  let that = this;
  return function _curry(...arguments) {
    arr = arr.concat(arguments);
    if (arr.length >= numArgs) {
      return that.apply(that, [arr])
    } else {
      return _curry;
    }
  }
}

// function add(nums) {
//   let sum = 0
//   nums.forEach((el) => { sum += el })
//   return sum
// }

console.log(add.curry2(5)(1)(2)(3)(4)(5))