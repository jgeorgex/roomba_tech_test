require 'hoover'

describe Hoover do

    describe '#run_hoover' do
        it 'returns the hoover final position count of dirt cleaned up' do
            hoover = Hoover.new
            expect(hoover.run_hoover).to eq("The final poition is [0,0] and 1 piece of dirt was cleaned up")
        end
    end

end
