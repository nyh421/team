class Item < ApplicationRecord
  has_one_attached :image
  belongs_to :genre

  with_options presence: true do
    validates :name
    validates :opinion
    validates :image
    validates :price_without_tax
    validates :is_active
    validates :genre_id
  end
end
