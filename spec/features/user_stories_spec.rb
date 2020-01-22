require 'hoover'

describe 'Hoover' do

    let(:hoover) { Hoover.new }

        # As a user
        # So I can see where my hoover is and what it has done
        # I want to see an output of final position and number of dirt patches cleaned

        it "prints final report of hoover activity" do
            expect do
                hoover.run_hoover 
            end.to output("1 3\n1\n").to_stdout
        end

end