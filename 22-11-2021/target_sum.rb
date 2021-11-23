#Tim hai phan tu co tong theo yeu cau

TARGET_SUM = 2
ARR_NUMBERS = [3, 5, -4, 8, 11, 1, -1, 6]

def find_two_elements(arr_input,target)
  arr_result = Array.new
  arr_length = arr_input.length
  base_index = 0
  for step in 0..(arr_length*arr_length - 1)
    mirror_index = step % arr_input.length
    if (arr_input[base_index] + arr_input[mirror_index]) == target && arr_input[base_index] != arr_input[mirror_index]
      arr_result = [arr_input[base_index],arr_input[mirror_index]]
      break
    end
    if (mirror_index + 1) % arr_length == 0
      base_index += 1
    end
  end
  arr_result
end

puts "Ket qua: " + find_two_elements(ARR_NUMBERS,TARGET_SUM).to_s



