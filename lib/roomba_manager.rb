class RoombaManager

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
  driving_instructions = get_input[get_input.length-1]
end

def get_dirt_patches
  dirt_patches = []
  dirt_patches_counter = 2
  dirt_patches_total = get_input.length-3
  while dirt_patches_counter <= 4 do
  dirt_patches << get_input[dirt_patches_counter].chop.split(" ").map(&:to_i)
  dirt_patches_counter+=1
  end
  return dirt_patches
end
end