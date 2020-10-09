class RiderSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  attributes :id, :first_name, :last_name, :city_of_origin, :state_of_origin, :latitude, :longitude, :photo

  has_one :admin

  def photo
    if object.photo.attached?
      object.photo.service_url
    end
  end

end
