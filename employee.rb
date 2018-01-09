# # employee_1 = ["Bruce", "Wayne", 70000, true]
# # employee_2 = ["Diana", "Prince", 80000, true]

# # puts employee_1[0] + " " + employee_1[1] + " " + "makes " + employee_1[2].to_s + " a year."
# # puts "#{employee_2[0]} #{employee_2[1]} makes #{70000} a year."




# # employee_1 = {:first_name => "Bruce", :last_name => "Wayne", :salary => 70000, :active => true}
# # employee_2 = {:first_name => "Diana", :last_name => "Prince", :salary => 80000, :active => true}

# # puts "#{employee_1[:first_name]} #{employee_1[:last_name]} makes #{employee_1[:salary]} a year."
# # puts "#{employee_2[:first_name]} #{employee_2[:last_name]} makes #{employee_2[:salary]} a year."


# employee_1 = {first_name: "Bruce", last_name: "Wayne", salary: 70000, active: true}   #this is the javascript way of writting this same code
# employee_2 = {first_name: "Diana", last_name: "Prince", salary: 80000, active: true}   #this is the javascript way of writting this same code
#    #this is the javascript way of writting this same code
# puts "#{employee_1[first_name:]} #{employee_1[last_name:]} makes #{employee_1[salary:]} a year."   #this is the javascript way of writting this same code
# puts "#{employee_2[first_name:]} #{employee_2[last_name:]} makes #{employee_2[salary:]} a year."   #this is the javascript way of writting this same code



class Employee
  def initialize(input_first_name, input_last_name, input_salary, input_active)
    @first_name = input_first_name
    @last_name = input_last_name
    @salary = input_salary
    @active = input_active

  end 

  def first_name
    @first_name
  end

  def last_name
    @last_name
  end

  def salary
    @salary 
  end

  def print_info
    puts "#{first_name} #{last_name} makes #{salary} a year."
  end 

  def give_annual_raise
    @salary = @salary * 1.05
  end 
end

employee_1 = Employee.new("Bruce", "Wayne", 70000, true)
employee_2 = Employee.new("Diana", "Prince", 80000, true)
p employee_1
p employee_2.salary
employee_2.give_annual_raise
p employee_2.salary
employee_1.print_info







