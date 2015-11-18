class CreateBusinessAddresses < ActiveRecord::Migration
  def change
    create_table :business_addresses do |t|
      t.string :rua
      t.string :bairro
      t.string :cidade
      t.references :mei, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
