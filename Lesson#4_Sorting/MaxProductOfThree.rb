def solution(a)
  a.sort!
  count_of_negative_nos=0
  a.each do |element|
    count_of_negative_nos+=1 if element<0
  end
  max_product=0
  product=0
  if count_of_negative_nos>=2 && a[a.length-1]>0
    product=a[a.length-1]*a[0]*a[1]
    max_product=product if product>max_product
  end
  if count_of_negative_nos <=1
    product=a[a.length-1]*a[a.length-2]*a[a.length-3]
    max_product=product if product>max_product
  end
  #If count of positives
  count_of_postives=a.length-count_of_negative_nos
  if count_of_postives>=3
    product=a[a.length-1]*a[a.length-2]*a[a.length-3]
    max_product=product if product>max_product
  end
  if count_of_negative_nos == a.length
    product=a[a.length-1]*a[a.length-2]*a[a.length-3]
    max_product=product
  end
  return max_product
end

print solution([-4, -6, 3, 4, 5] )
print solution([-3, 1, 2, -2, 5,6] )
print solution([-5,-5,4,5] )
print solution([-5,-5,-3,-2] )
