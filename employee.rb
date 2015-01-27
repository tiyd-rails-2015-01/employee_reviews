require './reviews'

class Employee

  attr_reader :name, :salary, :reviews


  def initialize(name, salary)
    @name = name
    @salary = salary
    @reviews = []
  end

  def add_review(text)
    @reviews << text
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
    bad_score = []
    good_score = []
    bad_things = ["but", "not", "room for improvement", "difficult", "confusion", "less", "negative", "not", "lack", "inadequate", "limitation", "concern", "longer", "interrupt", "disagree", "off"]
    good_things = ["asset", "pleasure", "quick", "willing", "help", "success", "happy", "responsive", "consistent", "effective", "satisfied", "impressed", "enjoy", "devoted", "perfect", "ownership", "positive", "encourage", "well"]
    review.split.each do |word|
      if bad_things.include?(word)
        bad_score << word
      elsif good_things.include?(word)
        good_score << word
      end
    end
    if good_score.length > bad_score.length
      rate_satisfactory
    else
      #there is a possibility that good_score == bad_score but in this case, what's the computer going to do, go through the review again and think harder?  so for this purpose, any employee who is equally bad and good doesn't get a raise.
      rate_unsatisfactory
    end
  end

end
