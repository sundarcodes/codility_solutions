def solution(s,p,q)
  length_of_Nucleotide=s.length
  num_Of_As = Array.new(length_of_Nucleotide,0)
  num_Of_Cs = Array.new(length_of_Nucleotide,0)
  num_Of_Gs = Array.new(length_of_Nucleotide,0)
  num_Of_Ts = Array.new(length_of_Nucleotide,0)
  i=0
  s.each_char do |char|
    num_Of_As[i]=num_Of_As[i-1] if i!=0
    num_Of_Cs[i]=num_Of_Cs[i-1] if i!=0
    num_Of_Ts[i]=num_Of_Ts[i-1] if i!=0
    num_Of_Gs[i]=num_Of_Gs[i-1] if i!=0
    case char
    when 'A'
      num_Of_As[i]+=1
    when 'C'
      num_Of_Cs[i]+=1
    when 'G'
      num_Of_Gs[i]+=1
    when 'T'
      num_Of_Ts[i]+=1
    end
    i+=1
  end

  # Check if the you have any of them in the range specified
  result=[];
  (0...p.length).each do |i|
    if (s[q[i]] =='A' || s[p[i]]=='A') || (num_Of_As[q[i]]-num_Of_As[p[i]] > 0)
      result<<1
    elsif (s[q[i]]=='C' || s[p[i]]=='C') || (num_Of_Cs[q[i]]-num_Of_Cs[p[i]] > 0)
      result<<2
    elsif (s[q[i]]=='G' || s[p[i]]=='G') || (num_Of_Gs[q[i]]-num_Of_Gs[p[i]] > 0)
      result<<3
    elsif (s[q[i]]=='T' || s[p[i]]=='T') || (num_Of_Ts[q[i]]-num_Of_Ts[p[i]] > 0)
      result<<4
    end
  end
return result
end

print solution('AC', [0, 0, 1], [0, 1, 1])
print solution('CAGCCTA',[2,5,0],[4,5,6])
