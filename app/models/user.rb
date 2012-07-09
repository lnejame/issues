class User < ActiveRecord::Base
  authenticates_with_sorcery!
  attr_accessible :username, :email, :password, :password_confirmation
  
  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
end
