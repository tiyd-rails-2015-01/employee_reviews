require 'minitest/autorun'
require 'minitest/pride'
require './employee'
require './department'


class EmployeeReviewTest< Minitest::Test

  def self.test_order
    :alpha
  end

  def test_00_employee_class_and_department_exists
    assert Employee
    assert Department
  end

  def test_01_employee_has_name_and_salary
    steve = Employee.new("Steve", 45000)
    assert_equal "Steve", steve.name
    assert_equal 45000, steve.salary

  end

  def test_02_add_employee_to_department
    sports = Department.new("Sports")
    steve = Employee.new("Steve", 45000)
    assert sports.add_employee(steve)
    assert sports.roster.include?(steve)
  end

  def test_03_department_name
    sports = Department.new("IT")
    assert sports.name == "IT"
  end

  def test_04_get_total_salary_for_department
    sports = Department.new("IT")
    steve = Employee.new("Steve", 45000)
    sara = Employee.new("Sara", 40000)
    sports.add_employee(steve)
    sports.add_employee(sara)
    assert_equal 85000, sports.total_salary
    refute 95000 == sports.total_salary
  end

  def test_05_add_emp_review_text
    steve = Employee.new("Steve", 45000)
    review = "That Steve, he is a really great employee, he rocks!"
    steve.performance_review = review
    assert_equal steve.performance_review, review
  end

end
