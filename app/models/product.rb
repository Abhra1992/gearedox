class Product < ActiveRecord::Base
  belongs_to :file_type
  belongs_to :user
  attr_accessible :attachment, :checkouts, :description, :name, :screenshot
end
