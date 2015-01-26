class Department
  
  attr_reader :name

  def initialize( name )
    @name = name
    @employees = []
  end

  def addEmployee( employee )
    @employees << employee
  end
end
