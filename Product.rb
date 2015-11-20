require_relative './Markup'

class Product
  def initialize(base_price, people_count, label)
    @base_price = base_price
    @people_count = people_count
    @label = label
  end

  def get_product_cost
    material_markup =  Markup.get_material_markup @label
    flat = @base_price * (1 + Markup.flat/100)
    extra_markup = (@people_count *  Markup.person + material_markup)/100
    (flat * (1 + extra_markup)).round(2)
  end
end
