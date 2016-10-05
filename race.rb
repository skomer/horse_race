class Race

  attr_reader :name, :length, :horses

  def initialize(name, length, horses)
    @name = name
    @length = length
    @horses = horses
  end


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

  def race_results
    results = []
    horses_sorted_by_final_speed = @horses.sort_by { |horse| horse.final_speed }
    for horse in horses_sorted_by_final_speed
      results.push(horse.name)
    end
    return results.reverse

  end

end