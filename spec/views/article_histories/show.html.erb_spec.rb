require 'rails_helper'

RSpec.describe "article_histories/show", type: :view do
  before(:each) do
    @article_history = assign(:article_history, ArticleHistory.create!(
      :article_id => "",
      :title => "Title",
      :body => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
  end
end
