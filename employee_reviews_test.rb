require 'minitest/autorun'
require 'minitest/pride'
require './employee'
require './department'

class EmployeeReviewsTest < MiniTest::Test

  def test_department_class_exists
    assert Department
  end

  def test_employee_class_exists
    assert Employee
  end

  def test_initialize_employee_with_name_and_salary
    assert Employee.new("Oliver Twist", 1.00)
  end

  def test_initialize_department_with_name
    assert Department.new("workhouse")
  end

  def test_can_add_employees_to_dept
    bumble = Employee.new("Mr. Bumble", 100)
    workhouse = Department.new("workhouse")
    assert workhouse.addEmployee(bumble)
  end

  def test_can_read_employee_name_and_salary
    bumble = Employee.new("Mr. Bumble", 100)
    assert_equal "Mr. Bumble", bumble.name
    assert_equal 100, bumble.salary
  end

  def test_can_read_dept_name
    workhouse = Department.new("workhouse")
    assert_equal "workhouse", workhouse.name
  end

  def test_sum_salaries_in_dept
    bumble = Employee.new("Mr. Bumble", 100)
    oliver = Employee.new("Oliver Twist", 1.00)

    workhouse = Department.new("workhouse")

    workhouse.addEmployee( bumble )
    workhouse.addEmployee( oliver )
    assert_equal 101, workhouse.totalSalaries
  end

  def test_add_employee_review
    oliver = Employee.new("Oliver Twist", 1.00)
    assert oliver.addReview("he asked for more, after he had eaten the supper allotted by the dietary")
  end

  def test_evaluate_review_returns_a_value
    oliver = Employee.new("Oliver Twist", 1.00)
    oliver.addReview("he asked for more, after he had eaten the supper allotted by the dietary. That boy willbehung")
    assert_equal false, oliver.evaluateReview
  end

  def test_employee_can_be_given_a_raise
    bumble = Employee.new("Mr. Bumble", 100)
    bumble.assignRaise(0.1)
    assert_equal 110, bumble.salary
  end

  def test_employee_can_be_given_a_lump_sum_raise
    bumble = Employee.new("Mr. Bumble", 100)
    bumble.assignRaiseLumpSum(10)
    assert_equal 110, bumble.salary
  end

  def test_assign_raises_to_dept
    bumble = Employee.new("Mr. Bumble", 100)
    limbkins = Employee.new("Mr. Limbkins", 110)
    workhouse = Department.new("workhouse")

    bumble.addReview("positive")
    limbkins.addReview("positive")

    workhouse.addEmployee(bumble)
    workhouse.addEmployee(limbkins)
    workhouse.doleOutRaises(50)
    assert 150, bumble.salary
    assert 160, limbkins.salary
  end

  def test_parse_review_test_reads_something
    zeke = Employee.new( "Zeke", 500 )
    assert_equal "", zeke.review
    zeke.parseReviewText
    refute_equal "", zeke.review
  end

  def test_dept_can_parse_reviews
    zeke = Employee.new( "Zeke", 500 )
    yvonne = Employee.new( "Yvonne", 500 )
    xavier = Employee.new( "Xavier", 500 )
    wanda = Employee.new( "Wanda", 500 )

    dept = Department.new( "The Department" )

    dept.addEmployee( zeke )
    dept.addEmployee( yvonne )
    dept.addEmployee( xavier )
    dept.addEmployee( wanda )

    dept.parseReviews
    refute_equal "", zeke.review
    refute_equal "", yvonne.review
    refute_equal "", xavier.review
    refute_equal "", wanda.review
  end
end
