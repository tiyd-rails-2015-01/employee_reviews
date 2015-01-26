require 'minitest/autorun'
require 'minitest/pride'
require './department'
require './employee'

class ReviewsTest < Minitest::Test
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
    katie = goat_department.add_employee("Katie", 100000)
    assert_equal Employee, katie.class
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
    katie = goat_department.add_employee("Katie", 100000)
    johnny = goat_department.add_employee("Johnny", 100000)
    sherry = goat_department.add_employee("Sherry", 500000)
    assert_equal 700000, goat_department.total_salaries
  end

  def test_can_add_review_text_to_employee
    katie = Employee.new("Katie", 100000)
    katie.add_review("Katie is a truly magnificent employee.  Her goat observation skills are unparallelled.  In fact, she herself is becoming more goatlike each day.")
    assert_equal "Katie is a truly magnificent employee.  Her goat observation skills are unparallelled.  In fact, she herself is becoming more goatlike each day.", katie.review
  end

  def test_employee_can_be_satisfactory_or_unsatisfactory
    katie = Employee.new("Katie", 100000)
    dilbert = Employee.new("Dilbert", 25000)
    katie.rate_satisfactory
    dilbert.rate_unsatisfactory
    assert_equal true, katie.satisfactory?
    assert_equal false, dilbert.satisfactory?
  end
end
