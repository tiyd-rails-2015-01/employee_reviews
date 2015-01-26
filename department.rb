require './employee.rb'


class Department
  def initialize (department_name)
    @total_salery = 0
    @department_name = department_name
    @employee_array = []
  end

  def get_department_name
    return @department_name
  end

  def add_employee(employee)
    @employee_array << employee
  end

#  def output_employee_name
#
#  end


  def get_total_salary
    @total_salery = 0
    @employee_array.get_employee_salary.each {|a| @total_salery+= a}
  end

end
