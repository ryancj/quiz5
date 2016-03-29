class Bid < ActiveRecord::Base
  belongs_to :auction

  validates :price, presence: true,
    format: { with: /\A(\$)?(\d+)(\.|,)?\d{0,2}?\z/ },
    allow_blank: false, numericality: true
end
