# require './department'

class Employee

attr_reader :name, :salary, :reviews, :satisfactory
  def initialize(name, salary)
    @name = name
    @salary = salary
    @reviews = []
  end

  def add_review(review)
    @reviews << review
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
end
