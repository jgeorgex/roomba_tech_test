class Hoover
    
    def initialize
        @hoover_route = []
    end
    
    def run_hoover
        calculate_route
        puts get_final_position
        puts count_patches_cleaned
        "----"
    end

    def get_final_position
        final_position_array = route.last
        final_position_string = "#{final_position_array[0]} #{final_position_array[1]}"
    end

    def get_start_position
        roomba_manager = RoombaManager.new
        roomba_manager = roomba_manager.get_start_position
        @hoover_route << roomba_manager
        roomba_manager
    end

    def route
        @hoover_route
    end

    def calculate_route
        get_start_position
        directions = get_directions
        directions_total = directions.length+1
        position = 0
            while position < directions_total
                next_direction = get_directions[position]
                current_coordinates = route.last
                     if next_direction == "E"
                        x = current_coordinates[0]+1
                        y = current_coordinates[1]
                        new_coordinates = Array.new
                        new_coordinates.insert(0, x)
                        new_coordinates.insert(1, y)
                        @hoover_route << new_coordinates
                        position += 1
                    elsif next_direction == "W"
                        x = current_coordinates[0]-1
                        y = current_coordinates[1]
                        new_coordinates = Array.new
                        new_coordinates.insert(0, x)
                        new_coordinates.insert(1, y)
                        @hoover_route << new_coordinates
                        position += 1
                    elsif next_direction == "N"
                        x = current_coordinates[0]
                        y = current_coordinates[1]+1
                        new_coordinates = Array.new
                        new_coordinates.insert(0, x)
                        new_coordinates.insert(1, y)
                        @hoover_route << new_coordinates
                        position += 1
                    elsif next_direction == "S"
                        x = current_coordinates[0]
                        y = current_coordinates[1]-1
                        new_coordinates = Array.new
                        new_coordinates.insert(0, x)
                        new_coordinates.insert(1, y)
                        @hoover_route << new_coordinates
                        position += 1
                    else
                        break
                    end 
                end
        return @hoover_route    
    end

    def get_directions
        roomba_manager = RoombaManager.new
        roomba_manager.get_driving_instructions
    end

    def count_patches_cleaned
        "1"
    end

end
