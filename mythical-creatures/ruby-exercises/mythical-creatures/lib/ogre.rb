class Ogre
  attr_reader :name, :home
  attr_accessor :swings, :encounter_counter

  def initialize(name, home = 'Swamp')
    @name = name
    @home = home
    @swings = 0
    @encounter_counter = 0
  end

  def encounter(human_instance)
    human_instance.encounter_counter += 1
    @encounter_counter += 1
    if human_instance.notices_ogre? == true
      swing_at(human_instance)
    end
  end

  def swing_at(human_instance)
    @swings += 1
    if @swings % 2 == 0
      human_instance.hit
    end
  end

  def apologize(human_instance)
    human_instance.knocked_out = false
  end

end
