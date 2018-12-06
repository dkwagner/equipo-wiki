require 'rails_helper'

RSpec.describe "articles/show", type: :view do
  before(:each) do
    @article = assign(:article, Article.create!(:title => "Hello", :body => "World"))
  end

  it "renders attributes in <p>" do
    render
  end
end
