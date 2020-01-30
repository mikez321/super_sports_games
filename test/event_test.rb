require 'minitest/autorun'
require 'minitest/pride'
require './lib/games'
require './lib/event'

class EventTest < Minitest::Test
  def test_events_exist
    event = Event.new("Curling", [24, 30, 18, 20, 41])

    assert_instance_of Event, event
  end

  def test_it_has_a_name
    event = Event.new("Curling", [24, 30, 18, 20, 41])

    assert_equal "Curling", event.name
  end

  def test_ages_are_passed_as_an_arry
    event = Event.new("Curling", [24, 30, 18, 20, 41])

    assert_equal [24, 30, 18, 20, 41], event.ages
  end

  def test_there_is_a_max_and_min_age_and_average_ages
    event = Event.new("Curling", [24, 30, 18, 20, 41])

    assert_equal 41, event.max_age
    assert_equal 18, event.min_age
    assert_equal 26.6, event.average_age
  end

  def test_event_can_return_standard_deviation
    event = Event.new("Curling", [24, 30, 18, 20, 41])

    assert 8.28, event.standard_deviation_age
  end


end
