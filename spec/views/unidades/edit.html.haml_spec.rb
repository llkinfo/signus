require 'spec_helper'

describe "unidades/edit.html.haml" do
  before(:each) do
    @unidade = assign(:unidade, stub_model(Unidade,
      :nome => "MyString",
      :endereco => "MyString",
      :bairro => "MyString",
      :telefone => "MyString",
      :email => "MyString",
      :responsavel => "MyString"
    ))
  end

  it "renders the edit unidade form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => unidades_path(@unidade), :method => "post" do
      assert_select "input#unidade_nome", :name => "unidade[nome]"
      assert_select "input#unidade_endereco", :name => "unidade[endereco]"
      assert_select "input#unidade_bairro", :name => "unidade[bairro]"
      assert_select "input#unidade_telefone", :name => "unidade[telefone]"
      assert_select "input#unidade_email", :name => "unidade[email]"
      assert_select "input#unidade_responsavel", :name => "unidade[responsavel]"
    end
  end
end
