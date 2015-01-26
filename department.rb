class Department
  attr_accessor :employees, :dept_name

  def initialize(dept_name)
    @dept_name = dept_name
    @employees = []
  end

  def add_employee(employee)
    @employees << employee
  end

  def has_employee_with_name?(name)
    @employees.any? {|e| e.name == name}
  end

  def total_salary
    @employees.reduce(0.0) {|sum, employee| sum += employee.salary}
  end

  def department_raise(amount)
    @amount = amount
    until @amount == 0
      @employees.each do |e|
        if e.satisfactory == true
          e.salary = (amount * 0.05) + e.salary
          @amount -= (amount * 0.05)
        end
      end
    end
  end

end
