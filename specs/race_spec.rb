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

    @horse1 = Horse.new("Lightning", 4, 7)
    @horse2 = Horse.new("Toasted Peanut", 7, 5)
    @horses = [@horse1, @horse2]

    @race1 = Race.new("Musselburgh", 5, @horses)
    @race2 = Race.new("Hamilton", 9, @horses)


  end

  def test_race_has_name_and_length
    assert_equal("Hamilton", @race2.name)
    assert_equal(5, @race1.length)
  end

  def test_horses_are_racing
    assert_equal("Lightning and Toasted Peanut are racing at Musselburgh", @race1.race_running)

  end


end