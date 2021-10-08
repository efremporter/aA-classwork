class Cat < ApplicationRecord
  validates_inclusion_of :color, in: ["Black", "Cinnamon", "Blue", "Lavender", "Carmel", "Amber", "Cream"]
  validates_inclusion_of :sex, in: ["M", "F"]
end
