#Tao csv file voi 500000 dong
require 'csv'

FILE_PATCH= "./user_list.csv"
CSV_SIZE = 500000
CSV_FORMAT = [:name, :email, :phone, :address, :birth_day, :profile]

def create_user(num)
  user_name = "Nguyen Van A"
  new_user = {
    :name => user_name + num.to_s,
    :email => (user_name + num.to_s + "@gmail.com").downcase.gsub(" ",""),
    :phone => "0123456789",
    :address => "Ho Chi Minh city",
    :birth_day => "2021-01-01",
    :profile => "TV 100\", Some special charactor: \\ / ' $ ~ & @ # ( ; \""
  }
end

CSV.open(FILE_PATCH, "w", write_headers: true, headers: CSV_FORMAT) do |row|
  (1..CSV_SIZE).each do |i|
    row << create_user(i).values
  end
end