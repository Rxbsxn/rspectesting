require "./calculator"
describe Calculator do
  describe ".add" do
    context "giving empty string" do
      it "return zero" do
          expect(Calculator.add("")).to eql(0)

      end
    end
    context "giving number" do
      it "return number 3" do
        expect(Calculator.add("3")).to eql(3)
      end
      it "return number 12" do
        expect(Calculator.add("12")).to eql(12)
      end
    end

    context "adding two number" do
      it "return sum of 4 + 10" do
        expect(Calculator.add("4, 10")).to eql(14)
      end
      it "return sum 10 + 34" do
        expect(Calculator.add("10, 34")).to eql(44)
      end

      context "adding more numbers" do
        it "return sum of 10 + 25 + 34" do
          expect(Calculator.add("10, 25, 34")).to eql(69)
        end
        it "return sum of 10 + 10 + 10 + 10 +10 " do
          expect(Calculator.add("10, 10, 10, 10, 10")).to eql(50)
        end
      end

    end
  end
  describe ".substract" do
    context "substract two numbers" do
      it "return sub of 9 - 4" do
        expect(Calculator.substract("9, 4")).to eql(5)
      end
      it "return sub 10 - 10" do
        expect(Calculator.substract("10, 10")).to eql(0)
      end
    end
    context "substract more numbers" do
      it "return sub of 10 - 10 - 10 - 20 - 30" do
          expect(Calculator.substract("10, 10, 10, 20, 30")).to eql(-60)
      end
    end
end
end
