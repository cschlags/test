class Installation < ActiveRecord::Base

  validates :label,
    presence: true

  validates :latitude,
    presence: true

  validates :longitude,
    presence: true  

end
