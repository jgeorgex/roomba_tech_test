class Hoover

    def initialize
    @hoover_route = []
    # [[1,2],[1,3],[1,4],[2,4],[2,3],[3,3],[4,3],[4,2],[3,2],[3,3],[2,3],[1,3]]
    end

    def get_start_coordinates
        start_position = RoombaManager.new.get_start_position
        @hoover_route << start_position
        start_position
    end

    def convert_instructions_to_coordinates
        [1,3]
    end


end