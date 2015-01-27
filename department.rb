class Department

  attr_reader :name

  def initialize( name )
    @name = name
    @employees = []
  end

  def addEmployee( employee )
    @employees << employee
  end

  def parseReviews
    @employees.each do |employee|
      employee.parseReviewText
    end
  end

  def totalSalaries
    return @employees.inject{|sum,x| sum.salary + x.salary }
  end


  def doleOutRaises( totalAvailableMoney )
    goodEmployees = []

    @employees.each do |employee|
      if employee.evaluateReview
        goodEmployees << employee
      end
    end

    goodEmployees.each do |employee|
      employee.assignRaiseLumpSum( totalAvailableMoney / goodEmployees.length )
    end
  end

end
