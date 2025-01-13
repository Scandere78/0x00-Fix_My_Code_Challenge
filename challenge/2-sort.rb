###
#
#  Sort integer arguments (ascending) 
#
###

result = []
ARGV.each do |arg|
  # Skip if not an integer
  next if arg !~ /^-?\d+$/

  # Convert to integer
  i_arg = arg.to_i

  # Insert at the right position
  inserted = false
  result.each_with_index do |val, index|
    if i_arg < val
      result.insert(index, i_arg)
      inserted = true
      break
    end
  end

  # Append if not inserted (i.e., it's the largest element)
  result << i_arg unless inserted
end

puts result
