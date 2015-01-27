class Employee
  attr_reader :name
  attr_reader :salary
  attr_accessor :review

  def initialize(name, salary)
    @name = name
    @salary = salary

  end

  # def set_review(review)
  #   @review = review
  # end

end
