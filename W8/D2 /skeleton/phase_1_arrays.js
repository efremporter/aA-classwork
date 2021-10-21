Array.prototype.uniq = function() {
  let newArr = [];
  for (let index = 0; index < this.length; index++) {
    if (!newArr.includes(this[index])) {
      newArr.push(this[index]); 
    } 
  }

  return newArr;
};

Array.prototype.twoSum = function () {
  let sumPairs = [];

  for (let i = 0; i < this.length; i++) {
    for (let j = 0; j < this.length; j++) {
      if (j > i && this[i] + this[j] === 0) {
        sumPairs.push([i, j]);
      }
    }
  }
  return sumPairs;
};

Array.prototype.transpose = function () {
  let transposed = [];
  for (let i = 0; i < this.length; i++) {
    let row = [];
    for (let j = 0; j < this[i].length; j++) {
      row.push(this[j][i]);
    }
    transposed.push(row);
  }
  return transposed;
};


