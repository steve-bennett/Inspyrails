class Dream < ActiveRecord::Base
  
  has_many :tag_dream
  has_many :userdream
end
