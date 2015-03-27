class User < ActiveRecord::Base

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates_presence_of :username
  after_create :send_welcome_email

  def send_welcome_email
    UserMailer.signup_confirmation(self).deliver_now
  end
end
