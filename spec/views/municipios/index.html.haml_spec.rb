require 'spec_helper'

describe "municipios/index.html.haml" do
  before(:each) do
    assign(:municipios, [
      stub_model(Municipio,
        :nome => "Nome",
        :uf => "",
        :cod_municipio => "Cod Municipio"
      ),
      stub_model(Municipio,
        :nome => "Nome",
        :uf => "",
        :cod_municipio => "Cod Municipio"
      )
    ])
  end

  it "renders a list of municipios" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Cod Municipio".to_s, :count => 2
  end
end
