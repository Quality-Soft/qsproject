class CreateMeis < ActiveRecord::Migration
  def change
    create_table :meis do |t|
      t.string :cnpj
      t.string :razao_social
      t.string :cpf
      t.string :rg
      t.string :nome
      t.string :sexo
      t.string :descricao_atividade
      t.string :email

      t.timestamps null: false
    end
  end
end
