class Event
  attr_reader :name, :ages
  def initialize(name, ages)
    @name = name
    @ages = ages
  end

  def max_age
    max_age = 0
    ages.each do |age|
      if age > max_age
        max_age = age
      end
    end
    max_age
  end

  def min_age
    min_age = 200
    ages.each do |age|
      if age < min_age
        min_age = age
      end
    end
    min_age
  end

  def average_age
    total_age = ages.sum.to_f
    number_ages = ages.length.to_f
    average = total_age / number_ages
    average
  end

  

end
