require 'spec_helper'

describe "municipios/new.html.haml" do
  before(:each) do
    assign(:municipio, stub_model(Municipio,
      :nome => "MyString",
      :uf => "",
      :cod_municipio => "MyString"
    ).as_new_record)
  end

  it "renders new municipio form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => municipios_path, :method => "post" do
      assert_select "input#municipio_nome", :name => "municipio[nome]"
      assert_select "input#municipio_uf", :name => "municipio[uf]"
      assert_select "input#municipio_cod_municipio", :name => "municipio[cod_municipio]"
    end
  end
end
