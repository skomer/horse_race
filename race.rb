class Race

  attr_reader :name, :length, :horses

  def initialize(name, length, horses)
    @name = name
    @length = length
    @horses = horses
  end

  def race_running
    return "#{@horses[0].name} and #{@horses[1].name} are racing at #{@name}"
  end

end