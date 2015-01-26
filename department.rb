# require './employee'

class Department
attr_reader :name, :roster
  def initialize(name)
    @name = name
    @roster = []
  end

  def add_employee(employee)
    @roster << employee
  end

end
