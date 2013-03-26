class FileType < ActiveRecord::Base
  attr_accessible :extension, :mime, :name
end
