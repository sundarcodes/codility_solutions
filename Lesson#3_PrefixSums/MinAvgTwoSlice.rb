def solution(a)
    # write your code in Ruby 2.2
    length_of_arr=a.length

    #First compute the prefix sum Array
begin
    prefix_sum_arr=Array.new(length_of_arr,0)
    prefix_sum_arr[0]=a[0]
    avg=a[0]
    sum=a[0]
    min_avg=avg
    check_hash={}
    check_arr=[]
    (1...length_of_arr).each do |i|
      prefix_sum_arr[i]=prefix_sum_arr[i-1]+a[i]
      sum+=a[i]
      avg=sum/(i+1.0)
      if (avg>min_avg)
        check_hash=Hash.new()
        check_hash[start_index]=s
      end
    end
end
    #First compute the prefix sum Array
    prefix_avg_arr=Array.new(length_of_arr,0)
    prefix_avg_arr[0]=a[0]
    sum=a[0]
    (1...length_of_arr).each do |i|
      prefix_avg_arr[i]=(sum+a[i])/(i+1.0)
      sum+=a[i]
    end

    print prefix_avg_arr
    print "\n"
    #Check for the minimum average by going through the prefix sum Array
    min_avg=prefix_sum_arr[0]
    min_avg_start_position_index=0
    (1...length_of_arr).each do |i|
      avg=(getElementValue(prefix_sum_arr,min_avg_start_position_index)+getElementValue(prefix_sum_arr,i))/(i-min_avg_start_position_index+1)
      if avg < min_avg
        min_avg=avg
      else
        min_avg_start_position_index+=1
      end
    end

    return min_avg_start_position_index
end

def getElementValue(prefix_sum_arr,position)
  return prefix_sum_arr[0] if position == 0
  return prefix_sum_arr[position]-prefix_sum_arr[position-1]
end

print solution([4,2,2,5,1,5,8])
