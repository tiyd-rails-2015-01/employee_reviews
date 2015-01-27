require 'minitest/autorun'
require 'minitest/pride'
require './employee_reviews'
require './employee'
require './department'

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

end
