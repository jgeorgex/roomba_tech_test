def get_input
  input_array = IO.readlines("./lib/input.txt")
end

def get_room_dimensions
  room_dimensions = get_input[0].chop.split(" ").map(&:to_i)
end

