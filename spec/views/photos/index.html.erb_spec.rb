require 'rails_helper'

RSpec.describe "photos/index", :type => :view do
  before(:each) do
    assign(:photos, [
      Photo.create!(
        :title => "Title",
        :album_id => 1
      ),
      Photo.create!(
        :title => "Title",
        :album_id => 1
      )
    ])
  end

  it "renders a list of photos" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
