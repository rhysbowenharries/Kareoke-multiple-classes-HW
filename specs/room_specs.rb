require("minitest/autorun")
require('minitest/rg')
require_relative("../guests")
require_relative("../songs")
require_relative("../room")

class RoomTest < MiniTest::Test

  def setup

    @guest1 = Guests.new("Teressa May", 45, "She Will Be Loved")
    @guest2 = Guests.new("Jeremy Hunt", 30, "Not A Girl")
    @guest3 = Guests.new("Borris Johnson", 22, "Champagne Supernova")
    @guest4 = Guests.new("Tony Blair", 55, "Girls Just Wanna Have Fun")

    @room1 = Room.new(10, [@guest1, @guest2, @guest3])
    @room2 = Room.new(3, [@guest1, @guest2])
    @room3 = Room.new(3, [@guest1, @guest2, @guest3])

    @song1 = Song.new("Holiday", "Madonna")
    @song2 = Song.new("She Will Be Loved", "Maroon 5")
    @song3 = Song.new("That's Life", "Frank Sinatra")




  end

  def test_room_capacity
    assert_equal(10, @room1.capacity)
  end

  def test_guest_counter
    assert_equal(3, @room1.guest_counter)
  end

  def test_add_song_method
    @room3.add_song(@song1)
    assert_equal(1, @room3.song_array.count)
  end

  def test_add_song_method__2
    @room3.add_song(@song1)
    @room3.add_song(@song2)
    assert_equal(2, @room3.song_array.count)
  end

  def test_remove_song
    @room3.add_song(@song1)
    @room3.add_song(@song2)
    @room3.remove_song(@song2)
    assert_equal(1, @room3.song_array.count)
  end

  def test_remove_song__song_not_there
    @room3.remove_song(@song1)
    assert_equal(0, @room3.song_array.count)

  end


  def test_add_guest
    @room2.add_guest(@guest3)
    assert_equal(3, @room2.guest_counter)
  end

  def test_add_guest__no_room
    @room3.add_guest(@guest4)
    assert_equal(3, @room3.guest_counter)
    assert_equal("Not Enough Room", @room3.add_guest(@guest4))
  end

  def test_remove_guest
    @room1.remove_guest(@guest1)
    assert_equal(2, @room1.guest_counter)
  end

  def test_remove_guest__no_such_guest
    @room2.remove_guest(@guest3)
  end

  def test_pay_fee
    assert_equal()
  end


end
