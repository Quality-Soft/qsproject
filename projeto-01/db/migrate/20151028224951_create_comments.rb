class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :nome
      t.string :titulo
      t.text :descricao
      t.references :meis, index: true, foreign_key: true #isso gerou um erro no banco, na verdade deveria ser t.references :mei
      #lembrar de se ligar no nome das coisas antes de criar os modelos
      #se ligue!!!!!!!!!

      t.timestamps null: false
    end
  end
end
