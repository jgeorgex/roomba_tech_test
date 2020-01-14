class RoombaManager

def initialize
@dirt_patches = []
end

def get_input
  input_array = IO.readlines("../robot_hoover/input.txt")
end

def get_room_dimensions
  room_dimensions = get_input[0].chop.split(" ").map(&:to_i)
end

def get_start_position
  start_position = get_input[1].chop.split(" ").map(&:to_i)

end

def get_driving_instructions
  driving_instructions = get_input[get_input.length-1]
end

def get_dirt_patches
  total_patches = get_input.length-3
  patch_count = 0
    while patch_count < total_patches 
      patch_position = patch_count+2
      @dirt_patches << get_input[patch_position].chop.split(" ").map(&:to_i)
      patch_count += 1
    end
  return @dirt_patches 
  end
end