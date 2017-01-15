//
var Stacky = function (n) {
  this.capacity = n;
  this.store = [];
  this.top = -1;
  this.currentSize = 0;
}

Stacky.prototype.pop = function() {
  if (this.currentSize == 0) {
    return null;
  }else {
    this.currentSize--;
    var lastElement = this.store[this.top];
    this.store.pop();
    this.top--;
    return lastElement;
  }
}

Stacky.prototype.peep = function() {
  if (this.currentSize == 0) {
    return -1;
  }else {
    return this.store[this.top];
  }
}

Stacky.prototype.push = function(value) {
  if (this.currentSize == this.capacity) {
    return -1;
  }else {
    this.top = this.currentSize;
    this.store.push(value);
    this.currentSize++;
  }
}


function checkStoneWall(arr) {
  var stack = new Stacky(arr.length);
  var totalBlocksReqd = 0;
  var i = 0;
  while (i < arr.length) {
    // Logic
    // Keep pushing to the stack when the height of ith element is greater than
    // the previous one as we cannot have the same cuboid covering both the heights
    // Now the height of the ith element is less than the previous one
    // now start popping of from the stack till it you see a element that is
    // less than the current element.In this process, if you find an already pushed
    // element with the same value as the current element, then you don't need to
    // increase the cuboid count
    // Let me do it and prove it
    // console.log(stack);
    if (arr[i] > stack.peep()){
      stack.push(arr[i]);
      totalBlocksReqd += 1;
      i++;
    }else if (arr[i] < stack.peep()){
      // Now pop as we cannot have the cuboid at the same level
      stack.pop();
    } else {
      i++;
    }
  }
  return totalBlocksReqd;
}

console.log(checkStoneWall([8, 8, 5, 7, 9, 8, 7, 4, 8]));
console.log(checkStoneWall([8, 8]));
console.log(checkStoneWall([8, 8, 4, 4]));

// stack    i     blocks
// 8        1     1
// 5        2     2
// 5,7      3     3
// 5,7,9    4     4
// 5,7      5     4
// 5,7,8    6     5
// 5,7      7
// 5
// 4        8     6
//  8

// stack - 8
// Blocks Reqd - 1
// i = 1
// stack - 5
// Blocks Reqd - 2
// i = 2
