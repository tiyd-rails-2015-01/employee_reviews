class Employee
  attr_accessor :salary, :name, :department, :review, :give_raise, :satisfactory

  def initialize(name, salary)
    @name = name
    @salary = salary
    @department = department
    @review = nil
    # @satisfactory = false
  end

  def give_raise
    #if @name.satisfactory = true
      @salary + 1000
    # else
    #   @salary + 0
    # end
  end

  # def satisfactory
  #   @satisfactory
  # end
end
