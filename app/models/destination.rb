class Destination < ApplicationRecord
  validates :name, presence: true
  validates :city, presence: true
  validates :country, presence: true

  scope :search, -> (name_parameter) { where("name like ?", "%#{name_parameter}%")}
end
