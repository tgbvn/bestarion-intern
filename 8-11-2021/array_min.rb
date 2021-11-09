
arr = Array.new
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