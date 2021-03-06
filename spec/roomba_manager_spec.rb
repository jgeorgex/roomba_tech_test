require 'roomba_manager'

describe RoombaManager do

describe '#get_input' do
    it 'gets the input of the text file' do
        roomba_manager = RoombaManager.new
        expect(roomba_manager.get_input).to include('NNESEESWNWW')
    end
end

describe '#get_room_dimensions' do
    it 'gets 5 5 from the input text file' do
        roomba_manager = RoombaManager.new
        expect(roomba_manager.get_room_dimensions).to eq([5,5])
    end
end

describe '#get_start_position' do
    it 'gets [0,0] from the input text file' do
        roomba_manager = RoombaManager.new
        expect(roomba_manager.get_start_position).to eq([1,2])
    end
end

describe '#get_driving_instructions' do
    it 'gets EW from the input file' do
        roomba_manager = RoombaManager.new
        expect(roomba_manager.get_driving_instructions).to eq("NNESEESWNWW")
    end
end

describe '#dirt_patch_count' do
    it '#calculates how many dirt patches there are' do
        roomba_manager = RoombaManager.new
        expect(roomba_manager.dirt_patch_count).to eq(3)
    end
end

describe '#get_dirt_patches' do 
    it 'gets [[1,0],[2,2],[2,3]] from the input file' do
        roomba_manager = RoombaManager.new
        expect(roomba_manager.get_dirt_patches).to eq([[1,0],[2,2],[2,3]])
    end
end
end