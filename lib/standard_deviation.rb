ages = [24, 30, 18, 20, 41]

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

require "Pry"; binding.pry

# Your code here for calculating the standard deviation

# When you find the standard deviation, print it out
