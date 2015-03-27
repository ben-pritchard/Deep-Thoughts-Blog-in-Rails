require 'rails_helper'

describe "the signin process" do
  it "signs in a user" do
    visit "/"
    click_on "Sign up"
    fill_in "Username", with: "Ben"
    fill_in "Email", with: "ben@ben.com"
    fill_in "Password", with: "asdf;lkj"
    fill_in "Password confirmation", with: "asdf;lkj"
    click_on "Create user"
  end
end
