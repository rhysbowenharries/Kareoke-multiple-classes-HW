class Guests

attr_reader :name, :credit, :fave_song, :entrance_fee, :beer_price, :champagne


  def initialize(name, credit, fave_song)
    @name = name
    @credit = credit
    @fave_song = fave_song

    @entrance_fee = 5
    @beer_price = 4
    @champagne = 20
  end


  def woo
    return "woo"
  end

  # def supply_fish(credit)
  #   return @fishes.pop
  # end

  def supply_entrance_fee
    deduction = @credit -= @entrance_fee
    return @entrance_fee
  end

  # def supply_product(product)
  #   @credit -= product
  #   p product
  # end
  def charge_beer
    deduction = @credit -= @beer_price
    return @beer_price
  end

  def charge_champagne
    if @champagne < @credit
      deduction = @credit -= @champagne
      return @champagne
    else
      return 0
    end
  end








end
