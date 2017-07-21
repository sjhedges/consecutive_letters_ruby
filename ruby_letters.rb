def menu
  puts 'Welcome to the Menu!'
  puts '1) Go To Type Your Input'
  puts '2) Exit'
  input = gets.strip.to_i
  case input
  when 1
    logic
  when 2
    exit
  else
    puts 'Invalid input, please try again.'
    menu
  end
end

def logic
  puts 'Input A Phrase: '
  input = gets.strip
  puts "Your Phrase: #{input}"
  arr = input.split(" ")
  puts "First: #{arr}"
  new_arr = arr.map { |s| s.split("")}
  x = new_arr[0][0]
  puts "Second: #{new_arr}"
  new_arr.group_by{ |e| e }.select { |k, v| v.size > 1 }.map(&:first)
  freq_arr = new_arr.sort.chunk{ |e| e }.select { |e, chunk| chunk.size > 1 }.map(&:first)
  puts "Third: #{freq_arr}"
  # puts "The word with the most consecutive letters is... #{word}"
  menu
end

menu
