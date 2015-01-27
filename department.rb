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
end
