class Employee
  def initialize(name:, salary:)
    @name = name
    @salary = salary
  end

  def name
    @name
  end

  def salary
    @salary
  end

end

suzy = Employee.new(name: "suzy", salary: 80000)
