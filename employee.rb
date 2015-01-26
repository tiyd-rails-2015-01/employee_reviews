class Employee
attr_accessor :dpmt, :name, :salary

  def initialize(employee_name, salary, department = nil)
    @employee_name = employee_name
    @salary = salary
    
  end

  def dpmt
    puts "#{:dpmt}"
  end

end
