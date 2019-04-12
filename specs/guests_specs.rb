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






end
