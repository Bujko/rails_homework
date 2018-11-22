class Cloth < ApplicationRecord
  belongs_to :user
  #belongs_to :stylist , class_name: "User", foreign_key: 'user_id'
  has_many :shoe, class_name: "Outfit", foreign_key: 'shoe_id'
  has_many :trouser, class_name: "Outfit", foreign_key: 'trouser_id'
  has_many :shirt, class_name: "Outfit", foreign_key: 'shirt_id'
end
