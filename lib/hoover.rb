class Hoover

    def initialize
      @hoover_route = []
    # [[1,2],[1,3],[1,4],[2,4],[2,3],[3,3],[4,3],[4,2],[3,2],[3,3],[2,3],[1,3]]
    end

    def run_hoover
        get_start_coordinates
        [[1,2],[1,3],[1,4],[2,4],[2,3],[3,3],[4,3],[4,2],[3,2],[3,3],[2,3],[1,3]]
    end

    def get_start_coordinates
        start_position = RoombaManager.new.get_start_position
        @hoover_route << start_position
        start_position
    end

    def get_current_position
        run_hoover
        @hoover_route.last
    end

    def get_next_position
        current_position = get_current_position
        current_position_x = current_position[0]
        current_position_y = current_position[1]
        move = get_move
        next_position = Array.new
        if move = "N"
            next_position = next_position.insert(0,current_position_x,current_position_y+1)
        end
        next_position
    end

    def get_move
        move = RoombaManager.new.get_driving_instructions
        position =  @hoover_route.length
        move[position]
    end

    def get_total_moves
        total_moves = RoombaManager.new.get_driving_instructions
        total_moves = total_moves.length+1
        return total_moves
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