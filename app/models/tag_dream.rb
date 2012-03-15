class TagDream < ActiveRecord::Base
  belongs_to :tag
  belongs_to :dream
end
