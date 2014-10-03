class Section < ActiveRecord::Base

  belongs_to :category
  belongs_to :template
  has_many :attributes
  accepts_nested_attributes_for :attributes

  validates :category,
    presence: true

  validates :name,
    presence: true

  validates :position,
    presence: true,
    numericality: true

end
