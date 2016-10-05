class Horse

  attr_reader :name, :age, :speed

def initialize(name, age, speed)
  @name = name
  @age = age
  @speed = speed
end

def run
  return "#{@name} is running"
end

end