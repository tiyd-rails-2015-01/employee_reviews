require "minitest/autorun"
require 'minitest/pride'
require './department.rb'
require './employee.rb'

class EmployeeReviewTest < Minitest::Test

  def test_01_department_class_takes_arguments
    assert Department.new("Accounting")
  end

  def test_02_employee_class_takes_two_arguments
    assert Employee.new("Chad Wellington", "72,000")
  end

  def test_03_add_employees_to_departments
    accounting = Department.new("Accounting")
    chad = Employee.new("Chad Wellington III", "54000")
    accounting.add_employee(chad)
    assert accounting.employee_names == ["Chad Wellington III"]
  end

  def test_04_get_employee_name
    ruston = Employee.new("Ruston Aberdeen", "86000")
    assert ruston.name == "Ruston Aberdeen"
  end

  def test_05_get_employee_salary
    graham = Employee.new("Graham C.R. Ackerman, Esq.", "112000")
    assert graham.salary == "112000"
  end

  def test_06_get_department_name
    department_1 = Department.new("Department of Mysteries")
    assert department_1.name == "Department of Mysteries"
  end

  def test_07_total_salary_of_department
    department_1 = Department.new("Department for the Regulation and Control of Magical Creatures")
    employee_1 = Employee.new("Hagrid", "22000")
    employee_2 = Employee.new("Charlie Weasley", "45000")
    department_1.add_employee(employee_1)
    department_1.add_employee(employee_2)
    assert department_1.total_salary == "67000"
  end

  def test_08_can_add_employee_review
    employee_1 = Employee.new("Hagrid", "22000")
    assert employee_1.review(0) == "Hagrid repeatedly performs terribly on student instruction, communication, and following protocol. He consistently leads first-years into the ForbiddenForest, brings deadly creatures onto the grounds, and is derelict in his one simple task of being the 'Keeper of Keys' as he is always losing his keys."
  end

  def test_09_performance_satisfactory_or_unsatisfactory
    employee_1 = Employee.new("Hagrid", "22000")
    assert employee_1.satisfactory? == false
  end




end
