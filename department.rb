class Department
  attr_reader :department_name, :department_raise, :total_salary
  def initialize(department_name)
    @department_name=department_name
    @employees=[]

  end

  def add(employee)
    employee.department = @department_name
    @employees << employee
  end

  def total_salary
    employee_salaries=[]
    @employees.each{ | employee| employee_salaries << employee.salary}
    employee_salaries.reduce {|sum, salary| sum +=salary}
  end

  def winners_salary
    @good_employees=[]
    good_employee_salaries=[]
    @employees.each do |employee|
      if employee.satisfactory?
        @good_employees << employee
      end
    end
    @good_employees.each{ | employee| good_employee_salaries << employee.salary}
    winners_salary = good_employee_salaries.reduce {|sum, salary| sum +=salary}
    winners_salary.to_f
  end

  def department_raise(amount)
    raise_amount= 100.0*amount/winners_salary
    @good_employees.each { |employee| employee.employee_raise(raise_amount) }
    total_salary + amount
  end

  # def department_raise(amount)
  #   raise_amount= 100.0*amount/self.total_salary
  #   good_employees=[]
  #   @employees.each do |employee|
  #     if employee.satisfactory?
  #       good_employees << employee
  #     end
  #   end
  #   good_employees.each { |employee| employee.employee_raise(raise_amount)}
  #
  #   total_salary + amount
  # end




end
