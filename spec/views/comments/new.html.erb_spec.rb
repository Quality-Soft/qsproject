require 'rails_helper'

RSpec.describe "comments/new", type: :view do
  before(:each) do
    assign(:comment, Comment.new(
      :name => "MyString",
      :title => "MyString",
      :description => "MyText",
      :mei => nil
    ))
  end

  it "renders new comment form" do
    render

    assert_select "form[action=?][method=?]", comments_path, "post" do

      assert_select "input#comment_name[name=?]", "comment[name]"

      assert_select "input#comment_title[name=?]", "comment[title]"

      assert_select "textarea#comment_description[name=?]", "comment[description]"

      assert_select "input#comment_mei_id[name=?]", "comment[mei_id]"
    end
  end
end
