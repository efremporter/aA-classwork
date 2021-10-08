class Cat < ApplicationRecord
  validates_inclusion_of :color, :in ["black", "cinnamon", "blue", "lavender", "carmel", "amber", "cream"]
end
