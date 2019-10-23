require 'minitest/autorun'
require 'minitest/pride'
require './lib/ogre'
require './lib/human'

class OgreTest < Minitest::Test
  def setup
    @ogre = Ogre.new('Brak')
    @human = Human.new
  end

  def test_it_exists
    assert_instance_of Ogre, @ogre
  end

  def test_it_has_a_name
    assert_equal 'Brak', @ogre.name
  end

  def test_it_can_live_somewhere_by_default
    # skip
    assert_equal 'Swamp', @ogre.home
  end

  def test_it_doesnt_have_to_live_in_a_swamp
    # skip
      @ogre = Ogre.new('Brak', 'The Ritz')
    assert_equal 'The Ritz', @ogre.home
  end

  def test_it_can_meet_humans
    # skip
    assert_equal 'Jane', @human.name
    @ogre.encounter(@human)
    assert_equal 1, @human.encounter_counter
  end

  def test_humans_only_notices_ogre_every_third_encounter
    # skip

    @ogre.encounter(@human)
    @ogre.encounter(@human)
    refute @human.notices_ogre?

    @ogre.encounter(@human)
    assert @human.notices_ogre?
  end

  def test_human_notices_ogre_the_sixth_time
    # skip

    6.times do
      @ogre.encounter(@human)
    end

    assert @human.notices_ogre?
  end

  def test_it_can_swing_a_club
    # skip
    @ogre.swing_at(@human)

    assert_equal 1, @ogre.swings
  end

  def test_it_swings_the_club_when_the_human_notices_it
    # skip
    @ogre.encounter(@human)
    assert_equal 0, @ogre.swings
    refute @human.notices_ogre?

    @ogre.encounter(@human)
    @ogre.encounter(@human)

    assert_equal 1, @ogre.swings
    assert @human.notices_ogre?
  end

  def test_it_hits_the_human_every_second_time_it_swings
    # skip

    6.times do
      @ogre.encounter(@human)
    end

    assert_equal 6, @ogre.encounter_counter
    assert_equal 2, @ogre.swings
    assert @human.knocked_out?
  end

  def test_human_wakes_up_when_ogre_apologizes
    # skip

    @ogre.apologize(@human)
    refute @human.knocked_out?
  end
end
