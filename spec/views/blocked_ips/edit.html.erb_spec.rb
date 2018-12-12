require 'rails_helper'

RSpec.describe "blocked_ips/edit", type: :view do
  before(:each) do
    @blocked_ip = assign(:blocked_ip, BlockedIp.create!(
      :ip => "MyString"
    ))
  end

  it "renders the edit blocked_ip form" do
    render

    assert_select "form[action=?][method=?]", blocked_ip_path(@blocked_ip), "post" do

      assert_select "input[name=?]", "blocked_ip[ip]"
    end
  end
end
