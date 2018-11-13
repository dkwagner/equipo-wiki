require 'rails_helper'

RSpec.describe "ArticleHistories", type: :request do
  describe "GET /article_histories" do
    it "works! (now write some real specs)" do
      get article_histories_path
      expect(response).to have_http_status(200)
    end
  end
end
