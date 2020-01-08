require 'hoover'

describe Hoover do

    describe '#run_hoover' do
        it 'returns the hoover final position count of dirt cleaned up' do
            hoover = Hoover.new
            expect(hoover.run_hoover).to eq("The final poition is [0,0] and 1 piece of dirt was cleaned up")
        end
    end

    describe '#get_final_position' do
        it 'gets the final position of the hoover' do
            hoover = Hoover.new
            expect(hoover.get_final_position).to eq([0,0])
        end
    end

end
