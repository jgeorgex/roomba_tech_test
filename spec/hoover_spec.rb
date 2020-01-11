require 'hoover'

describe Hoover do

    describe '#run_hoover' do
        it 'returns the hoover final position count of dirt cleaned up' do
            hoover = Hoover.new
            expect(hoover.run_hoover).to include('----') 
        end
    end

    describe '#get_final_position' do
        it 'gets the final position of the hoover' do
            hoover = Hoover.new
            hoover.run_hoover
            expect(hoover.get_final_position).to eq("1 3")
        end
    end

    describe '#get_start_position' do
        it 'gets the start position of the hoover' do   
            hoover = Hoover.new
            expect(hoover.get_start_position).to eq([1,2])
        end
    end

    describe '#calculate_route' do
        it 'calculates route of hoover' do
            hoover = Hoover.new
            expect(hoover.calculate_route).to eq([[1, 2], [1, 3], [1, 4], [2, 4], [2, 3], [3, 3], [4, 3], [4, 2], [3, 2], [3, 3], [2, 3], [1, 3]])
        end
    end

    describe '#get_directions' do
        it 'gets the directions the hoover will follow' do
            hoover = Hoover.new
            expect(hoover.get_directions).to eq("NNESEESWNWW")
        end
    end

    describe '#count_patches_cleaned' do
        it 'counts the number of dirt patches cleaned' do
            hoover = Hoover.new
            expect(hoover.count_patches_cleaned).to eq("1")
        end
    end


end
