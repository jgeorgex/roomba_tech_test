require 'hoover'

describe Hoover do
    describe '#get_start_coordinates' do
        it 'Adds coordinates of hoover start position to route' do
            hoover = Hoover.new
            expect(hoover.get_start_coordinates).to eq([1,2])
        end
    end

    describe '#convert_instructions_to_coordinates' do
        it 'Converts driving instructions to route coordinates' do
            hoover = Hoover.new
            expect(hoover.convert_instructions_to_coordinates).to start_with([1,3])
        end
    end
end
