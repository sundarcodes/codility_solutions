
// function solution(A) {
//     // write your code in JavaScript (Node.js 6.4.0)
//     // Start calculating the eq position from from 2nd position till last
//     for (index = 1; index < A.length - 1; index++){
//       if (findSum(A, 0, index) == findSum(A, index + 1, A.length)){
//         return index;
//       }
//     }
//
//     // Check for corner case
//     if (findSum(A, 0, index - 1) == 0) {
//       return index - 1;
//     }
//     return -1;
// }
//

function solution(A) {
    // write your code in JavaScript (Node.js 6.4.0)
    // Start calculating the eq position from from 2nd position till last
    sumOfPrefixSum = [];
    sum = 0;

    for (index = 0; index < A.length; index++) {
      sum += A[index];
      sumOfPrefixSum[index] = sum;
    }
    console.log(sumOfPrefixSum);

   for (index = 1; index < A.length - 1; index++){
      if (sumOfPrefixSum[index - 1] == (sumOfPrefixSum[A.length - 1] - sumOfPrefixSum[index])){
        return index;
      }
    }

    // Check for corner case
    if (sumOfPrefixSum[index - 1] == 0) {
      return index - 1;
    }

    if (sumOfPrefixSum[0] < sumOfPrefixSum[A.length - 1] - sumOfPrefixSum[0] ) {
      return 0;
    }
    return -1;
}




console.log(solution([-1,3,-4,5,1,-6,2,1]));

console.log(solution([-1,-1,1]));
