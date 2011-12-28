require 'spec_helper'

describe "unidades/index.html.haml" do
  before(:each) do
    assign(:unidades, [
      stub_model(Unidade,
        :nome => "Nome",
        :endereco => "Endereco",
        :bairro => "Bairro",
        :telefone => "Telefone",
        :email => "Email",
        :responsavel => "Responsavel"
      ),
      stub_model(Unidade,
        :nome => "Nome",
        :endereco => "Endereco",
        :bairro => "Bairro",
        :telefone => "Telefone",
        :email => "Email",
        :responsavel => "Responsavel"
      )
    ])
  end

  it "renders a list of unidades" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Endereco".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Bairro".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Telefone".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Responsavel".to_s, :count => 2
  end
end
