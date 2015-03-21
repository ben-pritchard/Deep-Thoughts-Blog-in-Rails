require "rails_helper"

describe "edit a comment process" do
  it "edits a comment" do
    visit posts_path
    click_on "Add new post"
    fill_in "Title", :with => "To be, or not to be..."
    fill_in "Entry", :with => "that is the question"
    click_on "Submit"
    click_on "To be, or not to be..."
    click_on "Leave a comment"
    fill_in "Body", :with => "I would rather be."
    click_on "Comment"
    click_on "Edit"
    fill_in "Body", :with => "Man, I would way rather be!"
    click_on "Comment"
    expect(page).to have_content "Date posted"
  end
end
