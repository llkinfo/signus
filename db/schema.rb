# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20111227231632) do

  create_table "bairros", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "familia", :force => true do |t|
    t.string   "nis"
    t.date     "data_cadastro"
    t.string   "logradouro"
    t.string   "numero"
    t.string   "complemento"
    t.string   "bairro"
    t.string   "municipio"
    t.string   "cep"
    t.string   "telefone"
    t.string   "tipo_telefone"
    t.integer  "tempo_residencia_municipio"
    t.integer  "tempo_residencia_casa"
    t.string   "forma_ocupacao"
    t.integer  "grau_risco"
    t.string   "caracteristica_casa"
    t.integer  "total_comodos"
    t.string   "abastecimento_agua"
    t.string   "acondicionamento_agua"
    t.string   "qualidade_agua"
    t.string   "esgotamento_sanitario"
    t.string   "instalacoes_sanitarias"
    t.integer  "vaso"
    t.integer  "pia"
    t.integer  "chuveiro"
    t.string   "energia_eletrica"
    t.string   "destinacao_lixo"
    t.integer  "ativo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "unidades", :force => true do |t|
    t.string   "nome"
    t.string   "endereco"
    t.string   "bairro"
    t.string   "telefone"
    t.string   "email"
    t.string   "responsavel"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
