function solution(A) {
  var maxProfit = 0;
  var maxEnding = 0;
  for (i = 1; i < A.length; i++) {
    maxEnding = Math.max(0, maxEnding + (A[i] - A[i-1]));
    maxProfit = Math.max(maxProfit, maxEnding);
  }
  return maxProfit;
}

// console.log(solution([3, -1, 2, -2, 2, 1]));
console.log(solution([23171, 21011, 21123, 21366, 21013, 21367]));
console.log(solution([23171, 23171, 23172]));
