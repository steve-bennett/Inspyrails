class Userdream < ActiveRecord::Base
  belongs_to :user
  belongs_to :dream
  has_many :tag_userdream
end
