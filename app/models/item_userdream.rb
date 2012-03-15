class ItemUserdream < ActiveRecord::Base
  belongs_to :item
  belongs_to :dream
end
