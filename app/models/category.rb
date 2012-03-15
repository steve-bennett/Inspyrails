class Category < ActiveRecord::Base
  
  has_many :tag_category
end
