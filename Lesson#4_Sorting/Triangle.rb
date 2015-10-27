def solution(a)
    # write your code in Ruby 2.2
    len=a.length
    return 0 if len<=2
    #Sort the array first - O(NlogN) Time complexity
    a.sort!
    #Now check blocks of three elements from the start of the array till end
    #The basis is as the array is sorted, the differences between consecutive elements
    #will always be the minimum and for 3 sides to form a triangle, this property will always
    #hold true
    (0...len).each do |j|
      if canFormATriangle?(a[j],a[j+1],a[j+2])
        return 1
      end
      break if len-(j+1)<3
    end
    return 0
end

def canFormATriangle?(a,b,c)
  if ((a+b)>c && (a+c)>b && (b+c)>a)
    return true;
  end
  return false;
end

print solution([10,2,5,1,8,20])
print solution([10,50,5,1])
print solution([10,-5,5,2,-3,4])
