class Client < ActiveRecord::Base

  has_attached_file :logo

  validates :name,
    presence: true

end
