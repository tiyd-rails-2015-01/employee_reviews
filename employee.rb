def get_user_input
  gets.chomp
end


class Employee
  attr_accessor :name, :salary, :department, :reviews, :evaluation, :give_raise
  def initialize(name, salary)
    @name = name
    @salary = salary
    @department = department
    @evaluation = false
    @reviews = []
    @performance = []
  end

  def add_review(review_text)
    @reviews << review_text
  end

  def performance(number)
    @performance << number
  end

  def give_raise(pay_out)
    @salary += pay_out
  end
end
