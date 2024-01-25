def convert(temp, measure = "F")
    return "Temperature must be an integer" unless temp.class == Integer
    return "Temperature below Absolute Zero" if temp < -474
    
    if measure == "F"
        (temp - 32) * 5.0 / 9
        else
        (temp * 9.0 / 5) + 32
        end
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