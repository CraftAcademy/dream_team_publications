class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

 geocoded_by :address, :lookup => lambda{ |obj| obj.geocoder_lookup }
  def geocoder_lookup
    if country_code == "SE"
      :sweden_edition
    else
      :world_edition
    end
  end
end
