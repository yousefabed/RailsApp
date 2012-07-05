require 'spec_helper'

describe "orders/index" do
  before(:each) do
    assign(:orders, [
      stub_model(Order,
        :order_name => "Order Name"
      ),
      stub_model(Order,
        :order_name => "Order Name"
      )
    ])
  end

  it "renders a list of orders" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Order Name".to_s, :count => 2
  end
end
