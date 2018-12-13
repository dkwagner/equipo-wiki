require 'rails_helper'

RSpec.describe "BlockedIps", type: :request do
  describe "GET /blocked_ips" do
    it "Correct, unauthorized user redirected" do
      get blocked_ips_path
      expect(response).to have_http_status(302)
    end
  end
end
