class User < ActiveRecord::Base
  has_many :comments
  has_many :articles
  # has_secure_password
  validates :name, :presence => true
  validates :email, :presence => true
end
