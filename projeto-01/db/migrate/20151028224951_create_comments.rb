class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :nome
      t.string :titulo
      t.text :descricao
      t.references :meis, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
