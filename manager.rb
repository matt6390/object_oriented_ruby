require "./employee.rb"
require "./reporting.rb"

module Actualize
  class Manager < Employee
    include Reporting    #this will replace the send_report method

    def initialize(input_options)
     super(input_options)
      @employees = input_options[:employees]
    end

    # def send_report
    #   puts "Sending Email..."
    #   #code that sends email
    #   puts "Email sent."
    # end




    def give_all_raise   #loops through every single employee that is created using   @employees
      @employees.each do |employee|   #loops through every single employee that is created using   @employees
        employee.give_annual_raise   #loops through every single employee that is created using   @employees
        p employee   #loops through every single employee that is created using   @employees
      end   #loops through every single employee that is created using   @employees
    end   #loops through every single employee that is created using   @employees
   #loops through every single employee that is created using   @employees
      def fire_all_employees   #loops through every single employee that is created using   @employees
      @employees.each do |employee|   #loops through every single employee that is created using   @employees
        employee.active = false   #loops through every single employee that is created using   @employees
        p employee   #loops through every single employee that is created using   @employees
        end   #loops through every single employee that is created using   @employees
    end
  end
end