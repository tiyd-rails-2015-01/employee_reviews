class Employee
  attr_accessor :salary, :name

  def initialize(name, salary)
    @name = name
    @salary = salary
  end

  def give_raise(amount)
    @salary = (@salary.to_i + amount).to_s
  end

  def review(number)
    review = " "
    if number == 0
      review = "#{@name} repeatedly performs terribly on student instruction, communication, and following protocol. He consistently leads first-years into the ForbiddenForest, brings deadly creatures onto the grounds, and is derelict in his one simple task of being the 'Keeper of Keys' as he is always losing his keys."
    elsif number == 1-4
      review = "#{@name} quickly assumes a strong leadership role when action is needed. He influences others to perform better. However, he would be a stronger leader if he exhibited greater confidence in himself as well as in others. Upon occasion, his actions have resulted in a lack of respect and trust from others. #{@name} has reacted poorly in pressure situations."
    elsif number == 5-9
      review = "#{@name} gives candid, constructive feedback to team members and, in turn, actively requests feedback from them. He is a leader in building a strong team spirit and identity. All his actions are directed toward the success of the team over his own interests. He exhibits a high degree of openness and objectivity to the views of others. #{@name} has been able to balance the needs of the team with his individual responsibilities."
    elsif number == 10
      review = "Happy Christmas, Harry."
    end
    review
  end

  def satisfactory(true_or_false)
    @true_or_false = ''
    if true_or_false == true
      @true_or_false = true
    else
      @true_or_false = false
    end
  end

  def satisfactory?
    if @true_or_false == true
      return true
    else
      return false
    end
  end

end
