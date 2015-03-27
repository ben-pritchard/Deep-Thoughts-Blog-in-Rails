require 'rails_helper'

describe "the login process" do
  let(:user) { FactoryGirl.create(:user) }

  it "logs in a user" do
    visit "/"
    click_on "Login"
    fill_in "Username", with: user.username
    fill_in "Password", with: user.password
    click_on "Log in"
  end
end
