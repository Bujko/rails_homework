class Outfit < ApplicationRecord
  belongs_to :user
  belongs_to :stylist , class_name: "User", foreign_key: 'user_id'
  has_one :shoe, :class_name => "Cloth", :foreign_key => 'shoe_id'
  has_one :trouser, :class_name => "Cloth", :foreign_key => 'trouser_id'
  has_one :shirt, class_name: "Cloth", foreign_key: 'shirt_id'
end
