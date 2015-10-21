def solution(a)
    length_of_arr=a.length
    prefix_sum_arr=Array.new(length_of_arr,0)
    prefix_sum_arr[0]=a[0]
    #First compute the prefix sum of the Array
    (1...length_of_arr).each do |i|
        prefix_sum_arr[i]=a[i]+prefix_sum_arr[i-1]
    end

#    print prefix_sum_arr

    #Find the minimal difference
    min_diff=((2*prefix_sum_arr[0])-prefix_sum_arr[length_of_arr-1]).abs
    (1...length_of_arr).each do |i|
      abs_diff=(prefix_sum_arr[i-1]-(prefix_sum_arr[length_of_arr-1]-prefix_sum_arr[i-1])).abs
      min_diff = abs_diff if abs_diff < min_diff
    end
    return min_diff
end

#print solution([3,1,2,4,3])
print solution([1,2,-3,4,-1])
#print solution([-1000,1000])
