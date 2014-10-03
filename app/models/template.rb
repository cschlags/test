class Template < ActiveRecord::Base

  has_many :sections

  validates :name,
    presence: true

  validates :slug,
    presence: true,
    format: { with: /[a-z0-9_]+/i },
    uniqueness: true

end
