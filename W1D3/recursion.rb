def sum_to(n)
  if n < 1
    nil
  elsif n == 1
    1
  else
    n + sum_to(n-1)
  end
end

puts "sum_to tests"
puts sum_to(5) == 15
puts sum_to(1) == 1
puts sum_to(9) == 45
puts sum_to(-8) == nil

def add_numbers(nums_array)
  if nums_array.length <= 1
    nums_array[0]
  else
    nums_array.pop + add_numbers(nums_array)
  end
end

puts "add_numbers tests"
puts add_numbers([1,2,3,4]) == 10
puts add_numbers([3]) == 3
puts add_numbers([-80,34,7]) == -39
puts add_numbers([]) == nil

def gamma_fnc(n)
  if n-1 < 0
    nil
  elsif n-1 == 0
    1
  else
    (n-1) * gamma_fnc(n-1)
  end
end

puts "gamma_fnc tests"
puts gamma_fnc(0) == nil
puts gamma_fnc(1) == 1
puts gamma_fnc(4) == 6
puts gamma_fnc(8) == 5040

def ice_cream_shop(flavors, favorite)
  flavor = flavors.pop
  if flavor == favorite
    true
  elsif flavors.length <= 1
    false
  else
    ice_cream_shop(flavors, favorite)
  end
end

puts "ice_cream_shop tests"
puts ice_cream_shop(['vanilla', 'strawberry'], 'blue moon') == false
puts ice_cream_shop(['pistachio', 'green tea', 'chocolate', 'mint chip'], 'green tea') == true
puts ice_cream_shop(['cookies n cream', 'blue moon', 'superman', 'honey lavender', 'sea salt caramel'], 'pistachio') == false
puts ice_cream_shop(['moose tracks'], 'moose tracks') == true
puts ice_cream_shop([], 'honey lavender') == false

def reverse(string)
  if string.length <= 1
    string
  else
    string[-1] + reverse(string[0...-1])
  end
end

puts "reverse tests"
puts reverse("house") == "esuoh"
puts reverse("dog") == "god"
puts reverse("atom") == "mota"
puts reverse("q") == "q"
puts reverse("id") == "di"
puts reverse("") == ""
