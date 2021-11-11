#Chuong trinh nhap xuat thong tin nhan vien
class Employee
  attr_accessor :information
  @@field = [:ordinal_number, :id, :name, :birth_year, :job_title, :daily_salary, :working_days, :salary]

  def initialize(hash)
    @information = Hash.new
    (@@field - [:salary]).each do |key|
      @information[key] = hash[key]
    end
    @information[:salary] = @information[:daily_salary].to_i * @information[:working_days].to_i
  end

  def self.only_integer?(str)
    str.match(/\A[+-]?\d+\z/)
  end

  def self.only_letter?(str)
    str.match(/^[[:alpha:][:blank:]]+$/)
  end

  def self.create_employee(hash)
    check = true
    [:ordinal_number, :daily_salary, :working_days].each do |key|
      if not self.only_integer?(hash[key])
        puts "Thong tin #{key} khong dung dinh dang!".gsub('_',' ')
        check = false
      end
    end
    [:name, :job_title].each do |key|
      if not self.only_letter?(hash[key])
        puts ("Thong tin #{key} khong dung dinh dang!").gsub('_',' ')
        check = false
      end
    end
    if check
      puts "--Da tao nhan vien moi!--"
      return Employee.new(hash)
    end
    return nil
  end

  def self.input_information
    puts "-Nhap vao thong tin nhan vien-"
    new_hash = Hash.new
    (@@field - [:salary]).each do |key|
      print "Nhap vao #{key}: ".gsub('_',' ')
      new_hash[key] = gets.chomp
    end
    return new_hash
  end

  def show_information
    puts "-Thong tin nhan vien-"
    @information.select do |key,value|
      puts "Thong tin #{key}: #{value}".gsub('_',' ')
    end
  end

end

information = Employee.input_information
if (new_employee = Employee.create_employee(information))
  new_employee.show_information
end


