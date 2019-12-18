require 'roomba_manager'

describe '#roomba_room_dimensions' do
  it 'takes room dimensions from input file' do
    roomba_manager = RoombaManager.new
    expect(roomba_manager.roomba_room_dimensions(5)).to eq(5)
  end
end
