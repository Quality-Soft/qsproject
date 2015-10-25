class CreateComentarios < ActiveRecord::Migration
  def change
    create_table :comentarios do |t|
      t.string :nome
      t.string :titulo
      t.text :descricao

      t.timestamps null: false
    end
  end
end
