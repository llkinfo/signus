require 'spec_helper'

describe "familia/show.html.haml" do
  before(:each) do
    @familium = assign(:familium, stub_model(Familium,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nis/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Logradouro/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Numero/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Complemento/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Bairro/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Municipio/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Cep/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Telefone/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Tipo Telefone/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Forma Ocupacao/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Caracteristica Casa/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Abastecimento Agua/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Acondicionamento Agua/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Qualidade Agua/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Esgotamento Sanitario/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Instalacoes Sanitarias/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Energia Eletrica/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Destinacao Lixo/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
