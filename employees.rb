require './departments'

class Employee

  attr_reader :name, :salary, :reviews, :satisfactory

  def initialize(name, salary)
    @name = name
    @salary = salary
    @reviews = []
  end

  def employee_review(string)
    @reviews << string
  end

  def rated_unsatisfactory
    @satisfactory = false
  end

  def rated_satisfactory
    @satisfactory = true
  end

  def rated_satisfactory?
    return @satisfactory
  end

  def give_raise(raise)
    @salary = raise + @salary
  end

  def performance_from_review
    poor_results = []
    good_results = []
    poor_performance = ["but", "not", "room for improvement", "difficult", "confusion", "less", "negative", "not", "lack", "inadequate", "limitation", "concern", "longer", "interrupt", "disagree", "off"]
    good_performance = ["asset", "pleasure", "quick", "willing", "help", "success", "happy", "responsive", "consistent", "effective", "satisfied", "impressed", "enjoy", "devoted", "perfect", "ownership", "positive", "encourage", "well"]
    if poor_results.include?(poor_performance)
      poor_results << poor_performance
    elsif good_results.include?(good_performance)
      good_results << good_performance
    end
  end
    if good_results = rated_satisfactory
    return rated_satisfactory
    else
    poor_results = rated_unsatisfactory
    return rated_unsatisfactory
  end
end
