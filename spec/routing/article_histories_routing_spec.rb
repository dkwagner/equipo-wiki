require "rails_helper"

RSpec.describe ArticleHistoriesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/article_histories").to route_to("article_histories#index")
    end

    it "routes to #new" do
      expect(:get => "/article_histories/new").to route_to("article_histories#new")
    end

    it "routes to #show" do
      expect(:get => "/article_histories/1").to route_to("article_histories#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/article_histories/1/edit").to route_to("article_histories#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/article_histories").to route_to("article_histories#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/article_histories/1").to route_to("article_histories#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/article_histories/1").to route_to("article_histories#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/article_histories/1").to route_to("article_histories#destroy", :id => "1")
    end
  end
end
