class CreateActs < ActiveRecord::Migration
  def change
    create_table :acts do |t|
      t.references :mei, index: true, foreign_key: true
      t.references :ocupation, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
