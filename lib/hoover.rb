class Hoover

    @hoover_route = []
    # [[1,2],[1,3],[1,4],[2,4],[2,3],[3,3],[4,3],[4,2],[3,2],[3,3],[2,3],[1,3]]

    def get_start_coordinates
        RoombaManager.new.get_start_position
    end
end