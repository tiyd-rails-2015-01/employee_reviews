require 'minitest/autorun'
require 'minitest/pride'
require './employee'
require './department'

class EmployeeReviewTest <Minitest::Test

  def test_01_department_class_with_name_exists
   assert Department
   assert Department.new("")
  end

  def test_02_employee_class_with_name_salary_exists
    assert Employee
    assert Employee.new("", 100000)
  end

  def test_03_add_employee_to_department
    sports = Department.new("Sports")
    steve = Employee.new("Steve", 100000)
    assert sports.add_employee(steve)
    assert sports.roster.include?(steve)
  end

  def test_04_get_employee_name
    john = Employee.new("John", 100000)
    assert john.name == "John"
    sally = Employee.new("Sally", 100000)
    assert sally.name == "Sally"
  end

  def test_05_get_employee_salary
    john = Employee.new("John", 100000)
    assert john.salary == 100000
  end

  def test_06_get_departments_name
    sports = Department.new("Sports")
    assert sports.name == "Sports"
  end

  def test_07_get_total_salary_for_all_employees_department
    sports = Department.new("Sports")
    steve = Employee.new("Steve", 100000)
    ruben = Employee.new("Ruben", 150000)
    assert sports.add_employee(steve)
    assert sports.add_employee(ruben)
    assert_equal 250000, sports.total_salary
  end

  def test_08_add_employee_review_text
    steve = Employee.new("Steve", 100000)
    review = "Steve is just terrible. When I look at him, it makes me mad."+
    "He sucks. He's not even..... What is he?!?!"
    steve.add_review(review)
    assert_equal review, steve.reviews[0]
  end

  def test_09_employee_performing_satisfactorily_or_not
    steve = Employee.new("Steve", 100000)
    ruben = Employee.new("Ruben", 150000)
    steve.rated_unsatisfactory
    ruben.rated_satisfactory
    assert_equal false, steve.rated_satisfactory?
    assert_equal true, ruben.rated_satisfactory?
  end

  def test_10_give_raise_to_employee
    ruben = Employee.new("Ruben", 150000)
    ruben.give_raise(10000)
    assert_equal 160000, ruben.salary
  end

  def test_11_give_raise_to_department_employees
    steve = Employee.new("Steve", 100000)
    ruben = Employee.new("Ruben", 150000)
    sports = Department.new("Sports")
     sports.add_employee(steve)
     sports.add_employee(ruben)
    steve.rated_satisfactory = false
    ruben.rated_satisfactory = true
    sports.department_raise(5000)
    assert_equal 155000, ruben.salary
    assert_equal 100000, steve.salary
  end

end
