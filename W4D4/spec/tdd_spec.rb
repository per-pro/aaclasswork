require "rspec"
require "tdd"


describe Array do 
    subject(:arr) {[1, 2, 1, 3, 3]}
    describe "Array#my_uniq" do 
        context "validate input" do
            it "self must be an array" do 
                expect(arr.is_a?(Array)).to be true
            end
        end
        #subject.uniq == [1, 2, 3]
        describe "correctly finds unique elements" do
            it "finds unique elements" do
                expect(arr.my_uniq).to eq([1, 2, 3])
            end
        end
        #dont want method to use built-in .uniq method
        describe "doesn't rely on .uniq method" do
            it "doesn't use .uniq" do
                expect(arr).to_not receive(:uniq).with(arr)
            end
        end
    end
end