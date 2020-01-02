require 'roomba_manager'

describe '#get_input' do
    it 'gets the input of the text file' do
        expect(get_input).to include('NNESEESWNWW')
    end
end

describe '#get_room_dimensions' do
    it 'gets 5 5 from the input text file' do
        expect(get_room_dimensions).to eq('5 5')
    end
end


