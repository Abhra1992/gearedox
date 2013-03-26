class User < ActiveRecord::Base
  attr_accessible :firstname, :lastname, :phone, :username
end
