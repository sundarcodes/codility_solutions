def frogRiverOne(x,ar)
  sum_of_x_elements=x*(x+1)/2
	hash=Hash.new(0)
	count=0
	i=0
	a.each do |element|
		if hash[element]==1
		    i+=1
			next
		end
		hash[element]=1
		count+=element
		if (count==sum_of_x_elements)
			return i
		end
		i+=1
	end
	return -1
end

