class Employee
  attr_accessor :name, :salary, :department, :review, :employee_raise, :satisfactory
  def initialize(name, salary)
    @salary=salary
    @name=name
    @department=Department.new(department)
    @review
    @satisfactory
  end

  def satisfactory?
    if @review
      negative_words=@review.scan(/\w*(improvement|inadequate|negative|lacking|concerns)/)
      positive_words=@review.scan(/\w*(asset|pleasure|happy|good|stellar|great|spectacular)/)
      if positive_words.length>negative_words.length
        @satisfactory=true
      else
        @satisfactory= false
      end
    end
    @satisfactory
  end

  def employee_raise(percent)
    @salary+= @salary * percent.to_f/100
  end

end
