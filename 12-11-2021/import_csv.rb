#Doc csv file va import vao database
require "active_record"
require "active_support/all"
require "csv"

FILE_PATCH= "./user_list.csv"

ActiveRecord::Base.establish_connection(
  adapter: "postgresql",
  database: "csvdb",
  username: "ecommerce_website_user",
  password: "ecommerce_website_password",
  host: "localhost",
  port: 5432
)

class User < ActiveRecord::Base
  self.primary_key = 'email'
end

def array_of_records
  arr_records = []
  CSV.foreach(FILE_PATCH, headers: true) do |row|
    arr_records  << { email: row['email'], name: row['name'], phone: row['phone'], address: row['address'], day_of_birth: row['birth_day'], profile: row['profile'] }
  end
  arr_records
end

starting = Process.clock_gettime(Process::CLOCK_MONOTONIC)
User.insert_all(array_of_records)
ending = Process.clock_gettime(Process::CLOCK_MONOTONIC)
puts "Thoi gian chay: " + (ending-starting).to_s
#Thoi gian chay: 54.11038712499999 giay - Lan 1
#Thoi gian chay: 52.22061450399997 giay - Lan 2
#Thoi gian chay: 55.62464593999994 giay - Lan 3
puts User.count
#500000
puts User.find_by(email: 'nguyenvana500000@gmail.com').inspect
##<User email: "nguyenvana500000@gmail.com", name: "Nguyen Van A500000", phone: "0123456789", address: "Ho Chi Minh city", day_of_birth: "2021-01-01", profile: "TV 100\", Some special charactor: \\ / ' $ ~ & @ # (...">

# Chương trình của e viết tốt, biết chia file, hàm, và thời gian chạy cũng rất ấn tượng
# Phần thông tin kết nối e có thể thêm 1 file nữa để bảo mật
# Em đang fetch lên RAM toàn bộ nội dung của file rồi insert 1 lần xuống db, thì có thể thiếu RAM với những data lớn hơn.
# Nên a nghĩ là e có thể chia theo batch để xử lý và insert vào db, vd: đọc 10k lines rồi insert xuống 1 lần.
