class Tag < ActiveRecord::Base
  has_many :tag_dream
  has_many :tag_category
  has_many :tag_item
  has_many :tag_userdream
end
