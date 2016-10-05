require('minitest/autorun')
require('minitest/rg')
require_relative('../horse')

class TestHorse < Minitest::Test


  def setup

    # horses = {
    #   horse1: {
    #     name: "Lightning",
    #     age: 4,
    #     speed: 7 
    #     },
    #     horse2: { 
    #       name: "Toasted Peanut",
    #       age: 7,
    #       speed: 5
    #     }
# 
      # }

      @horse1 = Horse.new(name:"Lightning", age:4, speed:7)
      @horse2 = Horse.new(name:"Toasted Peanut", age:7, speed:5)
      @horse3 = Horse.new(name:"Craig's Horse", age:20, speed:2)


    # @horse1 = Horse.new(name: "Lightning",age:  )

    end

    def test_horse
      assert_equal("Lightning", @horse1.name)
      assert_equal(7, @horse2.age)
      assert_equal(7, @horse1.speed)
    end

    def test_horse_can_run
      assert_equal("Lightning is running", @horse1.run)
    end





  end