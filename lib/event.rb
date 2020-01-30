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

  def standard_deviation_age
    sum_ages = ages.sum
    num_ages = ages.length
    average = sum_ages.to_f / num_ages.to_f
    step_4_ary = []
    step_4 = ages.each do |num|
               step_4_ary << (num.to_f - average).round(2)
             end
    step_4_ary_squared = []
    step_4_ary.each do |num|
      step_4_ary_squared << (num ** 2).round(2)
    end
    step_5 = 0
    step_4_ary_squared.each do |num|
      step_5 += num
    end
    step_6 = step_5.round(1)
    step_7 = step_6/ages.count.to_f
    standard_deviation = Math.sqrt(step_7).round(2)
    standard_deviation
  end

end
