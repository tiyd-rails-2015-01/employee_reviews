class Department
  attr_reader :dep_name, :dep_employees, :salary, :evaluation
  def initialize(dep_name)
    @dep_name = dep_name
    @dep_employees = []
    @total_salary = []
  end

  def add(employee)
    employee.department = @dep_name
    @dep_employees << employee
  end

  def salary
    @dep_employees.each do |s|
      @total_salary << s.salary
    end
    @total_salary.reduce(:+) #{|sum, salary| sum += salary}
  end

  def dept_raise(budget)
    count = 0
    @dep_employees.each do |e|
      if e.evaluation
        count +=1
      end
    end

    pay_out = budget / count

    @dep_employees.each do |s|
      if s.evaluation == true
        s.give_raise(pay_out)
      end
    end
  end
end
