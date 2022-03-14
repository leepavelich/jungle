require 'rails_helper'

RSpec.describe Product, type: :model do
  describe "Validations" do
    before(:each) do
      @product = Product.new do |p|
        p.name = "Widget"
        p.price = 19.99
        p.quantity = 34
        p.category = Category.new(name: "Fake Category")
      end
    end


    it "is valid with four required fields" do
      expect(@product).to be_valid
    end

    it "is not valid without a name" do
      @product.name = nil
      expect(@product).to_not be_valid
    end

    it "is not valid without a price" do
      @product.price_cents = nil
      expect(@product).to_not be_valid
    end

    it "is not valid without a quantity" do
      @product.quantity = nil
      expect(@product).to_not be_valid
    end

    it "is not valid without a category" do
      @product.category = nil
      expect(@product).to_not be_valid
    end
  end
end
