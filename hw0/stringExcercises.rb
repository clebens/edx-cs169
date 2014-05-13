def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant?(s)
  # return false if /^[\W]/ =~ s
  return false if /^[\WAEIOUaeiou]/ =~ s
  return true 
end

def binary_multiple_of_4?(s)
  if (s =~ /[01]+/)
    return s[-2]
  end
end

puts starts_with_consonant?("violin")

puts binary_multiple_of_4?("100")
