require 'spec_helper'

describe "municipios/edit.html.haml" do
  before(:each) do
    @municipio = assign(:municipio, stub_model(Municipio,
      :nome => "MyString",
      :uf => "",
      :cod_municipio => "MyString"
    ))
  end

  it "renders the edit municipio form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => municipios_path(@municipio), :method => "post" do
      assert_select "input#municipio_nome", :name => "municipio[nome]"
      assert_select "input#municipio_uf", :name => "municipio[uf]"
      assert_select "input#municipio_cod_municipio", :name => "municipio[cod_municipio]"
    end
  end
end
