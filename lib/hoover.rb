class Hoover

    def run_hoover
        print get_final_position[0]," ",get_final_position[1]
        return get_final_position[0]," ",get_final_position[1]
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
