
arr = Array.new # biến chứa nhiều phần tử nên là số nhiều
puts "Nhap vao mang so tu nhien"
print "Nhap so dau tien: "
while (temp = gets.chomp) != "-1" do
  if temp.scan(/\D/).empty? && temp != ''
    arr.push(temp)
  else
    puts "\"#{temp}\"" + " khong phai la so tu nhien!"
  end
  print "Nhap so tiep theo: "
end
puts("So nho nhat trong mang: #{arr.sort.first}" )

# A rất ấn tượng với chương trình của e. 
# E cần thêm lable khi commit code.
