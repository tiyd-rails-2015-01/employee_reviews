class Employee
  attr_accessor :name, :salary, :reviews, :satisfactory
  def initialize(name, salary)
    @name = name
    @salary = salary
    @reviews = []
    @satisfactory = []
  end

  def employee_review(review)
    @reviews << review
  end

  def satisfactory_rating
    @satisfactory = false
  end

  def unsatisfactory_rating
    @unsatisfactory = true
  end

  def rated_satifactory
    return @satisfactory
  end


end
