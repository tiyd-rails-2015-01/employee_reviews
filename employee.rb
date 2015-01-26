class Employee

  attr_reader :name, :salary, :review, :satisfactory

  def initialize(name, salary)
    @name = name
    @salary = salary
  end

  def add_review(text)
    @review = text
  end

  def rate_satisfactory
    @satisfactory = true
  end

  def rate_unsatisfactory
    @satisfactory = false
  end

  def satisfactory?
    return @satisfactory
  end

end
