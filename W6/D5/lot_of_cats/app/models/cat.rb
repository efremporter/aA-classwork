class Cat < ApplicationRecord
  validates_inclusion_of :cats, :color, in: ["Black", "Cinnamon", "Blue", "Lavender", "Carmel", "Amber", "Cream"]
  validates_inclusion_of :cats, :sex, in: ["M", "F"]
end
