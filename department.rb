require './employee'

class Department
  attr_reader :dept_name

  def initialize(dept_name)
    @dept_name = dept_name
    @employees = []
  end

  def add_employee(employee)
    @employees << employee
  end

  def employees
    @employees
  end

  def salary_list
    sum = 0
    @employees.each { |employee| sum += employee.salary }
    return sum
  end

  def department_raise(total_amount)
    good_employees = []

    @employees.each do |employee|
      if employee.is_satisfactory == true
        good_employees << employee
      end
    end

    increase = total_amount / good_employees.length

    good_employees.each do |employee|
      employee.raise_salary(increase)
    end
  end


end
