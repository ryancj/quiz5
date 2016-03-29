class Auction < ActiveRecord::Base
  has_many :bids, dependent: :destroy

  validates :title, presence: true, uniqueness: true
  validates :details, presence: true
  validates :reserve_price, :presence => true,
    :format => { :with => /\A(\$)?(\d+)(\.|,)?\d{0,2}?\z/ }
end
