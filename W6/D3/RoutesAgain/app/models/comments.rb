class Comment < ApplicationRecord
  validates :commenter_id, :artwork_id, presence: true

  belongs_to :author,
    primary_key: :id,
    foreign_key: :commenter_id,
    class_name: :User

  
end