require "./employee.rb"
require "./reporting.rb"

module Actualize
class Intern < Employee 
  include Reporting   #this will replace the send_report method

  # def send_report                   #replaced by      (module Reporting)
  #   puts "Sending Email..."             #replaced by      (module Reporting)
  #   #code that sends email             #replaced by      (module Reporting)
  #   puts "Email Sent."             #replaced by      (module Reporting)
  # end
  
end 

end
