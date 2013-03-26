class FileType < ActiveRecord::Base
  attr_accessible :extension, :mime, :name
  has_many :products
end
