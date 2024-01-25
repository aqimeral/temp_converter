def convert(temp, measure = "F")
    return "Temperature must be an integer" unless temp.class == Integer
    return "Temperature below Absolute Zero" if below_absolute_zero?(temp, measure)
    
    if measure == "F"
        (temp - 32) * 5.0 / 9
        else
        (temp * 9.0 / 5) + 32
        end
end

def below_absolute_zero?(temp, measure)
    (temp < -454 and measure == "F") or (temp < -270 and measure == "C")
end

# TESTS
puts "Converting Fahrenheit to Celsius"
puts convert(32)
puts convert(50)
puts convert(212)
puts convert("zero")
puts convert(-500)

puts "Converting Celsius to Fahrenheit"
puts convert(0, "C")
puts convert(10, "C")
puts convert(100, "C")
puts convert(-280, "C")