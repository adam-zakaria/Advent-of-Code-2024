safe_count = 0
File.open('2_2.txt', 'r') do |f|
  f.each_line do |line|
    ascending = descending = t2 = false
    numbers = line.split.map(&:to_i) # Convert line to an array of integers

    # Test level, no removals
    ascending = numbers == numbers.sort # Check if not ascending
    descending = numbers == numbers.sort.reverse # Check if not descending
    in_range = numbers.each_cons(2).all? { |a, b| (1 <= (a-b).abs) && ((a-b).abs <= 3) } # Check if any adjacent element does not differ by AT LEAST 1 AND AT MOST 3

    if (ascending or descending) and in_range
      safe_count += 1
      puts "#{numbers} is safe"
      next # skip to the next line this one is safe
    end
    ascending = descending = t2 = false

    # Test level with removals
    for i in 0...numbers.length
      numbers_del = numbers.dup
      numbers_del.delete_at(i)
      
      ascending = numbers_del == numbers_del.sort # Check if not ascending
      descending = numbers_del == numbers_del.sort.reverse # Check if not descending
      in_range = numbers_del.each_cons(2).all? { |a, b| (1 <= (a-b).abs) && ((a-b).abs <= 3) } # Check if any adjacent element does not differ by AT LEAST 1 AND AT MOST 3
      if (ascending or descending) and in_range
        safe_count += 1  # Increment safe_count if any condition is true
        puts "#{numbers} is safe"
        break
      end
      ascending = descending = t2 = false
    end
  end
end

puts safe_count # 665