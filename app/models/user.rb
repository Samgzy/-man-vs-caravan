class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :caravans, dependent: :destroy
  has_many :rentals

  validates :first_name, :last_name, presence: true
  validates :description, :gender, :street, :city, :zip_code, presence: true
end
