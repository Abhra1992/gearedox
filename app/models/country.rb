class Country < ActiveRecord::Base
  attr_accessible :code, :name
  has_many :accounts
  has_many :users, :through => :accounts
end
