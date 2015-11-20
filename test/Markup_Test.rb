require 'minitest/autorun'
require_relative "../markup.rb"

describe Markup do

  describe "Label 1" do
    before do
      @label1 = "food"
    end

    it "markup 1" do
      Markup.get_material_markup(@label1).must_equal 13
    end

  end

  describe "Label 2" do
    before do
      @label2 = "drugs"
    end

    it "markup 2" do
      Markup.get_material_markup(@label2).must_equal 7.5
    end
  end

  describe "Label 3" do
    before do
      @label3 = "books"
    end

    it "markup 3" do
      Markup.get_material_markup(@label3).must_equal 0
    end
  end

  describe "Label Other" do
    before do
      @label4 = "clothes"
    end

    it "Material markup should be 0" do
      Markup.get_material_markup(@label4).must_equal 0
    end
  end
end