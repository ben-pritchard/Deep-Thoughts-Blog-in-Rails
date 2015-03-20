require "rails_helper"

describe "the edit a post process" do
  it "edits a post" do
    visit posts_path
    click_on "Add new post"
    fill_in "Title", :with => "To be, or not to be..."
    fill_in "Entry", :with => "that is the question"
    click_on "Submit"
    click_on "To be, or not to be..."
    click_on "Edit"
    fill_in "Entry", :with => "that is the question: Whether 'tis nobler in the mind to suffer the slings and arrows of outrageous fortune or to take arms against a sea of troubles, and by opposing end them. To die- to sleep- no more;"
    click_on "Submit"
    expect(page).to have_content "Date posted:"
  end
end
