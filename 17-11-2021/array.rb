#Tim mang con tang dan

def only_integer?(str)
  str.match(/\A[+]?\d+\z/)
end

def arr_create
  arr_result = Array.new
  input = String.new
  loop do
    print "Nhap vao so luong phan tu: "
    input = gets.chomp
    break if only_integer?(input)
  end
  input.to_i.times { arr_result.push(rand(1..9)) }
  arr_result
end

def arr_child_asc_build(arr_parent)
  arr_child = Array.new
  i = -1
  while i < (arr_parent.length - 1)
    arr_asc = Array.new
    loop do
      i += 1
      arr_asc.push(arr_parent[i])
      break if arr_parent[i+1].nil? || (arr_parent[i] > arr_parent[i+1])
    end
    arr_child.push(arr_asc)
  end
  arr_child
end

arr_parent = arr_create
puts "Mang da tao: " + arr_parent.to_s
puts "Mang con tang dan: " + arr_child_asc_build(arr_parent).to_s

# Code e viết tốt, dễ đọc, biết tách hàm, biết sử dụng regex
# Biến i em có thể xem xét đặt tên khác có ý nghĩa hơn
