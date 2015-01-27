
class Employee
  attr_accessor :name, :salary, :performance_review, :performance
  def initialize(name, salary)
    @name = name
    @salary = salary
    @performance_review = nil
    @performance = nil
  end

end
