class Employee
  attr_accessor :name, :department, :review, :good_employee
  attr_reader  :salary

  def initialize(name, salary)
    @salary = salary
    @name = name
    @department = nil
    @review = nil
    @good_employee = true
  end

  def raise_salary(percent)
    @salary *= 1 + (percent.to_f/100)
    @salary = @salary.round(2)
    return @salary
  end

  def evaluate_performance
    if @review.match(/(improve|required|discuss|fault|dwell|issue)/)
      @good_employee = false
      return @good_employee
    elsif @review.match(/(asset|always|success|happy|impressed)/)
      @good_employee = true
      return @good_employee
    else
      puts "Not enough information in review, please set good_employee manually"
      return true
    end
  end

end
