require 'rails_helper'

RSpec.describe "blocked_ips/index", type: :view do
  before(:each) do
    assign(:blocked_ips, [
      BlockedIp.create!(
        :ip => "Ip"
      ),
      BlockedIp.create!(
        :ip => "Ip"
      )
    ])
  end

  it "renders a list of blocked_ips" do
    render
    assert_select "tr>td", :text => "Ip".to_s, :count => 2
  end
end
