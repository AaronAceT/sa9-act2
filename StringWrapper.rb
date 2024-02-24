RSpec.describe StringWrapper do
    describe "#reverse" do
      it "reverses the string" do
        string = "hello"
        expect(StringWrapper.new(string).reverse).to eq("olleh")
      end
    end
  
    describe "#upcase" do
      it "converts the string to uppercase" do
        string = "hello"
        expect(StringWrapper.new(string).upcase).to eq("HELLO")
      end
    end
  
    describe "#downcase" do
      it "converts the string to lowercase" do
        string = "HELLO"
        expect(StringWrapper.new(string).downcase).to eq("hello")
      end
    end
  end
  