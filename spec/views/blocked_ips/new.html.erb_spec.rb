require 'rails_helper'

RSpec.describe "blocked_ips/new", type: :view do
  before(:each) do
    assign(:blocked_ip, BlockedIp.new(
      :ip => "MyString"
    ))
  end

  it "renders new blocked_ip form" do
    render

    assert_select "form[action=?][method=?]", blocked_ips_path, "post" do

      assert_select "input[name=?]", "blocked_ip[ip]"
    end
  end
end
