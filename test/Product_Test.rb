require 'minitest/autorun'
require_relative "../product.rb"

describe Product do

  describe "Input 1" do
    before do
      @label1 = "food"
      @product1 = Product.new(1299.99, 3, @label1)
    end

    it "output 1" do
      @product1.get_product_cost.must_equal 1591.58
    end
  end

  describe "Input 2" do
    before do
      @label2 = "drugs"
      @product1 = Product.new(5432.00, 1, @label2)
    end

    it "output 2" do
      @product1.get_product_cost.must_equal 6199.81
    end
  end

  describe "Input 3" do
    before do
      @label3 = "books"
      @product1 = Product.new(12456.95, 4, @label3)
    end

    it "output 3" do
      @product1.get_product_cost.must_equal 13707.63
    end
  end
end