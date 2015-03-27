require "rails_helper"

describe "the add a post process" do
  let(:user) { FactoryGirl.create(:user) }

  before do
    sign_in(user)
  end

  it "adds a new post" do
    visit posts_path
    click_on "Add new post"
    fill_in "Title", :with => "To be, or not to be..."
    fill_in "Entry", :with => "that is the question"
    click_on "Submit"
    expect(page).to have_content "Deep Thoughts"
  end

  it "gives an error when no title is entered" do
    visit new_post_path
    click_on "Submit"
    expect(page).to have_content "errors"
  end
end
