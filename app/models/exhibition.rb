class Exhibition < ApplicationRecord
  belongs_to :user
  has_many_attached :photos
  has_rich_text :rich_text
end
