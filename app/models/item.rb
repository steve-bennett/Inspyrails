class Item < ActiveRecord::Base
  belongs_to :type
  has_many :meta_item
  has_many :tag_item
  has_many :item_userdream
end
