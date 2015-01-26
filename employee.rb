class Employee
  attr_accessor :name, :salary, :department, :review
  def initialize(name, salary)
    @salary=salary
    @name=name
    @department=department
    @review= nil
  end

  def performance(rating)
    if rating.downcase == "satisfactory"
      true
    elsif rating.downcase== "unsatisfactory"
      false
    else
      puts "Please enter 'Satisfactory' or 'Unsatisfactory'"
    end
  end

end
