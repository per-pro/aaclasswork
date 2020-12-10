require "rspec"
require "tdd"


describe Array do 
    describe "Array#my_uniq" do 
        subject(:arr) {[1, 2, 1, 3, 3]}
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
                expect(arr).to_not receive(:uniq)
                arr.my_uniq
            end
        end
    end

    describe "Array#two_sum" do 
        subject(:arr) {[-1, 0, 2, -2 , 1]}
        context "valid output" do
            it "gets correct output" do 
                expect(arr.two_sum).to eq([[0, 4], [2, 3]])
            end
            it "gets correct output" do 
                expect(arr.two_sum).to_not eq([[4, 0], [3, 2]])
            end
        end        

    end
end