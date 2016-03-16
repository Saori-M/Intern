class President
  def initialize(type)
    case type
    when "mere"
      @employee = Mere.new
    when "designer"
      @employee = Designer.new
    when "manager"
      @employee = Manager.new
    when "executive"
      @employee = Executive.new
    else
      @employee = Employee.new
    end
  end

  def standup
    @employee.standup
  end
end


class Employee
  def standup
    raise RuntimeError, "Not implemented"
  end
end

President.new(ARGV[0]).standup

class Mere < Employee
  def standup
    puts "普通に立ったで"
  end
end

class Designer < Employee
  def standup
    puts "素早く立ったで"
  end
end

class Manager < Employee
  def standup
    puts "偉そうに立ったで"
  end
end

class Executive < Employee
  def standup
    puts "だるそうに立ったで"
  end
end
