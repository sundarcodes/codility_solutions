def solution(n, a)
    # write your code in Ruby 2.2
    max_element=n+1
    current_max_sum=0
    arr=Array.new(n,0);
    len_of_arr=a.length
    for i in 0...len_of_arr do
      if a[i] == max_element
        arr = [current_max_sum]*n
      else
        arr[a[i]-1]+=1
        if (arr[a[i]-1]>current_max_sum)
          current_max_sum=arr[a[i]-1]
        end
      end
    end
    return arr
end

print solution(5,[1,2,3,4,1,6,6,6,6,6,6,6])
