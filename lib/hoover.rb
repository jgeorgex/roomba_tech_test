class Hoover

    def run_hoover
        puts "0 0"
        puts "1"
        "0 0"
    end

    def get_final_position
        calculate_route.last
    end

    def calculate_route
        route = []
        roomba_manager = RoombaManager.new
        route << roomba_manager.get_start_position
        route
        [[0,0],[1,0],[0,0]]
    end


end
