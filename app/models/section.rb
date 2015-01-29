class Section < ActiveRecord::Base

  belongs_to :category
  belongs_to :template
  has_many :components
  accepts_nested_attributes_for :components

  validates :category,
    presence: true

  validates :name,
    presence: true

  validates :position,
    presence: true,
    numericality: true

end
