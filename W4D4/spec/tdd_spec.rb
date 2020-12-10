require "rspec"
require "tdd"


describe Array do 
    subject(:arr) {Array.new}
    describe "Array#my_uniq" do 
        context "validate input" do
            it "self must be an array" do 
                expect(arr.is_a?(Array)).to be true
            end
        end
    end
end