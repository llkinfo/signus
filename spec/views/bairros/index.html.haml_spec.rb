require 'spec_helper'

describe "bairros/index.html.haml" do
  before(:each) do
    assign(:bairros, [
      stub_model(Bairro,
        :nome => "Nome"
      ),
      stub_model(Bairro,
        :nome => "Nome"
      )
    ])
  end

  it "renders a list of bairros" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
  end
end
