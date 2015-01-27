require './employees'

class Department

attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = []
    @good_employee = []

  end

  def add_employee(employee)
    @roster << employee
  end

  def total_salary
    total = 0
    @roster.each do |employee|
      total += employee.salary
    end
  return total
  end

  def give_raises
    @roster.each do |employee|
      if employee.satisfactory?
        @good_employee << employee
      end
    end
  end
end
