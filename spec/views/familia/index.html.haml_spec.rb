require 'spec_helper'

describe "familia/index.html.haml" do
  before(:each) do
    assign(:familia, [
      stub_model(Familium,
        :nis => "Nis",
        :logradouro => "Logradouro",
        :numero => "Numero",
        :complemento => "Complemento",
        :bairro => "Bairro",
        :municipio => "Municipio",
        :cep => "Cep",
        :telefone => "Telefone",
        :tipo_telefone => "Tipo Telefone",
        :tempo_residencia_municipio => 1,
        :tempo_residencia_casa => 1,
        :forma_ocupacao => "Forma Ocupacao",
        :grau_risco => 1,
        :caracteristica_casa => "Caracteristica Casa",
        :total_comodos => 1,
        :abastecimento_agua => "Abastecimento Agua",
        :acondicionamento_agua => "Acondicionamento Agua",
        :qualidade_agua => "Qualidade Agua",
        :esgotamento_sanitario => "Esgotamento Sanitario",
        :instalacoes_sanitarias => "Instalacoes Sanitarias",
        :vaso => 1,
        :pia => 1,
        :chuveiro => 1,
        :energia_eletrica => "Energia Eletrica",
        :destinacao_lixo => "Destinacao Lixo",
        :ativo => 1
      ),
      stub_model(Familium,
        :nis => "Nis",
        :logradouro => "Logradouro",
        :numero => "Numero",
        :complemento => "Complemento",
        :bairro => "Bairro",
        :municipio => "Municipio",
        :cep => "Cep",
        :telefone => "Telefone",
        :tipo_telefone => "Tipo Telefone",
        :tempo_residencia_municipio => 1,
        :tempo_residencia_casa => 1,
        :forma_ocupacao => "Forma Ocupacao",
        :grau_risco => 1,
        :caracteristica_casa => "Caracteristica Casa",
        :total_comodos => 1,
        :abastecimento_agua => "Abastecimento Agua",
        :acondicionamento_agua => "Acondicionamento Agua",
        :qualidade_agua => "Qualidade Agua",
        :esgotamento_sanitario => "Esgotamento Sanitario",
        :instalacoes_sanitarias => "Instalacoes Sanitarias",
        :vaso => 1,
        :pia => 1,
        :chuveiro => 1,
        :energia_eletrica => "Energia Eletrica",
        :destinacao_lixo => "Destinacao Lixo",
        :ativo => 1
      )
    ])
  end

  it "renders a list of familia" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nis".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Logradouro".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Numero".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Complemento".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Bairro".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Municipio".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Cep".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Telefone".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Tipo Telefone".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Forma Ocupacao".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Caracteristica Casa".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Abastecimento Agua".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Acondicionamento Agua".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Qualidade Agua".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Esgotamento Sanitario".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Instalacoes Sanitarias".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Energia Eletrica".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Destinacao Lixo".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
