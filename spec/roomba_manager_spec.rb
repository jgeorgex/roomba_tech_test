require 'roomba_manager'

describe '#get_input' do
    it 'gets the input of the text file' do
        expect(get_input).to include('5 5')
    end
end

