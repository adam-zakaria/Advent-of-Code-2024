safe_count = 0
File.open('2_1.txt', 'r') do |f|
  f.each_line do |line|
    ascending = descending = t2 = false
    numbers = line.split.map(&:to_i) # Convert line to an array of integers

    # Check if not ascending
    ascending = numbers == numbers.sort

    # Check if not descending
    descending = numbers == numbers.sort.reverse

    # Check if any adjacent element does not differ by AT LEAST 1 AND AT MOST 3
    in_range = numbers.each_cons(2).all? { |a, b| (1 <= (a-b).abs) && ((a-b).abs <= 3) }

    # Increment safe_count if any condition is true
    safe_count += 1 if (ascending or descending) and in_range
    ascending = descending = t2 = false
    print numbers, "\n"
    print "ascending #{ascending} descending #{descending} in_range #{in_range}\n"
    print "*********************\n"
  end
end

puts safe_count # 631