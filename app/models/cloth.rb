class Cloth < ApplicationRecord
  belongs_to :user
  #belongs_to :stylist , class_name: "User", foreign_key: 'user_id'
  has_many :shoes, class_name: "Outfit", foreign_key: 'shoes_id'
  has_many :trousers, class_name: "Outfit", foreign_key: 'trousers_id'
  has_many :shirt, class_name: "Outfit", foreign_key: 'shirt_id'
end
