class Hoover
    
    attr_reader :roomba

    def initialize(roomba = RoombaManager.new)
        @roomba = roomba
        @hoover_route = []
    end
    
    def run_hoover
        calculate_route
        puts get_final_position
        puts count_patches_cleaned
        "Thanks for using the robot hoover"
    end

    def get_final_position
        final_position_array = route.last
        final_position_string = "#{final_position_array[0]} #{final_position_array[1]}"
    end

    def get_start_position
        @hoover_route << roomba.get_start_position
    end

    def route
        @hoover_route
    end

    def calculate_route
        get_start_position
        directions_total = get_directions.length+1
        position = 0
            while position < directions_total
                next_direction = get_directions[position]
                current_coordinates = route.last
                     if next_direction == "E"
                        x = current_coordinates[0]+1
                        y = current_coordinates[1]
                        new_coordinates = Array.new
                        new_coordinates.insert(0, x).insert(1, y)
                        new_coordinates = check_valid_move(new_coordinates)
                        @hoover_route << new_coordinates
                        position += 1
                    elsif next_direction == "W"
                        x = current_coordinates[0]-1
                        y = current_coordinates[1]
                        new_coordinates = Array.new
                        new_coordinates.insert(0, x).insert(1, y)
                        new_coordinates = check_valid_move(new_coordinates)
                        @hoover_route << new_coordinates
                        position += 1
                    elsif next_direction == "N"
                        x = current_coordinates[0]
                        y = current_coordinates[1]+1
                        new_coordinates = Array.new
                        new_coordinates.insert(0, x).insert(1, y)
                        new_coordinates = check_valid_move(new_coordinates)
                        @hoover_route << new_coordinates
                        position += 1
                    elsif next_direction == "S"
                        x = current_coordinates[0]
                        y = current_coordinates[1]-1
                        new_coordinates = Array.new
                        new_coordinates.insert(0, x).insert(1, y)
                        new_coordinates = check_valid_move(new_coordinates)
                        @hoover_route << new_coordinates
                        position += 1
                    else
                        break
                    end 
                end
        return @hoover_route    
    end

    def get_room_dimensions
        roomba.get_room_dimensions
    end

    def get_directions
        roomba.get_driving_instructions
    end

    def count_patches_cleaned
        intersection = get_dirt_patches & route
        intersection.count.to_s
    end

    def get_dirt_patches
        roomba_manager = RoombaManager.new
        roomba_manager.get_dirt_patches
    end

    def check_valid_move(new_coordinates)
        if new_coordinates[0] > 5
            new_coordinates[0] = new_coordinates[0]-1
            return new_coordinates
        elsif new_coordinates[0] < 0
            new_coordinates[0] = new_coordinates[0]+1
            return new_coordinates
        elsif new_coordinates[1] > 5
            new_coordinates[1] = new_coordinates[1]-1
            return new_coordinates
        elsif new_coordinates[1] < 0
            new_coordinates[1] = new_coordinates[1]+1
            return new_coordinates
        else
            return new_coordinates
        end
    end

end
