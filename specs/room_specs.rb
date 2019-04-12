require("minitest/autorun")
require('minitest/rg')
require_relative("../guests")
require_relative("../songs")
require_relative("../room")

class RoomTest < MiniTest::Test

  def setup
    @room1 = Room.new(10, 5)
    @room2 = Room.new(15, 15)
    @room3 = Room.new(20, 0)

    @song1 = Song.new("Holiday", "Madonna")
    @song2 = Song.new("She Will Be Loved", "Maroon 5")
    @song3 = Song.new("That's Life", "Frank Sinatra")

    @guest1 = Guests.new("Teressa May", 45, "She Will Be Loved")
  end

  def test_room_capacity
    assert_equal(10, @room1.capacity)
  end

  def test_number_of_guests
    assert_equal(15, @room2.number_of_guests)
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
    @room1.add_guest(1)
    assert_equal(6, @room1.number_of_guests)
  end

  def test_add_guest__no_room
    @room2.add_guest(1)
    assert_equal(15, @room2.number_of_guests)
    assert_equal("Not Enough Room", @room2.add_guest(1))
  end

  def test_remove_guest
    @room1.remove_guest(2)
    assert_equal(3, @room1.number_of_guests)
  end

  def test_remove_guest
    @room1.remove_guest(7)
    assert_equal(0, @room1.number_of_guests)
  end  

end
