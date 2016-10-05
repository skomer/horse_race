require('minitest/autorun')
require('minitest/rg')
require_relative('../race')
require_relative('../horse')


class TestRace < Minitest::Test

  def setup
    # races = {
    #   race1: {
    #     name: "Musselburgh",
    #     length: 5
    #   },
    #   race2: {
    #     name: "Hamilton",
    #     length: 9
    #   }
    # }

    @horse1 = Horse.new(name:"Lightning", age:4, base_speed:7)
    @horse2 = Horse.new(name:"Toasted Peanut", age:7, base_speed:5)
    @horse3 = Horse.new(name:"Craig's Horse", age:20, base_speed:2)
    @two_horses = [@horse1, @horse2]
    @three_horses = [@horse1, @horse2, @horse3]

    @race1 = Race.new("Musselburgh", 5, @two_horses)
    @race2 = Race.new("Hamilton", 9, @three_horses)
  end

  def test_race_has_name_and_length
    assert_equal("Hamilton", @race2.name)
    assert_equal(5, @race1.length)
  end

  def test_multiple_horses_racing
    assert_equal("Lightning, Toasted Peanut and Craig's Horse are racing at Hamilton", @race2.race_running)
    assert_equal("Lightning and Toasted Peanut are racing at Musselburgh", @race1.race_running)
  end

  def test_race_results
    assert_equal(["Lightning", "Toasted Peanut", "Craig's Horse"], @race2.race_results)
    assert_equal(["Lightning", "Toasted Peanut"], @race1.race_results)
  end

end