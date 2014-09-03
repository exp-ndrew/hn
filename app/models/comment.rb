class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :commentable, :polymorphic => true
  has_many :comments, :as => :commentable
  # validates :user_id, :presence => true
  validates :article_id, :presence => true
end
