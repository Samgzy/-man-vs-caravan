class Caravan < ActiveRecord::Base
  belongs_to :user
  has_many :caravan_images, dependent: :destroy
  has_many :rentals

  validates :title, presence: true, length: { minimum: 10 }
  validates :street, :city, :zip_code, :country, :capacity, :price, :description, presence: true
  validates :tv, :shower, :coffee_machine, :kitchen, :wifi, inclusion: { in: [true, false] }
end
