require 'rails_helper'

RSpec.describe "article_histories/index", type: :view do
  before(:each) do
    assign(:article_histories, [
      ArticleHistory.create!(
        :article_id => "",
        :title => "Title",
        :body => "MyText"
      ),
      ArticleHistory.create!(
        :article_id => "",
        :title => "Title",
        :body => "MyText"
      )
    ])
  end

  it "renders a list of article_histories" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
