class Adult

  def initialize(drinks)
    @drinks = 0
  end

  def consume_an_alcoholic_beverage
     @drinks += 1
  end

  def sober?
    if
      @drinks = 0
      p "Adult should really be sober right now."
    else if
      @drinks = 1
      p "Still sober."
    else if
      @drinks = 2
      p "Not drunk yet."
    else if
      @drinks = 3
      p "Yeah, OK. The adult is drunk."
    else
      p "The adult doesn't get more sober from drinking more."
    end
  end

end
