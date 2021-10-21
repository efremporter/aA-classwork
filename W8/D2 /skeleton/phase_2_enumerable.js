Array.prototype.myEach = function (cb) {
  for (let i = 0; i < this.length; i++) {
    cb(this[i]);
  }
};

Array.prototype.myMap = function (cb) {
  let x = [];
  
  for (let i = 0; i < this.length; i++) {
    x.push(cb(this[i]));
  }

  return x;
};

Array.prototype.myReduce = function (cb, acc) {
  if (acc === undefined) {
    acc = this.shift()
  }
  this.myEach((el), => {
    acc = cb(acc, el)
  })
  return acc
    // for (let i = 0; i < this.length; i++) {
    //     acc = cb(acc, this[i]);
    // }
    // return acc;
  };