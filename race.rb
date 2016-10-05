class Race

  attr_reader :name, :length, :horses

  def initialize(name, length, horses)
    @name = name
    @length = length
    @horses = horses
  end

  # def race_has_horses
  #   for horse in @horses
  #     puts horse
  #   end
  # end

# This is a candidate for refactoring
  def race_running
    string = ""
    index = 0
    for horse in @horses
      if index == ((@horses.length) - 1)
        string += " and #{horse.name} are racing at #{@name}"
      else
        string += ", #{horse.name}"
        index += 1
      end
    end
    return string[2..-1]
  end

#   def race_results
#     results = []

# for horse in horses
#   results.push(horse[:name])


#   end

end