#Tim hai phan tu co tong theo yeu cau

TARGET_SUM = 10
ARR_NUMBERS = [3, 5, -4, 8, 11, 1, -1, 6]

def find_two_elements(arr_input,target_sum)
  arr_result = Array.new
  arr_length = arr_input.length
  base_index = 0
  for step in 0...(arr_length * arr_length)
    mirror_index = step % arr_input.length
    if (arr_input[base_index] + arr_input[mirror_index]) == target_sum && arr_input[base_index] != arr_input[mirror_index]
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
# Code của e ngắn gọn, giải thuật mới lạ, không sử dụng thêm include? là một điểm động
