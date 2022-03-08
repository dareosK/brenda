class Article < ApplicationRecord
  # attr_accessor :slug
  belongs_to :user
  has_one_attached :photo
  has_rich_text :rich_body

  # friendly Id for friendly URLS
  extend FriendlyId
  friendly_id :title, use: :slugged
end
