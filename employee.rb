class Employee

  attr_reader :name, :salary, :review


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

  def performance_rating_based_on_review(review)
    bad_points = 0
    good_points = 0

    if good_points > bad_points
      rate_satisfactory
    else
      #there is a possibility that good_points == bad_points but in this case, what's the computer going to do, go through the review again and think harder?  so for this purpose, any employee who is equally bad and good doesn't get a raise.
      rate_unsatisfactory
    end
  end

end
