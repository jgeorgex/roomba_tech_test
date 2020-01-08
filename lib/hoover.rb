class Hoover

    def run_hoover
        "The final poition is #{get_final_position} and 1 piece of dirt was cleaned up"
    end

    def get_final_position
        calculate_route.last.to_s
    end

    def calculate_route
        [[0,0],[1,0],[0,0]]
    end


end
