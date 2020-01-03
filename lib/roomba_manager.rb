def get_input
  input_array = IO.readlines("./lib/input.txt")
end

def get_room_dimensions
  room_dimensions = get_input[0].chop.split(" ").map(&:to_i)
end

def get_room_dimension_x
  get_room_dimensions[0]
end

def get_room_dimension_y
  get_room_dimensions[1]
end

def get_start_position
  start_position = get_input[1].chop.split(" ").map(&:to_i)
end

def get_driving_instructions
  driving_instructions = ["NNESEESWNWW"]
end