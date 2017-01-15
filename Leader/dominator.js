function Stack(capacity) {
  this.maxCapacity = capacity;
  this.store = [];
}

Stack.prototype.pop = function() {
  if (this.store.length == 0) {
    return -1;
  }
  this.store.pop();
}

Stack.prototype.push = function(value) {
  if (this.store.length == this.maxCapacity) {
    return -1;
  }
  this.store.push(value);
}

Stack.prototype.peep = function() {
  return this.store[this.store.length - 1];
}

Stack.prototype.currentSize = function() {
  return this.store.length;
}


function solution(A) {
  n = A.length;
  i = 0;
  stack = new Stack(n);
  while(i < n) {
    if (stack.currentSize() == 0 || A[i] == stack.peep()) {
      stack.push(A[i]);
    }
    else if (stack.currentSize() != 0 && A[i] != stack.peep()) {
      stack.pop();
    }
    i++;
  }

  // console.log(stack);

  if (stack.currentSize() == 0) {
    return -1;
  }

  // Most occured element is the one in stack
  probableLeader = stack.peep();

  // Check if this guy is occuring more than n/2 times

  numOfOccurences = A.reduce(function(acc,value) {
    if (value == probableLeader) {
      return acc + 1;
    } else {
      return acc;
    }
  }, 0);

  if (numOfOccurences > n/2) {
    for (i = 0; i < n; i++) {
      if (A[i] == probableLeader) {
        return i;
      }
    }
  }

  return -1;

}

console.log(solution( [2, 1, 1, 1, 3]));
