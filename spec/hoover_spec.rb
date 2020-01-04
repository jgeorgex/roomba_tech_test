require 'hoover'

describe Hoover do
    describe '#hoover_route' do
        it 'returns coordinates of route hoover takes' do
            hoover = Hoover.new
            expect(hoover.hoover_route).to eq([[1,2],[1,3],[1,4],[2,4],[2,3],[3,3],[4,3],[4,2],[3,2],[3,3],[2,3],[1,3]])
        end
    end
end
