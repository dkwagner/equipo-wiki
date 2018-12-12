require 'rails_helper'

RSpec.describe "BlockedIps", type: :request do
  describe "GET /blocked_ips" do
    it "works! (now write some real specs)" do
      get blocked_ips_path
      expect(response).to have_http_status(200)
    end
  end
end
