function sum() {
  let sum = 0
  let args = Array.from(arguments)
  // for (let i = 0; i < arguments.length; i++) {
  //   sum += arguments[i]
  // }

  args.forEach((el) => {
    sum += el
  })

  return sum
}

// console.log(sum(1, 2, 5))

function sum2(...nums) {
  let sum = 0
  nums.forEach( function(el) {
    sum += el
  })

  return sum
}

// console.log(sum2(1, 2, 3))

