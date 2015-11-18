class CreateOccupations < ActiveRecord::Migration
  def change
    create_table :occupations do |t|
      t.string :area

      t.timestamps null: false
    end
  end
end
