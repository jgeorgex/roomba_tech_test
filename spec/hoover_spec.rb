require 'hoover'

describe Hoover do

    describe '#run_hoover' do
        it 'returns the hoover final position count of dirt cleaned up' do
            hoover = Hoover.new
            expect(hoover.run_hoover).to include("0 0") 
        end
    end

    describe '#get_final_position' do
        it 'gets the final position of the hoover' do
            hoover = Hoover.new
            expect(hoover.get_final_position).to eq([0, 0])
        end
    end

    describe '#calculate_route' do
        it 'calculates route of hoover' do
        hoover = Hoover.new
        expect(hoover.calculate_route).to eq([[0,0],[1,0],[0,0]])
        end
    end

end
