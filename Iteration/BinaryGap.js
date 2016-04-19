
function solution(N) {
    // write your code in JavaScript (Node.js 4.0.0)
    var maxZeroCount = 0;
    var currZeroCount = 0;
    var currOneCount = 0;
    var quotient = 0;
    var remainder = 0;
    while(Math.floor(N/2)>=1){
        quotient = Math.floor(N/2);
        remainder = N % 2;
        if (remainder === 0 && currOneCount != 0){
            currZeroCount+=1;
            if (currZeroCount > maxZeroCount){
                maxZeroCount =  currZeroCount;  
            }
        }else if (remainder != 0){
            currOneCount++;
            currZeroCount = 0;
        }
        N = quotient;
    }
    // if (remainder === 0 ){
    //     if ( maxZeroCount != 0 && maxZeroCount === currZeroCount )    {
    //         maxZeroCount -= 1;
    //     }
    // }
    return maxZeroCount;
}

var inputArr = [5,15,1041,35,6,328,16,2048,51712,20];
inputArr.forEach(function(element){
    console.log('Binary gap for '+element+' is '+solution(element));
});
