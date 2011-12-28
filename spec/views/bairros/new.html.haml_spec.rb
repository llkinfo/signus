require 'spec_helper'

describe "bairros/new.html.haml" do
  before(:each) do
    assign(:bairro, stub_model(Bairro,
      :nome => "MyString"
    ).as_new_record)
  end

  it "renders new bairro form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => bairros_path, :method => "post" do
      assert_select "input#bairro_nome", :name => "bairro[nome]"
    end
  end
end
