class AddNameToDogs < ActiveRecord::Migration[7.1]
  def change
    add_column :dogs, :name, :string
  end
end
