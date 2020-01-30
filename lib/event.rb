require './lib/standard_deviation'

class Event
  attr_reader :name, :ages
  def initialize(name, ages)
    @name = name
    @ages = ages
  end

  def max_age(ages)
    max_age = 0
    ages.each do |age|
      if age > max_age
        max_age = age
      end
    end
  end

  def min_age(ages)
    min_age = 200
    ages.each do |age|
      if age < min_age
        min_age = age
      end
    end
  end

  def average_age(ages)
    sums = 0
    nums = ages.length.to_f
    ages.each do |age|
      age.to_f += average
    end
    average = sums / nums
    average
  end

  def standard_deviation(ages)
  end
   



end
