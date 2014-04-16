class User < ActiveRecord::Base
  after_create :send_welcome_message
  has_secure_password
  has_many :tweets
  has_many :follows

  validates_uniqueness_of :handle

  def send_welcome_message
    UserMailer.signup_confirmation(self)
  end

  def greeting
    if Time.now.hour >= 17
      return "Good Evening"
    Time.now.hour > 12
      return "Good Afternoon"
    else
      return "Good Morning"
    end
  end
end
