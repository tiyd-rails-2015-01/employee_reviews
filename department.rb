require './employee'

class Department

  attr_reader :name, :employees

  def initialize(name)
    @name = name
    @employees = []
    @top_performers = []
  end

  def add_employee(employee)
    @employees << employee
  end

  def total_salaries
    # total = 0
    # @employees.each do |e|
    #   total += e.salary
    # end
    # return total

    @employees.reduce(0.0) { |sum, employee| sum += employee.salary }
  end

  def distribute_raises(budget)
    @employees.each do |employee|
      if employee.satisfactory?
        @top_performers << employee
      end
    end
    raise_amount = (budget / @top_performers.length).round
    @top_performers.each do |lucky_employee|
      lucky_employee.give_raise_with_dollars(raise_amount)
    end
  end

end
