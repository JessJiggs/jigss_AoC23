# Psudo code solution: create array from each line ([1we5st3]) / [we7st]
# for each element in the array cheack for a number  - if number map to new array. 153 / 7
# for each array - take first and last digit and concat. store in variable per array = so you can add 13 / if array length = 1 > concat eg 77
# add all the variables values together.
# ______

input = File.read('input.txt').split("\n") # creates an array of strings 1000 elements long.
# p input

input_return_array = input.map { |i| i.split(/[a-zA-Z]+/).join('') } #creates an array of strings with numbers only
# p input_return_array
# ______
# for each element of the array check length: then:
#   if length is 1 -> take the element and make a new number concat with the number twice. .integer the string
#   if array is leng 2 => take string and .integer the string
#   if array is leng >2 -=> iterate through the array; push[0] and pop [lengn-1] into new string. .integer the string
#   return array of integers.
#     sum the integers of the array = n+=1?
# ______

# input_return_array = ["1", "22","333"]
# 11, 22, 33
def find_string_numbers(input_return_array)
  new_array = input_return_array.map do |element|
    if element.length == 1
      "#{element+element}".to_i
    elsif element.length == 2
      "#{element[0]+element[1]}".to_i
    else element.length > 2
      "#{element[0]+element[-1]}".to_i
    end
  end
  new_array.sum
end
p findStringNumbers(input_return_array)
