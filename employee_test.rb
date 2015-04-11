require 'minitest/autorun'
require 'minitest/pride'
require './employee'
require './department'

class EmployeeTest < Minitest::Test

  def test_employee_class_exists
    assert Employee
  end

  def test_department_class_exists
    assert Department
  end

  def test_can_create_department
    department = Department.new("Development")
    assert department.department_name == "Development"
  end

  def test_can_create_employee
    employee = Employee.new("Jordan", 75000)
    assert employee.employee_name == "Jordan"
    assert employee.salary == 75000
  end

  def test_can_add_employee_to_department
    department = Department.new("Development")
    employee = Employee.new("Jordan", 75000)
    department.add_employee(employee)
  end

  def test_can_get_employee_name
    employee = Employee.new("Jordan", 75000)
    assert "Jordan" == employee.employee_name
  end

  def test_can_get_employee_salary
    employee = Employee.new("Jordan", 75000)
    assert 75000 == employee.salary
  end

  def test_can_get_department_name
    department = Department.new("Development")
    assert "Development" == department.department_name
  end

  def test_can_get_total_salary_for_all_employees_in_a_department
    department = Department.new("Development")
    employee = Employee.new("Jordan", 75000)
    employee1 = Employee.new("Mason", 1000000)
    employee2 = Employee.new("Chris", 500000)
    department.add_employee(employee)
    department.add_employee(employee1)
    department.add_employee(employee2)
    assert department.department_salary == 1575000
  end

  def test_can_add_employee_review
    employee = Employee.new("Jordan", 75000)
    assert employee.add_review("Jordan does a fabulous job making beautiful website designs.")
  end

  def test_employee_performance
    employee = Employee.new("Jordan", 75000)
    employee.satisfactory(true)
    assert employee.satisfactory? == true
    refute employee.satisfactory? == false
  end

  def test_can_give_employee_raise
    employee = Employee.new("Jordan", 75000)
    employee.raise(25)
    assert employee.salary == 93750
  end

  def test_can_give_raises_to_department_employees
    department = Department.new("Development")
    employee = Employee.new("Jordan", 75000)
    employee1 = Employee.new("Mason", 1000000)
    employee2 = Employee.new("Chris", 500000)
    department.add_employee(employee)
    department.add_employee(employee1)
    department.add_employee(employee2)
    employee.satisfactory(true)
    employee1.satisfactory(true)
    employee2.satisfactory(false)
    department.department_raises(500000)
    assert department
  end
end
