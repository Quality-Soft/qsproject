class CreateEvaluations < ActiveRecord::Migration
  def change
    create_table :evaluations do |t|
      t.references :mei, index: true, foreign_key: true
      t.integer :rating

      t.timestamps null: false
    end
  end
end
