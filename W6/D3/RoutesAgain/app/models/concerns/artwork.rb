class Artwork < ActiveRecord
  validates :artist_id, uniqueness {scope: :title}

  belongs_to :artist,
    primary_key: :id,
    foreign_key: :artist_id,
    class_name: :User
end