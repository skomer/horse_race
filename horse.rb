class Horse

  attr_reader :name, :age, :speed

def initialize(params)
  @name = params[:name]
  @age = params[:age]
  @speed = params[:speed]
end

def run
  return "#{@name} is running"
end

end