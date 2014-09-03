class Article < ActiveRecord::Base
  belongs_to :user
  has_many :comments, :as => :commentable
  validates :content, :presence => true
  validates :title, :presence => true

  accepts_nested_attributes_for :comments
end
