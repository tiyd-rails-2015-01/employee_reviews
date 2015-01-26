require 'minitest/autorun'
require 'minitest/pride'
require './department'
require './employee'
require './reviews'

class ReviewsTest < Minitest::Test
  include Reviews
  def test_department_class_exists
    assert Department
  end

  def test_employee_class_exists
    assert Employee
  end

  def test_department_class_initializes_with_name
    assert Department.new("")
  end

  def test_employee_class_initializes_with_name_and_salary
    assert Employee.new("", "")
  end

  def test_can_add_employees_to_departments
    goat_department = Department.new("Division of Goat Observation")
    katie = Employee.new("Katie", 100000)
    goat_department.add_employee(katie)
    assert_equal true, goat_department.employees.include?(katie)
  end

  def test_employee_names_and_salaries_can_be_known
    katie = Employee.new("Katie", 100000)
    assert_equal 100000, katie.salary
    assert_equal "Katie", katie.name
  end

  def test_department_names_can_be_known
    goat_department = Department.new("Division of Goat Observation")
    assert_equal "Division of Goat Observation", goat_department.name
  end

  def test_determine_total_salaries_in_department
    goat_department = Department.new("Division of Goat Observation")
    katie = Employee.new("Katie", 100000)
    johnny = Employee.new("Johnny", 100000)
    sherry = Employee.new("Sherry", 500000)
    goat_department.add_employee(katie)
    goat_department.add_employee(johnny)
    goat_department.add_employee(sherry)
    assert_equal 700000, goat_department.total_salaries
  end

  def test_can_add_review_text_to_employee
    katie = Employee.new("Katie", 100000)
    string = "Katie is a truly magnificent employee.  Her goat observation skills are unparallelled.  In fact, she herself is becoming more goatlike each day."
    katie.add_review(string)
    assert_equal string, katie.reviews[0]
  end

  def test_employee_can_be_satisfactory_or_unsatisfactory
    katie = Employee.new("Katie", 100000)
    dilbert = Employee.new("Dilbert", 25000)
    katie.rate_satisfactory
    dilbert.rate_unsatisfactory
    assert_equal true, katie.satisfactory?
    assert_equal false, dilbert.satisfactory?
  end

  def test_employee_can_be_given_a_raise
    katie = Employee.new("Katie", 100000)
    katie.give_raise_by_percent(0.2)
    assert_equal 120000, katie.salary
  end

  def test_department_can_distribute_raise_budget
    goat_department = Department.new("Division of Goat Observation")
    katie = Employee.new("Katie", 100000)
    johnny = Employee.new("Johnny", 100000)
    sherry = Employee.new("Sherry", 500000)
    dilbert = Employee.new("Dilbert", 25000)
    wally = Employee.new("Wally", 32000)
    goat_department.add_employee(katie)
    goat_department.add_employee(johnny)
    goat_department.add_employee(sherry)
    goat_department.add_employee(dilbert)
    goat_department.add_employee(wally)
    katie.rate_satisfactory
    johnny.rate_satisfactory
    sherry.rate_satisfactory
    dilbert.rate_unsatisfactory
    wally.rate_unsatisfactory
    goat_department.distribute_raises(100000)
    assert_equal 133333, katie.salary
    assert_equal 133333, johnny.salary
    assert_equal 533333, sherry.salary
    assert_equal 25000, dilbert.salary
    assert_equal 32000, wally.salary
  end

  def test_employee_review_can_take_module_constant
    yvonne = Employee.new("Yvonne", 25000)
    yvonne.add_review(Reviews::YVONNE)
  end

end
