def check_speed(&block)
    current = Time.now
    yield 
    (Time.now - current).round(6)
end    

puts check_speed {(3 * 8) + (629532 / 42) + (9542230485 * 7)}