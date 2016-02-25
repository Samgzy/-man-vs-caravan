class Caravan < ActiveRecord::Base
  belongs_to :user
  has_many :caravan_images, dependent: :destroy
  has_many :rentals

  validates :title, presence: true, length: { minimum: 10 }
  validates :street, :city, :zip_code, :country, :capacity, :price, :description, presence: true
  validates :tv, :shower, :coffee_machine, :kitchen, :wifi, inclusion: { in: [true, false] }

  mount_uploader :photo, PhotoUploader

  geocoded_by :address

  def address
    [street, city, zip_code, country].compact.join(', ')
  end

  after_validation :geocode, if: :address_changed?

  def address_changed?
    street_changed? || city_changed? || country_changed? || zip_code_changed?
  end

end
