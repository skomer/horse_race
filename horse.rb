class Horse

  attr_reader :name, :age, :base_speed, :final_speed

def initialize(params)
  @name = params[:name]
  @age = params[:age]
  @base_speed = params[:base_speed]
  @final_speed = apply_conditions_to_horse

end

def run
  return "#{@name} is running"
end

def apply_conditions_to_horse
    if @age >= 7 
    age_condition = 0.8
  elsif (4..6).include?(@age)
    age_condition = 1
  else
    age_condition = 1.1
  end
  return (@base_speed * age_condition).to_i
end

end