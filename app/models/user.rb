class User < ActiveRecord::Base
  has_secure_password
  has_many :tweets

  validates_uniqueness_of :handle




end
