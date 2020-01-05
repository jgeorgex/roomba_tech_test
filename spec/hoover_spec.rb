require 'hoover'

describe Hoover do
    describe '#get_start_coordinates' do
        it 'Adds coordinates of hoover start position to route' do
            hoover = Hoover.new
            expect(hoover.get_start_coordinates).to eq([1,2])
        end
    end
end
