class Cat < ApplicationRecord
  validates_inclusion_of :cats, :color, :in ["black", "cinnamon", "blue", "lavender", "carmel", "amber", "cream"]
  validates_inclusion_of :cats, :sex, :in ["M", "F"]
end
