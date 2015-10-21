
def solution(a, b, k)
    # write your code in Ruby 2.2
    #Handling case when a and b are same
    return 0 if (a==b)
    return 1 if (b-a)<=k

    #Compute the difference
    #Find the nearest multiple greater than equal to the first element
    if (b-a)%k == 0
      return (b-a)/k
    else
      return (b-a)/k + 1
    end

end

print solution(10,12,2)
