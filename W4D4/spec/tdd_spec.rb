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
            it "doesn't return spurious pairs" do
                expect(arr.two_sum).to_not eq([[0, 4], [1, 1], [2, 3]])
            end
        end        
    end

    describe "Array#my_transpose" do
        subject(:matrix) {[
            [0, 1, 2],
            [3, 4, 5],
            [6, 7, 8]
          ]}

        context "valid input" do
            it "returns true if matrix is square" do         
                valid_dimension = matrix.all? {|row| row.length == matrix.length}
                expect(valid_dimension).to be true
            end
        end
        describe "valid output" do
            it "returns correct output" do
                expect(matrix.my_transpose).to eq([
                    [0, 3, 6],
                    [1, 4, 7],
                    [2, 5, 8]
                ])
            end
        end

        describe "doesn't rely on .transpose method" do
            it "doesn't use .transpose" do
                expect(matrix).to_not receive(:transpose)
                matrix.my_transpose
            end
        end
    end

    describe "Array#stock_picker" do
        #check we're not selling before we bought it
        #check output is correct
        
    end
end