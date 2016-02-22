class CaravanImage < ActiveRecord::Base
  belongs_to :caravan

  validates :url, presence: true
end
