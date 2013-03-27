class Experience < ActiveRecord::Base
  attr_accessible :name
  has_many :accounts
  has_many :users, :through => :accounts
end
