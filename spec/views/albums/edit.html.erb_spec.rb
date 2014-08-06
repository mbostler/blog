require 'rails_helper'

RSpec.describe "albums/edit", :type => :view do
  before(:each) do
    @album = assign(:album, Album.create!(
      :title => "MyString",
      :description => "MyText",
      :author_id => 1
    ))
  end

  it "renders the edit album form" do
    render

    assert_select "form[action=?][method=?]", album_path(@album), "post" do

      assert_select "input#album_title[name=?]", "album[title]"

      assert_select "textarea#album_description[name=?]", "album[description]"

      assert_select "input#album_author_id[name=?]", "album[author_id]"
    end
  end
end
