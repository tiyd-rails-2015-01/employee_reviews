require 'minitest/autorun'
require 'minitest/pride'
require './employee_reviews'
require './employee'
require './department'
require "pry-byebug"


class ReviewsTest < Minitest::Test

  def test_employee_class_exists
    assert Employee
  end

  def test_department_class_exists
    assert Department
  end

  def test_create_new_employee
    employee = Employee.new("Anna", 50000)
    assert employee.name == "Anna"
  end

  def test_create_new_employee_salary
    employee = Employee.new("Anna", 50000)
    assert employee.salary == 50000
  end

  def test_department_name
    department = Department.new("Accounting")
    assert department.dept_name == "Accounting"
  end

  def test_employee_go_to_department
    anna = Employee.new("Anna", 50000)
    accounting = Department.new("Accounting")
    accounting.add_employee(anna)
    assert accounting.employees.include?(anna)
  end

  def test_get_employee_name
    anna = Employee.new("Anna", 50000)
    bob = Employee.new("Bob", 60000)
    clarissa = Employee.new("Clarissa", 75000)
    assert_equal "Anna", anna.name
  end

  def test_get_employee_salary
    anna = Employee.new("Anna", 50000)
    bob = Employee.new("Bob", 60000)
    clarissa = Employee.new("Clarissa", 75000)
    assert_equal anna.salary, 50000
  end

  def test_total_salaries_in_a_department
    anna = Employee.new("Anna", 50000)
    bob = Employee.new("Bob", 60000)
    clarissa = Employee.new("Clarissa", 75000)

    accounting = Department.new("Accounting")
    accounting.add_employee(anna)
    accounting.add_employee(bob)
    accounting.add_employee(clarissa)

    assert_equal 185000, accounting.salary_list
  end

  def test_add_employee_review_text
    zeke = Employee.new("Zeke", 55000)

    zeke.review = "Zeke is a very positive person and encourages those around him, but he has not done well technically this year."

    assert_equal "Zeke is a very positive person and encourages those around him, but he has not done well technically this year.", zeke.review
  end

  def test_performing_satisfactorily
    zeke = Employee.new("Zeke", 55000)
    zeke.is_satisfactory = false
    refute zeke.is_satisfactory
  end

  def test_raise_to_individual
    wanda = Employee.new("Wanda", 65000)
    wanda.raise_salary(5000)
    assert_equal 70000, wanda.salary
  end

  def test_raises_to_department
    anna = Employee.new("Anna", 50000)
    bob = Employee.new("Bob", 60000)
    clarissa = Employee.new("Clarissa", 75000)
    wanda = Employee.new("Wanda", 50000)
    xavier = Employee.new("Xavier", 60000)
    yvonne = Employee.new("Yvonne", 75000)

    accounting = Department.new("Accounting")
    accounting.add_employee(anna)
    accounting.add_employee(bob)
    accounting.add_employee(clarissa)
    accounting.add_employee(wanda)
    accounting.add_employee(xavier)
    accounting.add_employee(yvonne)

    anna.is_satisfactory = false
    bob.is_satisfactory = true
    clarissa.is_satisfactory = true
    wanda.is_satisfactory = false
    xavier.is_satisfactory = true
    yvonne.is_satisfactory = false

    accounting.department_raise(9001.50)
    assert_equal 50000, anna.salary
    assert_equal 63000.50, bob.salary
    assert_equal 78000.50, clarissa.salary
    assert_equal 50000, wanda.salary
    assert_equal 63000.50, xavier.salary
    assert_equal 75000, yvonne.salary

  end

end
