class Account < ActiveRecord::Base
  belongs_to :experience
  belongs_to :country
  belongs_to :user
  attr_accessible :address, :bio, :birthdate, :photo, :country_id, :experience_id
end
