def solution(a)
    # write your code in Ruby 2.2
    length_of_arr=a.length
    return 1 if length_of_arr == 0
    # First get sum of all elements in the Array
    sum=a.reduce(:+)
    sum_first_n_numbers=(length_of_arr*(length_of_arr+1))/2
    #Difference would be the missing element
    diff=sum-(sum_first_n_numbers+1)
    return length_of_arr-diff
end

print solution([2])
