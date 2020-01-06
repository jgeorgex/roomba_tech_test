class Hoover

    def initialize
      @hoover_route = []
    # [[1,2],[1,3],[1,4],[2,4],[2,3],[3,3],[4,3],[4,2],[3,2],[3,3],[2,3],[1,3]]
    end

    def run_hoover
        [[1,2],[1,3],[1,4],[2,4],[2,3],[3,3],[4,3],[4,2],[3,2],[3,3],[2,3],[1,3]]
    end

    def get_start_coordinates
        start_position = RoombaManager.new.get_start_position
        @hoover_route << start_position
        start_position
    end

    def convert_instructions_to_coordinates
        instructions = RoombaManager.new.get_driving_instructions
        get_start_coordinates
        current_location = @hoover_route
        new_location = Array.new
        instructions_location = 0
        current_location_x = current_location[0][0]
        current_location_y = current_location[0][1]

            if instructions[instructions_location] == "N"
                new_location.insert(0,current_location_x,current_location_y+1)
            elsif instructions[instructions_location] == "E"
                new_location.insert(0,current_location_x+1,current_location_y)
            elsif instructions[instructions_location] == "S"
                new_location.insert(0,current_location_x,current_location_y-1)
            elsif instructions[instructions_location] == "W"
                new_location.insert(0,current_location_x-1,current_location_y)
            end
        
        @hoover_route << new_location
        new_location
        
    end

end