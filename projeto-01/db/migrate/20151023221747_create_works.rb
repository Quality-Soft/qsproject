class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.references :mei, index: true, foreign_key: true
      t.references :job, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
