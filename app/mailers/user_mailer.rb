class UserMailer < ActionMailer::Base
  default from: "superdeep@thinker.com"

  def signup_confirmation(user)
    @user = user
    @greeting = "Thanks for signing up. Now think of some deep ideas to share!"

    mail to: user.email, subject: "Thanks for your depth"
  end
end
