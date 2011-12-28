require 'spec_helper'

describe "unidades/show.html.haml" do
  before(:each) do
    @unidade = assign(:unidade, stub_model(Unidade,
      :nome => "Nome",
      :endereco => "Endereco",
      :bairro => "Bairro",
      :telefone => "Telefone",
      :email => "Email",
      :responsavel => "Responsavel"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Endereco/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Bairro/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Telefone/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Email/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Responsavel/)
  end
end
