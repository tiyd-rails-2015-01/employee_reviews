class Employee
  def initialize(name:, salary:)
    @name = name
    @salary = salary
    @reviews = []
  end

  def name
    @name
  end

  def salary
    @salary
  end

  def add_employee_review(review)
    @review = review
  end


end

suzy = Employee.new(name: "suzy", salary: 80000)
