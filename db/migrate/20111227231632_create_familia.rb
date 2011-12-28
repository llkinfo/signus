class CreateFamilia < ActiveRecord::Migration
  def change
    create_table :familia do |t|
      t.string :nis
      t.date :data_cadastro
      t.string :logradouro
      t.string :numero
      t.string :complemento
      t.string :bairro
      t.string :municipio
      t.string :cep
      t.string :telefone
      t.string :tipo_telefone
      t.integer :tempo_residencia_municipio
      t.integer :tempo_residencia_casa
      t.string :forma_ocupacao
      t.integer :grau_risco
      t.string :caracteristica_casa
      t.integer :total_comodos
      t.string :abastecimento_agua
      t.string :acondicionamento_agua
      t.string :qualidade_agua
      t.string :esgotamento_sanitario
      t.string :instalacoes_sanitarias
      t.integer :vaso
      t.integer :pia
      t.integer :chuveiro
      t.string :energia_eletrica
      t.string :destinacao_lixo
      t.integer :ativo

      t.timestamps
    end
  end
end
