@room_dimensions = []

File.open("input.txt").each do |line|
  @room_dimensions << line
  puts @room_dimensions
  break
end
