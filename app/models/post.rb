class Post < ActiveRecord::Base
  has_many :comments
  belongs_to :user

  validates :title, :presence => true
  validates :entry, :presence => true

  has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/

  # after_create :email_user
  #
  # def email_user
  #   RestClient::Request.new(
  #     method: :post,
  #     url: "https://api:#{ENV['MAILGUN_ACCOUNT_KEY']}@api.mailgun.net/v3/#{ENV['MAILGUN_ACCOUNT_DOMAIN']}/messages",
  #     payload: { subject: "Thanks for posting your deep thought!",
  #                from: "Billy Bob <mailgun@#{ENV['MAILGUN_ACCOUNT_DOMAIN']}>",
  #                to: "ben.s.pritchard@gmail.com",
  #                text: "The post was received and mailgun works like a boss!"
  #     }
  #   ).execute
  # end
end
