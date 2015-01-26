class Employee

  def initialize (employee_name, employee_salary, performance=true)
    @employee_name = employee_name
    @employee_salary = employee_salary
    @performance = true
  end

  def get_employee_name
    return @employee_name
  end

  def get_employee_salary
    return @employee_salary
  end

  def give_raise(amount)
    @employee_salary += amount
  end

  def get_performace
    return @performance
  end

  def set_bad_performance
    @performance = false
  end

end
