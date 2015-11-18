require 'rails_helper'

RSpec.describe "comments/edit", type: :view do
  before(:each) do
    @comment = assign(:comment, Comment.create!(
      :name => "MyString",
      :title => "MyString",
      :description => "MyText",
      :mei => nil
    ))
  end

  it "renders the edit comment form" do
    render

    assert_select "form[action=?][method=?]", comment_path(@comment), "post" do

      assert_select "input#comment_name[name=?]", "comment[name]"

      assert_select "input#comment_title[name=?]", "comment[title]"

      assert_select "textarea#comment_description[name=?]", "comment[description]"

      assert_select "input#comment_mei_id[name=?]", "comment[mei_id]"
    end
  end
end
