class Attribute < ActiveRecord::Base

  belongs_to :section

  validates :section,
    presence: true

  validates :name,
    presence: true

  validates :value,
    presence: true

end
