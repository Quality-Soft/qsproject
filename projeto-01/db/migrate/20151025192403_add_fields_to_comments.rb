class AddFieldsToComments < ActiveRecord::Migration
  def change
    add_column :comments, :nome, :string
  end
end
