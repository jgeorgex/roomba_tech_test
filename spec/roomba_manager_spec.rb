require 'roomba_manager'

describe '#get_input' do
    it 'gets the input of the text file' do
        expect(get_input).to include('NNESEESWNWW')
    end
end

describe '#get_room_dimensions' do
    it 'gets 5 5 from the input text file' do
        expect(get_room_dimensions).to eq([5,5])
    end
end

describe '#get_room_dimension_x' do
    it 'gets 5 from the input text file' do
        expect(get_room_dimension_x).to eq(5)
    end
end

describe '#get_room_dimension_y' do
    it 'gets 5 from the input text file' do
        expect(get_room_dimension_y).to eq(5)
    end
end

describe '#get_start_position' do
    it 'gets [1,2] from the input text file' do
        expect(get_start_position).to eq([1,2])
    end
end

describe '#get_driving_instructions' do
    it 'gets NNESEESWNWW from the input file' do
        expect(get_driving_instructions).to eq(["NNESEESWNWW"])
    end
end

describe '#get_dirt_patches' do 
    it 'gets [1,0],[2,2],[2,3]' do
        expect(get_dirt_patches).to eq([[1,0],[2,2],[2,3]])
    end
end
