class Exhibition < ApplicationRecord
  belongs_to :user
  has_many_attached :photos
  has_rich_text :rich_text

  # for friendly URLS
  extend FriendlyId
  friendly_id :title, use: [:slugged, :finders]
end
