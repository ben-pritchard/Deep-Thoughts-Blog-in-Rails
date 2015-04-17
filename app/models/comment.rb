class Comment < ActiveRecord::Base
  belongs_to :post
  belongs_to :user

  validates :body, :presence => true
  # after_create :sms_post_owner
  #
  # def sms_post_owner
  #   post = Post.find(self.post_id)
  #   user = User.find(post.user_id)
  #   RestClient::Request.new(
  #     :method => :post,
  #     :url => "https://api.twilio.com/2010-04-01/Accounts/#{ENV['TWILIO_ACCOUNT_SID']}/Messages.json",
  #     :user => ENV['TWILIO_ACCOUNT_SID'],
  #     :password => ENV['TWILIO_AUTH_TOKEN'],
  #     :payload => { :Body => "Someone commented on your post!",
  #                   :To => "5412311102",
  #                   :From => ENV['USER_NUMBER']
  #     }
  #   ).execute
  # end
end
