class Room

attr_accessor :capacity, :number_of_guests, :song_array, :entry_fee, :spend_count

  def initialize(capacity, guest_list)
    @capacity = capacity
    @guest_list = guest_list
    # @number_of_guests = guest_list.count
    @song_array = []
    @spend_count = 0

  end

  def guest_counter
    return @guest_list.count
  end

  def add_song(song)
    @song_array += [(song)]
  end

  def remove_song(song)
    @song_array -= [(song)]
  end

  def add_guest(guests)
    if (capacity != @guest_list.count)
      @guest_list.push(guests)
      p @guest_list
    else
      return "Not Enough Room"
    end
  end

  def remove_guest(name)
    @guest_list.delete(name)
    # if @number_of_guests < 0
    #   @number_of_guests = 0
  end



  # def take_fish(credit)_from_river(customer)(river)
  #   fish = river.supply_fish()
  #   @belly << fish if !fish.nil?
  # end

  def charge_entrance_fee(guest)
    @spend_count += guest.supply_entrance_fee
  end

  def charge_champagne(guest)
    @spend_count += guest.charge_champagne
  end  

end
