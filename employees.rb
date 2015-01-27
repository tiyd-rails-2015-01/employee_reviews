require './departments'

class Employee

  attr_reader :name, :salary, :reviews, :satisfactory

  def initialize(name, salary)
    @name = name
    @salary = salary
    @reviews = []
  end

  def employee_review(string)
    @reviews << string
  end

  def rated_unsatisfactory
    @satisfactory = false
  end

  def rated_satisfactory
    @satisfactory = true
  end

  def rated_satisfactory?
    return @satisfactory
  end

  def give_raise(raise)
    @salary = raise + @salary
  end

end
