require("minitest/autorun")
require('minitest/rg')
require_relative("../guests")


class GuestsTest < MiniTest::Test

  def setup
    @guests = Guests.new("Teressa May", 45, "She Will Be Loved")
  end

  def test_guest_has_name
    assert_equal("Teressa May", @guests.name)
  end

  def test_guest_has_credit
    assert_equal(45, @guests.credit)
  end

  def test_guest_has_fave_song
    assert_equal("She Will Be Loved", @guests.fave_song)
  end



  # def test_can_supply_fish
  #   fish = @river.supply_fish
  #   assert_equal(@fish3.name, fish.name)
  # end

  def test_can_supply_entrance_fee
    @guests.supply_entrance_fee
    assert_equal(40, @guests.credit)
  end

  # def test_can_supply_product
  #   @guests.supply_product(@champagne)
  #   assert_equal(25, @guests.credit)
  # end

  def test_can_charge_beer
    @guests.charge_beer
    assert_equal(41, @guests.credit)
  end

  def test_charge_champagne
    @guests.charge_champagne
    assert_equal(25, @guests.credit)
  end

  def test_charge_champagne__no_money
    @guests.supply_entrance_fee
    @guests.charge_beer
    @guests.charge_champagne
    @guests.charge_champagne
    assert_equal(16, @guests.credit)
    assert_equal("Insufficient Funds", @guests.charge_champagne )
  end
end
