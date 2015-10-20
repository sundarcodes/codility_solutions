# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(a, b, k)
    # write your code in Ruby 2.2
    #Handling case when a and b are same
    return 1 if (a==b && a%k==0)
    return 0 if (a==b && a%k!=0)

    #Compute the difference
    #Find the nearest multiple greater than equal to the first element
    rem=a%k
    first_multiple=(rem==0)?a:a+(k-rem)
    #Find the nearest multiple lesser than equal to the last element
    rem=b%k
    last_multiple=(rem==0)?b:b-rem

    return 1 if (first_multiple==last_multiple)
    return ((last_multiple-first_multiple)/k)+1

end

print solution(2,3,2)
