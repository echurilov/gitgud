require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef") }

  describe "#initialize" do
    it "sets a type" do
      expect(@type).to be true
    end

    it "sets a quantity" do
      expect(@quantity).to be true
    end

    it "starts ingredients as an empty array" do
      expect(@ingredients.class).to eq(Array)
    end

    it "raises an argument error when given a non-integer quantity" do
      expect(Dessert.new(type,quantity,chef)).to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      add_ingredient(ingredient)
      expect(@ingredients.include?(ingredient)).to eq(true)
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      expect(@ingredients).to recieve(shuffle!)
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      quantity1 = @quantity
      eat(5)
      expect(@quantity).to eq(quantity1-5)
    end

    it "raises an error if the amount is greater than the quantity" do
      quantity1 = @quantity
      eat(quantity1+5)
      expect(Dessert.new(type,quantity,chef)).to raise_error(StandardError)
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      expect (serve).to include("#{@chef.titleize}")
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      expect (@chef).to recieve(bake(self))
    end
  end
end
