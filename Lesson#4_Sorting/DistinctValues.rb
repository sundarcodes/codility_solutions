def solution(a)
    # write your code in Ruby 2.2
    count_of_numbers=Hash.new(0)
    a.each do |element|
      count_of_numbers[element]+=1
    end
    return count_of_numbers.keys.count
end

print solution([2,1,1,2,3,1])
