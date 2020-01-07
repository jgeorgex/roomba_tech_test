class Hoover

    def initialize
      @hoover_route = []
    # [[1,2],[1,3],[1,4],[2,4],[2,3],[3,3],[4,3],[4,2],[3,2],[3,3],[2,3],[1,3]]
    end

    def run_hoover
        get_start_coordinates
        position_counter = 0
        total_moves = get_total_moves
        while position_counter <= total_moves do
        position_counter = position_counter+1
       

        
        end
        @hoover_route
        # [[1,2],[1,3],[1,4],[2,4],[2,3],[3,3],[4,3],[4,2],[3,2],[3,3],[2,3],[1,3]]
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
        if move == "N"
            next_position = next_position.insert(0,current_position_x,current_position_y+1)
        elsif move == "E"
            next_position = next_position.insert(0,current_position_x+1,current_position_y)
        elsif move == "S"
            next_position = next_position.insert(0,current_position_x,current_position_y-1)
        elsif move == "W"
            next_position = next_position.insert(0,current_position_x-1,current_position_y)
        end
   
        return next_position
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

end