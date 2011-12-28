class CreateUnidades < ActiveRecord::Migration
  def change
    create_table :unidades do |t|
      t.string :nome
      t.string :endereco
      t.string :bairro
      t.string :telefone
      t.string :email
      t.string :responsavel

      t.timestamps
    end
  end
end
