class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :name
      t.string :title
      t.text :description
      t.references :mei, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
