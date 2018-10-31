require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef", name: "Christine") }
  subject(:dessert) {Dessert.new("cake", 5, chef)}

  describe "#initialize" do
    it "sets a type" do
      expect(dessert.type).to eq("cake")
    end

    it "sets a quantity" do
      expect(dessert.quantity).to eq(5)
    end

    it "starts ingredients as an empty array" do
      expect(dessert.ingredients).to eq([])
    end

    it "raises an argument error when given a non-integer quantity" do
      expect {Dessert.new("cake", "error", chef)}.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      expect(dessert.add_ingredient(:butter)).to eq([:butter])
      expect(dessert.add_ingredient(:sugar)).to eq([:butter, :sugar])
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      ingredients = [:flour, :eggs, :chocolate, :vanilla]
      ingredients.each {|el| dessert.add_ingredient(el)}
      expect(dessert.ingredients).to eq([:flour, :eggs, :chocolate, :vanilla])
      dessert.mix!
      expect(dessert.ingredients).to_not eq([:flour, :eggs, :chocolate, :vanilla])

    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      expect(dessert.eat(2)).to eq(3)
    end

    it "raises an error if the amount is greater than the quantity" do
      expect{dessert.eat(10)}.to raise_error("not enough left!")
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      allow(chef).to receive(:titleize).and_return("Chef Christine the Great Baker")
      expect(dessert.serve).to eq("Chef Christine the Great Baker has made 5 cakes!")
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      expect(chef).to receive(:bake).with(dessert)
      dessert.make_more
    end
  end
end
