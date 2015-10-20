# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(a)
    n=a.length
    #Check if number of occurences of any character is more than once
    hash=Hash.new(0)
    a.each do |element|
        hash[element]+=1
        if (hash[element]) > 1
            return 0
        end
    end
    sum_of_first_n_nos=n*(n+1)/2
    sum_of_nos_in_array=a.reduce(:+)
    return (sum_of_nos_in_array==sum_of_first_n_nos)?1:0
end