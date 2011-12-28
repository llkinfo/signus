require 'spec_helper'

describe "familia/edit.html.haml" do
  before(:each) do
    @familium = assign(:familium, stub_model(Familium,
      :nis => "MyString",
      :logradouro => "MyString",
      :numero => "MyString",
      :complemento => "MyString",
      :bairro => "MyString",
      :municipio => "MyString",
      :cep => "MyString",
      :telefone => "MyString",
      :tipo_telefone => "MyString",
      :tempo_residencia_municipio => 1,
      :tempo_residencia_casa => 1,
      :forma_ocupacao => "MyString",
      :grau_risco => 1,
      :caracteristica_casa => "MyString",
      :total_comodos => 1,
      :abastecimento_agua => "MyString",
      :acondicionamento_agua => "MyString",
      :qualidade_agua => "MyString",
      :esgotamento_sanitario => "MyString",
      :instalacoes_sanitarias => "MyString",
      :vaso => 1,
      :pia => 1,
      :chuveiro => 1,
      :energia_eletrica => "MyString",
      :destinacao_lixo => "MyString",
      :ativo => 1
    ))
  end

  it "renders the edit familium form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => familia_path(@familium), :method => "post" do
      assert_select "input#familium_nis", :name => "familium[nis]"
      assert_select "input#familium_logradouro", :name => "familium[logradouro]"
      assert_select "input#familium_numero", :name => "familium[numero]"
      assert_select "input#familium_complemento", :name => "familium[complemento]"
      assert_select "input#familium_bairro", :name => "familium[bairro]"
      assert_select "input#familium_municipio", :name => "familium[municipio]"
      assert_select "input#familium_cep", :name => "familium[cep]"
      assert_select "input#familium_telefone", :name => "familium[telefone]"
      assert_select "input#familium_tipo_telefone", :name => "familium[tipo_telefone]"
      assert_select "input#familium_tempo_residencia_municipio", :name => "familium[tempo_residencia_municipio]"
      assert_select "input#familium_tempo_residencia_casa", :name => "familium[tempo_residencia_casa]"
      assert_select "input#familium_forma_ocupacao", :name => "familium[forma_ocupacao]"
      assert_select "input#familium_grau_risco", :name => "familium[grau_risco]"
      assert_select "input#familium_caracteristica_casa", :name => "familium[caracteristica_casa]"
      assert_select "input#familium_total_comodos", :name => "familium[total_comodos]"
      assert_select "input#familium_abastecimento_agua", :name => "familium[abastecimento_agua]"
      assert_select "input#familium_acondicionamento_agua", :name => "familium[acondicionamento_agua]"
      assert_select "input#familium_qualidade_agua", :name => "familium[qualidade_agua]"
      assert_select "input#familium_esgotamento_sanitario", :name => "familium[esgotamento_sanitario]"
      assert_select "input#familium_instalacoes_sanitarias", :name => "familium[instalacoes_sanitarias]"
      assert_select "input#familium_vaso", :name => "familium[vaso]"
      assert_select "input#familium_pia", :name => "familium[pia]"
      assert_select "input#familium_chuveiro", :name => "familium[chuveiro]"
      assert_select "input#familium_energia_eletrica", :name => "familium[energia_eletrica]"
      assert_select "input#familium_destinacao_lixo", :name => "familium[destinacao_lixo]"
      assert_select "input#familium_ativo", :name => "familium[ativo]"
    end
  end
end
