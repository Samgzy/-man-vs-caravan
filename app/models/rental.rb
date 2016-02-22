class Rental < ActiveRecord::Base
  belongs_to :caravan
  belongs_to :user
end
