require 'rails_helper'

def sign_in(user)
  visit '/'
  click_on "Login"
  fill_in "Username", with: user.username
  fill_in "Password", with: user.password
  click_on "Log in"
end
