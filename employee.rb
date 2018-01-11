module Reporting

  def send_report
    puts "Sending Email..."
    #code that sends email
    puts "Email Sent."
  end

end 
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
  attr_reader :first_name, :last_name, :salary, :active
  attr_writer :active

  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]

  end 

  # def first_name                  #these are setter methods
  #   @first_name                 #these are setter methods
  # end                 #these are setter methods
  #                 #these are setter methods
  # def last_name                 #these are setter methods
  #   @last_name                  #these are setter methods
  # end                 #these are setter methods
  #                 #these are setter methods
  # def salary                  #these are setter methods
  #   @salary                   #these are setter methods
  # end

  # def active
  #   @active
  # end

  def active=(new_active)
    @active = new_active
  end

  def print_info
    puts "#{first_name} #{last_name} makes #{salary} a year."
  end 

  def give_annual_raise
    @salary = @salary * 1.05
  end 
end

employee_1 = Employee.new(
                          first_name: "Bruce",#are hashes
                          last_name: "Wayne", #are hashes
                          salary: 70000,#are hashes
                          active: true#are hashes
                          )
employee_2 = Employee.new(
                          first_name: "Diana", #are hashes
                          last_name: "Prince", #are hashes
                          salary: 80000, #are hashes
                          active: true #are hashes
                          )
# p employee_1
# p employee_2.salary
# employee_2.give_annual_raise
# p employee_2.salary
# employee_1.print_info



class Manager < Employee 
  include Reporting    #this will replace the send_report method
  def initialize(input_options)
    super(input_options)  #super will bring any attributes from the previous initialize in the Superclass (Employee) of Manager  [an alternative for copying and pasting]
    @employees = input_options[:employees]  #reseting these values from before, since when initialize is ran a second time, it is reset
  end


  # def send_report      #being replaced by the Reporting module
  #   puts "Sending Email..."      #being replaced by the Reporting module
  #   #code that sends email      #being replaced by the Reporting module
  #   puts "Email Sent."      #being replaced by the Reporting module
  # end      #being replaced by the Reporting module

  def give_all_raise   #loops through every single employee that is created using   @employees
    @employees.each do |x|   #loops through every single employee that is created using   @employees
      x.give_annual_raise   #loops through every single employee that is created using   @employees
      p x   #loops through every single employee that is created using   @employees
    end   #loops through every single employee that is created using   @employees
  end   #loops through every single employee that is created using   @employees
   #loops through every single employee that is created using   @employees
    def fire_all_employees   #loops through every single employee that is created using   @employees
      @employees.each do |x|   #loops through every single employee that is created using   @employees
        x.active = false   #loops through every single employee that is created using   @employees
        p x   #loops through every single employee that is created using   @employees
      end   #loops through every single employee that is created using   @employees
    end


end

manager = Manager.new(
                      first_name: "Clark",
                      last_name: "Kent",
                      salary: "100000",
                      active: true,
                      employees: [employee_1, employee_2]
                      )


class Intern < Employee 
    include Reporting    #this will replace the send_report method

  # def send_report       #being replaced by the Reporting module
  #   puts "Sending Email..."       #being replaced by the Reporting module
  #   #code that sends email       #being replaced by the Reporting module
  #   puts "Email Sent."       #being replaced by the Reporting module
  # end       #being replaced by the Reporting module

end 


intern = Intern.new(
                    first_name: "Jimmy",
                    last_name: "Olson",
                    salary: 30000,
                    active: true
                    )


intern.print_info
intern.send_report



