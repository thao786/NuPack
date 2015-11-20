class Markup
  @@flat = 5.00
  @@person = 1.2
  @@material_markup = {"pharmaceuticals"=>7.5, "food"=>13.0, "Electronics"=>2.0, "others"=>0.0}

  # Oversimplified method to extract markup percentage
  # There should be a library of keywords to match markup categories
  def Markup.get_material_markup(label)
    material = case label
      when "drugs", "advil", "medicine"
        "pharmaceuticals"
      when "food", "fruit", "candy", "soda"
        "food"
       when "Electronics", "ipad", "iphone"
        "Electronics"
      else
        "others"
               end

    @@material_markup[material]
  end

  def self.flat
    @@flat
  end

  def self.person
    @@person
  end
end