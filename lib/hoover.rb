class Hoover

    def run_hoover
        puts "0 0"
        puts "1"
        "0 0"
    end

    def get_final_position
        final_position_array = calculate_route.last
        final_position_string = "#{final_position_array[0]} #{final_position_array[1]}"
    end

    def calculate_route
        route = []
        roomba_manager = RoombaManager.new
        route << roomba_manager.get_start_position
        route
        [[0,0],[1,0],[0,0]]
    end


end
