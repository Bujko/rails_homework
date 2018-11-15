class Outfit < ApplicationRecord
  belongs_to :user
  belongs_to :stylist , class_name: "User", foreign_key: 'user_id'
  has_many :outfit_shoes, class_name: "Cloth", foreign_key: 'id'
  has_many :outfit_trousers, class_name: "Cloth", foreign_key: 'id'
  has_many :outfit_shirt, class_name: "Cloth", foreign_key: 'id'
end
