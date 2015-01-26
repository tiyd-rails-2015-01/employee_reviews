def get_user_input
  gets.chomp
end


class Employee
  attr_accessor :name, :salary, :department, :reviews, :performance
  def initialize(name, salary)
    @name = name
    @salary = salary
    @department = department
    @reviews = []
    @performance = []
  end

  def review(review_text)
    @reviews << review_text
    # puts "#{@reviews}"
  end

  def performance(number)
    @performance << number
    # puts "#{@performance}"
  end

  def give_raise
    @salary + 1000
  end
end
