class Article < ActiveRecord::Base
  belongs_to :user
  has_many :comments, :as => :commentable
  validates :content, :presence => true
  validates :title, :presence => true

  accepts_nested_attributes_for :comments,
                                reject_if:lambda { |attrs|
                                  attrs.all? { |key, value| value.blank? }
                                },
                                allow_destroy:true
end
