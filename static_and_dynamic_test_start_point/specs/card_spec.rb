require('minitest/autorun')
require('minitest/reporters')
require_relative('../card')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class CardTest < MiniTest::Test

    def setup
        @card = Card.new("spade", 6)
    end

    def test_getters()
        assert_equal("spade", @card.suit())
        assert_equal(6, @card.value())
    end

end
