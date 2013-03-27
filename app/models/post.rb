class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  attr_accessible :body, :head
end
