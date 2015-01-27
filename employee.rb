
class Employee
  attr_accessor :name, :salary, :performance_review, :satisfactory
  def initialize(name, salary)
    @name = name
    @salary = salary
    @performance_review = []
    @satisfactory = []
  end

  def pay_raise(employee)
    raise_percent = 0.07
    pay_raise = self.salary * raise_percent
    return pay_raise

  end

  def performance
    @Ssatisfactory = true
  end

end
