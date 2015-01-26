class Employee

  attr_reader :name
  attr_accessor :salary, :review, :satisfactory
  #uncertain whether accessor was necessary; attr_reader worked fine but I feel like it should be accessor...

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

  def give_raise_by_percent(percent)
    starting_salary = @salary
    @salary = (percent + 1) * starting_salary
  end

  def give_raise_with_dollars(dollars)
    starting_salary = @salary
    @salary = dollars + starting_salary
  end

end
