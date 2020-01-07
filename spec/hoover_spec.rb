require 'hoover'

describe Hoover do
    describe '#get_start_coordinates' do
        it 'Adds coordinates of hoover start position to route' do
            hoover = Hoover.new
            expect(hoover.get_start_coordinates).to eq([1,2])
        end
    end

    describe '#run_hoover' do
        it 'returns the coordinates of the hoovers route' do
            hoover = Hoover.new
            expect(hoover.run_hoover).to eq([[1,2],[1,3],[1,4],[2,4],[2,3],[3,3],[4,3],[4,2],[3,2],[3,3],[2,3],[1,3]])
        end
    end    

    # describe '#get_current_position' do
    #     it 'gets current position of hoover' do
    #         hoover = Hoover.new
    #         expect(hoover.get_current_position).to eq([1,2])
    #     end
    # end

    describe '#get_next_position' do
        it 'gets next position of hoover and adds it to hoover_route' do
        hoover = Hoover.new
        expect(hoover.get_next_position).to eq([1,3])
        end
    end    

    describe 'get_move' do
        it 'gets the next move for the hoover' do
        hoover = Hoover.new
        expect(hoover.get_move).to eq("N")
        end
    end

    describe 'get_total_moves' do
        it 'calculates total number of positions hoover will have' do
            hoover = Hoover.new
            expect(hoover.get_total_moves).to eq(12)
        end
    end
end
