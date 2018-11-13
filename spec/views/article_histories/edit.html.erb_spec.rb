require 'rails_helper'

RSpec.describe "article_histories/edit", type: :view do
  before(:each) do
    @article_history = assign(:article_history, ArticleHistory.create!(
      :article_id => "",
      :title => "MyString",
      :body => "MyText"
    ))
  end

  it "renders the edit article_history form" do
    render

    assert_select "form[action=?][method=?]", article_history_path(@article_history), "post" do

      assert_select "input[name=?]", "article_history[article_id]"

      assert_select "input[name=?]", "article_history[title]"

      assert_select "textarea[name=?]", "article_history[body]"
    end
  end
end
