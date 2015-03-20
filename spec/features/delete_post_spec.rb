require "rails_helper"

describe "delete a post process" do
  it "deletes a post" do
    visit posts_path
    click_on "Add new post"
    fill_in "Title", :with => "To be, or not to be..."
    fill_in "Entry", :with => "that is the question"
    click_on "Submit"
    click_on "To be, or not to be..."
    click_on "Delete post"
    expect(page).to have_content "yet"
  end

end
