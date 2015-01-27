require 'minitest/autorun'
require 'minitest/pride'
require './departments'
require './employees'


class EmployeeReviewTest <Minitest::Test

  def test_01_department_class_exists
    assert Department
  end

  def test_02_employee_class_exist
    assert Employee
  end

  def test_03_add_employee_to_department
    sports = Department.new("Sports")
    steve = Employee.new("Steve", 25000)
    assert sports.add_employee(steve)
    assert sports.roster.include?(steve)
  end

  def test_04_get_employee_name
    steve = Employee.new("Steve", 25000)
    assert steve.name == "Steve"
    sally = Employee.new("Sally", 25000)
    assert sally.name == "Sally"
  end

  def test_05_get_employee_salary
    steve = Employee.new("Steve", 25000)
    assert steve.salary == 25000
    sally = Employee.new("Sally", 25000)
    assert sally.salary == 25000
  end

  def test_06_get_department_name
    sports = Department.new("Sports")
    assert sports.name == "Sports"
  end

  def test_07_get_department_salaries_for_employees
    sports = Department.new("Sports")
    sarah = Employee.new("Sarah", 25000)
    steve = Employee.new("Steve", 25000)
    assert sports.add_employee(sarah)
    assert sports.add_employee(steve)
    assert sports.total_salary == 50000
  end

  def test_08_show_review_for_employee
    sarah = Employee.new("Sarah", 25000)
    steve = Employee.new("Steve", 25000)
    string = "Steve is a real let down. He surfs porn all day."
    steve.employee_review(string)
    assert_equal string, steve.reviews[0]
  end

  def test_09_employee_performing_satisfactorily_or_not
    steve = Employee.new("Steve", 25000)
    sarah = Employee.new("Sarah", 25000)
    steve.rated_unsatisfactory
    sarah.rated_satisfactory
    assert_equal false, steve.rated_satisfactory?
    assert_equal true, sarah.rated_satisfactory?
  end

  def test_10_give_raise_to_employee
    sarah = Employee.new("Sarah", 25000)
    sarah.give_raise(5000)
    assert_equal 30000, sarah.salary
  end


end
