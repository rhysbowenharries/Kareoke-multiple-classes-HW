require("minitest/autorun")
require('minitest/rg')
require_relative("../songs")


class SongsTest < MiniTest::Test

  def test_song_has_name
    @Song = Song.new("Fat Bottom Girls", "Queen")
    assert_equal("Fat Bottom Girls", @Song.name )
  end

  def test_song_has_artist
    @Song = Song.new("Fat Bottom Girls", "Queen")
    assert_equal("Queen", @Song.artist)
  end









end
