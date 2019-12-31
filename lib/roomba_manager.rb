def get_input
  file = File.open("./lib/input.txt")
  file.read
end

def get_room_dimensions
  file = File.open("./lib/input.txt", &:readline)
  file[0...-1]
end
