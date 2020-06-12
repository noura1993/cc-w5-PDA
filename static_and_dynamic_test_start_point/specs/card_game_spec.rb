require('minitest/autorun')
require('minitest/reporters')
require_relative('../card_game')
require_relative('../card')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class CardGameTest < MiniTest::Test

    def setup
        @card1 = Card.new("spade", 6)
        @card2 = Card.new("heart", 10)
        @card_game = CardGame.new()
        @cards = [@card1, @card2]
    end

    def test_check_for_ace()
        result = @card_game.check_for_ace(@card1)
        assert_equal(false, result)
    end

    def test_highest_card()
        result = @card_game.highest_card(@card1, @card2)
        assert_equal(@card2, result)
    end

    def test_cards_total()
        result = CardGame.cards_total(@cards)
        assert_equal("You have a total of 16", result)
    end

end
