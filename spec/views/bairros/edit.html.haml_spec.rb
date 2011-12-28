require 'spec_helper'

describe "bairros/edit.html.haml" do
  before(:each) do
    @bairro = assign(:bairro, stub_model(Bairro,
      :nome => "MyString"
    ))
  end

  it "renders the edit bairro form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => bairros_path(@bairro), :method => "post" do
      assert_select "input#bairro_nome", :name => "bairro[nome]"
    end
  end
end
