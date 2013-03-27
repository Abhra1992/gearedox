class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :firstname, :lastname, :phone, :username
  
  has_one :account
  has_one :country, :through => :account
  has_one :experience, :through => :account
  has_many :products
  has_many :reviews
  has_many :posts
  has_many :comments

  def Country
    country.name
  end

  def Experience
    experience.name
  end
end
