require "./employee.rb"
require "./email_reportable.rb"

class Manager < Employee
  include EmailReportable
  def initialize(input_options)
    super
    @employees = input_options[:employees]
  end

  def give_all_raises
    @employees.each {|x| x.give_annual_raise}
  end

  def fire_all_employees
    @employees.each {|x| x.active = false}
  end

  def give_annual_raise
    @salary = 1.1 * @salary
  end

  def print_info
    super 
    puts "They manage #{@employees.length} people."
  end
end

