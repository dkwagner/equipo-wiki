require 'rails_helper'

RSpec.describe "article_histories/new", type: :view do
  before(:each) do
    assign(:article_history, ArticleHistory.new(
      :article_id => "",
      :title => "MyString",
      :body => "MyText"
    ))
  end

  it "renders new article_history form" do
    render

    assert_select "form[action=?][method=?]", article_histories_path, "post" do

      assert_select "input[name=?]", "article_history[article_id]"

      assert_select "input[name=?]", "article_history[title]"

      assert_select "textarea[name=?]", "article_history[body]"
    end
  end
end
