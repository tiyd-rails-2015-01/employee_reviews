require './employee'

class Department < Employee

  attr_reader :department_name, :roster

  def initialize(department_name)
    @department_name = department_name
    @roster = []
  end

  def add_employee(employee)
    @roster << employee
  end

  def department_salary
    salaries = 0
    @roster.each do |a|
      salaries += a.salary.to_i
    end
    return salaries
  end
  def department_raises(total)
    if @satisfactory
      @raise << employee
      raise_amount = total/(@raise.count) unless @raise.count == 0
      @salary.each do |s|
        s += raise_amount
      end
    else
    end
  end
end
