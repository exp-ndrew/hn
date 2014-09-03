class Article < ActiveRecord::Base
  belongs_to :user
  has_many :comments, :as => :commentable
  validates :content, :presence => true
  validates :title, :presence => true
  validates :votes, :presence => true
  # validates :user_id, :presence => true
end
