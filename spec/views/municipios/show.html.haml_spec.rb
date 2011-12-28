require 'spec_helper'

describe "municipios/show.html.haml" do
  before(:each) do
    @municipio = assign(:municipio, stub_model(Municipio,
      :nome => "Nome",
      :uf => "",
      :cod_municipio => "Cod Municipio"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Cod Municipio/)
  end
end
