'use strict';

function solution(A){
  var len = A.length;
  var numOfIntersections = 0;
  for (let i = 0 ; i < len; i++){
    for (let j = 0; j < len; j++){
      if (i == j){
        continue;
      }
      if (A[j] - A[i] >= 0 && Math.abs(i-j) <= A[j]){
        console.log(i,j);
        numOfIntersections++;
      }
    }
  }
  return numOfIntersections;
}


console.log(solution([1,5,2,1,4,0]));