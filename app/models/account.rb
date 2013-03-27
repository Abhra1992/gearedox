class Account < ActiveRecord::Base
  belongs_to :experience
  belongs_to :country
  attr_accessible :address, :bio, :birthdate, :photo
end
