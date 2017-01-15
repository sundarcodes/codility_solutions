function checkOddElements(arr){
	var len=arr.length;
	var sum=0;
	// Get the sum of all elements in the array
	for (i=0;i<len;i++){
		sum+=arr[i];
	}
	// Now comes the logic part
	for (i=0;i<len;i++){
		elementToCheck=arr[i];
		// Now get the sum of rest of elements without including the current element
		// and its pair
		restSum=sum-(2*elementToCheck);
		// Now if this number has a pair, the sum excluding this and its pair should be a odd number else it will be even as every other element would have a pair
		// console.log(restSum);
		if (restSum % 2 === 0){
			return elementToCheck;
		}
	}
}




console.log(checkOddElements([1,2,1,2,3,4,3]));
