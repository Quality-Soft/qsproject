require 'rails_helper'


RSpec.feature "AddNewComments", :type => :feature do
  it "should require the user log in before adding a post" do
    password = "123456789"
    u = create( :user, password: password, password_confirmation: password )

    visit new_post_path

    within "#new_user" do
      fill_in "user_email", with: u.email
      fill_in "user_password", with: password
    end

    click_button "Log in"

    within "#new_comment" do
      fill_in "comment_name", with: "Comment title"
    end

    click_link_or_button "Create Comment"

    expect( Post.count ).to eq(1)
    expect( Post.first.name).to eq( "Comments title")
  end
end

