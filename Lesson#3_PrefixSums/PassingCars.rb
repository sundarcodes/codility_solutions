# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(a)
    # write your code in Ruby 2.2
    num_of_elements=a.length
    num_of_zeros=0
    tot_num_car_pairs=0
    a.each do |element|
        if element == 0
          num_of_zeros+=1
        else
          tot_num_car_pairs+=num_of_zeros
        end
    end
    return  tot_num_car_pairs>1_000_000_000?-1:tot_num_car_pairs
end

print solution([0,0,0,0,1])
