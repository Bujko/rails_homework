class Cloth < ApplicationRecord
  belongs_to :user
  belongs_to :stylist , class_name: "User", foreign_key: 'user_id'
  #belongs_to :outfit_shoes, class_name: "Outfit", foreign_key: 'shoes_id'
  #belongs_to :outfit_trousers, class_name: "Outfit", foreign_key: 'trousers_id'
  #belongs_to :outfit_shirt, class_name: "Outfit", foreign_key: 'shirt_id'
end
