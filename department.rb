class Department

  attr_reader :name

  def initialize( name )
    @name = name
    @employees = []
  end

  def addEmployee( employee )
    @employees << employee
  end

  def totalSalaries
    return @employees.inject{|sum,x| sum.salary + x.salary }
  end
end
