def solution(a)
    n=a.length
    #Check if number of occurences 
    hash=Hash.new(0)
    a.each do |element|
        hash[element]+=1
    end
    #Get the min and max values from Hash
    max=hash.keys.max
    if (max <=0)
        return 1
    end
    (1..max).each do |key|
        if !hash.has_key? key
            return key
        end
    end
    return max+1
    
end

puts solution(gets.chomp.split(" ").map(&:to_i))