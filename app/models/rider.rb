class Rider < ApplicationRecord
  validates :first_name, :last_name, :city_of_origin, :state_of_origin, :latitude, :longitude, :admin_id, presence: true
  belongs_to :admin
end
