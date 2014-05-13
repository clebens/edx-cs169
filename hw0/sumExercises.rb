def sum(ary)
  return 0 if ary.count == 0
  return nil if ary == nil

  sum = 0
  ary.each { |a| sum += a }
  
  return sum
end

def find_2_largest(ary)
  return nil unless ary.is_a? Array
  return ary.sort.last(2)
end

def max_2_sum(ary)
  return sum(find_2_largest(ary))
end

def sum_to_n?(ary, n)
  return false if ary.count < 2 || ary == nil

  test_array = ary.sort.select { |v| v <= n } 
  test_array = test_array.product(ary)
  sum = nil
  test_array.each do |a|
    if (a.first != a.last || ary.count(a.first) > 1)
      return true if a.first + a.last == n
    end
  end
  return false    
end

