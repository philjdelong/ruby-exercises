class Adult
  attr_reader :drinks

  def initialize
    @drinks = 0
  end

  def consume_an_alcoholic_beverage
    @drinks += 1
  end

  def sober?
    if @drinks <= 2
      return true
    else
      return false
    end

    if
      @drinks == 0
      "Adult should really be sober right now."
      else if
        @drinks == 1
        "Still sober."
        else if
          @drinks == 2
          "Not drunk yet."
          else if
            @drinks == 3
            "Yeah, OK. The adult is drunk."
            else
              @drinks >=3
              "The adult doesn't get more sober from drinking more."
            end
          end
        end
      end
    end

end
