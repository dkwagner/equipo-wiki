require 'rails_helper'

RSpec.describe "blocked_ips/show", type: :view do
  before(:each) do
    @blocked_ip = assign(:blocked_ip, BlockedIp.create!(
      :ip => "Ip"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Ip/)
  end
end
