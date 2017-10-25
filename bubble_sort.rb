def bubble_sort(array)
  max_index = array.length - 1
  inner_loop_count = 0
  #swapped = true
  loop do
    swapped = false
    1.upto(max_index) do |i|
      if array[i] < array[i-1]
        array[i], array[i-1] = array[i-1], array[i]
        swapped = true
      end
      #inner_loop_count +=1
      #puts "inner_loop_count: #{inner_loop_count}"
      #puts "max_index: #{max_index}"
    end
    return array unless swapped
    max_index-=1
  end
  #array
end


bubble_sort([3, 7, 12, 3, 6, 1, 0, 2, 5, 4, 1, 6, 4, 5])

def bubble_sort_by(array)
  max_index = array.length - 1
  inner_loop_count = 0
  #swapped = true
  loop do
    swapped = false
    1.upto(max_index) do |i|
      result = yield(array[i-1], array[i])
      if result > 0
        array[i], array[i-1] = array[i-1], array[i]
        swapped = true
      end
      #inner_loop_count +=1
      #puts "inner_loop_count: #{inner_loop_count}"
      #puts "max_index: #{max_index}"
    end
    return array unless swapped
    max_index-=1
  end
  #array
end

bubble_sort_by(["reallyrealllylong", "hi","hello","fuckingwelllong", "hey", "longish"]) do |left,right|
  left.length - right.length
end
