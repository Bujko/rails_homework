class Outfit < ApplicationRecord
  belongs_to :user
  # belongs_to :stylist , class_name: "User", foreign_key: 'user_id'
  belongs_to :stylist, :class_name => 'User', :foreign_key => 'stylist_id', :validate => true
  belongs_to :shoe  # , :class_name => "Cloth", :foreign_key => 'shoe_id'
  belongs_to :trouser  #, :class_name => "Cloth", :foreign_key => 'trouser_id'
  belongs_to :cloth  # , class_name: "Cloth", foreign_key: 'shirt_id'
end
