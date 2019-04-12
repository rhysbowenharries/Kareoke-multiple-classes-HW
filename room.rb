class Room

attr_accessor :capacity, :number_of_guests, :song_array

  def initialize(capacity, number_of_guests)
    @capacity = capacity
    @number_of_guests = number_of_guests
    @song_array = []


  end

  def add_song(song)
    @song_array += [(song)]
    p @song_array
  end

  def remove_song(song)
    @song_array -= [(song)]
  end

  def add_guest(number)
    if (capacity - number_of_guests) > number
      @number_of_guests += number
    else
      return "Not Enough Room"
    end
  end

  def remove_guest(number)
    @number_of_guests -= number
    if @number_of_guests < 0
      @number_of_guests = 0
    end   
  end








end
